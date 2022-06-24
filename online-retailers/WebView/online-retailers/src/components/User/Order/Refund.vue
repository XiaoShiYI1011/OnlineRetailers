<template>
	<div style="text-align: unset">
		<el-button plain size="small" style="width: 100%" @click="dialogVisible = true">退 款</el-button>
		<el-dialog
			title="请输入退款原因"
			:visible.sync="dialogVisible"
			width="35%">
			<el-col :span="21" :offset="1">
				<el-form
					:model="ruleForm"
					status-icon
					:rules="rules"
					ref="ruleForm"
					label-width="100px"
					class="demo-ruleForm">
					<el-form-item label="退款原因" prop="CancellationOptions">
						<el-select v-model="ruleForm.CancellationOptions" placeholder="请选择退款原因">
							<el-option
								v-for="item in options"
								:key="item.value"
								:label="item.label"
								:value="item.value">
							</el-option>
						</el-select>
					</el-form-item>
					<el-form-item label="补充描述" prop="CancellationDetails">
						<el-input
							type="textarea"
							:rows="4"
							placeholder="请输入退款详细原因"
							v-model="ruleForm.CancellationDetails"
							autocomplete="off"
							clearable>
						</el-input>
					</el-form-item>
					<el-form-item label="退款金额">
						<p style="color: red">￥{{ sunPrice }}</p>
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
	name: "Refund",
	props: ["OrderID", "sunPrice"],
	data() {
		return {
			dialogVisible: false,
			ruleForm: {
				CancellationOptions: "",
				CancellationDetails: ""
			},
			rules: {
				CancellationOptions: [
					{required: true, message: '请选择退款原因', trigger: 'blur'},
				],
				CancellationDetails: [
					{required: true, message: '请输入详细描述', trigger: 'blur'},
				]
			},
			options: [
				{
					value: '不喜欢/不想要',
					label: '不喜欢/不想要'
				},
				{
					value: '电话/地址填写错误',
					label: '电话/地址填写错误'
				},
				{
					value: '尺码/型号选择错误',
					label: '尺码/型号选择错误'
				}
			],
		};
	},
	methods: {
		submitForm(formName) {
			this.$refs[formName].validate((valid) => {
				if (valid) {
					axios({
						url: "http://localhost:8080/demo/api/UserOrder/SubmitReturnsInfo",
						method: "post",
						data: {
							orderID: this.OrderID,
							userID: sessionStorage.getItem("userId"),
							reasonForCancellation: "退款：" + this.ruleForm.CancellationOptions + "：" + this.ruleForm.CancellationDetails
						}
					}).then(
						response => {
							if (response.data === true) {
								this.dialogVisible = false;
								this.$router.go(0);
							} else {
								this.$message.error("提交失败，请重新填写并提交");
							}
						},
						error => {
							this.$message.error("出现错误，请联系网站管理员！" + error.message);
						}
					)
				} else {
					this.$message.error('出现错误，请重新填写并提交！');
					return false;
				}
			});
		},
	}
}
</script>

<style scoped>

</style>