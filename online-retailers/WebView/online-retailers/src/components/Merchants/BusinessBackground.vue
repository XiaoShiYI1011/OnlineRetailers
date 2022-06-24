<template>
	<el-row>
		<el-col :span="4">
			<MerchantsMenu></MerchantsMenu>
		</el-col>
		<el-col :span="18" :offset="1">
			<router-view></router-view>
		</el-col>
	</el-row>
</template>

<script>
import MerchantsMenu from "@/components/Merchants/MerchantsMenu/MerchantsMenu";

export default {
	name: "BusinessBackground",
	components: {MerchantsMenu},
}
</script>

<style scoped>

</style>