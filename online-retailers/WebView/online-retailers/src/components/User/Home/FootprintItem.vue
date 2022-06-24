<template>
	<div class="thumbnail footprintItem">
		<div
			class="delete"
			@click="Delete"
			style="padding: 7px 10px;border-radius: 100%;background-color: rgba(255,255,255,0.69)">
			<a class="delete-btn"><i class="el-icon-delete"></i></a>
		</div>
		<router-link :to="`/user/GoodsDetails/${this.FootprintItem.GoodsID}`">
			<div style="width: 191px; height: 191px; overflow:hidden;">
				<img :src="FootprintItem.GoodsImg.split(',')[0]" width="100%">
			</div>
			<div class="caption">
				<h4 style="color: red; text-align: center;border-bottom: 1px solid #DCDFE6; padding-bottom: 5px">
					<font size="2.5px">￥</font>{{ FootprintItem.GoodsPrice }}
				</h4>
				<p>{{ FootprintItem.GoodsTitle.substring(0, 20) }}</p>
			</div>
		</router-link>
	</div>
</template>

<script>
import axios from "axios";
import pubsub from "pubsub-js";

export default {
	name: "FootprintItem",
	props: ["FootprintItem"],
	methods: {
		Delete() {
			axios({
				url: "http://localhost:8080/demo/api/Footprint/DeleteFootprintItem",
				method: "post",
				data: {
					userID: sessionStorage.getItem("userId"),
					recordsID: this.FootprintItem.RecordsID,
				}
			}).then(
				response => {
					if (response.data == true) {
						pubsub.publish("DeleteFootprintItem", response.data);
					}else {
						this.$message.error("删除失败！");
					}
				},
				error => {
					this.$message.error("请求失败" + error.message);
				}
			)
		}
	},
}
</script>

<style scoped>
.footprintItem {
	margin-top: 5px;
	margin-bottom: 5px;
}

.thumbnail {
	border-color: #E4E7ED;
	transition: all 0.35s ease-in;
	position: relative;
}

.thumbnail:hover {
	border-color: #409EFF;
	transform: translateY(-5px);
}

.delete {
	position: absolute;
	margin-left: 150px;
	margin-top: 5px;
}

.delete-btn {
	color: #303133;
}

.delete-btn:hover {
	color: #F56C6C;
}

a:hover {
	text-decoration: none;
}
</style>