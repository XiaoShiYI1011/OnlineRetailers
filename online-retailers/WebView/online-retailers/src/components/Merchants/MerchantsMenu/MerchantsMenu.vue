<template>
	<el-menu
		default-active="2"
		class="el-menu-vertical-demo"
		@open="handleOpen"
		@close="handleClose"
		background-color="#545c64"
		text-color="#fff"
		router
		active-text-color="#ffd04b">
		<el-menu-item index="/BusinessBackground/mrtchantsInfo">
			<i class="el-icon-house"></i>
			<span slot="title">个人信息</span>
		</el-menu-item>
		<el-submenu index="2">
			<template slot="title">
				<i class="el-icon-sell"></i>
				<span>商品</span>
			</template>
			<el-menu-item-group>
				<el-menu-item index="/BusinessBackground/GoodsList">商品列表</el-menu-item>
				<el-menu-item index="/BusinessBackground/AddGoods">添加商品</el-menu-item>
			</el-menu-item-group>
		</el-submenu>
		<el-submenu index="3">
			<template slot="title">
				<i class="el-icon-date"></i>
				<span>订单</span>
			</template>
			<el-menu-item-group>
				<el-menu-item index="/BusinessBackground/OrderList">订单列表</el-menu-item>
				<el-menu-item index="/BusinessBackground/OrderReturn">退货申请审核</el-menu-item>
			</el-menu-item-group>
		</el-submenu>
    <el-submenu index="4">
      <template slot="title">
        <i class="el-icon-date"></i>
        <span>店铺</span>
      </template>
      <el-menu-item-group>
        <el-menu-item index="/BusinessBackground/storeList">店铺列表</el-menu-item>
        <el-menu-item index="/BusinessBackground/AddStore">店铺添加</el-menu-item>
      </el-menu-item-group>
    </el-submenu>
		<el-menu-item index="/BusinessBackground/MerMessage">
			<i class="el-icon-chat-round"></i>
			<span slot="title">消息</span>
		</el-menu-item>
    <el-menu-item>
      <i class="el-icon-chat-round"></i>
      <span @click="end" slot="title">退出登录</span>
    </el-menu-item>
	</el-menu>
</template>

<script>
export default {
	methods: {
		handleOpen(key, keyPath) {
			console.log(key, keyPath);
		},
		handleClose(key, keyPath) {
			console.log(key, keyPath);
		},
    end(){
      sessionStorage.removeItem("MerchantsID")
      this.$store.state.MerchantsID=null;
      this.$store.state.GoodsList=[];
      this.$router.push("/User/Home");
    }
	}
}
</script>

<style scoped>
.el-menu-vertical-demo {
	height: 1000px;
}
</style>