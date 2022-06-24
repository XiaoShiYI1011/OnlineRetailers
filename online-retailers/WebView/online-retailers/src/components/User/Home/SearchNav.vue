<template>
	<el-row :gutter="20">
		<el-col :span="4">
			<div class="logo">
				<img src="../../../assets/logo.png" height="100%">
			</div>
		</el-col>
		<el-col :span="15">
			<ul class="nav">
				<li>
					<router-link to="/User/Home" active-class="action">推荐</router-link>
				</li>
				<li>
					<router-link :to="{
						name:'ProductShow',
						query:{
							typeId:1
						}
					}" active-class="action">衣服
					</router-link>
				</li>
				<li>
					<router-link :to="{
						name:'ProductShow',
						query:{
							typeId:2
						}
					}" active-class="action">裤子
					</router-link>
				</li>
				<li>
					<router-link :to="{
						name:'ProductShow',
						query:{
							typeId:3
						}
					}" active-class="action">潮鞋
					</router-link>
				</li>
				<li>
					<router-link :to="{
						name:'ProductShow',
						query:{
							typeId:4
						}
					}" active-class="action">美妆
					</router-link>
				</li>
				<li>
					<router-link :to="{
						name:'ProductShow',
						query:{
							typeId:5
						}
					}" active-class="action">数码
					</router-link>
				</li>
				<li>
					<router-link :to="{
						name:'ProductShow',
						query:{
							typeId:6
						}
					}" active-class="action">饰品
					</router-link>
				</li>
				<li>
					<router-link :to="{
						name:'ProductShow',
						query:{
							typeId:7
						}
					}" active-class="action">百货
					</router-link>
				</li>
				<li>
					<router-link to="/User/Home/StoreList" active-class="action">京西店铺</router-link>
				</li>
			</ul>
		</el-col>
		<el-col :span="5">
			<div class="grid-content">
				<div class="input-group">
					<input type="text" class="form-control" @focus="showSearchHistory" @blur="closeSearchHistory"
						   placeholder="Search for..." v-model="inputTags">
					<span class="input-group-btn">
						<button class="btn btn-default el-icon-search" type="button" @click="addHistory"></button>
					</span>
				</div>
				<div class="searchHistory-box" v-show="isShow">
					<el-tag v-for="(tag,index) in tags" :key="index" closable :type="tag.type" style="margin: 5px"
							:disable-transitions="false" @close="handleClose(tag)">{{ tag }}
					</el-tag>
					<p style="color: #C0C4CC;">搜索历史</p>
					<p style="color: #F56C6C;" @click="deleteTag">清空 <i class="el-icon-delete"></i></p>
				</div>
			</div>
		</el-col>
	</el-row>
</template>

<script>
export default {
	name: "SearchNav",
	data() {
		return {
			isShow: false,
			tags: JSON.parse(localStorage.getItem("tags")) || [],
			inputTags: "",
		}
	},
	methods: {
		showSearchHistory() {
			this.isShow = !this.isShow;
		},
		closeSearchHistory() {
			setTimeout(() => {
				this.isShow = !this.isShow;
			}, 2000);
		},
		addHistory() {
			let inputValue = this.inputTags;
			if (inputValue) {
				this.tags.push(inputValue);
        this.$router.push(`/User/Home/SeleteGoods/${this.inputTags}`);
			}
			this.inputTags = "";
		},
		handleClose(tag) {
			this.tags.splice(this.tags.indexOf(tag), 1);
		},
		deleteTag() {
			this.tags = [];
		},
	},
	watch: {
		tags: {
			deep: true,
			handler(value) {
				localStorage.setItem("tags", JSON.stringify(value));
			}
		}
	},
}
</script>

<style scoped>
.logo {
	height: 50px;
	text-align: center;
	line-height: 50px;
}

.input-group {
	margin-top: 10px;
}

.form-control {
	height: 30px;
}

.btn-default {
	height: 30px;
}

.nav {
	overflow: hidden;
	border-bottom: 1px solid #ccc;
}

.nav > li {
	float: left;
}

.nav > li > a {
	padding: 15px 25px;
	color: #333333;
}

.nav > li > a:hover {
	color: #ff6700;
}

.grid-content {
	position: relative;
	top: 0px;
}

.searchHistory-box {
	position: absolute;
	margin-top: 5px;
	z-index: 99999;
	width: 120%;
	background: #ffffff;
	border-radius: 5px 5px 10px 10px;
	box-shadow: 4px 4px 20px #ccc;
	padding: 10px;
}

.searchHistory-box > p {
	text-align: center;
	color: #C0C4CC;
	margin-top: 10px;
	margin-bottom: 0px;
}
</style>