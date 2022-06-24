<template>
	<div>
		<el-row :gutter="20">
			<el-col :span="20" :offset="2">
				<Banner class="Banner"></Banner>
			</el-col>
		</el-row>
		<el-row :gutter="20" style="margin-top: 30px; margin-bottom: 50px;">
			<el-col :span="20" :offset="2">
				<div class="infinite-list" v-infinite-scroll="load" infinite-scroll-distance="200"
					 style="overflow:auto; height: 1200px;border-top: 1px solid #E4E7ED; border-bottom: 1px solid #E4E7ED; padding: 10px 0px">
					<el-col :span="6" v-for="(item, index) in count" :key="item" class="infinite-list-item">
						<Goods class="Goods" :goodsList="goodsList[index]"></Goods>
					</el-col>
					<el-col :span="24">
						<h3 style="text-align: center; color: #a9a9a9; margin-bottom: 50px" @click="push">END - 没有更多了哟
							~<a>点我刷新一下吧</a>~</h3>
					</el-col>
				</div>
			</el-col>
		</el-row>
	</div>
</template>

<script>
import Banner from "@/components/User/Home/Banner";
import axios from "axios";
import Goods from "@/components/User/Goods";

export default {
	name: "Home",
	components: {
		Banner,
		Goods
	},
	data() {
		return {
			goodsList: [],
			count: 0
		}
	},
	methods: {
		load() {
			this.count += 1;
		},
		push() {
			this.$router.go(0);
		}
	},
	beforeMount() {
		axios(`http://localhost:8080/demo/api/Goods/GoodsRecommend?userID=${sessionStorage.getItem("userId")}`).then(
			response => {
				this.goodsList = response.data;
			},
			error => {
				console.log("请求失败" + error.message);
			}
		);
	}
}
</script>

<style scoped>
.Banner {
	margin-top: 10px;
}

.Goods {
	margin-bottom: 10px;
}

.infinite-list {
	scrollbar-width: none; /* Firefox(隐藏滚动条) */
}

.infinite-list::-webkit-scrollbar {
	display: none; /* Chrome Safari(隐藏滚动条) */
}
</style>