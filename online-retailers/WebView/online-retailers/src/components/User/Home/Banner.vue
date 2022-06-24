<template>
	<el-row>
		<el-col :span="24">
			<div class="grid-content bg-purple-light">
				<el-carousel :interval="5000" arrow="always">
					<el-carousel-item v-for="(item,index) in imgPath" :key="index">
						<img :src="item" class="banner-img">
					</el-carousel-item>
				</el-carousel>
			</div>
		</el-col>
	</el-row>
</template>

<script>
export default {
	name: "Banner",
	data() {
		return {
			imgPath: [
				"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/b158441e01e7acd9ad27a49bbac4c0fa.jpg?thumb=1&w=1533&h=575&f=webp&q=90",
				"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9721d9d8b6ee711d975c93b34f6a95ca.png?thumb=1&w=1533&h=575&f=webp&q=90"
			]
		}
	},
}
</script>

<style scoped>
.side-nav {
	background: #545c64;
	height: 300px;
	color: #fff;
}

.nav-stacked > a {
	color: #fff;
}

.nav-stacked > a > li {
	padding: 15px 0px;
	display: flex;
	justify-content: space-around;
}

.nav-stacked > a > li:hover {
	background: #434a50;
}

.banner-img {
	width: 100%;
}
</style>