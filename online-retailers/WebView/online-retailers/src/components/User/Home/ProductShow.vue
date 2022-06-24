<template>
	<el-row :gutter="10" class="infinite-list" v-infinite-scroll="load" infinite-scroll-distance="200"
			style="overflow:auto; height: 600px;">
		<el-col :span="20" :offset="2">
			<div class="title">
				<h2>{{ goodsList[0].TypeName }}</h2>
			</div>
			<div v-for="(item, index) in count" :key="item" class="infinite-list-item col-md-3">
				<Goods class="Goods" :goodsList="goodsList[index]"></Goods>
			</div>
		</el-col>
		<el-col :span="24">
			<h3 style="text-align: center; color: #a9a9a9;margin-bottom: 50px">END - 没有更多了哟 ~</h3>
		</el-col>
	</el-row>
</template>

<script>
import Goods from "@/components/User/Goods";
import axios from "axios";

export default {
	name: "ProductShow",
	props: ["typeId"],
	data() {
		return {
			count: 2,
			typeID: "",
			goodsList: []
		}
	},
	components: {
		Goods,
	},
	methods: {
		load() {
			if (this.count != this.goodsList.length) {
				this.count += 1;
			}
		},
		getData() {
			axios.get(`http://localhost:8080/demo/api/Goods/GetGoodsBase?TypeID=${this.typeId}`).then(
				response => {
					this.goodsList = response.data;
				},
				error => {
					console.log("请求失败" + error.message);
				}
			);
		},
	},
	beforeMount() {
		this.getData();
	},
	watch: {
		// 监听路由参数变化
		"$route"() {
			this.getData();
			// this.$router.go(0);
		}
	},
}
</script>

<style scoped>
.col-md-3 {
	margin-top: 20px;
}

.title {
	margin: 0px auto;
	border-bottom: 1px solid #ccc;
	width: 97.5%;
}

.Goods {
	margin: 0px;
}

.infinite-list {
	scrollbar-width: none; /* Firefox(隐藏滚动条) */
}

.infinite-list::-webkit-scrollbar {
	display: none; /* Chrome Safari(隐藏滚动条) */
}
</style>