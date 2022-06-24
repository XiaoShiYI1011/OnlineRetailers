<template>
	<el-col :span="20" :offset="2" style="margin-top: 10px">
		<el-col
			:span="4"
			style="background-color: #F2F6FC; padding: 8px; height: 600px; border-radius: 20px 0px 0px 20px; margin-bottom: 30px">
			<el-col :span="24">
				<el-col :span="4" :offset="6">
					<div class="head-portrait">
						<div>
							<img :src="storeDetails[0].StoreImg">
						</div>
					</div>
				</el-col>
				<div class="bg"></div>
			</el-col>
			<el-col :span="24" style="background-color: white;border-radius: 10px;margin-top: 10px">
				<h4 style="text-align: center">{{ storeDetails[0].StoreName }}</h4>
				<p style="padding: 10px">
					<span style="color: #C0C4CC">简介：</span><br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{ storeDetails[0].StoreDetails }}
				</p>
				<p style="padding: 10px">
					<span style="color: #C0C4CC">地区：</span><br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{ storeDetails[0].StoreRegion }}
				</p>
			</el-col>
			<el-col :span="24"
					style="border-radius: 10px;text-align: center; background-color: white; margin-top: 10px; padding: 10px 0px">
				<p style="color: #C0C4CC">店铺评分</p>
				<el-rate
					v-model="value1"
					show-score
					@change="score">
				</el-rate>
			</el-col>
		</el-col>
		<el-col
			:span="20"
			style="border-right: 1px solid #DCDFE6;border-bottom: 1px solid #DCDFE6;border-top: 1px solid #DCDFE6; height: 600px; border-radius: 0px 20px 20px 0px">
			<el-col :span="3" style="height: 100%; position: relative">
				<nav>
					<div>
						<div @click="getGoodsMax">店铺热卖</div>
						<div v-for="item in typeName" :key="item.TypeId" @click="getGoods(item.TypeId)">
							{{ item.TypeName }}
						</div>
					</div>
				</nav>
			</el-col>
			<el-col :span="21">
				<div class="infinite-list" style="overflow: auto; height: 598px" v-infinite-scroll="load"
					 infinite-scroll-distance="200">
					<el-col :span="6" v-for="(item,index) in count" :key="index">
						<div class="thumbnail">
							<router-link :to="`/user/GoodsDetails/${goodsList[index].GoodsID}`">
								<div class="img">
									<img :src="goodsList[index].GoodsImg.split(',')[0]">
								</div>
								<div class="caption">
									<el-row>
										<h4>{{ goodsList[index].GoodsTitle.substring(0, 20) }}</h4>
									</el-row>
									<el-row>
										<el-col :span="6">
											<h3 style="color: red">
												<font size="3px">￥</font>{{ goodsList[index].GoodsPrice }}
											</h3>
										</el-col>
										<el-col :span="18" class="SS-box">
											<p>销量 {{ goodsList[index].GoodsSales }}</p>
											<p>剩余 {{ goodsList[index].GoodsStock }} 件</p>
										</el-col>
									</el-row>
								</div>
							</router-link>
						</div>
					</el-col>
				</div>
			</el-col>
		</el-col>
	</el-col>
</template>

<script>
import axios from "axios";

export default {
	name: "StoreDetails",
	data() {
		return {
			value1: 0,
			storeDetails: [],
			goodsList: [],
			typeName: [],
			count: 0,
		}
	},
	methods: {
		load() {
			if (this.count <= this.goodsList.length) {
				this.count += 1;
			}
		},
		score() {
			this.value1 = (this.value1 * 0.9).toFixed(1);
			axios({
				url: "http://localhost:8080/demo/api/UserStore/UpdateScore",
				method: "post",
				data: {
					storeID: this.$route.params.StoreID,
					score: this.value1,
				}
			}).then(
				response => {
					if (response.data === true) {
						// this.GetStoreDetails();
						this.$router.go(0);
					} else {
						this.$message.error("评分失败！请重试！");
					}
				},
				error => {
					this.$message.error("请求失败" + error.message);
				}
			);
		},
		getGoodsMax() {
			axios(`http://localhost:8080/demo/api/UserStore/GoodsMax?StoreID=${this.$route.params.StoreID}`).then(
				response => {
					if (response.data != false) {
						this.goodsList = response.data;
					} else {
						this.$message.error("获取失败！")
					}
				},
				error => {
					this.$message.error("请求失败" + error.message);
				}
			);
		},
		getGoods(TypeId) {
			axios({
				url: "http://localhost:8080/demo/api/UserStore/GoodsForTypeId",
				method: "post",
				data: {
					storeID: this.$route.params.StoreID,
					typeId: TypeId
				}
			}).then(
				response => {
					if (response.data != false) {
						this.goodsList = response.data;
					} else {
						this.$message.error("获取失败！");
					}
				},
				error => {
					this.$message.error("请求失败" + error.message);
				}
			);
		},
		GetStoreDetails() {
			axios.get(`http://localhost:8080/demo/api/UserStore/StoreDetails?StoreID=${this.$route.params.StoreID}`).then(
				response => {
					if (response.data != false) {
						this.storeDetails = response.data;
						this.value1 = this.storeDetails[0].StoreScore;
					} else {
						this.$message.error("获取失败");
					}
				},
				error => {
					this.$message.error("请求失败" + error.message);
				}
			);
		}
	},
	mounted() {
		this.GetStoreDetails();
		axios.get(`http://localhost:8080/demo/api/UserStore/GetTypeName?StoreID=${this.$route.params.StoreID}`).then(
			response => {
				if (response.data !== false) {
					this.typeName = response.data;
				} else {
					this.$message.error("获取失败");
				}
			},
			error => {
				this.$message.error("请求失败" + error.message);
			}
		);
		this.getGoodsMax();
	}
}
</script>

<style scoped>
.head-portrait {
	width: 100px;
	height: 100px;
	background-color: #F2F6FC;
	border-radius: 100%;
	border: 1px solid transparent;
	position: relative;
	top: 41px;
}

.head-portrait > div {
	margin: 5px;
	border-radius: 100%;
	background-color: white;
	overflow: hidden;
	border: 1px solid #DCDFE6;
	position: relative;
}

.head-portrait > div > img {
	width: 110px;
	height: 90px;
	background-color: white;
}

.bg {
	height: 50px;
	background-color: white;
	margin-top: 90px;
	border-radius: 10px;
}

nav {
	width: 85%;
	margin: 0px auto;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

nav > div:first-child {
	padding: 50px 0px;
	border-radius: 15px;
	box-shadow: 0 0 25px #e9effa;
}

nav > div:first-child > div {
	text-align: center;
	padding: 10px 0px;
	border-bottom: 1px solid #F2F6FC;
}

nav > div:first-child > div:hover {
	background-color: #F2F6FC;
}

nav > div:first-child > div:last-child {
	border: none;
}

.thumbnail {
	padding: 4px;
	border: 1px solid #eeeeee;
	border-radius: 0px;
	margin: 5px;
	transition: all 0.25s ease-in;
}

.thumbnail:hover {
	transform: translateY(-8px);
	box-shadow: 0 0 20px #ccc;
}

.img {
	width: 100%;
	height: 210px;
	overflow: hidden;
}

.img > img {
	width: 100%;
}

.SS-box {
	margin-top: 15px;
	color: #C0C4CC;
}

.SS-box > p {
	text-align: center;
	padding: 0px;
	margin: 0px 0px 0px 65px;
}

a:hover {
	text-decoration: none;
}

.infinite-list {
	scrollbar-width: none; /* Firefox(隐藏滚动条) */
}

.infinite-list::-webkit-scrollbar {
	display: none; /* Chrome Safari(隐藏滚动条) */
}
</style>