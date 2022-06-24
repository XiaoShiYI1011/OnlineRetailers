<template>
  <el-row style="padding: 10px;line-height: 40px;">
    <el-col :span="4">
      <i class="el-icon-tickets"></i>数据显示
    </el-col>
    <el-col :span="20">
      <div style="margin-left: 90%;">
        <el-button @click="Add">添加</el-button>
      </div>
    </el-col>
  </el-row>
</template>

<script>
export default {
  name: "Add",
  methods:{
    Add(){
      //通过push进行跳转
      this.$router.push('/BusinessBackground/AddGoods')
    }
  }
}
</script>

<style scoped>

</style>