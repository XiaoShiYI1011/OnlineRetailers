<template>
	<div class="AddGoods">
		<el-row class="el-row-1">
			<el-col style="text-align: center;line-height: 50px" :span="4">
				<i class="el-icon-search"></i>店铺添加
			</el-col>
		</el-row>
		<el-form :model="Store" status-icon :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
			<el-form-item label="店铺名称:" prop="StoreName">
				<el-input style="width: 50%;" type="text" v-model="Store.StoreName" placeholder="店铺名称"
						  clearable></el-input>
			</el-form-item>
			<el-form-item label="店铺介绍:" prop="StoreDetails">
				<el-input style="width: 50%;" type="text" v-model="Store.StoreDetails" placeholder="店铺介绍"
						  clearable></el-input>
			</el-form-item>
			<el-form-item label="店铺地址:" prop="StoreRegion">
				<el-cascader
					style="width: 50%;"
					v-model="Store.StoreRegion"
					:options="options"></el-cascader>
			</el-form-item>
			<el-form-item label="店铺图片:">
				<el-upload
					ref="fileupload"
					action="#"
					:http-request="httpRequestFn"
					list-type="picture-card"
					:limit=1
          :on-exceed="exceed"
					:auto-upload="false">
					<i slot="default" class="el-icon-plus"></i>
					<div slot="file" slot-scope="{file}">
						<img
							class="el-upload-list__item-thumbnail"
							:src="file.url" alt=""
						>
						<span class="el-upload-list__item-actions">
        <span
			class="el-upload-list__item-preview"
			@click="handlePictureCardPreview(file)"
		>
          <i class="el-icon-zoom-in"></i>
        </span>
        <span
			v-if="!disabled"
			class="el-upload-list__item-delete"
			@click="handleRemove(file)"
		>
          <i class="el-icon-delete"></i>
        </span>
      </span>
					</div>
				</el-upload>
				<el-dialog :visible.sync="dialogVisible">
					<img width="100%" :src="dialogImageUrl" alt="">
				</el-dialog>
			</el-form-item>
			<el-form-item>
				<el-button @click="resetForm('ruleForm')">重置</el-button>
				<el-button type="primary" @click="submitForm('ruleForm')">确认添加</el-button>
			</el-form-item>
		</el-form>
	</div>
</template>

<script>
// 导入 cos 模块
import axios from "axios";

const COS = require('cos-js-sdk-v5')

// SECRETID 和 SECRETKEY请登录 https://console.cloud.tencent.com/cam/capi 进行查看和管理
var cos = new COS({
	SecretId: 'AKIDObZGhqiKfiU0FDuLVO0LPCixvc2B3ey1',
	SecretKey: 'nKaZHjuoRothEUUD7k7D1YppXy82ez3r'
})
export default {
	name: "AddStore",
	data() {
		return {
			options: [],
			Store: {
				StoreName: "",
				StoreDetails: "",
				StoreRegion: "",
				StoreImg: "",
			},
			dialogImageUrl: '',
			dialogVisible: false,
			disabled: false,
			rules: {
				StoreName: [
					{required: true, message: '请输入店铺名称', trigger: 'blur'},
				],
				StoreDetails: [
					{required: true, message: '请输入店铺介绍', trigger: 'blur'}
				],
				StoreRegion: [
					{required: true, message: '请输入店铺地址', trigger: 'blur'}
				],
			},
		}
	},
	computed: {
		address: {
			get() {
				return this.Store.StoreRegion[0]+"/"+this.Store.StoreRegion[1]
			}
		}
	},
	methods: {
    exceed(){
      this.$message.error("最多选择一张图片")
    },
		httpRequestFn(res) {
			console.log(res)
			cos.putObject({
				Bucket: 'yccc-1311860589', /* 必须:存储桶 */
				Region: 'ap-nanjing', /* 存储桶所在地域，必须字段 */
				Key: res.file.name, /* 必须 :文件名 */
				StorageClass: 'STANDARD', // 上传模式
				Body: res.file, // 上传文件
				onProgress: function (progressData) { // 进度条
          this.$message({
            message: "上传中"+JSON.stringify(progressData),
            type: 'warning'
          });
				}
			}, (err, data) => { // 注意用箭头函数,否则会出现this的指向问题
				console.log(err || data)
				if (data) { // 上传成功
					this.Store.StoreImg =`http://${data.Location}`;
          axios({
            method: "post",
            url: 'http://localhost:8080/demo/api/Store/AddStote',
            data: {
              StoreName: this.Store.StoreName,
              StoreDetails: this.Store.StoreDetails,
              StoreRegion: this.address,
              BusinessID: this.$store.state.MerchantsID,
              StoreImg: this.Store.StoreImg
            },
          }).then(
              response => {
                if (response.data != false) {
                  alert("添加成功");
                  this.$router.push("/BusinessBackground/storeList")
                } else {
                  this.openErrorMsg("请确保信息的正确性");
                }
              },
              error => {
                console.log(error.message);
                this.openErrorMsg(error.message);
              }
          )
				}
			})
		},
		handleRemove(file) {
			console.log(file)
			let uploadFiles = this.$refs['fileupload'].uploadFiles;
			let index = uploadFiles.indexOf(file);
			uploadFiles.splice(index, 1);
		},
		handlePictureCardPreview(file) {
			this.dialogImageUrl = file.url;
			this.dialogVisible = true;
		},
		handleDownload(file) {
			console.log(file);
		},
		submitForm(formName) {
			this.$refs[formName].validate((valid) => {
				if (valid) {
					this.$refs.fileupload.submit();
				} else {
					console.log('error submit!!');
					return false;
				}
			});
		},
		resetForm(formName) {
			this.$refs[formName].resetFields();
      this.fileList=[];
		}
	},
	beforeMount() {
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
		)
	}
}
</script>

<style scoped>
.AddGoods {
	border-radius: 4px;
	border: 1px solid #DCDFE6;
}

</style>