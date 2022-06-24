import VueRouter from 'vue-router';
import Home from '../components/User/Home/Home'
import BusinessBackground from "../components/Merchants/BusinessBackground";
import User from "@/components/User/User";
import GoodsList from "@/components/Merchants/Goods/GoodsList/GoodsList";
import UpdateGoods from "@/components/Merchants/Goods/UpdateGoods/UpdateGoods";
import AddGoods from "@/components/Merchants/Goods/AddGoods/AddGoods";
import ProductShow from "@/components/User/Home/ProductShow";
import Login from "@/components/User/Login";
import AddStore from "@/components/Merchants/Store/AddStore/AddStore";
import upDateStore from "@/components/Merchants/Store/UpDateStore/UpDateStore";
import storeList from "@/components/Merchants/Store/StoreList/StoreList";
import Footprint from "@/components/User/Home/Footprint"
import ForgetPassword from "@/components/User/ForgetPassword";
import GoodsDetails from "@/components/User/GoodsDetails/GoodsDetails";
import ShoppingCart from "@/components/User/ShoppingCart";
import MerchantsLogin from "@/components/Merchants/MerchantsLogin";
import PersonalCenterNav from "@/components/User/Personal/PersonalCenterNav";
import PersonalCenter from "@/components/User/Personal/PersonalCenter";
import AddressManager from "@/components/User/Personal/AddressManager";
import mrtchantsInfo from "@/components/Merchants/MrtchantsInfo/MrtchantsInfo";
import MerchantsPassword from "@/components/Merchants/MerchantsPassword";
import SelectGoods from "@/components/User/Home/SelectGoods";
import AccountSecurity from "@/components/User/Personal/AccountSecurity";
import StoreList from "@/components/User/Home/StoreList";
import Messages from "@/components/User/Messages";
import message from "@/components/User/Message";
import StoreDetails from "@/components/User/Home/StoreDetails";
import Settlement from "@/components/User/Order/Settlement";
import OrderManagement from "@/components/User/Order/OrderManagement";
import OrderList from "@/components/Merchants/Order/OrderList";
import MerMessage from "@/components/Merchants/MerMessage";
import OrderReturn from "@/components/Merchants/Order/OrderReturn";
import Temp from "@/components/User/Temp";

const router = new VueRouter({
	routes: [
		{
			// 首页路由(默认)
			path: '/',
			redirect: '/User/Home',
		},
		{
			// 商家入口路由
			path: '/BusinessBackground',
			component: BusinessBackground,
			children: [
				{
					path: '/BusinessBackground/MerMessage',
					component: MerMessage
				},
				{
					path: '/BusinessBackground/OrderReturn',
					component: OrderReturn,
				},
				{
					path: '/BusinessBackground/OrderList',
					component: OrderList,
				},
				{
					path: '/BusinessBackground/mrtchantsInfo',
					component: mrtchantsInfo,
				},
				{
					path: '/BusinessBackground/GoodsList',
					component: GoodsList,
				},
				{
					path: '/BusinessBackground/AddGoods',
					component: AddGoods,
				},
				{
					path: '/BusinessBackground/UpdateGoods/:GoodsID',
					component: UpdateGoods,
				},
				{
					path: '/BusinessBackground/AddStore',
					component: AddStore,
				},
				{
					path: '/BusinessBackground/upDateStore/:StoreID',
					component: upDateStore,
				},
				{
					path: '/BusinessBackground/storeList',
					component: storeList,
				},
			]
		},
		{
			path: "/Merchants/Login",
			component: MerchantsLogin,
		},
		{
			// 登录页面路由
			path: "/User/Login",
			component: Login
		},
		{
			// 忘记密码路由
			path: "/User/ForgetPassword",
			component: ForgetPassword
		},
		{
			//商家忘记密码
			path: "/merchants/MerchantsPassword",
			component: MerchantsPassword,
		},
		{
			// 首页路由
			path: "/User",
			component: User,
			children: [
				{
					path: '/User/Temp',
					component: Temp,
				},
				{
					path: '/User/Message',
					name: message,
					component: message
				},
				{
					path: '/User/Messages/:StoreID',
					component: Messages,
				},
				{
					path: '/User/Home',
					component: Home,
				},
				{
					path: '/user/GoodsDetails/:GoodsID',
					component: GoodsDetails,
				},
				{
					path: "/User/StoreDetails/:StoreID",
					component: StoreDetails
				},
				{
					// 浏览记录路由
					path: "/User/Home/Footprint",
					name: Footprint,
					component: Footprint
				},
				{
					path: "/User/Home/SeleteGoods/:name",
					component: SelectGoods,
				},
				{
					path: "/User/Home/ProductShow",
					name: "ProductShow",
					component: ProductShow,
					props({query}) {
						return {
							typeId: query.typeId,
						}
					},
				},
				{
					path: "/User/Home/Settlement",
					component: Settlement
				},
				{
					// 购物车路由
					path: "/User/Home/ShoppingCart",
					name: ShoppingCart,
					component: ShoppingCart
				},
				{
					path: "/User/Home/StoreList",
					component: StoreList,
				},
				{
					path: "/User/Home/PersonalCenterNav",
					component: PersonalCenterNav,
					children: [
						{
							path: "/User/Home/PersonalCenterNav/PersonalCenter",
							component: PersonalCenter
						},
						{
							path: "/User/Home/PersonalCenterNav/AddressManager",
							component: AddressManager
						},
						{
							path: "/User/Home/PersonalCenterNav/AccountSecurity",
							component: AccountSecurity
						},
						{
							path: "/User/Home/PersonalCenterNav/OrderManagement",
							component: OrderManagement
						}
					],
				},
			],
		},
	],
});

router.beforeEach((to, from, next) => {
	if (to.path === "/User/Home/Footprint" || to.path === "/User/Home/ShoppingCart" || to.path === "/User/Message") {
		if (sessionStorage.getItem("isLogin") == "false" || sessionStorage.getItem("isLogin") == null) {
			alert("您还未登录哦~");
		} else {
			next();
		}
	} else {
		next();
	}
});

export default router;