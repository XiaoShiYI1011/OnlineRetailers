<template>
	<el-row style="height: 100%">
		<el-col :span="24" style="padding: 10px;">
			<el-col :span="24">
				<el-col :span="4" :offset="10">
					<div class="head-portrait">
						<div>
							<div src="src/assets/logo.png" class="editImg" @click="centerDialogVisible = true"><i
								class="el-icon-camera"></i></div>
							<img :src="imgPath">
						</div>
					</div>
					<div>
						<el-dialog title="修改头像" :visible.sync="centerDialogVisible" width="40%">
							<UpLoadHeadPortrait></UpLoadHeadPortrait>
						</el-dialog>
					</div>
				</el-col>
				<div class="bg"></div>
			</el-col>
			<el-col :span="24" style="background-color: white; padding-top: 10px">
				<el-col :span="18" :offset="3">
					<el-descriptions title="用户信息" direction="vertical">
						<el-descriptions-item label="用户名">{{ userName }}</el-descriptions-item>
						<el-descriptions-item label="手机号">{{ userPhone }}</el-descriptions-item>
						<el-descriptions-item label="身份证号">{{ userIDCard }}</el-descriptions-item>
						<el-descriptions-item label="生日">{{ userBirthday.substring(0, 10) }}</el-descriptions-item>
						<el-descriptions-item label="所在地">{{ userLocation }}</el-descriptions-item>
					</el-descriptions>
				</el-col>
				<el-col :span="1">
					<el-button
						type="primary"
						icon="el-icon-edit"
						circle
						style="margin-top: 125px; margin-left: 40px"
						@click="centerDialogVisible2 = true">
					</el-button>
				</el-col>
				<div>
					<el-dialog
						title="修改个人信息"
						:visible.sync="centerDialogVisible2"
						width="40%">
						<el-row>
							<el-col :span="18" :offset="2">
								<el-form
									:model="ruleForm"
									status-icon
									:rules="rules"
									ref="ruleForm"
									label-width="100px"
									class="demo-ruleForm">
									<el-form-item label="用户名" prop="userName">
										<el-input v-model="ruleForm.userName" clearable></el-input>
									</el-form-item>
									<el-form-item label="手机号" prop="userPhone">
										<el-input v-model="ruleForm.userPhone" clearable></el-input>
									</el-form-item>
									<el-form-item label="身份证号" prop="userIDCard">
										<el-input v-model="ruleForm.userIDCard" clearable></el-input>
									</el-form-item>
									<el-form-item label="生日" prop="userBirthday">
										<el-date-picker
											v-model="ruleForm.userBirthday"
											type="date"
											value-format="yyyy-MM-dd"
											placeholder="选择日期"></el-date-picker>
									</el-form-item>
									<el-form-item label="所在地" prop="userLocation">
										<el-cascader
											style="width: 50%;"
											v-model="ruleForm.userLocation"
											:options="options"
											:props="{ expandTrigger: 'hover' }"></el-cascader>
									</el-form-item>
								</el-form>
							</el-col>
						</el-row>
						<span slot="footer" class="dialog-footer">
							<el-button @click="centerDialogVisible2 = false">取 消</el-button>
							<el-button type="primary" @click="submitForm('ruleForm')">确定</el-button>
						</span>
					</el-dialog>
				</div>
			</el-col>
			<el-col :span="24" style="background-color: white; padding: 10px; height: 185px; margin-top: 10px">
				<el-col :span="22" :offset="1">
					<h5><b>根据您的购物车，我们推算出您的喜好为</b><small> （可以手动删除）</small></h5>
					<div class="tags infinite-list" v-if="tags != false">
						<el-tag
							class="tag"
							v-for="(item, index) in tags"
							:key="index"
							closable
							:type="item.type"
							:disable-transitions="false"
							@close="handleClose(item)">
							{{ item.name }}
						</el-tag>
					</div>
					<div style="height: 135px;" v-if="tags == false">
						<h3 style="text-align: center; color: #C0C4CC; line-height: 120px">暂无数据···</h3>
					</div>
				</el-col>
			</el-col>
		</el-col>
	</el-row>
</template>

<script>
import axios from "axios";
import UpLoadHeadPortrait from "@/components/User/Personal/UpLoadHeadPortrait";

export default {
	name: "PersonalCenter",
	components: {
		UpLoadHeadPortrait,
	},
	data() {
		let validatePhone = (rule, value, callback) => {
			if (value === '') {
				callback(new Error('请输入手机号'));
			} else {
				let pattern = new RegExp("^1[34578][0-9]{9}$", 'i');
				if (!pattern.test(this.ruleForm.userPhone)) {
					callback(new Error('手机号格式错误'));
				} else {
					callback();
				}
			}
		};
		let validateIDCard = (rule, value, callback) => {
			if (value === '') {
				callback(new Error('请输入身份证号'));
			} else {
				let pattern = new RegExp("/(^\\d{15}$)|(^\\d{18}$)|(^\\d{17}(\\d|X|x)$)/", 'i');
				if (!pattern.test(this.ruleForm.userIDCard)) {
					callback(new Error('身份证号格式错误'));
				} else {
					callback();
				}
			}
		};
		return {
			tags: [],
			centerDialogVisible: false,
			centerDialogVisible2: false,
			imgPath: "",
			userName: "",
			userPhone: "",
			userIDCard: "",
			userBirthday: "",
			userLocation: "",
			options: [],
			ruleForm: {
				userName: this.userName,
				userPhone: this.userPhone,
				userIDCard: this.userIDCard,
				userBirthday: "",
				userLocation: ""
			},
			rules: {
				userName: [
					{required: true, message: '请输入账号', trigger: 'blur'},
				],
				userPhone: [
					{required: true, validator: validatePhone, trigger: 'blur'}
				],
				userIDCard: [
					{required: true, validator: validateIDCard, trigger: 'blur'}
				],
				userBirthday: [
					{required: true, message: '请选择生日', trigger: 'blur'},
				],
				userLocation: [
					{required: true, message: '请选择所在地', trigger: 'blur'},
				]
			}
		}
	},
	methods: {
		submitForm(formName) {
			this.$refs[formName].validate((valid) => {
				if (valid) {
					axios({
						url: "http://localhost:8080/demo/api/User/UpDateUserInfo",
						method: "post",
						data: {
							userID: sessionStorage.getItem("userId"),
							userName: this.ruleForm.userName,
							userPhone: this.ruleForm.userPhone,
							userIDCard: this.ruleForm.userIDCard,
							userBirthday: this.ruleForm.userBirthday,
							userCity: this.ruleForm.userLocation[0],
							userProvince: this.ruleForm.userLocation[1],
						}
					}).then(
						response => {
							if (response.data == true) {
								this.GetUserInfo();
								this.centerDialogVisible2 = false;
								this.successMsg("修改成功");
							} else {
								this.errorMsg("修改失败！请重试！")
							}
						},
						error => {
							console.log(error.message);
						}
					);
				} else {
					console.log('error submit!!');
					return false;
				}
			});
		},
		errorMsg(msg) {
			this.$message.error(msg);
		},
		successMsg(msg) {
			this.$message({
				message: msg,
				type: 'success'
			});
		},
		handleClose(tag) {
			axios({
				url: "http://localhost:8080/demo/api/User/DeleteKeyWork",
				method: "post",
				data: {
					userID: sessionStorage.getItem("userId"),
					tagName: tag.name,
				}
			}).then(
				response => {
					if (response.data == true) {
						this.tags.splice(this.tags.indexOf(tag), 1);
						this.successMsg("删除成功");
					} else {
						this.errorMsg("删除失败");
					}
				},
				error => {
					this.errorMsg("请求失败" + error.message);
				}
			)
		},
		getLocalTime(timeStamp) {
			return new Date(parseInt(Math.abs(timeStamp))).toLocaleString().replace(/:\d{1,2}$/, ' ');
		},
		GetUserInfo() {
			axios({
				url: "http://localhost:8080/demo/api/User/GetUserInfo",
				method: "post",
				data: {
					UserID: sessionStorage.getItem("userId"),
				}
			}).then(
				response => {
					this.imgPath = "http://localhost:61124" + response.data[0].UserImg;
					this.userName = response.data[0].UserAccount;
					this.ruleForm.userName = response.data[0].UserAccount;
					this.userPhone = response.data[0].UserPhone;
					this.ruleForm.userPhone = response.data[0].UserPhone;
					this.userIDCard = response.data[0].UserIDCard == undefined ? "未设置" : response.data[0].UserIDCard;
					this.ruleForm.userIDCard = response.data[0].UserIDCard;
					if (response.data[0].UserBirthday == undefined) {
						this.userBirthday = "未设置";
					} else {
						let time = response.data[0].UserBirthday.replace(/[^0-9]/ig, "");
						this.userBirthday = this.getLocalTime(time);
					}
					if (response.data[0].CityName == undefined) {
						this.userLocation = "未设置";
					} else {
						this.userLocation = response.data[0].CityName + response.data[0].ProvinceName
					}
				},
				error => {
					console.log("请求失败" + error.message);
				}
			);
		}
	},
	mounted() {
		this.GetUserInfo();
		axios.get(`http://localhost:8080/demo/api/User/GetKeyWork?userID=${sessionStorage.getItem("userId")}`).then(
			response => {
				if (response.data != false) {
					this.tags = response.data;
				} else {
					this.tags = false;
				}
			},
			error => {
				console.log("请求失败！" + error.message);
			}
		);
		axios.get('http://localhost:8080/demo/api/address/Address').then(
			response => {
				response.data.forEach(item => {
					let children = [];
					axios.get(`http://localhost:8080/demo/api/address/Address?CityID=${item.CityID}`).then(
						response => {
							response.data.forEach(items => {
								children.push({label: items.ProvinceName, value: items.ProvinceID});
							})
						},
						error => {
							console.log(error.message)
						}
					)
					this.options.push({label: item.CityName, value: item.CityID, children});
				})
			},
			error => {
				console.log(error.message)
			}
		);
	},
}
</script>

<style scoped>
.head-portrait {
	width: 150px;
	height: 150px;
	background-color: #F2F6FC;
	border-radius: 100%;
	border: 1px solid transparent;
}

.head-portrait > div {
	margin: 5px;
	border-radius: 100%;
	background-color: white;
	overflow: hidden;
	border: 1px solid #DCDFE6;
	position: relative;
}

.head-portrait > div > img {
	width: 140px;
	height: 135px;
	background-color: white;
}

.bg {
	height: 50px;
	background-color: white;
	margin-top: 90px;
}

.editImg {
	position: absolute;
	font-size: 80px;
	text-align: center;
	background-color: #ccc;
	opacity: 0;
	width: 140px;
	height: 140px;
	line-height: 140px;
	color: black;
	transition: all 0.25s ease-in;
}

.editImg:hover {
	opacity: 0.7;
}

.tag {
	margin: 5px;
}

.tags {
	height: 135px;
	overflow: auto;
}

.infinite-list {
	scrollbar-width: none; /* Firefox(隐藏滚动条) */
}

.infinite-list::-webkit-scrollbar {
	display: none; /* Chrome Safari(隐藏滚动条) */
}
</style>