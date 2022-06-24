<template>
	<div style="text-align: center">
		<el-upload
			ref="upload"
			action
			:limit="imgTool.limit"
			list-type="picture-card"
			:file-list="imgList"
			:accept="imgTool.type.join(',')"
			:on-change="handleChange"
			:on-remove="handleRemove"
			:auto-upload="false">
			<i class="el-icon-upload2"></i>
			<div class="el-upload__tip" slot="tip">只能上传一张 jpg / png / jpeg 格式文件，且不超过 2M！建议为正方形图片。</div>
		</el-upload>
		<div>
			<el-button type="success" style="margin-top: 10px; width: 50%" @click="submitUpload">
				上&nbsp;&nbsp;&nbsp;传
			</el-button>
		</div>
	</div>
</template>

<script>
import axios from "axios";

export default {
	name: "UpLoadHeadPortrait",
	data() {
		return {
			imgTool: {
				type: ['image/jpeg', 'image/jpg', 'image/png'],
				size: 2 * 1024 * 1024,
				limit: 1
			},
			imgList: [],
		}
	},
	methods: {
		successOpen(msg) {
			this.$message({
				message: msg,
				type: "success"
			});
		},
		warningOpen(msg) {
			this.$message({
				message: msg,
				type: "warning"
			});
		},
		errorOpen(msg) {
			this.$message.error(msg);
		},
		async submitUpload() {
			if (this.imgList.length != 0) {
				const base64Pro = this.imgList.map(file => this.fileReader(file.raw));
				const base64List = await Promise.all(base64Pro);
				axios({
					url: "http://localhost:8080/demo/api/User/UpLoadHeadPortrait",
					method: "post",
					data: {
						img: base64List,
						userID: sessionStorage.getItem("userId")
					},
					ContentType: 'application/x-www-form-urlencoded'
				}).then(
					response => {
						if (response.data == true) {
							this.successOpen("上传成功");
							this.imgList = [];
							this.$router.go(0);
						}
					},
					error => {
						this.errorOpen("上传失败！请重试···" + error.message);
					}
				);
			} else {
				this.warningOpen("请选择图片！");
			}
		},
		handleChange(file, filList) {
			const isImg = this.imgTool.type.includes(file.raw.type);
			const isLimit = file.size < this.imgTool.size;
			if (!isImg) {
				this.$message.error('上传图片只能是“png”、“jpg”、“jpeg”格式!');
				this.imgList = filList.filter(v => v.uid !== file.uid);
				return;
			}
			if (!isLimit) {
				this.$message.error('上传图片大小不能超过 2MB!');
				this.imgList = filList.filter(v => v.uid !== file.uid);
				return;
			}
			this.imgList.push(file);
		},
		handleRemove(_, fileList) {
			this.imgList = fileList;
		},
		fileReader(file) {
			return new Promise(resolve => {
				const reader = new FileReader();
				reader.readAsDataURL(file);
				reader.onload = e => {
					resolve(e.target.result);
				}
			})
		}
	}
}
</script>

<style scoped>
.el-upload__tip {
	color: #C0C4CC;
	font-size: 14px;
}
</style>