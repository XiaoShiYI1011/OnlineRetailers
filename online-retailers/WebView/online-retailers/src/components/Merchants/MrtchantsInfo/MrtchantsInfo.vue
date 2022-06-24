<template>
  <div class="div">
  <el-row style="height: 100%">
    <el-col :span="24" style="padding: 10px;">
      <el-col :span="24">
        <el-col :span="4" :offset="10">
          <div class="head-portrait">
            <div>
              <div src="src/assets/logo.png" class="editImg" @click="centerDialogVisible = true"><i
                  class="el-icon-camera"></i></div>
              <img :src="this.Merchants.BusinessImg">
            </div>
          </div>
          <div>
            <el-dialog title="修改头像" :visible.sync="centerDialogVisible" width="40%">
              <UpMerImg></UpMerImg>
            </el-dialog>
          </div>
        </el-col>
        <div class="bg"></div>
      </el-col>
      <el-col :span="24" style="background-color: white; padding-top: 10px">
        <el-col :span="18" :offset="3">
          <el-descriptions title="用户信息" direction="vertical">
            <el-descriptions-item label="用户名">{{Merchants.BusinessAccount}}</el-descriptions-item>
            <el-descriptions-item label="手机号">{{Merchants.BusinessPhone}}</el-descriptions-item>
            <el-descriptions-item label="姓名">{{Merchants.BusinessName===null ?"未设置":Merchants.BusinessName}}</el-descriptions-item>
            <el-descriptions-item label="身份证号">{{Merchants.BusinessIDCard===null ?"未设置":Merchants.BusinessIDCard}}</el-descriptions-item>
            <el-descriptions-item label="创建时间">{{this.Merchants.BusinessCreateTime.substr(0,10)}}</el-descriptions-item>
          </el-descriptions>
        </el-col>
        <el-col :span="1">
          <el-button type="primary" icon="el-icon-edit" circle
                     style="margin-top: 125px; margin-left: 40px"
                     @click="centerDialogVisible2 = true"></el-button>
        </el-col>
        <div>
          <el-dialog title="修改个人信息" :visible.sync="centerDialogVisible2" width="40%">
            <UpdateMerInfo>
            </UpdateMerInfo>
          </el-dialog>
        </div>
      </el-col>
    </el-col>
  </el-row>
  </div>
</template>

<script>
import axios from "axios";
import UpdateMerInfo from "@/components/Merchants/MrtchantsInfo/UpdateMerInfo";
import UpMerImg from "@/components/Merchants/MrtchantsInfo/UpMerImg";

export default {
  name: "MrtchantsInfo",
  components: {
    UpdateMerInfo,
    UpMerImg,
  },
  data() {
    return {
      Merchants:null,
      centerDialogVisible: false,
      centerDialogVisible2: false,
    }
  },
  methods: {
    handleClose(tag) {
      this.tags.splice(this.tags.indexOf(tag), 1);
    },
    centerDialog() {
      this.$router.go(0);
    },
    centerDialog2() {
      this.$router.go(0);
    },
  },
  beforeMount() {
    axios.get(`http://localhost:8080/demo/api/Merchants/Merchants?MerchantsID=${this.$store.state.MerchantsID}`).then(
        response=>{
          this.Merchants=response.data;
          this.Merchants.BusinessImg="http://localhost:61124"+this.Merchants.BusinessImg;
          let time = this.Merchants.BusinessCreateTime.replace(/[^0-9]/ig, "");
          this.Merchants.BusinessCreateTime=new Date(parseInt(Math.abs(time))).toLocaleString().replace(/:\d{1,2}$/, ' ');
        },
        error=>{
          alert(error.message);
        }
    )
  }
}
</script>

<style scoped>
.div{
  margin: 100px 0px;
  border: 1px solid #C0C4CC;
  border-radius: 5px;
}
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
</style>