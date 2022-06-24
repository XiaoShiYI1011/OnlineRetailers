import Vue from 'vue';
import App from './App.vue';
// 引入 Element ui
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
// 引用路由
import VueRouter from 'vue-router';
import router from './router';
// 引入 store
import store from "./store/index";
import LemonIMUI from 'lemon-imui';
import 'lemon-imui/dist/index.css';
Vue.use(LemonIMUI);

Vue.use(VueRouter);
Vue.use(ElementUI);
Vue.config.productionTip = false;

new Vue({
	render: h => h(App),
	router,
	store,
	beforeCreate() {
		Vue.prototype.$bus = this;  // 全局事件总线
	},
}).$mount('#app')
