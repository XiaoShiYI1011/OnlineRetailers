<template>
	<el-table
		:data="$store.state.GoodsList"
		border
    height="700"
		style="width: 100%;text-align: center">
		<el-table-column
			label="商品编号"
			width="60">
			<template slot-scope="scope">
				<span style="margin-left: 10px">{{ scope.row.GoodsID }}</span>
			</template>
		</el-table-column>
		<el-table-column
			label="商品名称"
			width="180">
			<template slot-scope="scope">
				<span style="margin-left: 10px">{{ scope.row.GoodsTitle }}</span>
			</template>
		</el-table-column>
    <el-table-column
        label="店铺名称"
        width="140">
      <template slot-scope="scope">
        <span style="margin-left: 10px">{{ scope.row.StoreName }}</span>
      </template>
    </el-table-column>
    <el-table-column
        label="商品图片"
        width="180">
      <template slot-scope="scope">
        <span style="margin-left: 10px"><img style="height: 180px;width: 180px" :src="scope.row.GoodsImg.split(',')[0]" ></span>
      </template>
    </el-table-column>
    <el-table-column
        prop="GoodsPrice"
        label="商品价格"
        sortable
        width="120">
    </el-table-column>
    <el-table-column
        prop="GoodsSales"
        label="商品销量"
        sortable
        width="120">
    </el-table-column>
    <el-table-column
        label="商品类别"
        width="80">
      <template slot-scope="scope">
        <span style="margin-left: 10px">{{ scope.row.TypeName }}</span>
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
import {mapMutations } from 'vuex';
import axios from "axios";

export default {
	name:"Goods",
	data() {
		return {

		}
	},
	methods: {
    ...mapMutations(['DELETEGOODS']),
		handleEdit(index, row) {
			console.log(index, row);
			this.$router.push(`/BusinessBackground/UpdateGoods/${row.GoodsID}`)
		},
		handleDelete(index, row) {
      this.DELETEGOODS(row.GoodsID);
      axios.get(`http://localhost:8080/demo/api/GoodsManger/DeleteGoods?GoodsID=${row.GoodsID}`).then(
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
    axios.get(`http://localhost:8080/demo/api/GoodsManger/GetGoodsList?BusinessID=${this.$store.state.MerchantsID}`).then(
        response=>{
          this.$store.state.GoodsList=response.data;
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