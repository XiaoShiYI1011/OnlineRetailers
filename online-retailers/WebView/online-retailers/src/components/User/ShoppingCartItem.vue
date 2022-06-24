<template>
	<div>
		<el-col :span="2" style="margin-top: 50px; text-align: center">
			<el-checkbox v-model="shoppingList.IsSelect" @change="select(shoppingList.CartID, shoppingList.IsSelect)">
				选择
			</el-checkbox>
		</el-col>
		<el-col :span="12">
			<el-col :span="5">
				<div class="GoodsImg">
					<img :src="shoppingList.GoodsImg.split(',')[0]" style="width: 100%;">
				</div>
			</el-col>
			<el-col :span="19">
				<el-col :span="14">
					<p class="GoodsTitle">{{ shoppingList.GoodsTitle }}</p>
				</el-col>
				<el-col :span="10">
					<p class="GoodsAttribute">{{ shoppingList.SelectAttributes }}</p>
				</el-col>
			</el-col>
		</el-col>
		<el-col :span="3">
			<p class="GoodsPrice"><font size="2">￥</font>{{ shoppingList.GoodsPrice }}</p>
		</el-col>
		<el-col :span="2" style="text-align: center">
			<el-input-number
				v-model="ProductNum"
				size="mini"
				:min="0"
				:max="shoppingList.GoodsStock"
				style="width: 100%; margin-top: 43px">
			</el-input-number>
		</el-col>
		<el-col :span="2">
			<p class="GoodsPrice">
				<font size="2">￥</font>
				{{ shoppingList.GoodsPrice * shoppingList.ProductNum }}
			</p>
		</el-col>
		<el-col :span="3">
			<div style="text-align: center; width: 80%; margin-top: 35px">
				<el-popconfirm title="确定删除吗？" @confirm="Delete(shoppingList.CartID)">
					<el-button style="width: 100%; margin-top: 5px" size="small" slot="reference">删除</el-button>
				</el-popconfirm>
			</div>
		</el-col>
	</div>
</template>

<script>
import axios from "axios";
import pubsub from "pubsub-js";

export default {
	name: "ShoppingCartItem",
	props: ["shoppingList"],
	data() {
		return {
			ProductNum: this.shoppingList.ProductNum
		}
	},
	methods: {
		errorMsg(msg) {
			this.$message.error(msg);
		},
		successMsg(msg) {
			this.$message({
				message: msg,
				type: 'success'
			});
		},
		select(CartID, IsSelect) {
			axios({
				url: "http://localhost:8080/demo/api/ShoppingCart/UpdateIsSelect",
				method: "post",
				data: {
					cartID: CartID,
					isSelect: IsSelect,
					userID: sessionStorage.getItem("userId")
				}
			}).then(
				response => {
					if (response.data == true) {
						// this.successMsg("true");
					} else {
						this.errorMsg("操作失败！请重试！");
					}
				},
				error => {
					this.errorMsg("请求失败" + error.message);
				}
			);
		},
		Delete(CartID) {
			axios.get(`http://localhost:8080/demo/api/ShoppingCart/Delete?CartID=${CartID}`).then(
				response => {
					if (response.data == true) {
						pubsub.publish("deleteShoppingList", CartID)
					} else {
						this.errorMsg("操作失败！请重试！");
					}
				},
				error => {
					this.errorMsg("请求失败" + error.message);
				}
			)
		}
	},
	watch: {
		ProductNum: {
			handler(newValue) {
				axios({
					url: "http://localhost:8080/demo/api/ShoppingCart/UpdateProductNum",
					method: "post",
					data: {
						cartID: this.shoppingList.CartID,
						userID: sessionStorage.getItem("userId"),
						productNum: newValue
					}
				}).then(
					response => {
						if (response.data == true) {
							this.shoppingList.ProductNum = newValue;
						} else {
							this.errorMsg("操作失败！请重试！");
						}
					},
					error => {
						this.errorMsg("请求失败" + error.message);
					}
				);
			}
		}
	},
}
</script>

<style scoped>
.GoodsImg {
	height: 115px;
	width: 100%;
	overflow: hidden;
}

.GoodsTitle {
	padding: 5px;
	color: #303133;
	margin-top: 33px;
}

.GoodsPrice {
	color: red;
	text-align: center;
	margin-top: 50px;
}

.GoodsAttribute {
	margin-top: 50px;
	text-align: center;
	color: #909399;
}
</style>