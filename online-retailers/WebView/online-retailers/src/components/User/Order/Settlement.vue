<template>
	<el-col :span="14" :offset="5">
		<el-row class="box">
			<h3 style="margin-top: 5px; text-align: center; padding-bottom: 5px; border-bottom: 1px solid #606266; color: #606266">
				请确认订单
			</h3>
			<el-col
				:span="24" style="border-radius: 20px; margin-bottom: 10px; background-color: white;"
				v-for="(item, index) in goodsList" :key="item.CartID">
				<el-row class="goods">
					<el-col :span="6">
						<div class="img">
							<img :src="goodsList[index].GoodsImg.split(',')[0]">
						</div>
					</el-col>
					<el-col :span="14">
						<div class="goodsDetails">
							<h4>{{ goodsList[index].GoodsTitle }}</h4>
							<p>{{ goodsList[index].SelectAttributes }}</p>
							<p>
								单价：<font color="red">￥ {{ goodsList[index].GoodsPrice }}</font> <span
								style="margin-left: 20px">
								数量：<font color="#C0C4CC">x</font> {{ goodsList[index].ProductNum }}</span>
							</p>
						</div>
					</el-col>
					<el-col :span="4">
						<div>
							<h4 style="line-height: 145px; margin: 0px; padding: 0px; text-align: center">总价：<font
								color="red">￥ {{ goodsList[index].GoodsPrice * goodsList[index].ProductNum }}</font>
							</h4>
						</div>
					</el-col>
				</el-row>
			</el-col>
			<el-col :span="24" style="background-color: white;border-radius: 20px 20px 0px 0px;padding-bottom: 30px">
				<h4 style="text-align: center; color: #C0C4CC">配送至</h4>
				<div style="overflow:hidden;width: 94%; margin: 0px auto">
					<el-radio-group v-model="radio1">
						<div v-for="item in Distribution" style="float: left;margin: 5px;">
							<el-radio
								:label="item.RegionID"
								border
								style="width: 250px; height: 80px">
							<span>
								{{ item.UserAccount }}
								<span style="margin-left: 15px;">
									{{ item.Phone }}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<span style="color: #C0C4CC" v-if="item.IsDefault == 0">默认</span><br>
								</span>
								<p style="margin-left: 25px;width: 200px; white-space:pre-wrap; margin-top: 5px">
									{{ item.DetailedAddress }}
								</p><br>
							</span>
							</el-radio>
						</div>
					</el-radio-group>
				</div>
			</el-col>
			<el-col
				:span="24"
				style="background-color: white; border-radius: 0px 0px 20px 20px; height: 80px; border-top: 1px solid #EBEEF5;">
				<el-col :span="20" style="height: 60px">
					<h4 style="text-align: right; margin-right: 10px; line-height: 60px; margin-top: 0px">
						合计：<font color="red">￥ {{ sumPrice }}</font>
					</h4>
				</el-col>
				<el-col :span="4" style="height: 60px">
					<el-button type="danger" style="width: 100%; height: 100%; border-radius: 5px" @click="PlaceOrder">
						支付
					</el-button>
				</el-col>
			</el-col>
		</el-row>
	</el-col>
</template>

<script>
import axios from "axios";

export default {
	name: "Settlement",
	data() {
		return {
			radio1: "1",
			goodsList: [],
			Distribution: [],
			sumPrice: 0,
		}
	},
	methods: {
		PlaceOrder() {
			sessionStorage.setItem('goodsList', JSON.stringify(this.goodsList));
			sessionStorage.setItem("Distribution", JSON.stringify(this.radio1));
			let OrderID = Date.parse(new Date()).toString().substr(0, 10);
			let OrderMoney = 0
			for (let i = 0; i < this.goodsList.length; i++) {
				OrderMoney += this.goodsList[i].GoodsPrice * this.goodsList[i].ProductNum
			}
			axios({
				url: 'http://localhost:8080/demo/api/pay/payment',
				method: 'post',
				data: {
					OrderID: OrderID,
					OrderMoney: OrderMoney,
					goodsList: this.goodsList
				}
			}).then(
				response => {
					document.write(response.data)
				},
				error => {
					console.log(error.message);
				}
			)
		}
		
	},
	mounted() {
		axios.get(`http://localhost:8080/demo/api/UserOrder/IsSelectGoods?UserID=${sessionStorage.getItem("userId")}`).then(
			response => {
				if (response.data !== false) {
					this.goodsList = response.data;
					response.data.forEach((item) => {
						this.sumPrice += item.GoodsPrice * item.ProductNum;
					});
				} else {
					this.$message.error("获取失败");
				}
			},
			error => {
				this.$message.error("请求失败" + error.message);
			}
		);
		axios.get(`http://localhost:8080/demo/api/UserOrder/Distribution?UserID=${sessionStorage.getItem("userId")}`).then(
			response => {
				if (response.data !== false) {
					this.Distribution = response.data;
					response.data.forEach((item) => {
						item.RegionID = item.RegionID.toString();
					});
					this.radio1 = response.data[0].RegionID;
				} else {
					this.$message.error("获取失败");
				}
			},
			error => {
				this.$message.error("请求失败" + error.message);
			}
		);
	}
}
</script>

<style scoped>
.box {
	padding: 10px 25px;
	border-radius: 15px;
	margin-top: 10px;
	margin-bottom: 30px;
	box-shadow: 0 0 10px #DCDFE6;
	min-height: 400px;
	background-color: #F2F6FC
}

.goods {
	overflow: hidden;
}

.goods > div {
	height: 145px;
}

.goods > div:first-child {
	display: flex;
	justify-content: center;
	align-items: center;
}

.goods > div:first-child > div {
	border: 1px solid #E4E7ED;
	width: 120px;
	height: 120px;
	border-radius: 8px;
	overflow: hidden;
}

.goods > div:first-child > div > img {
	width: 100%;
	border-radius: 8px;
}

.goodsDetails {
	padding: 0px 5px;
}

.goodsDetails > p {
	color: #909399;
}
</style>