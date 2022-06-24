<template>
  <el-row>
<el-col :span="19" :offset="3">
  <div class="messages">
    <lemon-imui
        avatarCricle=true
        width="100%"
        hideMessageName="true"
        hideMenu=false
        :user='this.user' ref='IMUI'
        @send="handleSend" @pull-messages='handlePullMessages'>
    </lemon-imui>
  </div>
</el-col>
</el-row>
</template>

<script>
import axios from "axios";
import COS from "cos-js-sdk-v5";
var cos = new COS({
  SecretId: 'AKIDObZGhqiKfiU0FDuLVO0LPCixvc2B3ey1',
  SecretKey: 'nKaZHjuoRothEUUD7k7D1YppXy82ez3r'
})
export default {
  name: "Messages",
  data(){
    return {
      messagesinfo:[],
      contacts:[],
      user:null
    }
  },
  methods:{
    handleSend(message, next, file) {
      if (message.type=="text"){
        axios({
          url:"http://localhost:8080/demo/api/Messages/AddMessages",
          method:'post',
          data:{
            UserID:this.$store.state.userId,
            StoreID:this.$route.params.StoreID,
            MessagesDetails:message.content,
            type:message.type,
            Stuate:0,
          }
        })
        next();
      }else {
        cos.putObject({
          Bucket: 'yccc-1311860589', /* 必须:存储桶 */
          Region: 'ap-nanjing', /* 存储桶所在地域，必须字段 */
          Key: message.id, /* 必须 :文件名 */
          StorageClass: 'STANDARD', // 上传模式
          Body: file, // 上传文件
          onProgress: function (progressData) { // 进度条
            this.$message({
              message: "上传中" + JSON.stringify(progressData),
              type: 'warning'
            });
          }
        }, (err, data) => { // 注意用箭头函数,否则会出现this的指向问题
          console.log(message)
          if (data) { // 上传成功
            let img = `http://${data.Location}`;
            axios({
              url: "http://localhost:8080/demo/api/Messages/AddMessages",
              method: 'post',
              data: {
                UserID: this.$store.state.userId,
                StoreID: this.$route.params.StoreID,
                MessagesDetails: img,
                type: message.type,
                Stuate: 0,
              }
            })
            next();
          }
        })
      }
    },
    handlePullMessages(contact, next) {
      const { IMUI } = this.$refs;
      IMUI.clearMessages(contact.id)
          axios.get(`http://localhost:8080/demo/api/Messages/GetMessages?StoreID=${contact.id}&UserID=${this.$store.state.userId}`).then(
              response=> {
                  let messages = response.data
                  let toContact=null
                  this.contacts.forEach((item)=>{
                      if (item.id===contact.id){
                          toContact=item;
                      }
                  })
                  messages.forEach((item) => {
                      let time = item.MessagesTime.replace(/[^0-9]/ig, "")
                      if (item.Stuate) {
                          this.messagesinfo.push({
                              id: item.BusinessID,
                              status: 'succeed',
                              type: item.Type,
                              sendTime: parseInt(time),
                              content: item.MessagesDetails,
                              toContactId: this.user,
                              fromUser: toContact
                          })
                      } else {
                          this.messagesinfo.push({
                              id: item.BusinessID,
                              status: 'succeed',
                              type: item.Type,
                              sendTime: parseInt(time),
                              content: item.MessagesDetails,
                              toContactId: toContact,
                              fromUser: this.user
                          })
                      }
                  })
                  //将第二个参数设为true，表示已到末尾，聊天窗口顶部会显示“暂无更多消息”，不然会一直转圈。
                  next(this.messagesinfo,true);
              },
              error=>{
                  console.log(error.message);
              }
          )
    },
  },
  mounted() {
    //初始化联系人
    let StoreID = this.$route.params.StoreID;
    const { IMUI } = this.$refs;
    axios.get(`http://localhost:8080/demo/api/Messages/GetMerchants?StoreID=${StoreID}`).then(
        response=>{
          let merchants = response.data;
          this.contacts.push({
            id: merchants.BusinessID,
            displayName: merchants.BusinessAccount,
            avatar: "http://localhost:61124" + merchants.BusinessImg,
            index: 'L',
            unread: 0,
            lastContent: IMUI.lastContentRender({type: 'text', content: ' '}),
            lastSendTime: Date.now(),
          })
        },
        error=>{
          console.log(error.message);
        }
    )
    //初始化表情包。
    //IMUI.initEmoji(...);
    //从后端请求联系人数据，包装成下面的样子
    IMUI.initContacts(this.contacts);


    //查询当前用户
    axios({
      url: "http://localhost:8080/demo/api/User/GetUserInfo",
      method: "post",
      data: {
        UserID: this.$store.state.userId,
      }
    })
        .then(
            response=>{
              this.user={id: sessionStorage.getItem("userId"), displayName: response.data[0].UserAccount, avatar:"http://localhost:61124"+response.data[0].UserImg}
            },
            error=>{
              console.log(error.message)
            }
        )
  }
}
</script>

<style scoped>
.messages{
  margin: 20px 0px;
}
</style>