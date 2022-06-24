<template>
  <el-form :model="Merchants" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
    <el-form-item label="用户名:" prop="BusinessAccount">
      <el-input v-model="Merchants.BusinessAccount"></el-input>
    </el-form-item>
    <el-form-item label="手机号码:" prop="BusinessPhone">
      <el-input v-model="Merchants.BusinessPhone"></el-input>
    </el-form-item>
    <el-form-item label="姓名:" prop="BusinessName">
      <el-input v-model="Merchants.BusinessName"></el-input>
    </el-form-item>
    <el-form-item label="身份证号:" prop="BusinessIDCard">
      <el-input v-model="Merchants.BusinessIDCard"></el-input>
    </el-form-item>
    <el-form-item >
      <el-button type="primary" @click="submitForm('ruleForm')">修改</el-button>
    </el-form-item>
    </el-form>
</template>

<script>
import axios from "axios";

export default {
  name: "UpdateMerInfo",
  data(){
    let validatePhone = (rule, value, callback) => {
      if (value === '') {
        callback(new Error('请输入手机号'));
      } else {
        let pattern = new RegExp("^1[34578][0-9]{9}$", 'i');
        if (!pattern.test(this.Merchants.BusinessPhone)) {
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
        if (!pattern.test(this.Merchants.BusinessIDCard)) {
          callback(new Error('身份证号格式错误'));
        } else {
          callback();
        }
      }
    };
    return{
      Merchants:null,
      rules: {
        BusinessAccount:[
          { required: true, message: '请输入用户名', trigger: 'blur' }
        ],
        BusinessPhone:[
          { required: true,validator: validatePhone, trigger: 'blur' }
        ],
        BusinessName:[
          { required: true, message: '请输入姓名', trigger: 'blur' }
        ],
        BusinessIDCard:[
          { required: true,validator: validateIDCard, trigger: 'blur' }
        ]
      }
    }
  },
  methods: {
    submitForm(formName) {
      this.$refs[formName].validate((valid) => {
        if (valid) {
          axios({
            url:"http://localhost:8080/demo/api/Merchants/UpdateMerchants",
            method:"post",
            data:{
              BusinessAccount:this.Merchants.BusinessAccount,
              BusinessPhone:this.Merchants.BusinessPhone,
              BusinessName:this.Merchants.BusinessName,
              BusinessIDCard:this.Merchants.BusinessIDCard,
              BusinessID:this.$store.state.MerchantsID
            }
          }).then(
              response=>{
                  if (response.data==true){
                    this.$router.go(0)
                  }else {
                    alert("添加失败")
                  }
              },
              error=>{
                alert(error.message);
              }
          )
        } else {
          console.log('error submit!!');
          return false;
        }
      });
    },
  },
  beforeMount() {
    axios.get(`http://localhost:8080/demo/api/Merchants/Merchants?MerchantsID=${this.$store.state.MerchantsID}`).then(
        response=>{
          this.Merchants=response.data;
        },
        error=>{
          alert(error.message);
        }
    )
  }
}
</script>

<style scoped>

</style>