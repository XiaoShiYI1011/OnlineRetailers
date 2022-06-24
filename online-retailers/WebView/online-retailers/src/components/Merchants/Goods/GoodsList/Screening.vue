<template>
	<div class="Screening">
		<el-row class="el-row-1">
			<el-col style="text-align: center;line-height: 100px" :span="4">
				<i class="el-icon-search"></i>筛选搜索
			</el-col>
			<el-col style="text-align: left;line-height: 100px" :span="20">
				<div style="margin-left: 70%;">
					<el-button @click="reset">重置</el-button>
					<el-button type="primary" @click="btnselect">查询结果</el-button>
				</div>
			</el-col>
		</el-row>
		<el-row style="margin: 10px 0px">
			<el-col :span="10">
				<div class="div">
					商品名称:
					<el-input style="width: 50%;margin-left: 20px" type="text" v-model="GoodsName" placeholder="商品名称" clearable></el-input>
				</div>
			</el-col>
      <el-col :span="10">
        <div class="div">
          商品类别:
          <el-select style="width: 50%;margin-left: 20px" v-model="GoodsType" placeholder="商品类别">
            <el-option
                v-for="item in options"
                :key="item.TypeId"
                :label="item.TypeName"
                :value="item.TypeId">
            </el-option>
          </el-select>
        </div>
      </el-col>
		</el-row>
	</div>
</template>

<script>
import axios from "axios";
import {mapMutations } from 'vuex';
export default {
	name: "Screening",
	data() {
		return {
			GoodsName: "",
			GoodsID: "",
			GoodsType: "",
			options: [],
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
  },
  methods:{
    ...mapMutations(['SELECTGOODS']),
    reset(){
      this.GoodsName="";
      this.GoodsType="";
    },
    btnselect(){
      this.SELECTGOODS({GoodsName:this.GoodsName,GoodsID:this.GoodsID,GoodsType:this.GoodsType});
    }
  }
}
</script>

<style scoped>
.Screening {
	border-radius: 4px;
	border: 1px solid #DCDFE6;
}

.el-row-1 {
	height: 100px;
}

.div {
	text-align: center;
}
</style>