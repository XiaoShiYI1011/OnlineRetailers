<template>
	<div class="thumbnail">
		<router-link :to="`/user/GoodsDetails/${this.goodsList.GoodsID}`">
			<div class="img">
				<img :src="goodsList.GoodsImg.split(',')[0]" alt="..." @click="addFootprint(goodsList.GoodsID)">
			</div>
			<div class="caption">
				<el-row>
					<h4>{{ goodsList.GoodsTitle.substring(0, 25) }} ···</h4>
				</el-row>
				<el-row>
					<el-col :span="12">
						<h3 style="color: red"><font size="3px">￥</font>{{ goodsList.GoodsPrice }}</h3>
					</el-col>
					<el-col :span="12">
						<div class="SS-box">
							<p>销量 {{ goodsList.GoodsSales }}</p>
							<p>剩余 {{ goodsList.GoodsStock }} 件</p>
						</div>
					</el-col>
				</el-row>
			</div>
		</router-link>
	</div>
</template>

<script>

import axios from "axios";

export default {
	name: "Goods",
	props: ["goodsList"],
	methods: {
		addFootprint(GoodsID) {
			axios({
				url: "http://localhost:8080/demo/api/Goods/AddFootprint",
				method: "post",
				data: {
					userID: sessionStorage.getItem("userId"),
					goodsID: GoodsID,
				}
			}).then(
				response => {
					if (response.data == true) {
						console.log(response.data);
					}
				},
				error => {
					console.log("请求失败" + error.message);
				}
			);
		}
	}
}
</script>

<style scoped>
.thumbnail {
	padding: 4px;
	margin-bottom: 1px;
	border: 1px solid #eeeeee;
	border-radius: 0px;
	transition: all 0.25s ease-in;
}

.thumbnail:hover {
	transform: translateY(-8px);
	box-shadow: 0 0 20px #ccc;
}

.img {
	width: 100%;
	height: 276px;
	overflow: hidden;
}

.img > img {
	width: 100%;
}

.SS-box {
	margin-top: 25px;
	color: #C0C4CC;
	display: flex;
	justify-content: space-around;
}

.SS-box > p {
	padding: 0px;
	margin: 0px;
}

a:hover {
	text-decoration: none;
}
</style>