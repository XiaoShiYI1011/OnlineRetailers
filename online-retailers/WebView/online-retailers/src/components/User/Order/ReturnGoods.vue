<template>
	<div style="text-align: unset">
		<el-button plain size="small" style="width: 100%" @click="dialogVisible = true">退 货</el-button>
		<el-dialog
			title="请输入退货原因"
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
					<el-form-item label="退货原因" prop="CancellationOptions">
						<el-select v-model="ruleForm.CancellationOptions" placeholder="请选择退货原因">
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
							placeholder="请输入退货详细原因"
							v-model="ruleForm.CancellationDetails"
							autocomplete="off"
							clearable>
						</el-input>
					</el-form-item>
					<el-form-item label="注意">
						<p style="color: red">商品请按照快递单上的地址，寄回商家，运费由商家承担</p>
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
	name: "ReturnGoods",
	props: ["OrderID"],
	data() {
		return {
			dialogVisible: false,
			ruleForm: {
				CancellationOptions: "",
				CancellationDetails: ""
			},
			rules: {
				CancellationOptions: [
					{required: true, message: '请选择退货原因', trigger: 'blur'},
				],
				CancellationDetails: [
					{required: true, message: '请输入详细描述', trigger: 'blur'},
				]
			},
			options: [
				{
					value: '尺码/型号不合适',
					label: '尺码/型号不合适'
				},
				{
					value: '与商品描述不符',
					label: '与商品描述不符'
				},
				{
					value: '商品受损',
					label: '商品受损'
				},
				{
					value: '商品有瑕疵',
					label: '商品有瑕疵'
				}
			],
		};
	},
	methods: {
		submitForm(formName) {
			this.$refs[formName].validate((valid) => {
				if (valid) {
					axios({
						url: "http://localhost:8080/demo/api/UserOrder/ReturnGoods",
						method: "post",
						data: {
							userID: sessionStorage.getItem("userId"),
							orderID: this.OrderID,
							reasonForCancellation: "退货：" + this.ruleForm.CancellationOptions + "：" + this.ruleForm.CancellationDetails
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