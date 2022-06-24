<template>
  <div class="UpdateGoods">
    <el-row class="el-row-1">
      <el-col style="text-align: center;line-height: 50px" :span="4">
        <i class="el-icon-search"></i>商品添加
      </el-col>
    </el-row>
    <el-form :model="Goods" status-icon :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
      <el-form-item label="商品店铺:" prop="StoreID">
        <el-select style="width: 50%" v-model="Goods.StoreID" placeholder="请选择">
          <el-option
              v-for="item in options1"
              :key="item.StoreID"
              :label="item.StoreName"
              :value="item.StoreID">
          </el-option>
        </el-select>
      </el-form-item>
      <el-form-item label="商品标题:" prop="GoodsTitle">
        <el-input style="width: 50%"  type="text" v-model="Goods.GoodsTitle" placeholder="商品标题" clearable></el-input>
      </el-form-item>
      <el-form-item  label="商品价格:">
        <el-input-number style="width: 50%" v-model="Goods.GoodsPrice" :step="0.1"  :min="0"></el-input-number>
      </el-form-item>
      <el-form-item  label="商品库存:">
        <el-input-number style="width: 50%" v-model="Goods.GoodsStock" :step="1" :min="0"></el-input-number>
      </el-form-item>
      <el-form-item  label="商品类别:" prop="TypeId">
        <el-select style="width: 50%" v-model="Goods.TypeId" placeholder="商品类别">
          <el-option
              v-for="item in options"
              :key="item.TypeId"
              :label="item.TypeName"
              :value="item.TypeId">
          </el-option>
        </el-select>
      </el-form-item>
      <el-form-item label="示例:">尺码：S，M，L，XL，XLL<br>
                                  颜色：黑色，白色，蓝色，绿色<br>
                                  <span>请按示例格式输入！！！</span></el-form-item>
      <el-form-item
          v-for="(domain, index) in domains"
          :label="'商品属性名' + index"
          :key="domain.key"
      >
        <el-input style="width: 50%" v-model="domain.value"></el-input><el-button @click.prevent="removeDomain(domain)">删除</el-button>
      </el-form-item>
      <el-form-item><el-button @click="addDomain">新增属性</el-button></el-form-item>
      <el-form-item  label="商品关键词:" prop="GoodsKeyWord">
        <el-input style="width: 50%"  type="text" v-model="Goods.GoodsKeyWord" placeholder="商品关键词" clearable></el-input>
      </el-form-item>
      <el-form-item   label="商品图片:">
        <el-upload
            ref="fileupload"
            action="#"
            :on-change="handleChange"
            :file-list="fileList"
            :http-request="httpRequestFn"
            list-type="picture-card"
            :limit=5
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
        <el-button @click="resetForm('ruleForm')" >重置</el-button>
        <el-button type="primary" @click="submitForm('ruleForm')">确认添加</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
import axios from "axios";
// 导入 cos 模块
const COS = require('cos-js-sdk-v5')

// SECRETID 和 SECRETKEY请登录 https://console.cloud.tencent.com/cam/capi 进行查看和管理
var cos = new COS({
  SecretId: 'AKIDObZGhqiKfiU0FDuLVO0LPCixvc2B3ey1',
  SecretKey: 'nKaZHjuoRothEUUD7k7D1YppXy82ez3r'
})
export default {
  name: "AddGoods",
  data(){
    return{
        domains: [{
          value: ''
        }],
      index:1,
      fileList:[],
      GoodsID:'',
      options1:[],
      options: [],
      Goods:{
        GoodsAttribute:'',
        GoodsKeyWord:'',
        StoreID:'',
        TypeId: '',
        GoodsImg:'',
        GoodsTitle:'',
        GoodsPrice:'',
        GoodsStock:'',
      },
      dialogImageUrl: '',
      dialogVisible: false,
      disabled: false,
      rules: {
          GoodsKeyWord:[
              {required: true, message: '请输入关键词', trigger: 'blur'}
          ],
        GoodsTitle: [
          { required: true, message: '请输入商品标题', trigger: 'blur' },
          { min: 0, max:80, message: '长度在 0 到 80 个字符', trigger: 'blur' }
        ],
        TypeId: [
          {required: true, message: '请至少一个商品类别', trigger: 'change' }
        ],
        StoreID:[
          {required: true, message: '请至少选择一个店铺', trigger: 'change' }
        ]
      },
    }
  },
  beforeMount() {
    axios.get(`http://localhost:8080/demo/api/GoodsManger/GetTypeList`).then(
        response=>{
          this.options=response.data;
        },
        error=>{
          console.log(error.message)
        }
    )
    axios.get(`http://localhost:8080/demo/api/GoodsManger/StoreList?BusinessID=${this.$store.state.MerchantsID}`).then(
        response=>{
          this.options1=response.data;
        },
        error=>{
          console.log(error.message)
        }
    )
  },
  methods: {
    removeDomain(item) {
      var index = this.domains.indexOf(item)
      if (index !== -1) {
        this.domains.splice(index, 1)
      }
    },
    addDomain() {
      this.domains.push({
        value: '',
        key: Date.now()
      })
    },
    exceed(){
      this.$message.error("最多选择五张图片")
    },
    handleChange(file, fileList) {
      // 这里赋值方便上面第 2 步的校验或其他逻辑校验。
      this.fileList = fileList
    },
    httpRequestFn(res) {
      console.log(res)
      cos.putObject({
        Bucket: 'yccc-1311860589', /* 必须:存储桶 */
        Region: 'ap-nanjing', /* 存储桶所在地域，必须字段 */
        Key: res.file.name, /* 必须 :文件名 */
        StorageClass: 'STANDARD', // 上传模式
        Body: res.file, // 上传文
        onProgress: function(progressData) { // 进度条
          console.log(JSON.stringify(progressData))
        }
      }, (err, data) => { // 注意用箭头函数,否则会出现this的指向问题
        console.log(err || data)
        if (data) { // 上传成功
          console.log(111)
        }
      })
    },
    handleRemove(file) {
      let uploadFiles = this.$refs['fileupload'].uploadFiles;
      let index = uploadFiles.indexOf(file);
      uploadFiles.splice(index,1);
      this.fileList = uploadFiles;
    },
    handlePictureCardPreview(file) {
      this.dialogImageUrl = file.url;
      this.dialogVisible = true;
    },
    submitForm(formName) {
      this.$refs[formName].validate((valid) => {
        if (valid) {
          this.$refs.fileupload.submit();
          for (let i=0;i<this.fileList.length;i++){
            this.Goods.GoodsImg +="http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/"+this.fileList[i].name+","
          }
          for (let i=0;i<this.domains.length;i++){
            if (i!==this.domains.length-1){
              this.Goods.GoodsAttribute+=this.domains[i].value+"。";
            }else{
              this.Goods.GoodsAttribute+=this.domains[i].value
            }
          }

          setTimeout(()=>{
            axios({
              method: "post",
              url: 'http://localhost:8080/demo/api/GoodsManger/AddGoods',
              data: {
                GoodsImg:this.Goods.GoodsImg,
                GoodsKeyWord:this.Goods.GoodsKeyWord,
                GoodsPrice:this.Goods.GoodsPrice,
                GoodsTitle:this.Goods.GoodsTitle,
                StoreID:this.Goods.StoreID,
                TypeId:this.Goods.TypeId,
                GoodsStock:this.Goods.GoodsStock,
                GoodsAttribute:this.Goods.GoodsAttribute,
              },
            }).then(
                response => {
                  if (response.data != false) {
                    alert("添加成功");
                    this.$router.push("/BusinessBackground/GoodsList")
                  } else {
                    this.openErrorMsg("请确保信息的正确性");
                  }
                },
                error => {
                  console.log(error.message);
                  this.openErrorMsg(error.message);
                }
            )
          },1000)
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
  }
}
</script>

<style scoped>
.UpdateGoods{
  border-radius: 4px;
  border: 1px solid #DCDFE6;
}

</style>