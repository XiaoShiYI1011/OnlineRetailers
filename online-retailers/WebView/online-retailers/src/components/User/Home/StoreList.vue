<template>
	<el-col :span="20" :offset="2" style="margin-bottom: 30px">
		<div class="page-header">
			<h1 style="margin-left: 20px; color: #606266">
				京西店铺 - 聚合全球好店&nbsp;
				<small style="color: #C0C4CC">正品行货，精致服务</small>
			</h1>
		</div>
		<div class="infinite-list" v-infinite-scroll="load" infinite-scroll-distance="100"
			 style="overflow:auto; height: 700px;">
			<el-col :span="24" v-for="(item, index) in storeList" :key="index" style="padding-top: 20px">
				<StoreListItem :storeList="storeList[index]"></StoreListItem>
			</el-col>
			<el-col :span="24">
				<h3 style="text-align: center; color: #a9a9a9;margin-bottom: 50px">END - 没有更多了哟 ~</h3>
			</el-col>
		</div>
	</el-col>
</template>

<script>
import StoreListItem from "@/components/User/Home/StoreListItem";
import axios from "axios";

export default {
	name: "StoreList",
	components: {
		StoreListItem
	},
	data() {
		return {
			count: 2,
			storeList: [],
		}
	},
	methods: {
		load() {
			if (this.count != 20) {
				this.count += 1;
			}
		},
	},
	mounted() {
		axios("http://localhost:8080/demo/api/UserStore/GetStore").then(
			response => {
				if (response.data != false) {
					this.storeList = response.data;
				}
			},
			error => {
				console.log("请求失败！" + error.message);
			}
		)
	}
}
</script>

<style scoped>
.page-header {
	margin-bottom: 0px;
	margin-top: 10px;
}

.infinite-list {
	scrollbar-width: none; /* Firefox(隐藏滚动条) */
}

.infinite-list::-webkit-scrollbar {
	display: none; /* Chrome Safari(隐藏滚动条) */
}
</style>