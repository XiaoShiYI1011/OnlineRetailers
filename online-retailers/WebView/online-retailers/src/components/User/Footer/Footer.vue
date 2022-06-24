<template>
	<div class="footer">
		<div class="footer_title">
			<ul>
				<li>品类齐全，轻松购物</li>
				<li class="title_item">|</li>
				<li>多仓直发，极速配送</li>
				<li class="title_item">|</li>
				<li>正品行货，精致服务</li>
				<li class="title_item">|</li>
				<li>天天低价，畅选无忧</li>
			</ul>
		</div>
		<div class="middle_footer  w">
			<dl>
				<dt>购物指南</dt>
				<dd>购物流程</dd>
				<dd>会员介绍</dd>
				<dd>生活旅行</dd>
				<dd>常见问题</dd>
				<dd>大家电</dd>
				<dd>联系客服</dd>
			</dl>
			<dl>
				<dt>配送方式</dt>
				<dd>上门自提</dd>
				<dd>211限时达</dd>
				<dd>配送服务查询</dd>
				<dd>配送费收取标准</dd>
				<dd>国内配送</dd>
			</dl>
			<dl>
				<dt>支付方式</dt>
				<dd>货到付款</dd>
				<dd>在线支付</dd>
				<dd>分期付款</dd>
				<dd>公司转账</dd>
			</dl>
			<dl>
				<dt>售后服务</dt>
				<dd>售后政策</dd>
				<dd>价格保护</dd>
				<dd>退款说明</dd>
				<dd>返修/退换货</dd>
				<dd>取消订单</dd>
			</dl>
			<dl>
				<dt>特色服务</dt>
				<dd>夺宝岛</dd>
				<dd>DIY装机</dd>
				<dd>延保服务</dd>
				<dd>京西E卡</dd>
				<dd>京西通信</dd>
				<dd>鲸鱼座智能</dd>
			</dl>
			<dl class="last-dl">
				<dt>京西自营覆盖全市</dt>
				<dd>
					<p>京西已向全国2661个市区提供自营配送服务，支持货到付款、POS机刷卡和售后上门服务。</p>
					<a href="#">查看详情</a>
				</dd>
			</dl>
		</div>
		<p class="copy">&copy;{{ dateFullYear }} - OnlineRetailers copyright</p>
	</div>
</template>

<script>
export default {
	name: "Footer",
	data() {
		return {
			time: 0,
		}
	},
	computed: {
		dateFullYear: {
			get() {
				let date = new Date();
				return date.getFullYear();
			},
			set(value) {
				this.time = value;
			}
		}
	}
}
</script>

<style scoped>
* {
	margin: 0 auto;
}

.footer {
	height: 400px;
	background: #f5f5f5;
	position: relative;
}

.copy {
	width: 100%;
	position: absolute;
	bottom: 0px;
	text-align: center;
	border-top: 1px solid #ccc;
	padding-top: 10px;
}

.footer_title ul {
	font-size: 17px;
	color: dimgrey;
	display: flex;
	margin: 0% 10% 0% 10%;
}

.footer_title ul li {
	list-style: none;
	padding: 50px 3%;
}

.title_item {
	padding: 50px;
}

.middle_footer {
	font-size: 10px;
	height: 220px;
	/*border:1px solid red;*/
	padding: 0px 17%;
	/*margin-left:12%;*/

	border-top: 1px solid #ccc;
}

.middle_footer dl {
	float: left;
	width: 16%;
	margin-top: 28px;
	/*border:1px solid red;*/
}

.middle_footer dt {
	height: 30px;
	font-size: 16px;
	width: 100%;
	/*border:1px solid red;*/
}

</style>
