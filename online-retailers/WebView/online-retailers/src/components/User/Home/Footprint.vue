<template>
	<el-col :span="20" :offset="2" style="margin-top: 10px">
		<div style="display: flex;justify-content: space-between">
			<div>
				<h3 style="margin-top: 5px">历史浏览记录</h3>
			</div>
			<div style="line-height: 41px; color: #F56C6C; margin-right: 10px">
				清除全部记录
				<el-button type="danger" icon="el-icon-delete" size="mini" circle @click="deleteAll"></el-button>
			</div>
		</div>
		<div v-if="FootprintItem != false">
			<el-col class="footprintItem-box infinite-list" v-infinite-scroll="load" infinite-scroll-distance="100">
				<el-col :span="4" v-for="(item,index) in count" :key="item">
					<FootprintItem class="FootprintItem" :FootprintItem="FootprintItem[index]"></FootprintItem>
				</el-col>
				<el-col :span="24">
					<h3 style="text-align: center; color: #a9a9a9;margin-bottom: 50px">END - 没有更多了哟 ~</h3>
				</el-col>
			</el-col>
		</div>
		<div v-if="FootprintItem == false">
			<el-empty description="暂无数据哦~"></el-empty>
		</div>
	</el-col>
</template>

<script>
import FootprintItem from "@/components/User/Home/FootprintItem";
import axios from "axios";
import pubsub from "pubsub-js";

export default {
	name: "Footprint",
	components: {
		FootprintItem,
	},
	data() {
		return {
			count: 1,
			FootprintItem: []
		}
	},
	methods: {
		load() {
			if (this.count <= this.FootprintItem.length) {
				this.count += 1;
			}
		},
		GetFootprint() {
			axios(`http://localhost:8080/demo/api/Footprint/GetFootprint?userID=${sessionStorage.getItem("userId")}`).then(
				response => {
					if (response.data != false) {
						this.FootprintItem = response.data;
					} else {
						this.FootprintItem = false
					}
				},
				error => {
					this.$message.error("请求失败" + error.message);
				}
			);
		},
		deleteAll() {
			axios(`http://localhost:8080/demo/api/Footprint/DeleteFootprintAll?userID=${sessionStorage.getItem("userId")}`).then(
				response => {
					if (response.data == true) {
						this.GetFootprint();
					} else {
						this.$message.error("删除失败");
					}
				},
				error => {
					this.$message.error("请求失败" + error.message);
				}
			)
		}
	},
	mounted() {
		this.GetFootprint();
		this.pubId = pubsub.subscribe("DeleteFootprintItem", (msgName, data) => {
			this.GetFootprint();
			this.FootprintItem.pop();
			this.count = 1;
		});
	},
	beforeDestroy() {
		pubsub.unsubscribe(this.pubId);
	}
}
</script>

<style scoped>
.footprintItem-box {
	border: 1px solid #DCDFE6;
	overflow: auto;
	height: 700px;
	margin-bottom: 20px;
}

.FootprintItem {
	margin: 5px;
}

.infinite-list {
	scrollbar-width: none; /* Firefox(隐藏滚动条) */
}

.infinite-list::-webkit-scrollbar {
	display: none; /* Chrome Safari(隐藏滚动条) */
}
</style>