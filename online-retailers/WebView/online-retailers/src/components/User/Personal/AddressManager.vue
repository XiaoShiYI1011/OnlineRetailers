<template>
	<el-col :span="24" style=" height: 100%;">
		<div style="height: 90%;padding: 10px; overflow: auto">
			<el-row class="address" v-for="(item,index) in AddressList" :key="item.RegionID">
				<el-col :span="3">{{ item.UserAccount }}</el-col>
				<el-col :span="10">
					<p style="margin-top: 10px">{{ item.DetailedAddress }}</p>
				</el-col>
				<el-col :span="4">{{ item.Phone }}</el-col>
				<el-col :span="3">
					<span>默认</span>&nbsp;
					<el-switch
						v-model="isDefault[index]"
						active-color="#13ce66"
						inactive-color="#ff4949"
						@change="UnDefault(item.RegionID, isDefault[index])">
					</el-switch>
				</el-col>
				<el-col :span="4">
					<EditAddress :id="item.RegionID" style="display: inline"></EditAddress>
					<el-popconfirm title="确定删除吗？" @confirm="Delete(item.RegionID)">
						<el-button type="danger" icon="el-icon-delete" circle slot="reference"></el-button>
					</el-popconfirm>
				</el-col>
			</el-row>
		</div>
		<el-col :span="24" class="add-box">
			<el-button
				type="primary"
				icon="el-icon-plus"
				circle
				style="margin-top: 8px; margin-right: 20px"
				@click="dialogVisible = true"></el-button>
		</el-col>
		<el-dialog
			title="添加收货地址"
			:visible.sync="dialogVisible"
			width="40%">
			<el-col :span="20" :offset="2">
				<el-form
					:model="ruleForm"
					:rules="rules"
					ref="ruleForm"
					label-width="100px"
					class="demo-ruleForm"
					status-icon>
					<el-form-item label="地区" prop="userLocation">
						<el-cascader
							style="width: 50%;"
							v-model="ruleForm.userLocation"
							:options="options"
							:props="{ expandTrigger: 'hover' }"></el-cascader>
					</el-form-item>
					<el-form-item label="详细地址" prop="DetailedAddress">
						<el-input v-model="ruleForm.DetailedAddress" clearable placeholder="详细地址"></el-input>
					</el-form-item>
					<el-form-item label="手机号" prop="Phone">
						<el-input v-model="ruleForm.Phone" style="width: 60%;" clearable placeholder="手机号"></el-input>
					</el-form-item>
				</el-form>
			</el-col>
			<span slot="footer" class="dialog-footer">
				<el-button @click="dialogVisible = false">取 消</el-button>
				<el-button type="primary" @click="submitForm('ruleForm')">确 定</el-button>
			</span>
		</el-dialog>
	</el-col>
</template>

<script>
import axios from "axios";
import EditAddress from "@/components/User/Personal/EditAddress";

export default {
	name: "AddressManager",
	components: {
		EditAddress
	},
	data() {
		let validatePhone = (rule, value, callback) => {
			if (value === '') {
				callback(new Error('请输入手机号'));
			} else {
				let pattern = new RegExp("^1[34578][0-9]{9}$", 'i');
				if (!pattern.test(this.ruleForm.Phone)) {
					callback(new Error('手机号格式错误'));
				} else {
					callback();
				}
			}
		};
		return {
			AddressList: [],
			isDefault: [],
			dialogVisible: false,
			options: [],
			ruleForm: {
				userLocation: "",
				Phone: "",
				DetailedAddress: "",
			},
			rules: {
				userLocation: [
					{required: true, message: '请选择地区', trigger: 'blur'},
				],
				Phone: [
					{required: true, validator: validatePhone, trigger: 'blur'}
				],
				DetailedAddress: [
					{required: true, message: '请输入详细地址', trigger: 'blur'},
				],
			}
		}
	},
	methods: {
		errorMsg(msg) {
			this.$message.error(msg);
		},
		successMsg(msg) {
			this.$message({
				message: msg,
				type: 'success'
			});
		},
		Delete(RegionID) {
			axios.get(`http://localhost:8080/demo/api/User/DeleteUserRegion?RegionID=${RegionID}`).then(
				response => {
					if (response.data == true) {
						this.successMsg("删除成功！");
						this.getUserRegion();
					} else {
						this.errorMsg("删除失败！");
					}
				},
				error => {
					this.errorMsg("删除失败！", error.message);
				}
			)
		},
		UnDefault(RegionID, isDefault) {
			axios({
				url: "http://localhost:8080/demo/api/User/UnDefault",
				method: "post",
				data: {
					regionID: RegionID,
					userID: sessionStorage.getItem("userId"),
					IsDefault: isDefault,
				}
			}).then(
				response => {
					if (response.data == true) {
						this.getUserRegion();
						this.successMsg("修改成功");
					} else {
						this.errorMsg("修改失败");
					}
				},
				error => {
					this.errorMsg("请求失败" + error.message);
				}
			)
		},
		getUserRegion() {
			axios.get(`http://localhost:8080/demo/api/User/SelectUserRegion?UserID=${sessionStorage.getItem("userId")}`).then(
				response => {
					this.AddressList = response.data;
					this.isDefault.length = response.data.length;
					this.AddressList.forEach((item, index) => {
						if (item.IsDefault == 0) {
							item.IsDefault = true;
							this.isDefault[index] = true;
						} else {
							item.IsDefault = false;
							this.isDefault[index] = false;
						}
					});
				},
				error => {
					this.errorMsg("请求失败" + error.message);
				}
			);
		},
		submitForm(formName) {
			this.$refs[formName].validate((valid) => {
				if (valid) {
					axios({
						url: "http://localhost:8080/demo/api/User/InsertUserRegion",
						method: "post",
						data: {
							userID: sessionStorage.getItem("userId"),
							province: this.ruleForm.userLocation[0],
							city: this.ruleForm.userLocation[1],
							detailedAddress: this.ruleForm.DetailedAddress,
							userPhone: this.ruleForm.Phone,
						}
					}).then(
						response => {
							if (response.data == true) {
								this.getUserRegion();
								this.successMsg("添加成功");
								this.dialogVisible = false;
							} else {
								this.errorMsg("添加失败");
							}
						},
						error => {
							this.errorMsg("请求失败" + error.message);
						}
					);
				} else {
					console.log('error submit!!');
					return false;
				}
			});
		},
	},
	mounted() {
		this.getUserRegion();
		axios.get('http://localhost:8080/demo/api/address/Address').then(
			response => {
				response.data.forEach(item => {
					let children = [];
					axios.get(`http://localhost:8080/demo/api/address/Address?CityID=${item.CityID}`).then(
						response => {
							response.data.forEach(items => {
								children.push({label: items.ProvinceName, value: items.ProvinceName});
							})
						},
						error => {
							console.log(error.message)
						}
					)
					this.options.push({label: item.CityName, value: item.CityName, children});
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
.address {
	background-color: white;
	border-radius: 10px;
	padding: 5px;
	margin-bottom: 8px;
}

.address > div {
	border-right: 1px dashed #DCDFE6;
	margin: 5px 0px;
	text-align: center;
	height: 60px;
	line-height: 60px
}

.address > div:nth-child(2) {
	text-align: left;
	line-height: unset;
	padding-left: 10px;
	padding-right: 10px;
}

.address > div:last-child {
	border: none;
}

.add-box {
	background-color: white;
	height: 10%;
	text-align: right;
	box-shadow: rgb(234, 233, 233) 5px -8px 15px;
}
</style>