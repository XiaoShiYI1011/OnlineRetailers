<template>
    <div class="OrderList">
        <el-row>
            <el-col :offset="1">订单列表</el-col>
        </el-row>
        <el-table
            :data="OrderList"
            height="1000px"
            style="width: 100%">
            <el-table-column type="expand">
                <template slot-scope="props">
                    <el-form label-position="left" inline class="demo-table-expand">
                        <el-form-item label="商品名称:">
                            <span>{{ props.row.GoodsTitle }}</span>
                        </el-form-item><br>
                        <el-form-item label="所属店铺:">
                            <span>{{ props.row.StoreName }}</span>
                        </el-form-item><br>
                        <el-form-item label="商品 ID:">
                            <span>{{ props.row.GoodsID }}</span>
                        </el-form-item><br>
                        <el-form-item label="商品图片:">
                            <span><img style="height: 180px;width: 180px"  :src="props.row.GoodsImg.split(',')[0]"></span>
                        </el-form-item><br>
                        <el-form-item label="店铺 ID:">
                            <span>{{ props.row.StoreID }}</span>
                        </el-form-item><br>
                        <el-form-item label="商品属性:">
                            <span>{{ props.row.SelectAttributes }}</span>
                        </el-form-item><br>
                        <el-form-item label="收货人昵称:">
                            <span>{{ props.row.UserAccount }}</span>
                        </el-form-item><br>
                        <el-form-item label="收货人地址:">
                            <span>{{ props.row.DetailedAddress }}</span>
                        </el-form-item><br>
                        <el-form-item label="收货人电话:">
                            <span>{{ props.row.Phone }}</span>
                        </el-form-item><br>
                        <el-form-item label="退货理由:">
                            <span>{{ props.row.ReasonForCancellation }}</span>
                        </el-form-item><br>
                        <el-form-item label="下单时间:">
                            <span>{{ props.row.OrderTime }}</span>
                        </el-form-item><br>
                        <el-form-item label="发货时间:">
                            <span>{{ props.row.DeliverGoodsTime }}</span>
                        </el-form-item><br>
                    </el-form>
                </template>
            </el-table-column>
            <el-table-column
                label="商品 ID"
                prop="GoodsID"
                width="80px">
            </el-table-column>
            <el-table-column
                label="商品名称"
                width="320px">
                <template slot-scope="scope">
                    <span style="margin-left: 10px">{{ scope.row.GoodsTitle.substr(0,18)+"..." }}</span>
                </template>
            </el-table-column>
            <el-table-column
                label="商品图片"
                width="180px">
                <template slot-scope="scope">
                    <span style="margin-left: 10px"><img style="height: 180px;width: 180px"  :src="scope.row.GoodsImg.split(',')[0]"> </span>
                </template>
            </el-table-column>
            <el-table-column
                label="退货理由"
                prop="ReasonForCancellation"
                width="200px">
            </el-table-column>
            <el-table-column
                label="订单状态"
                width="100px">
                <template slot-scope="scope">
                    <span style="margin-left: 10px">{{Stuate(scope.row.IsCancellation)}}</span>
                </template>
            </el-table-column>
            <el-table-column
                label="操作"
                width="200px">
                <template slot-scope="scope">
                    <el-button
                        size="mini"
                        @click="handleEdit(scope.$index, scope.row)">同意</el-button>
                    <el-button
                        size="mini"
                        @click="handleEdits(scope.$index, scope.row)">拒绝</el-button>
                </template>
            </el-table-column>
        </el-table>
    </div>
</template>

<script>

import axios from "axios";

export default {
    name: "OrderList",
    data() {
        return {
            OrderList: []
        }
    },

    methods:{
        Stuate(item){
            if (item===0)  {
                return "等待受理"
            }else  if (item===1){
                return "以同意"
            }else if (item===2){
                return "以拒绝"
            }
        },
        handleEdit(index,row){
            if (row.IsCancellation===0){
                row.IsCancellation=1
                axios({
                    url:'http://localhost:8080/demo/api/OrderMange/UpdateOrders',
                    method:"post",
                    data:{
                        IsCancellation:1,
                        OrderID:row.OrderID
                    }
                }).then(
                    response=>{
                        if (response.data==true){
                            this.$message({
                                showClose: true,
                                message: '受理成功',
                                type: 'success'
                            });
                        }else {
                            this.$message({
                                showClose: true,
                                message: '受理失败',
                                type: 'warning'
                            });
                        }
                    },
                    error=>{
                        this.$message(error.message)
                    }
                )
            }else {
                this.$message({
                    showClose: true,
                    message: '已经受理过了哦',
                    type: 'warning'
                });
            }
        },
        handleEdits(index,row){
            if (row.OrderStatus===0){
                row.IsCancellation=1
                axios({
                    url:'http://localhost:8080/demo/api/OrderMange/UpdateOrders',
                    method:"post",
                    data:{
                        IsCancellation:2,
                        OrderID:row.OrderID
                    }
                }).then(
                    response=>{
                        if (response.data==true){
                            this.$message({
                                showClose: true,
                                message: '受理成功',
                                type: 'success'
                            });
                        }else {
                            this.$message({
                                showClose: true,
                                message: '受理失败',
                                type: 'warning'
                            });
                        }
                    },
                    error=>{
                        this.$message(error.message)
                    }
                )
            }else {
                this.$message({
                    showClose: true,
                    message: '已经受理过了哦',
                    type: 'warning'
                });
            }
        },
    },

    created() {
        axios.get(`http://localhost:8080/demo/api/OrderMange/GetOrderList?BusinessID=${this.$store.state.MerchantsID}`).then(
            response=>{
                response.data.forEach((item)=>{
                    let time = item.AddTime.replace(/[^0-9]/ig, "");
                    item.AddTime=new Date(parseInt(Math.abs(time))).toLocaleString().replace(/:\d{1,2}$/, ' ');
                    let Time = item.OrderTime.replace(/[^0-9]/ig, "");
                    item.OrderTime=new Date(parseInt(Math.abs(Time))).toLocaleString().replace(/:\d{1,2}$/, ' ');
                    if(item.DeliverGoodsTime!==null){
                        let TIme = item.DeliverGoodsTime.replace(/[^0-9]/ig, "");
                        item.DeliverGoodsTime=new Date(parseInt(Math.abs(TIme))).toLocaleString().replace(/:\d{1,2}$/, ' ');
                    }
                    if (item.IsCancellation!==null){
                        this.OrderList.push(item)
                    }
                })

            },
            error=>{
                this.$message(error.message)
            }
        )
    }
}
</script>

<style scoped>
.OrderList{
    height: 1000px;
    border-radius: 5px;
    border: 1px solid #DCDFE6;
}
</style>