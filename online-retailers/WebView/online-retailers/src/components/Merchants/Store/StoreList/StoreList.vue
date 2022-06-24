<template>
  <el-table
      :data="Store"
      border
      height="600"
      style="width: 100%;text-align: center">
    <el-table-column
        label="商铺编号"
        width="180">
      <template slot-scope="scope">
        <span style="margin-left: 10px">{{ scope.row.StoreID }}</span>
      </template>
    </el-table-column>
    <el-table-column
        label="商铺名称"
        width="180">
      <template slot-scope="scope">
        <span style="margin-left: 10px">{{ scope.row.StoreName }}</span>
      </template>
    </el-table-column>
    <el-table-column
        label="店铺图片"
        width="180">
      <template slot-scope="scope">
        <span style="margin-left: 10px"><img style="height: 100%;width: 100%" :src="scope.row.StoreImg" ></span>
      </template>
    </el-table-column>
    <el-table-column
        label="店铺介绍"
        width="180">
      <template slot-scope="scope">
        <span style="margin-left: 10px">{{ scope.row.StoreDetails }}</span>
      </template>
    </el-table-column>
    <el-table-column label="操作">
      <template slot-scope="scope">
        <el-row>
          <el-button
              @click="handleEdit(scope.$index, scope.row)">编辑</el-button>
          <el-button
              type="danger"
              @click="handleDelete(scope.$index, scope.row)">删除</el-button>
        </el-row>
      </template>
    </el-table-column>
  </el-table>
</template>

<script>
import axios from "axios";

export default {
  name:"StoreList",
  data() {
    return {
      Store:[],
    }
  },
  methods: {
    handleEdit(index, row) {
      console.log(index, row);
      this.$router.push(`/BusinessBackground/upDateStore/${row.StoreID}`)
    },
    handleDelete(index, row) {
      this.Store=this.Store.filter((item)=>{
        return item.StoreID!==row.StoreID;
      })
      axios.get(`http://localhost:8080/demo/api/Store/DeleteStote?StoreID=${row.StoreID}`).then(
          response=>{
            alert('删除成功')
          },
          error=>{
            alert('删除失败')
          }
      )
    }
  },
  beforeMount() {
    axios.get(`http://localhost:8080/demo/api/Store/StoteList?BusinessID=${this.$store.state.MerchantsID}`).then(
        response=>{
          this.Store=response.data;
        },
        error=>{
          console.log(error.message)
        }
    )
  }
}
</script>

<style scoped>

</style>