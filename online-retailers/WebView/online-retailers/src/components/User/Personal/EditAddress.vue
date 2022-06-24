<template>
	<div>
		<el-button type="primary" icon="el-icon-edit" circle @click="dialogVisible = true"></el-button>&nbsp;
		<el-dialog
			title="修改收货地址"
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
					<el-form-item label="地区" prop="userLocation" style="text-align: left">
						<el-cascader
							style="width: 60%;"
							v-model="ruleForm.userLocation"
							:options="options"
							:props="{ expandTrigger: 'hover' }"></el-cascader>
					</el-form-item>
					<el-form-item label="详细地址" prop="DetailedAddress" style="text-align: left">
						<el-input v-model="ruleForm.DetailedAddress" clearable placeholder="详细地址"></el-input>
					</el-form-item>
					<el-form-item label="手机号" prop="Phone" style="text-align: left">
						<el-input v-model="ruleForm.Phone" style="width: 40%;" clearable placeholder="手机号"></el-input>
					</el-form-item>
				</el-form>
			</el-col>
			<span slot="footer" class="dialog-footer">
    			<el-button @click="dialogVisible = false">取 消</el-button>
    			<el-button type="primary" @click="submitForm('ruleForm')">确 定</el-button>
  			</span>
		</el-dialog>
	</div>
</template>

<script>
import axios from "axios";

export default {
	name: "EditAddress",
	props: ["id"],
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
		submitForm(formName) {
			this.$refs[formName].validate((valid) => {
				if (valid) {
					axios({
						url: "http://localhost:8080/demo/api/User/UpdateUserRegion",
						method: "post",
						data: {
							regionID: this.id,
							province: this.ruleForm.userLocation[0],
							city: this.ruleForm.userLocation[1],
							detailedAddress: this.ruleForm.DetailedAddress,
							userPhone: this.ruleForm.Phone,
						}
					}).then(
						response => {
							if (response.data == true) {
								this.successMsg("修改成功");
								this.dialogVisible = false;
							} else {
								this.errorMsg("删除失败！");
							}
						},
						error => {
							this.errorMsg("请求失败！" + error.message);
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
		axios.get(`http://localhost:8080/demo/api/User/GetUserRegionForID?regionID=${this.id}`).then(
			response => {
				this.ruleForm.DetailedAddress = response.data.DetailedAddress;
				this.ruleForm.Phone = response.data.Phone;
			},
			error => {
				this.errorMsg("请求失败！" + error.message);
			}
		);
	}
}
</script>

<style scoped>

</style>