# 网上购物商城项目描述

#### 介绍
1. 本项目是前后端分离项目，分为用户端和商家端
1. 使用 Vue2.js + ASP.ENT MVC，前端采用 Vue CLI 构建项目，采用 Element-UI 搭建页面
1. 后端采用 WebApi 编写接口，采用 EntityFramework 框架实现数据持久化
1. 使用 Vue 配置代理，解决跨域问题
1. 我们是第一次接触前后端分离项目，所以在项目标准化和一些细节的问题上都是自己摸索的
1. 支付功能是使用的支付宝沙箱，只有支付宝的测试账号能支付
1. 手机号验证码可以正常发送

#### **开发环境**

1. Window 10、Node.js、WebStorm、Vue CLI、VS 2019、SQL Server 2019

#### **使用技术**

1. Vue2.js、Element-UI、VueX、Vue-Router、Axios、ASP.NET MVC5、EntityFramework

#### 项目描述

1. 网上商城是典型的网上购物网站，给用户和商家提供的网上交易平台，为用户提供了足不出户就能选购心仪的商品，为商家提供了一个线上交易平台
2. 项目功能模块
	- 用户端
		- 登录注册：登录，注册，忘记密码，记住密码
		- 商品展示：搜索功能，分类查找，店铺查找，首页推荐
		- 商品详情：添加购物车，评论功能
		- 客服模块：消息列表，发消息，收消息，聊天记录
		- 购物车：浏览购物车，结算商品，移出购物车
		- 订单模块：订单查看，退货功能，退款功能
		- 个人信息：历史浏览记录，个人信息修改，配送地址，修改密码，头像修改
	- 商家端
		- 商家信息：信息修改，信息查看，头像修改
		- 商品管理：商品查看，商品搜索，商品商家，商品下架，商品信息修改
		- 店铺管理：店铺查看，店铺注册，店铺信息修改，店铺注销
		- 订单管理：订单查看，退货审核，退款审核
		- 用户消息：消息列表，发消息，收消息，聊天记录
		- 登录注册：登录，注册，忘记密码，记住密码

#### 使用说明

1. 先把数据库添加上

	- 数据库路径：
		- WebApi/OnlineRetailers/App_Data
	- 有两个数据库脚本，一个是表结构，一个是表数据

2. 把后端的数据库连接字符串修改成自己的，然后 `ctrl+F5` 运行

	- 在 `WebApi/OnlineRetailers/Web.config` 文件里

	```
	<connectionStrings>
			<add name="OnlineRetailersDBEntities" connectionString="metadata=res://*/Models.Model1.csdl|res://*/Models.Model1.ssdl|res://*/Models.Model1.msl;provider=System.Data.SqlClient;provider connection string=&quot;data source=你自己的数据库连接字符串;initial catalog=OnlineRetailersDB;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework&quot;" providerName="System.Data.EntityClient" />
	</connectionStrings>
	```

3. 前端依次运行以下命令

	- `npm i`
	- `npm run serve`

4. 注意前端运行的端口号必须是 8080！不是的话，关掉终端重新运行 `npm run serve`

	```
	localhost:8080/
	```

#### 测试账号（不是支付宝测试账号）

1. 账号
	- admin
2. 密码
	- 00000000（密码经过加密，数据库无法查看）
3. 商家和用户都是这个

#### 前端部分使用到的包
1. npm i element-ui
2. npm i vue-router@3
3. npm i axios
4. npm i vuex@3
5. npm i pubsub-js
5. npm i bright-comment（第三方评论组件）

#### 项目小组人员

1.  农理斌（负责用户端）
2.  杨陈（负责商家端）
3.  胡金蝶（负责参与数据库设计、数据录入）
4.  陈新桥（负责数据录入、功能测试）
