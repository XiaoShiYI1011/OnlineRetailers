<template>
	<el-col :span="24" class="box">
		<el-col :span="4">
			<div style="display: flex;justify-content: center;align-items: center">
				<div class="img">
					<router-link :to="`/user/GoodsDetails/${this.orderList.GoodsID}`">
						<img :src="orderList.GoodsImg.split(',')[0]" width="100%" style="border-radius: 10px">
					</router-link>
				</div>
			</div>
		</el-col>
		<el-col :span="15">
			<div class="ProductDetails">
				<router-link :to="`/user/GoodsDetails/${this.orderList.GoodsID}`"
							 style="text-decoration: none; color: #303133">
					<p style="margin: 5px 0px 0px">{{ orderList.GoodsTitle }}</p>
					<p style="margin: 3px 0px 0px; color: #909399">{{ orderList.SelectAttributes }}</p>
					<p style="margin: 0px; color: #909399">
						单价：<font color="red">￥{{ orderList.OrderMoney }}</font> &nbsp;&nbsp;
						数量：<font color="#C0C4CC">x</font> {{ orderList.ProductNum }}
					</p>
				</router-link>
				<p style="margin-top: 3px" v-if="orderList.IsCancellation !== 0">
					<font color="#C0C4CC">{{ date }} </font>&nbsp;
					<span v-if="orderList.OrderStatus === 0">商家已确认订单，等待发货中</span>
					<span v-if="orderList.OrderStatus === 1">运输中，请耐心等待</span>
					<span v-if="orderList.OrderStatus === 2">快递已送达，订单完成</span>
				</p>
				<p v-if="orderList.IsCancellation === 0">进度：商家审核中···</p>
				<p v-if="orderList.IsCancellation === 1">进度：商家审核已通过，金额已原路返回···</p>
				<p v-if="orderList.IsCancellation === 2">进度：商家审核未通过···</p>
			</div>
		</el-col>
		<el-col :span="5" style="display: flex; justify-content: center;align-items: center;">
			<div>
				<p style="margin-bottom: 2px; padding: 0px; font-size: 15px">
					总价：<font color="red">￥{{ orderList.OrderMoney * orderList.ProductNum }}</font>
				</p>
				<p style="margin-bottom: 2px; padding: 0px; font-size: 15px; text-align: center; color: red"
				   v-if="orderList.OrderStatus === 4">退货</p>
				<p style="margin-bottom: 2px; padding: 0px; font-size: 15px; text-align: center; color: red"
				   v-if="orderList.OrderStatus === 3">退款</p>
				<el-button
					plain
					size="small"
					v-if="orderList.OrderStatus === 1"
					style="width: 100%"
					@click="ConfirmReceipt">确认收货
				</el-button>
				<Refund
					v-if="orderList.OrderStatus === 0"
					:OrderID="orderList.OrderID"
					:sunPrice="orderList.OrderMoney * orderList.ProductNum">
				</Refund>
				<ReturnGoods
					v-if="orderList.OrderStatus === 2"
					:OrderID="orderList.OrderID">
				</ReturnGoods>
			</div>
		</el-col>
	</el-col>
</template>

<script>
import Refund from "@/components/User/Order/Refund";
import axios from "axios";
import ReturnGoods from "@/components/User/Order/ReturnGoods";
import pubsub from "pubsub-js";

export default {
	name: "OrderItem",
	props: ["orderList"],
	components: {
		Refund,
		ReturnGoods
	},
	data() {
		return {
			date: ""
		}
	},
	methods: {
		ConfirmReceipt() {
			axios({
				url: "http://localhost:8080/demo/api/UserOrder/ConfirmReceipt",
				method: "post",
				data: {
					userID: sessionStorage.getItem("userId"),
					orderID: this.orderList.OrderID
				}
			}).then(
				response => {
					if (response.data === true) {
						this.$message({
							message: "收货成功",
							type: 'success'
						});
						this.$router.go(0);
					} else {
						this.$message.error("收货失败！请重试");
					}
				},
				error => {
					this.$message.error("出现错误，请联系网站管理员！" + error.message);
				}
			)
		}
	},
	mounted() {
		if (this.orderList.OrderStatus == 0) {
			this.date = this.orderList.OrderTime;
		} else if (this.orderList.OrderStatus == 1) {
			this.date = this.orderList.DeliverGoodsTime
		} else if (this.orderList.OrderStatus == 2) {
			this.date = this.orderList.ReceivingTime;
		} else if (this.orderList.OrderStatus == 3) {
			this.date = this.orderList.CancelTime;
		}
	}
}
</script>

<style scoped>
.box {
	border: 1px solid #DCDFE6;
	border-radius: 10px;
}

.box > div {
	height: 125px;
}

.img {
	width: 90px;
	height: 90px;
	border: 1px solid #E4E7ED;
	margin-top: 18px;
	overflow: hidden;
	border-radius: 10px;
}

.ProductDetails {
	padding: 0px 10px;
	margin-top: 20px;
	border-right: 1px dashed #dfe9f8;
	border-left: 1px dashed #dfe9f8;
}
</style>