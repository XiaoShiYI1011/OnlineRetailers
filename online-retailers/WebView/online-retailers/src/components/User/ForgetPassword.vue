<template>
	<el-row>
		<div>
			LOGO
		</div>
		<el-col :span="12" :offset="6" id="box">
			<h3 style="text-align: center; border-bottom: 1px solid #ccc; padding-bottom: 10px">重置密码</h3>
			<el-row v-if="step === 1" style="margin-top: 40px; margin-bottom: 30px">
				<el-col :span="18" :offset="4">
					<el-form :model="IdentificationRuleForm" status-icon :rules="IdentificationRules"
							 ref="IdentificationRuleForm" label-width="100px">
						<el-form-item label="手机号" prop="userPhone">
							<el-input v-model="IdentificationRuleForm.userPhone" clearable
									  style="width: 80%" placeholder="UserPhone">
								<template slot="prepend">+86</template>
								<el-button slot="append" @click="sendCode()" :disabled="disabled">
									{{ timer }}
								</el-button>
							</el-input>
						</el-form-item>
						<el-form-item label="验证码" prop="phoneCode">
							<el-input v-model="IdentificationRuleForm.phoneCode" clearable
									  style="width: 40%" placeholder="Code"></el-input>
						</el-form-item>
						<el-form-item>
							<el-button type="primary" @click="IdentificationForm('IdentificationRuleForm')"
									   style="width: 80%">
								下一步
							</el-button>
						</el-form-item>
					</el-form>
				</el-col>
			</el-row>
			<el-row v-if="step === 2" style="margin-top: 40px; margin-bottom: 30px">
				<el-col :span="18" :offset="4">
					<el-form :model="resetRuleForm" status-icon :rules="resetRules"
							 ref="resetRuleForm" label-width="100px">
						<el-form-item label="密码" prop="pass">
							<el-input type="password" v-model="resetRuleForm.pass" show-password
									  clearable autocomplete="off" style="width: 80%"
									  placeholder="UserPassWord"></el-input>
						</el-form-item>
						<el-form-item label="确认密码" prop="checkPass">
							<el-input type="password" v-model="resetRuleForm.checkPass" show-password
									  clearable autocomplete="off" style="width: 80%"
									  placeholder="Confirm UserPassWord "></el-input>
						</el-form-item>
						<el-form-item>
							<el-button type="primary" @click="resetForm('resetRuleForm')"
									   style="width: 80%">
								下一步
							</el-button>
						</el-form-item>
					</el-form>
				</el-col>
			</el-row>
			<el-row v-if="step === 3" style="margin-top: 0px">
				<el-result icon="success" title="修改成功">
					<template slot="extra">
						<h4>{{ subTitle }} 后自动返回登录页面</h4>
					</template>
				</el-result>
			</el-row>
			<el-row style="padding: 10px">
				<el-steps :active="active" :finish-status="finishStatus">
					<el-step title="身份确认"></el-step>
					<el-step title="修改密码"></el-step>
					<el-step title="完成"></el-step>
				</el-steps>
			</el-row>
		</el-col>
	</el-row>
</template>

<script>
import axios from "axios";

export default {
	name: "ForgetPassword",
	data() {
		let validateUserPhone = (rule, value, callback) => {
			if (value === '') {
				callback(new Error('请输入手机号'));
				this.checkPhone = 0;
				this.finishStatus = "error";
			} else {
				let pattern = new RegExp("^1[34578][0-9]{9}$", 'i');
				if (!pattern.test(this.IdentificationRuleForm.userPhone)) {
					callback(new Error('手机号格式错误'));
					this.checkPhone = 1;
					this.finishStatus = "error";
				} else {
					this.checkPhone = true;
					this.finishStatus = "success";
					callback();
				}
			}
		};
		let validateCode = (rule, value, callback) => {
			if (value === '') {
				callback(new Error('请输入验证码'));
			} else {
				if (this.Code != this.IdentificationRuleForm.phoneCode) {
					callback(new Error('验证码错误！'));
				} else {
					callback();
				}
			}
		};
		let validatePass = (rule, value, callback) => {
			if (value === '') {
				callback(new Error('请输入密码'));
			} else if (this.resetRuleForm.pass.length < 8) {
				callback(new Error('密码长度不能小于8位'));
			} else {
				if (this.resetRuleForm.checkPass !== '') {
					this.$refs.resetRuleForm.validateField('checkPass');
				}
				callback();
			}
		};
		let validatePass2 = (rule, value, callback) => {
			if (value === '') {
				callback(new Error('请再次输入密码'));
			} else if (value !== this.resetRuleForm.pass) {
				callback(new Error('两次输入密码不一致!'));
			} else {
				callback();
			}
		};
		return {
			step: 1,
			active: 0,
			finishStatus: "success",
			timer: "获取验证码",
            Code:"****1234567890****258852258852ascferty",//获取到的验证码
			subTitle: 0,
			checkPhone: 0,
			disabled: false,
			// 身份验证
			IdentificationRuleForm: {
				userPhone: "",
				phoneCode: ""
			},
			IdentificationRules: {
				userPhone: [
					{required: true, validator: validateUserPhone, trigger: 'blur'}
				],
				phoneCode: [
					{required: true, validator: validateCode, trigger: 'blur'}
				],
			},
			resetRuleForm: {
				pass: "",
				checkPass: "",
			},
			resetRules: {
				pass: [
					{required: true, validator: validatePass, trigger: 'blur'}
				],
				checkPass: [
					{required: true, validator: validatePass2, trigger: 'blur'}
				],
			}
		};
	},
	methods: {
		next() {
			if (this.active++ > 2) this.active = 0;
		},
		sendCode() {
			if (this.checkPhone === 0) {
				this.openErrorMsg("请输入手机号");
			} else if (this.checkPhone === 1) {
				this.openErrorMsg("手机号格式错误");
			} else {
				axios({
					method: "post",
					url: 'http://localhost:8080/demo/api/User/CheckUserPhone',
					data: {
						UserPhone: this.IdentificationRuleForm.userPhone,
					},
				}).then(
					response => {
						if (response.data == true) {
							this.countDown();
							this.$message({
								message: '验证码已发送到手机，请注意查收',
								type: 'success'
							});
                            axios({
                                url:'http://localhost:8080/demo/api/Send/Send',
                                method:'post',
                                data:{
                                    UserPhone:this.IdentificationRuleForm.userPhone
                                }
                            }).then(
                                response=>{
                                    this.Code=response.data
                                },
                                error=>{
                                    alert(error.message);
                                }
                            )
						} else {
							this.openErrorMsg("手机号不存在！请重新输入！");
						}
					},
					error => {
						console.log(error.message);
						this.openErrorMsg(error.message);
					}
				);
			}
		},
		openErrorMsg(msg) {
			this.$message.error(msg);
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
		IdentificationForm(formName) {
			this.$refs[formName].validate((valid) => {
				if (valid) {
					this.step = 2;
					this.next();
				} else {
					this.openErrorMsg('验证失败!');
					return false;
				}
			});
		},
		resetForm(formName) {
			this.$refs[formName].validate((valid) => {
				if (valid) {
					axios({
						method: "post",
						url: 'http://localhost:8080/demo/api/User/UpDateUserPwd',
						data: {
							UserPhone: this.IdentificationRuleForm.userPhone,
							UserPwd: this.resetRuleForm.checkPass,
						},
					}).then(
						response => {
							if (response.data != false) {
								this.step = 3;
								this.next();
								this.next();
								this.subTitle = 3;
								this.down = setInterval(() => {
									this.subTitle--;
									if (this.subTitle === 0) {
										clearInterval(this.down);
										this.$router.push("/User/Login");
									}
								}, 1000);
							} else {
								this.finishStatus = "error";
								this.openErrorMsg("修改失败！请重试");
							}
						},
						error => {
							console.log(error.message);
							this.openErrorMsg(error.message);
						}
					);
				} else {
					this.finishStatus = "error";
					this.next();
					this.openErrorMsg('修改失败！请重试');
					return false;
				}
			});
		}
	}
}
</script>

<style scoped>
#box {
	padding: 10px;
	box-shadow: 0 0 20px #e1e1e1;
	border-radius: 10px;
	margin-bottom: 50px;
}
</style>