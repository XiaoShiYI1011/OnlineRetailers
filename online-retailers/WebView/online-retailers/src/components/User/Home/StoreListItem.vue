<template>
	<el-row style="border: 1px solid #DCDFE6; border-radius: 8px; overflow: hidden">
		<el-col :span="7" style="margin-top: 10px">
			<router-link :to="`/User/StoreDetails/${this.storeList.StoreID}`">
				<el-col :span="8">
					<div
						style="border: 1px solid #F2F6FC; margin: 15px; width: 100px; height: 100px; overflow:hidden;border-radius: 8px">
						<img :src="storeList.StoreImg" width="100%">
					</div>
				</el-col>
				<el-col :span="16">
					<div style="margin-left: 5px">
						<h4 style="margin-top: 15px;">{{ storeList.StoreName }}</h4>
						<div style="margin-top: 23px">
							<span>{{ storeList.StoreRegion }} <i class="el-icon-location-information"></i></span>
						</div>
						<div style="margin-top: 20px">
							<el-rate
								v-model="value"
								disabled
								show-score
								text-color="#ff9900"
								score-template="{value}">
							</el-rate>
						</div>
					</div>
				</el-col>
			</router-link>
		</el-col>
		<el-col :span="17" style="height: 100%; background-color: #F2F6FC">
			<div style="display: flex; justify-content: center; margin: 8px 0px">
				<HotSale v-for="(item,index) in 7" class="HotSale" :MaxSales="MaxSales[index]"></HotSale>
			</div>
		</el-col>
	</el-row>
</template>

<script>
import HotSale from "@/components/User/Home/HotSale";
import axios from "axios";

export default {
	name: "StoreListItem",
	props: ["storeList"],
	components: {
		HotSale,
	},
	data() {
		return {
			value: 5,
			MaxSales: [],
		}
	},
	mounted() {
		axios.get(`http://localhost:8080/demo/api/UserStore/MaxSalesGoods?StoreID=${this.storeList.StoreID}`).then(
			response => {
				if (response.data !== false) {
					this.MaxSales = response.data;
				} else {
					this.$message.error("获取失败！");
				}
			},
			error => {
				this.$message.error("请求失败" + error.message);
			}
		);
		this.value = this.storeList.StoreScore;
	}
}
</script>

<style scoped>
a {
	color: #303133;
}

a:hover {
	text-decoration: none;
}

.HotSale {
	margin-left: 12px;
	margin-right: 12px;
	transition: all 0.25s;
}

.HotSale:hover {
	transform: translateY(-6px);
	box-shadow: 0 0 20px #C0C4CC;
}
</style>