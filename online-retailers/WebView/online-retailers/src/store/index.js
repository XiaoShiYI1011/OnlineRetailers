import Vuex from "vuex";
import Vue from "vue";
import axios from "axios";

Vue.use(Vuex);

const actions = {};
const mutations = {
	SETUSERID(state, value) {
		sessionStorage.setItem("userId", value);
	},
	UPDATEISLOGIN(state, value) {
		sessionStorage.setItem("isLogin", value);
	},
	DELETEGOODS(state, value) {
		state.GoodsList = state.GoodsList.filter((todo) => {
			return todo.GoodsID !== value;
		})
	},
	SELECTGOODS(state, value) {
		if (value.GoodsName == "" && value.GoodsType == "") {
			axios.get(`http://localhost:8080/demo/api/GoodsManger/GetGoodsList?BusinessID=${state.MerchantsID}`).then(
				response => {
					state.GoodsList = response.data;
				},
				error => {
					console.log(error.message)
				}
			)
		}
		if (value.GoodsName != "" && value.GoodsType == "") {
			axios.get(`http://localhost:8080/demo/api/GoodsManger/GetGoodsList?BusinessID=${state.MerchantsID}&GoodsName=${value.GoodsName}`).then(
				response => {
					state.GoodsList = response.data;
				},
				error => {
					console.log(error.message)
				}
			)
		}
		if (value.GoodsName == "" && value.GoodsType != "") {
			axios.get(`http://localhost:8080/demo/api/GoodsManger/GetGoodsList?BusinessID=${state.MerchantsID}&TypeId=${value.GoodsType}`).then(
				response => {
					state.GoodsList = response.data;
				},
				error => {
					console.log(error.message)
				}
			)
		}
		if (value.GoodsName != "" && value.GoodsType != "") {
			axios.get(`http://localhost:8080/demo/api/GoodsManger/GetGoodsList?BusinessID=${state.MerchantsID}&GoodsName=${value.GoodsName}&TypeId=${value.GoodsType}`).then(
				response => {
					state.GoodsList = response.data;
				},
				error => {
					console.log(error.message)
				}
			)
		}
	},
};
const state = {
	GoodsList: [],
	MerchantsID: sessionStorage.getItem("MerchantsID"),
	userId: sessionStorage.getItem("userId"),  // 用户ID
	isLogin: sessionStorage.getItem("isLogin")  || "false",  // 是否登录
};

export default new Vuex.Store({
	actions,
	mutations,
	state
});