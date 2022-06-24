<template>
	<div>
		<el-row>
			<el-col :span="24">
				<Screening></Screening>
			</el-col>
		</el-row>
		<el-row style="margin:20px 0px 0px 0px;">
			<el-col :span="24" class="Add">
				<Add></Add>
			</el-col>
		</el-row>
		<el-row style="margin: 20px 0px;">
			<el-col :span="24">
				<Goods></Goods>
			</el-col>
		</el-row>
	</div>
</template>

<script>
import Screening from "@/components/Merchants/Goods/GoodsList/Screening";
import Goods from "@/components/Merchants/Goods/GoodsList/Goods";
import Add from "@/components/Merchants/Goods/GoodsList/Add";
export default {
	name: "GoodsList",
	components: {Add, Goods, Screening}
}
</script>

<style scoped>
.Add{
	border-radius: 4px;
	border: 1px solid #DCDFE6;
}
</style>