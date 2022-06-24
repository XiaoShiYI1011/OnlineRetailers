<template>
	<el-col :span="18" :offset="3" id="CarBox">
		<el-col :span="24">
			<div style="display: flex; justify-content: space-between; border-bottom: 1px solid #ccc">
				<div><h3>购物车({{ shoppingList.length }})</h3></div>
				<div style="line-height: 56px">
					<span>已选商品 <font color="red">￥{{ getTotal }}</font></span>&nbsp;&nbsp;&nbsp;
					<span><el-button type="danger" @click="settlement">结算</el-button></span>
				</div>
			</div>
			<el-row v-if="shoppingList.length != 0">
				<el-row class="t-header">
					<el-col :span="2">
						<el-checkbox v-model="isSelectAll" @change="selectAll(isSelectAll)">全选</el-checkbox>
					</el-col>
					<el-col :span="8">商品</el-col>
					<el-col :span="4">属性</el-col>
					<el-col :span="3">单价</el-col>
					<el-col :span="2">数量</el-col>
					<el-col :span="2">价格</el-col>
					<el-col :span="3"></el-col>
				</el-row>
				<el-row class="infinite-list" v-infinite-scroll="load" infinite-scroll-distance="50"
						style="overflow:auto; height: 500px;">
					<div>
						<el-row v-for="(item,index) in count" :key="index" class="t-body infinite-list-item">
							<ShoppingCartItem :shoppingList="shoppingList[index]"></ShoppingCartItem>
						</el-row>
						<el-col :span="24">
							<h3 style="text-align: center; color: #a9a9a9;margin-bottom: 50px">END - 没有更多了哟 ~</h3>
						</el-col>
					</div>
				</el-row>
			</el-row>
			<el-row v-if="shoppingList.length === 0">
				<el-col :span="6" :offset="9" style="margin-top: 60px">
					<img src="../../assets/emptyCat.png" width="100%">
					<h3 style="text-align: center;color: #C0C4CC;margin-bottom: 80px">购物车还是空的哦~</h3>
				</el-col>
			</el-row>
		</el-col>
	</el-col>
</template>

<script>
import ShoppingCartItem from "@/components/User/ShoppingCartItem";
import axios from "axios";
import pubsub from "pubsub-js";

export default {
	name: "ShoppingCart",
	components: {
		ShoppingCartItem,
	},
	data() {
		return {
			count: 1,
			shoppingList: [],
		}
	},
	methods: {
		load() {
			if (this.count != this.shoppingList.length) {
				this.count += 1;
			}
		},
		errorMsg(msg) {
			this.$message.error(msg);
		},
		successMsg(msg) {
			this.$message({
				message: msg,
				type: 'success'
			});
		},
		selectAll(isSelectAll) {
			axios({
				url: "http://localhost:8080/demo/api/ShoppingCart/SelectAll",
				method: "post",
				data: {
					userID: sessionStorage.getItem("userId"),
					IsSelectAll: isSelectAll
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
		GetShoppingCartInfo(){
			axios.get(`http://localhost:8080/demo/api/ShoppingCart/GetShoppingCartInfo?UserID=${sessionStorage.getItem("userId")}`).then(
				response => {
					this.shoppingList = response.data;
					this.shoppingList.forEach((item) => {
						if (item.IsSelect != 0) {
							item.IsSelect = true;
						} else {
							item.IsSelect = false;
						}
					});
				},
				error => {
					console.log("请求失败！", error.message);
				}
			);
		},
		settlement(){
			this.$router.push("/User/Home/Settlement");
		}
	},
	beforeMount() {
		this.GetShoppingCartInfo();
		this.pubId = pubsub.subscribe("deleteShoppingList", (msgName, data) => {
			this.GetShoppingCartInfo();
			this.shoppingList.pop();
			this.count = 2;
		});
	},
	computed: {
		getTotal() {
			let newArr = this.shoppingList.filter(function (val) {
				return val.IsSelect === true;
			});
			let price = 0;
			for (let i = 0; i < newArr.length; i++) {
				price += newArr[i].ProductNum * newArr[i].GoodsPrice;
			}
			return price.toFixed(2);
		},
		isSelectAll: {
			get() {
				return this.shoppingList.every(function (val) {
					return val.IsSelect === true;
				});
			},
			set(newValue) {
				for (let i = 0; i < this.shoppingList.length; i++) {
					this.shoppingList[i].IsSelect = newValue;
				}
			}
		}
	},
	beforeDestroy() {
		pubsub.unsubscribe(this.pubId);
	}
}
</script>

<style scoped>
#CarBox {
	margin-top: 10px;
	margin-bottom: 30px;
	box-shadow: 0 0 10px #ececec;
	border-radius: 10px;
	overflow: hidden;
	padding: 10px
}

label {
	margin-bottom: 0px;
}

.t-header {
	box-shadow: 0 7px 8px 0 #efefef;
	text-align: center;
	padding: 10px 0px;
	margin: 5px 5px 10px;
}

.t-body {
	margin: 5px;
	padding: 5px;
	border: 1px solid #DCDFE6;
}

.infinite-list {
	scrollbar-width: none; /* Firefox(隐藏滚动条) */
}

.infinite-list::-webkit-scrollbar {
	display: none; /* Chrome Safari(隐藏滚动条) */
}
</style>