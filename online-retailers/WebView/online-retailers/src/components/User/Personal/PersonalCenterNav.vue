<template>
	<el-col :span="16" :offset="4" style="margin-top: 10px; margin-bottom: 20px">
		<el-row class="box">
			<el-col :span="6" style="height: 100%">
				<el-menu default-active="2" class="el-menu-vertical-demo"
						 router
						 @open="handleOpen"
						 @close="handleClose">
					<el-menu-item index="/User/Home/PersonalCenterNav/PersonalCenter">
						<i class="el-icon-user"></i>
						<span slot="title">个人资料</span>
					</el-menu-item>
					<el-menu-item index="/User/Home/PersonalCenterNav/OrderManagement">
							<i class="el-icon-document"></i>
							<span>订单管理</span>
					</el-menu-item>
					<el-menu-item index="/User/Home/PersonalCenterNav/AddressManager">
						<i class="el-icon-location"></i>
						<span slot="title">地址管理</span>
					</el-menu-item>
					<el-menu-item index="/User/Home/PersonalCenterNav/AccountSecurity">
						<i class="el-icon-setting"></i>
						<span slot="title">账号安全</span>
					</el-menu-item>
				</el-menu>
			</el-col>
			<el-col :span="18" style="background-color: #F2F6FC; height: 100%">
				<router-view></router-view>
			</el-col>
		</el-row>
	</el-col>
</template>

<script>
export default {
	name: "PersonalCenterNav",
	methods: {
		handleOpen(key, keyPath) {
			console.log(key, keyPath);
		},
		handleClose(key, keyPath) {
			console.log(key, keyPath);
		}
	}
}
</script>

<style scoped>
.box {
	height: 550px;
	box-shadow: 0 0 10px #DCDFE6;
	border-radius: 8px;
	overflow: hidden;
}
</style>