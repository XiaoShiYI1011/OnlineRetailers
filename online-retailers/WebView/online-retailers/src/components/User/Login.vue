<template>
	<el-row>
		<el-col :span="10" style="display: flex">
			<div style="width: 78%; height: 100%;">
				<img src="../../assets/LoginBg.jpg" style="width: 100%;">
			</div>
			<div class="logo-box">
				<img src="../../assets/logo.png" class="logo">&nbsp;&nbsp;<span><b>京西账号</b></span>
			</div>
		</el-col>
		<el-col :span="14">
			<el-row style="margin-left: 13%; margin-top: 2%">
				<div class="box">
					<el-col :span="15" style="border: 1px solid #ccc; padding: 15px">
						<el-tabs v-model="activeName" @tab-click="handleClick">
							<el-tab-pane label="登录" name="first">
								<el-form :model="loginRuleForm" :rules="loginRules" ref="loginRules" label-width="100px"
										 class="demo-ruleForm" status-icon>
									<el-form-item label="账号" prop="loginUserName">
										<el-input v-model="loginRuleForm.loginUserName" clearable
												  style="width: 90%" placeholder="用户名或手机号"></el-input>
									</el-form-item>
									<el-form-item label="密码" prop="loginUserPwd">
										<el-input type="password" v-model="loginRuleForm.loginUserPwd" show-password
												  clearable style="width: 90%" placeholder="密码"></el-input>
									</el-form-item>
									<el-form-item>
										<el-checkbox v-model="autoLogin">记住密码</el-checkbox>
									</el-form-item>
									<el-form-item>
										<el-button type="primary" @click="loginForm('loginRules')" style="width: 80%">
											登录
										</el-button>
										<br>
										<el-button @click="resetForm('loginRules')"
												   style="margin-top: 10px; width: 80%">取消
										</el-button>
										<router-link to="/User/ForgetPassword" style="margin-left: 62%">忘记密码
										</router-link>
									</el-form-item>
								</el-form>
								<el-row>
									<h4 class="third-party">第三方登录</h4>
								</el-row>
								<el-row>
									第三方登录api
								</el-row>
							</el-tab-pane>
							<el-tab-pane label="注册" name="second">
								<el-form :model="registerRuleForm" :rules="registerRules" ref="registerRuleForm"
										 label-width="100px" class="demo-ruleForm" status-icon>
									<el-form-item label="账号" prop="registerUserName">
										<el-input v-model="registerRuleForm.registerUserName" clearable
												  placeholder="UserName"></el-input>
									</el-form-item>
									<el-form-item label="密码" prop="pass">
										<el-input type="password" v-model="registerRuleForm.pass" show-password
												  clearable autocomplete="off" placeholder="UserPassWord"></el-input>
									</el-form-item>
									<el-form-item label="确认密码" prop="checkPass">
										<el-input type="password" v-model="registerRuleForm.checkPass" show-password
												  clearable autocomplete="off"
												  placeholder="Confirm UserPassWord "></el-input>
									</el-form-item>
									<el-form-item label="手机号" prop="registerUserPhone">
										<el-input v-model="registerRuleForm.registerUserPhone" clearable
												  placeholder="UserPhone">
											<template slot="prepend">+86</template>
											<el-button slot="append" @click="sendCode()" :disabled="disabled">
												{{ timer }}
											</el-button>
										</el-input>
									</el-form-item>
									<el-form-item label="验证码" prop="registerCode">
										<el-input v-model="registerRuleForm.registerCode" clearable
												  style="width: 40%" placeholder="Code"></el-input>
									</el-form-item>
									<el-form-item>
										<el-checkbox v-model="checked">已阅读并同意京西帐号 <a href="#">用户协议</a> 和 <a href="#">隐私政策</a>
										</el-checkbox>
									</el-form-item>
									<el-form-item>
										<el-button type="primary" @click="registerForm('registerRuleForm')"
												   style="width: 80%">注册
										</el-button>
									</el-form-item>
								</el-form>
							</el-tab-pane>
						</el-tabs>
					</el-col>
				</div>
			</el-row>
		</el-col>
	</el-row>
</template>

<script>
import axios from 'axios'

export default {
	name: "Login",
	data() {
		let validatePass = (rule, value, callback) => {
			if (value === '') {
				callback(new Error('请输入密码'));
			} else if (this.registerRuleForm.pass.length < 8) {
				callback(new Error('密码长度不能小于8位'));
			} else {
				if (this.registerRuleForm.checkPass !== '') {
					this.$refs.registerRuleForm.validateField('checkPass');
				}
				callback();
			}
		};
		let validatePass2 = (rule, value, callback) => {
			if (value === '') {
				callback(new Error('请再次输入密码'));
			} else if (value !== this.registerRuleForm.pass) {
				callback(new Error('两次输入密码不一致!'));
			} else {
				callback();
			}
		};
		let validatePass3 = (rule, value, callback) => {
			if (value === '') {
				callback(new Error('请输入手机号'));
				this.checkPhone = 0;
			} else {
				let pattern = new RegExp("^1[34578][0-9]{9}$", 'i');
				if (!pattern.test(this.registerRuleForm.registerUserPhone)) {
					callback(new Error('手机号格式错误'));
					this.checkPhone = 1;
				} else {
					this.checkPhone = true;
					callback();
				}
			}
		};
		let validatePass4 = (rule, value, callback) => {
			if (value === '') {
				callback(new Error('请输入验证码'));
			} else {
				if (this.Code != this.registerRuleForm.registerCode) {
					callback(new Error('验证码错误！'));
				} else {
					callback();
				}
			}
		};
		return {
			disabled: false,
            Code:"****1234567890****258852258852ascferty",//获取到的验证码
			timer: "获取验证码",
			checkPhone: 0,
			activeName: 'first',
			// 登录
			loginRuleForm: {
				loginUserName: "",
				loginUserPwd: "",
			},
			loginRules: {
				loginUserName: [
					{required: true, message: '请账号', trigger: 'blur'},
				],
				loginUserPwd: [
					{required: true, message: '请输入密码', trigger: 'blur'},
				]
			},
			// 注册
			registerRuleForm: {
				registerUserName: "",
				pass: "",
				checkPass: "",
				registerUserPhone: "",
				registerCode: "",
			},
			registerRules: {
				registerUserName: [
					{required: true, message: '请账号', trigger: 'blur'},
				],
				pass: [
					{required: true, validator: validatePass, trigger: 'blur'}
				],
				checkPass: [
					{required: true, validator: validatePass2, trigger: 'blur'}
				],
				registerUserPhone: [
					{required: true, validator: validatePass3, trigger: 'blur'}
				],
				registerCode: [
					{required: true, validator: validatePass4, trigger: 'blur'}
				],
			},
			autoLogin: false,  // 记住密码
			checked: false  // 强制同意用户协议
		}
	},
	methods: {
		handleClick(tab, event) {
			console.log(tab, event);
		},
		loginForm(formName) {
			this.$refs[formName].validate((valid) => {
				if (valid) {
					axios({
						method: "post",
						url: 'http://localhost:8080/demo/api/User/UserLogin',
						data: {
							UserName: this.loginRuleForm.loginUserName,
							UserPwd: this.loginRuleForm.loginUserPwd,
						},
					}).then(
						response => {
							if (response.data != false) {
								if (this.autoLogin === true) {
									sessionStorage.setItem("autoLogin", "true");
									sessionStorage.setItem("userPwd", this.loginRuleForm.loginUserPwd);
								} else {
									sessionStorage.setItem("autoLogin", "false");
									sessionStorage.removeItem("userPwd");
								}
								sessionStorage.setItem("userName", this.loginRuleForm.loginUserName);
								this.$store.commit("SETUSERID", response.data.UserID);
								this.$store.commit("UPDATEISLOGIN", true);
								this.$router.push("/User/Home");
							} else {
								this.openErrorMsg("账号或者密码错误");
							}
						},
						error => {
							console.log(error.message);
							this.openErrorMsg(error.message);
						}
					)
				} else {
					this.openErrorMsg('登录失败!!');
					return false;
				}
			});
		},
		registerForm(formName) {
			this.$refs[formName].validate((valid) => {
				if (valid) {

					if (this.checked === true) {
                        if (this.Code===this.registerRuleForm.registerCode){
                        axios({
                            url: "http://localhost:8080/demo/api/User/UserRegister",
                            method: "post",
                            data: {
                                UserName: this.registerRuleForm.registerUserName,
                                UserPwd: this.registerRuleForm.checkPass,
                                UserPhone: this.registerRuleForm.registerUserPhone
                            }
                        }).then(
                            response => {
                                if (response.data == true) {
                                    this.successMse("注册成功，请登录");
                                    this.$router.go(0);
                                } else {
                                    this.openErrorMsg("账号或手机号已存在，请重新注册");
                                }
                            },
                            error => {
                                console.log(error.message);
                                this.openErrorMsg(error.message);
                            }
                        );
                        }
					} else {
						this.openErrorMsg("请阅读并同意京西帐号用户协议和隐私政策");
					}
				} else {
					this.openErrorMsg('注册失败!!');
					return false;
				}
			});
		},
		resetForm(formName) {
			this.$refs[formName].resetFields();
		},
		sendCode() {
			if (this.checkPhone === 0) {
				this.openErrorMsg("请输入手机号");
			} else if (this.checkPhone === 1) {
				this.openErrorMsg("手机号格式错误");
			} else {
				this.countDown();
                this.$message({
                    message: '验证码已发送到手机，请注意查收',
                    type: 'success'
                });
                axios({
                    url:'http://localhost:8080/demo/api/Send/Send',
                    method:'post',
                    data:{
                        UserPhone:this.registerRuleForm.registerUserPhone
                    }
                }).then(
                    response=>{
                        this.Code=response.data
                    },
                    error=>{
                        alert(error.message);
                    }
                )
			}
		},
		openErrorMsg(msg) {
			this.$message.error(msg);
		},
		successMse(msg) {
			this.$message({
				message: msg,
				type: 'success'
			});
		},
		// 验证码倒计时
		countDown() {
			this.disabled = true;
			this.timer = 60;
			this.down = setInterval(() => {
				this.timer--;
				if (this.timer === 0) {
					clearInterval(this.down);
					this.timer = "重新获取";
					this.disabled = false;
				}
			}, 1000);
		},
	},
	mounted() {
		if (sessionStorage.getItem("autoLogin") === "true") {
			this.loginRuleForm.loginUserName = sessionStorage.getItem("userName");
			this.loginRuleForm.loginUserPwd = sessionStorage.getItem("userPwd");
			this.autoLogin = true;
		} else {
			this.loginRuleForm.loginUserName = sessionStorage.getItem("userName");
			this.autoLogin = false;
			sessionStorage.removeItem("userPwd");
		}
	},
}
</script>

<style scoped>
.box {
	padding: 30px;
}

.logo-box {
	height: 50px;
	margin: 5px;
}

.logo {
	width: 50px;
	height: 100%;
	border-radius: 19px;
	border: 1px solid transparent;
	overflow: hidden;
}

.third-party {
	text-align: center;
	color: #ccc;
	border-bottom: 3px solid #E4E7ED;
	padding-bottom: 5px
}
</style>