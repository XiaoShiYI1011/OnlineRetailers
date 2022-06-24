<template>
	<el-col :span="20" :offset="2" style="margin-top: 10px">
		<el-row>
			<el-col :span="14" style="margin-bottom: 20px">
				<div style="padding: 10px">
					<el-carousel :interval="4000" type="card" height="400px">
						<el-carousel-item v-for="(item,index) in images" :key="index">
							<img style="width: 100%;height: 100%" :src="item">
						</el-carousel-item>
					</el-carousel>
				</div>
				<el-col :span="18" :offset="3" id="preview">
					<div v-for="item in images">
						<el-image style="width: 100%;" :src="item" :preview-src-list="images"></el-image>
					</div>
				</el-col>
			</el-col>
			<el-col :span="10">
				<el-col :span="24" style="padding-bottom: 20px">
					<h3 style="border-bottom: 1px solid #ccc; padding-bottom: 5px">{{ Goods.GoodsTitle }}</h3>
					<div class="price">
						<h2><font size="4px">京西价￥</font>{{ Goods.GoodsPrice }}</h2>
					</div>
					<div class="address">
						<div>
							<span><b>配送至：</b></span>
							<el-select size="mini" v-model="DistributionPlace[0]">
								<el-option
									v-for="item in DistributionPlace"
									:key="item.RegionID"
									:label="item.Province + item.City"
									:value="item.RegionID">
								</el-option>
							</el-select>
						</div>
						<div>
							<label>发货地：</label>
							<span style="border-bottom: 1px solid #ccc; padding: 2px 10px">
								{{ Goods.StoreRegion }} <i class="el-icon-location-information"></i>
							</span>
						</div>
					</div>
					<div class="Attribute">
						<div style="margin-top: 10px" v-for="(item, index) in AttributeName" :key="index">
							<span>{{ item }}&nbsp;&nbsp;&nbsp;&nbsp;</span>
							<el-radio-group v-model="temp[index]">
								<el-radio-button v-for="items in AttributeItem[index]" :label="items">
									{{ items }}
								</el-radio-button>
							</el-radio-group>
						</div>
						<div style="margin-left: 10px; margin-top: 15px;display: flex; justify-content: center">
							<div>
								<span>数量：</span>
								<span><el-input-number
									size="small"
									v-model="addNum"
									:step="1"
									:min="0"
									:max="Goods.GoodsStock">
								</el-input-number></span>
							</div>&nbsp;&nbsp;&nbsp;
							<div style="margin-top: 6px; color: #C0C4CC">剩余 {{ Goods.GoodsStock }} 件</div>
						</div>
					</div>
					<div class="addCart">
						<div>
							<el-button
								type="default"
								@click="Messages($store.state.userId,Goods.StoreID)"
								style="width: 125px" plain>客服
							</el-button>
						</div>
						<div>
							<el-button type="danger" @click="addCart(Goods.GoodsID)">加入购物车</el-button>
						</div>
					</div>
				</el-col>
			</el-col>
		</el-row>
		<el-row style="border: 1px solid #E4E7ED; border-radius: 10px; margin-bottom: 30px">
			<ProductReviews :GoodsID="Goods.GoodsID"></ProductReviews>
		</el-row>
	</el-col>
</template>

<script>
import axios from "axios";
import ProductReviews from "@/components/User/GoodsDetails/ProductReviews";

export default {
	name: "GoodsDetails",
	components:{
		ProductReviews,
	},
	data() {
		return {
			centerDialogVisible: false,
			images: [],
			Goods: [],
			DistributionPlace: [],
			AttributeName: [],
			AttributeItem: [],
			temp: [],
			selectAttributes: "",
			addNum: 0
		}
	},
	methods: {
		Messages() {
			this.$router.push(`/user/Messages/${this.Goods.StoreID}`)
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
		addCart(GoodsID) {
			for (let i = 0; i < this.temp.length; i++) {
				if (this.temp[i] === 0) {
					break;
				} else {
					this.selectAttributes += this.AttributeName[i] + "：" + this.temp[i] + "。";
				}
			}
			if (this.selectAttributes.split("。").length - 1 === this.temp.length) {
				if (this.addNum === 0) {
					this.errorMsg("请选择数量！")
				} else {
					if (sessionStorage.getItem("isLogin") == "false" || sessionStorage.getItem("isLogin") == null) {
						this.errorMsg("请登录后，再加入购物车哦~亲~");
					} else {
						axios({
							url: "http://localhost:8080/demo/api/Goods/SelectGoodsStock",
							method: "post",
							data: {
								userID: sessionStorage.getItem("userId"),
								GoodsID: this.$route.params.GoodsID
							}
						}).then(
							response => {
								if (response.data !== false) {
									if (this.addNum >= response.data[0].ProductNum) {
										axios({
											url: "http://localhost:8080/demo/api/Goods/AddCart",
											method: "post",
											data: {
												goodsID: GoodsID,
												userID: sessionStorage.getItem("userId"),
												selectAttributes: this.selectAttributes,
												productNum: this.addNum,
											}
										}).then(
											response => {
												if (response.data === true) {
													axios({
														url: "http://localhost:8080/demo/api/GoodsDetails/InsertUserKeyWord",
														method: "post",
														data: {
															userID: sessionStorage.getItem("userId"),
															typeId: this.Goods.TypeId,
															keyWord: this.Goods.GoodsKeyWord,
														}
													}).then(
														response => {
															if (response.data == true) {
																this.successMsg("添加成功");
															} else {
																this.errorMsg("添加失败！请重试！");
															}
														},
														error => {
															this.errorMsg("请求失败！请重试！" + error.message);
														}
													);
												} else {
													this.errorMsg("加入失败！请重试！");
												}
											},
											error => {
												this.errorMsg("加入失败！请重试！" + error.message);
											}
										);
									} else {
										this.errorMsg("添加失败！购物车中已有此商品的最大库存量");
									}
								} else {
									this.errorMsg("@添加失败！购物车中已有此商品的最大库存量");
								}
							},
							error => {
								this.errorMsg("添加失败！请重试！" + error.message);
							}
						)
					}
				}
			} else {
				this.errorMsg("请选择商品属性！");
			}
			this.selectAttributes = "";
		}
	},
	beforeMount() {
		axios.get(`http://localhost:8080/demo/api/GoodsDetails/GetGoodsDetails?GoodsID=${this.$route.params.GoodsID}`).then(
			response => {
				this.Goods = response.data;
				let Attributes = response.data.GoodsAttribute.split("。");
				for (let i = 0; i < Attributes.length; i++) {
					let AttributeName = Attributes[i].split("：");
					this.AttributeName[i] = AttributeName[0];
					this.AttributeItem[i] = AttributeName[1].split("，");
					this.temp[i] = 0;
				}
				this.images = response.data.GoodsImg.split(",");
				this.images.pop();
			},
			error => {
				console.log("请求失败", error.message);
			}
		);
		axios.get(`http://localhost:8080/demo/api/GoodsDetails/GetUserRegion?UserID=${sessionStorage.getItem("userId")}`).then(
			response => {
				this.DistributionPlace = response.data;
			},
			error => {
				console.log("请求失败", error.message);
			}
		);
	},
}
</script>

<style scoped>
#preview {
	padding: 0px 10px;
	display: flex;
	justify-content: space-around;
}

#preview > div {
	border: 1px solid #E4E7ED;
	width: 100px;
	margin: 2px 2px 5px;
}

.Attribute {
	border: 1px dashed #E4E7ED;
	width: 97%;
	border-radius: 8px;
	margin: 0px auto;
	padding-bottom: 15px;
	padding-top: 10px;
	padding-left: 15px;
}

.price {
	width: 97%;
	height: 60px;
	border-radius: 8px;
	background: #ffffff;
	border: 1px dashed #E4E7ED;
	margin: 0px auto 10px;
}

.price > h2 {
	color: red;
	margin: 15px;
}

.address {
	width: 97%;
	display: flex;
	border-radius: 8px;
	justify-content: space-around;
	padding: 10px 0px;
	border: 1px dashed #E4E7ED;
	margin: 0px auto 10px;
}

.addCart {
	display: flex;
	justify-content: space-around;
	width: 50%;
	margin: 0px auto;
	padding-top: 20px;
}

.btn[data-v-133ed8df] {
	width: 70px;
	margin-top: 3px;
	height: 30px;
	border-width: 0px;
	border-radius: 3px;
	background: #3cb371;
	cursor: pointer;
	outline: none;
	font-family: Microsoft YaHei;
	color: white;
	font-size: 13px;
	text-align: center;
	border-radius: 5px;
	display: inline-block;
	margin-left: 5px;
	margin-right: 5px;
}
</style>