create database OnlineRetailersDB
go

use OnlineRetailersDB
go

-- 省
create table City(
	CityID int primary key identity(1,1),  -- ID
	CityName varchar(50) not null  -- 省名
)

-- 市
create table Province(
	ProvinceID int primary key identity(1,1),  -- ID
	ProvinceName varchar(50) not null,  -- 市名
	CityID int foreign key (CityID) references City(CityID)  -- 市（外键）
)

-- 用户信息表
create table UserInfo(
	UserID int primary key identity(1,1),  -- 用户ID
	UserAccount varchar(50) unique,  -- 用户账号
	UserPwd varchar(max),  -- 用户密码（MD5）
	UserIDCard varchar(18),  -- 用户身份证
	UserPhone varchar(11) unique,  -- 用户手机号
	UserBirthday date,  -- 用户生日
	UserCity int foreign key (UserCity) references City(CityID),  -- 省
	userProvince int foreign key (userProvince) references Province(ProvinceID),  -- 市
	UserImg varchar(max) default(''),  -- 用户头像
	UserLikeWork varchar(max),  -- 用户喜好（来自商品关键词名称或者用户手动设置，用“，”分隔）
	UserCreateTime DateTime default(getdate()),  -- 注册时间
)

-- 收货地区表
create table UserRegion(
	RegionID int primary key identity(1,1),  -- 地区ID
	UserID int foreign key (UserID) references UserInfo(UserID),  -- 用户ID（外键）
	Province varchar(20) not null,  -- 省
	City varchar(20) not null,  -- 市
	DetailedAddress varchar(max),  -- 详细地址
	Phone varchar(11) not null,  -- 收货手机号
	IsDefault int  -- 是否为默认地址（0 => 是；1 => 否）
)

-- 商家信息表
create table Business(
	BusinessID int primary key identity(1,1),  -- 商家ID
	BusinessName varchar(50),  -- 商家姓名
	BusinessIDCard varchar(18),  -- 商家身份证
	BusinessPhone varchar(11) not null,  -- 商家电话
	BusinessAccount varchar(50) unique,  -- 商家账号
	BusinessPwd varchar(max), --商家密码
	BusinessImg varchar(max) default(''),  -- 商家图片
	BusinessReview int,  -- 审核?
	IsOnline int,  -- 是否在线（0 => 在线；1 => 离线[机器人客服介入]）
	BusinessCreateTime DateTime default(getdate()),  -- 注册时间
)

-- 客服表
create table CustomerService(
	CustomerServiceID int primary key identity(1,1),  -- 客服ID
	BusinessID int foreign key (BusinessID) references Business(BusinessID),-- 商家（外键）
	UserID int foreign key (UserID) references UserInfo(UserID),  -- 用户（外键）
	Content varchar(max),  -- 内容
	ContentImg varchar(max),  -- 图片
	ReplyTime datetime default(getdate()),  -- 时间
)

-- 机器人客服表
create table RobotService(
	RobotID int primary key identity(1,1),  -- 机器人客服ID
	BusinessID int foreign key (BusinessID) references Business(BusinessID),  -- 商家的机器人客服
	ServiceKey varchar(max),  -- 关键字（由商家设置）
	ReplyTime datetime default(getdate()),  -- 时间
)

-- 店铺表
create table Store(
	StoreID int primary key identity(1,1),  -- 商店ID
	BusinessID int foreign key (BusinessID) references Business(BusinessID),  -- 商家ID（外键）
	StoreName varchar(20) not null,  -- 商店名称
	StoreDetails varchar(max),  -- 店铺介绍
	StoreImg varchar (max), --店铺图片
	StoreRegion varchar(max),  -- 店铺发货地址
	StoreScore float,  -- 评分
	StoreHot int,  -- 浏览数
	StoreCreateTime datetime default(getdate()),  -- 创建时间
)

-- 商品类别
create table ProductType(
	TypeId int primary key identity(1,1),  -- 商品类别ID
	TypeName varchar(50) not null  -- 类别名称
)

-- 商品表
create table Goods(
	GoodsID int primary key identity(1,1),  -- 商品ID
	GoodsTitle varchar(max) not null,  -- 商品标题
	StoreID int foreign key (StoreID) references Store(StoreID),  -- 商店（外键）
	TypeId int foreign key (TypeId) references ProductType(TypeId),  -- 商品类别
	GoodsKeyWord varchar(50),  -- 关键词（用于商品推荐）
	GoodsAttribute varchar(max),--商品属性
	GoodsImg varchar(max) default(''),  -- 商品图片
	GoodsPrice money not null,  -- 商品价格
	GoodsStock int not null,  -- 商品库存
	GoodsSales int,  -- 销量（多少人付过款）
	GoodsStatu int,  -- 商品状态（0 => 正常；1 => 下架）
	ProductCreateTime datetime default(getdate())  -- 创建时间
)

-- 商品推荐表
create table RecommendType(
	RecommendTypeID int primary key identity(1,1),  -- 商品推荐类别ID
	UserID int foreign key (UserID) references UserInfo(UserID),  -- 用户ID（外键）
	KeyWork varchar(max),  -- 关键词（多个关键词使用“,”分隔）
)

-- 商品评论表
create table Comment(
	CommentID int primary key identity(1,1),  -- 评论ID
	UserID int foreign key (UserID) references UserInfo(UserID),  -- 用户ID（外键）
	GoodsID int foreign key (GoodsID) references Goods(GoodsID),  -- 商品ID（外键）
	Content varchar(200),  -- 内容
	CommentTime datetime default(getDate()),  -- 评论时间
)

-- 商品评论回复表
create table CommentReview(
	CommentReviewID int primary key identity(1,1),  -- 回复ID
	CommentID int foreign key (CommentID) references Comment(CommentID),  -- 评论ID（外键）
	CommentUserID int foreign key (CommentUserID) references UserInfo(UserID),  -- 回复评论的用户（外键）
	ReviewContent varchar(200),  -- 回复的内容
	ReviewCommentTime datetime default(getDate()),  -- 回复评论时间
)

-- 购物车表
create table ShoppingCart(
	CartID int primary key identity(1,1),  -- 购物车ID
	UserID int foreign key (UserID) references UserInfo(UserID),  -- 用户ID（外键）
	GoodsID int foreign key (GoodsID) references Goods(GoodsID),  --商品ID（外键）
	SelectAttributes varchar(max),  -- 选择的商品属性
	IsSelect int,  -- 是否选中（1 => 选中；0 => 未选中）
	ProductNum int not null,  -- 数量
	IsOrder int default(1),  -- 是否已下单(0 => 是；1 => 否)
	AddTime datetime default(getdate()),  -- 添加时间
)

-- 订单表
create table [Order](
	OrderID int primary key identity(1,1),  -- 订单ID
	UserID int foreign key (UserID) references UserInfo(UserID),  -- 订单用户（外键）
	CartID int foreign key (CartID) references ShoppingCart(CartID),  --购物车ID
	OrderMoney money not null,  -- 金额
	RegionID int foreign key (RegionID) references UserRegion(RegionID),  -- 配送地
	OrderStatus int,  -- 订单状态（0 => 未发货；1 => 运输中；2 => 已收货；3 => 退款；4 => 退货）
	PaymentStatus int,  -- 是否支付（0 => 未支付；1 => 已支付）
	ReasonForCancellation varchar(max),  -- 退款/退货理由
	IsCancellation int,  -- 是否可以退款/退货（由商家审核，0 => 审核中；1 => 通过；2 => 不通过）
	DeliverGoodsTime date,  -- 发货时间
	ReceivingTime date,  -- 收货时间
	CancelTime date,  -- 退货时间
	OrderTime datetime default(getdate()),  -- 下单时间
)

-- 浏览历史表
create table BrowseRecords(
	RecordsID int primary key identity(1,1),  -- 浏览ID
	UserID int foreign key (UserID) references UserInfo(UserID),  -- 用户ID
	GoodsID int,  -- 商品ID
	Recordsttate datetime default(getdate()),  -- 浏览时间
)

--消息表
create table [Messages](
	MessagesID int primary key identity(1,1),  -- 消息ID
	UserID int foreign key (UserID) references UserInfo(UserID),  -- 用户ID
	BusinessID int foreign key (BusinessID) references Business(BusinessID),  -- 商家ID（外键）
	MessagesDetails nvarchar(max),  -- 消息详情
	Stuate int,  -- 辨别是用户发给商家还是商家发给用户，0是用户发给商家,1则反之
	[Type] nvarchar(20),  -- 消息类型
	MessagesTime datetime default(getdate()),  -- 发送时间
)