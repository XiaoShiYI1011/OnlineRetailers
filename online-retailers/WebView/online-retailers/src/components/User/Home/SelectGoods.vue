<template>
  <div>
    <el-row v-if="Isbool" :gutter="10" class="infinite-list" v-infinite-scroll="load" infinite-scroll-distance="200"
            style="overflow:auto; height: 600px;">
      <el-col :span="20" :offset="2">
        <div v-for="(item, index) in count" :key="item" class="infinite-list-item col-md-3">
          <Goods class="Goods" :goodsList="goodsList[index]"></Goods>
        </div>
      </el-col>
      <el-col :span="24">
        <h3 style="text-align: center; color: #a9a9a9;margin-bottom: 50px">END - 没有更多了哟 ~</h3>
      </el-col>
    </el-row>
  <el-row v-if="!Isbool">
    <el-empty style="margin-bottom: 150px;margin-top: 150px" description="暂无数据"></el-empty>
  </el-row>
  </div>
</template>

<script>
import Goods from "@/components/User/Goods";
import axios from "axios";

export default {
  name: "SelectGoods",
  data() {
    return {
      count: 2,
      Isbool:true,
      name:"",
      goodsList: []
    }
  },
  components: {
    Goods,
  },
  methods: {
    load() {
      if (this.count != this.goodsList.length) {
        this.count += 1;
      }
    },
    getData() {
      this.goodsList= []
      this.name=this.$route.params.name,
      axios.get(`http://localhost:8080/demo/api/Goods/SelectGoods?name=${this.name}`).then(
          response => {
            this.goodsList = response.data;
            if (this.goodsList.length==0){
              this.Isbool=false;
            }else {
              this.Isbool=true;
            }
          },
          error => {
            console.log("请求失败", error.message);
          }
      );
    }
  },
  beforeMount() {
    this.getData();
  },
  watch: {
    // 监听路由参数变化
    "$route"() {
      this.getData();
      this.$router.go(0);
    }
  },
}
</script>

<style scoped>

</style>