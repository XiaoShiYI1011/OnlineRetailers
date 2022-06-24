<template>
	<div>
		<div @click="push" type="primary">消息<i class="el-icon-message-solid"></i></div>
	</div>
</template>

<script>
export default {
	name: "CustomerService",
  methods:{
    push(){
      this.$router.push("/User/Message")
    }
  }
}
</script>

<style scoped>
</style>