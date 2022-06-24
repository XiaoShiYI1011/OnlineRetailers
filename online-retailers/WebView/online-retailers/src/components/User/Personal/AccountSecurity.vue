<template>
	<el-col :span="10" :offset="7" style="margin-top: 27%">
		<el-button type="primary" round style="width: 100%; margin-bottom: 20px" @click="updatePwd">
			<i class="el-icon-edit-outline"></i> 修改密码
		</el-button>
		<br>
		<el-button round style="width: 100%" id="deleteBtn" @click="outLogin">
			<i class="el-icon-switch-button"></i> 退出账号
		</el-button>
	</el-col>
</template>

<script>
export default {
	name: "AccountSecurity",
	methods: {
		updatePwd() {
			this.$router.push("/User/ForgetPassword");
		},
		outLogin() {
			sessionStorage.removeItem("isLogin");
			sessionStorage.removeItem("userId");
			this.$router.push("/User/Home");
			this.$router.go(0);
		},
	}
}
</script>

<style scoped>
#deleteBtn:hover {
	color: red;
}
</style>