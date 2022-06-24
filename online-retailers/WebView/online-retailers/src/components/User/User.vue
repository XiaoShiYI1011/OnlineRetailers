<template>
	<div>
		<Head></Head>
		<el-row>
			<el-col :span="20" :offset="2">
				<Search class="Search"></Search>
			</el-col>
		</el-row>
		<el-row>
			<router-view></router-view>
		</el-row>
		<el-row>
			<Footer></Footer>
		</el-row>
	</div>
</template>

<script>
import Head from "@/components/User/Head/Head";
import Search from "@/components/User/Home/SearchNav"
import Footer from "@/components/User/Footer/Footer";

export default {
	name: "User",
	components: {
		Head,
		Search,
		Footer,
	},
}
</script>

<style scoped>
.Search {
	margin-top: 15px;
	margin-bottom: 5px;
}
</style>