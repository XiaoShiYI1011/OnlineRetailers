<template>
	<el-col :span="6" class="box">
		<router-link :to="`/user/GoodsDetails/${this.MaxSales.GoodsID}`">
			<div style="" class="img-box">
				<img :src="MaxSales.GoodsImg.split(',')[0]" style="width: 100%;">
			</div>
			<div style="text-align: center">
				<p style="margin: 2px 0; color: red">￥{{ MaxSales.GoodsPrice }}</p>
			</div>
		</router-link>
	</el-col>
</template>

<script>
export default {
	name: "HotSale",
	props: ["MaxSales"],
}
</script>

<style scoped>
.box {
	width: 101px;
	background-color: white;
	overflow: hidden;
	border-radius: 8px;
}

.img-box {
	width: 100px;
	height: 110px;
	overflow: hidden;
}

a:hover {
	text-decoration: none;
}
</style>