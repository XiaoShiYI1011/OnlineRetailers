<template>
<h1 style="text-align: center">正在处理中请不要离开次页面</h1>
</template>

<script>
import axios from "axios";

export default {
    name: "Temp",
    beforeMount() {
        let goodsList = JSON.parse(sessionStorage.getItem('goodsList'));
        //添加购物车
        console.log(goodsList);
        for (let i = 0; i < goodsList.length; i++) {
            axios({
                url: "http://localhost:8080/demo/api/UserOrder/PlaceOrder",
                method: "post",
                data: {
                    userID: sessionStorage.getItem("userId"),
                    cartID: goodsList[i].CartID,
                    goodsID: goodsList[i].GoodsID,
                    productNum: goodsList[i].ProductNum,
                    price: goodsList[i].GoodsPrice,
                    distribution: JSON.parse(sessionStorage.getItem('Distribution')),
                }
            }).then(
                response => {
                    if (response.data === true) {
                        this.$message({
                            message: "下单成功",
                            type: 'success'
                        });
                        sessionStorage.removeItem("goodsList");
                        sessionStorage.removeItem("Distribution");
                        this.$router.push("/User/Home/ShoppingCart");
                    } else {
                        this.$message.error("失败");
                    }
                },
                error => {
                    this.$message.error("请求失败" + error.message);
                }
            )
        }
    },
}
</script>

<style scoped>

</style>