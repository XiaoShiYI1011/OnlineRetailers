USE [OnlineRetailersDB]
GO
SET IDENTITY_INSERT [dbo].[City] ON 
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (1, N'北京市')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (2, N'天津市')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (3, N'上海市')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (4, N'重庆市')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (5, N'河北省')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (6, N'山西省')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (7, N'台湾省')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (8, N'辽宁省')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (9, N'吉林省')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (10, N'黑龙江省')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (11, N'江苏省')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (12, N'浙江省')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (13, N'安徽省')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (14, N'福建省')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (15, N'江西省')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (16, N'山东省')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (17, N'河南省')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (18, N'湖北省')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (19, N'湖南省')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (20, N'广东省')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (21, N'甘肃省')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (22, N'四川省')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (23, N'贵州省')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (24, N'海南省')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (25, N'云南省')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (26, N'青海省')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (27, N'陕西省')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (28, N'广西壮族自治区')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (29, N'西藏自治区')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (30, N'宁夏回族自治区')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (31, N'新疆维吾尔自治区')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (32, N'内蒙古自治区')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (33, N'澳门特别行政区')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (34, N'香港特别行政区')
GO
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Province] ON 
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (1, N'北京', 1)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (2, N'上海', 3)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (3, N'天津', 2)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (4, N'重庆', 4)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (5, N'辽阳市', 8)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (6, N'大连市', 8)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (7, N'鞍山市', 8)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (8, N'抚顺市', 8)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (9, N'本溪市', 8)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (10, N'丹东市', 8)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (11, N'锦州市', 8)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (12, N'葫芦岛市', 8)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (13, N'营口市', 8)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (14, N'盘锦市', 8)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (15, N'阜新市', 8)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (16, N'辽阳市', 8)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (17, N'铁岭市', 8)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (18, N'朝阳市', 8)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (19, N'凌源市', 8)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (20, N'北票市', 8)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (21, N'长春市', 9)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (22, N'09市', 9)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (23, N'四平市', 9)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (24, N'辽源市', 9)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (25, N'通化市', 9)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (26, N'白山市', 9)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (27, N'延边朝鲜族自治州', 9)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (28, N'白城市', 9)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (29, N'松原市', 9)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (30, N'哈尔滨市', 10)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (31, N'齐齐哈尔市', 10)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (32, N'鹤岗市', 10)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (33, N'双鸭山市', 10)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (34, N'鸡西市', 10)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (35, N'大庆市', 10)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (36, N'伊春市', 10)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (37, N'牡丹江市', 10)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (38, N'佳木斯市', 10)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (39, N'七台河市', 10)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (40, N'黑河市', 10)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (41, N'绥化市', 10)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (42, N'大兴安岭地区', 10)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (43, N'石家庄市', 5)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (44, N'唐山市', 5)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (45, N'秦皇岛市', 5)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (46, N'邯郸市', 5)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (47, N'邢台市', 5)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (48, N'保定市', 5)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (49, N'张家口市', 5)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (50, N'承德市', 5)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (51, N'廊坊市', 5)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (52, N'衡水市', 5)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (53, N'沧州市', 5)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (54, N'太原市', 6)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (55, N'大同市', 6)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (56, N'阳泉市', 6)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (57, N'长治市', 6)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (58, N'晋城市', 6)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (59, N'朔州市', 6)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (60, N'晋中市', 6)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (61, N'运城市', 6)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (62, N'忻州市', 6)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (63, N'临汾市', 6)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (64, N'吕梁地区', 6)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (65, N'郑州市', 17)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (66, N'开封市', 17)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (67, N'洛阳市', 17)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (68, N'平顶山市', 17)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (69, N'焦作市', 17)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (70, N'鹤壁市', 17)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (71, N'新乡市', 17)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (72, N'安阳市', 17)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (73, N'濮阳市', 17)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (74, N'许昌市', 17)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (75, N'漯河市', 17)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (76, N'三门峡市', 17)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (77, N'南阳市', 17)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (78, N'商丘市', 17)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (79, N'信阳市', 17)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (80, N'周口市', 17)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (81, N'驻马店市', 17)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (82, N'济源市', 17)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (83, N'济南市', 16)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (84, N'青岛市', 16)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (85, N'淄博市', 16)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (86, N'枣庄市', 16)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (87, N'东营市', 16)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (88, N'潍坊市', 16)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (89, N'烟台市', 16)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (90, N'威海市', 16)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (91, N'济宁市', 16)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (92, N'泰安市', 16)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (93, N'日照市', 16)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (94, N'莱芜市', 16)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (95, N'临沂市', 16)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (96, N'德州市', 16)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (97, N'聊城市', 16)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (98, N'滨州市', 16)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (99, N'菏泽市', 16)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (100, N'南京市', 11)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (101, N'徐州市', 11)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (102, N'连云港市', 11)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (103, N'淮安市', 11)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (104, N'宿迁市', 11)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (105, N'盐城市', 11)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (106, N'扬州市', 11)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (107, N'泰州市', 11)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (108, N'南通市', 11)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (109, N'镇江市', 11)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (110, N'常州市', 11)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (111, N'无锡市', 11)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (112, N'苏州市', 11)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (113, N'银川市', 30)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (114, N'石嘴山市', 30)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (115, N'吴忠市', 30)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (116, N'固原市', 30)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (117, N'南宁市', 28)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (118, N'柳州市', 28)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (119, N'桂林市', 28)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (120, N'梧州市', 28)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (121, N'北海市', 28)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (122, N'防城港市', 28)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (123, N'钦州市', 28)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (124, N'贵港市', 28)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (125, N'玉林市', 28)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (126, N'百色市', 28)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (127, N'贺州市', 28)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (128, N'河池市', 28)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (129, N'来宾市', 28)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (130, N'崇左市', 28)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (131, N'乌鲁木齐市', 31)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (132, N'克拉玛依市', 31)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (133, N'吐鲁番地区', 31)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (134, N'哈密地区', 31)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (135, N'和田地区', 31)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (136, N'阿克苏地区', 31)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (137, N'喀什地区', 31)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (138, N'克孜勒苏柯尔克孜自治州', 31)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (139, N'巴音郭楞州', 31)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (140, N'昌吉州', 31)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (141, N'博尔塔拉州', 31)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (142, N'伊犁哈萨克自治州', 31)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (143, N'塔城地区', 31)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (144, N'阿勒泰州', 31)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (145, N'石河子市', 31)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (146, N'阿拉尔市', 31)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (147, N'图木舒克市', 31)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (148, N'五家渠市', 31)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (149, N'拉萨市', 29)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (150, N'昌都地区', 29)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (151, N'山南地区', 29)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (152, N'日喀则地区', 29)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (153, N'阿里地区', 29)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (154, N'林芝地区', 29)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (155, N'香港', 34)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (156, N'澳门', 33)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (157, N'基隆市', 7)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (158, N'新竹市', 7)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (159, N'台中市', 7)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (160, N'嘉义市', 7)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (161, N'台南市', 7)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (162, N'宜兰县', 7)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (163, N'台北县', 7)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (164, N'桃园县', 7)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (165, N'新竹县', 7)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (166, N'苗栗县', 7)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (167, N'台中县', 7)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (168, N'南投县', 7)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (169, N'彰化县', 7)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (170, N'云林县', 7)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (171, N'嘉义县', 7)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (172, N'台南县', 7)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (173, N'高雄县', 7)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (174, N'屏东县', 7)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (175, N'台东县', 7)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (176, N'花莲县', 7)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (177, N'澎湖县', 7)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (178, N'南昌市', 15)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (179, N'萍乡市', 15)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (180, N'九江市', 15)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (181, N'新余市', 15)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (182, N'鹰潭市', 15)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (183, N'赣州市', 15)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (184, N'吉安市', 15)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (185, N'宜春市', 15)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (186, N'抚州市', 15)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (187, N'上饶市', 15)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (188, N'合肥市', 13)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (189, N'芜湖市', 13)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (190, N'蚌埠市', 13)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (191, N'淮南市', 13)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (192, N'马鞍山市', 13)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (193, N'淮北市', 13)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (194, N'铜陵市', 13)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (195, N'安庆市', 13)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (196, N'黄山市', 13)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (197, N'滁州市', 13)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (198, N'阜阳市', 13)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (199, N'宿州市', 13)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (200, N'巢湖市', 13)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (201, N'六安市', 13)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (202, N'亳州市', 13)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (203, N'池州市', 13)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (204, N'宣城市', 13)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (205, N'福州市', 14)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (206, N'厦门市', 14)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (207, N'三明市', 14)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (208, N'莆田市', 14)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (209, N'泉州市', 14)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (210, N'漳州市', 14)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (211, N'南平市', 14)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (212, N'龙岩市', 14)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (213, N'宁德市', 14)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (214, N'杭州市', 12)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (215, N'宁波市', 12)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (216, N'温州市', 12)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (217, N'嘉兴市', 12)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (218, N'绍兴市', 12)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (219, N'金华市', 12)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (220, N'衢州市', 12)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (221, N'舟山市', 12)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (222, N'台州市', 12)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (223, N'丽水市', 12)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (224, N'海口市', 24)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (225, N'三亚市', 24)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (226, N'广州市', 20)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (227, N'深圳市', 20)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (228, N'珠海市', 20)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (229, N'汕头市', 20)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (230, N'韶关市', 20)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (231, N'惠州市', 20)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (232, N'河源市', 20)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (233, N'梅州市', 20)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (234, N'汕尾市', 20)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (235, N'东莞市', 20)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (236, N'中山市', 20)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (237, N'江门市', 20)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (238, N'佛山市', 20)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (239, N'阳江市', 20)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (240, N'湛江市', 20)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (241, N'茂名市', 20)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (242, N'肇庆市', 20)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (243, N'清远市', 20)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (244, N'潮州市', 20)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (245, N'揭阳市', 20)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (246, N'云浮市', 20)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (247, N'贵阳市', 23)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (248, N'六盘水市', 23)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (249, N'遵义市', 23)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (250, N'安顺市', 23)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (251, N'铜仁地区', 23)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (252, N'毕节地区', 23)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (253, N'黔西南布依族苗族自治州', 23)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (254, N'黔东南南苗族侗族自治州', 23)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (255, N'黔南布依族苗族自治州', 23)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (256, N'成都市', 22)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (257, N'自贡市', 22)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (258, N'攀枝花市', 22)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (259, N'泸州市', 22)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (260, N'德阳市', 22)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (261, N'绵阳市', 22)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (262, N'广元市', 22)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (263, N'遂宁市', 22)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (264, N'内江市', 22)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (265, N'乐山市', 22)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (266, N'南充市', 22)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (267, N'宜宾市', 22)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (268, N'广安市', 22)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (269, N'达州市', 22)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (270, N'眉山市', 22)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (271, N'雅安市', 22)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (272, N'巴中市', 22)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (273, N'资阳市', 22)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (274, N'阿坝藏族羌族自治州', 22)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (275, N'甘孜藏族自治州', 22)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (276, N'凉山彝族自治州', 22)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (277, N'丽江地区', 25)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (278, N'文山壮族苗族自治州', 25)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (279, N'红河哈尼族彝族自治州', 25)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (280, N'西双版纳傣族自治州', 25)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (281, N'楚雄彝族自治州', 25)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (282, N'大理白族自治州', 25)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (283, N'德宏傣族景颇族自治州', 25)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (284, N'怒江傈僳族自治州', 25)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (285, N'迪庆藏族自治州', 25)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (286, N'昆明市', 25)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (287, N'玉溪市', 25)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (288, N'保山市', 25)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (289, N'昭通市', 25)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (290, N'思茅地区', 25)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (291, N'临沧地区', 25)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (292, N'西安市', 27)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (293, N'铜川市', 27)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (294, N'宝鸡市', 27)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (295, N'咸阳市', 27)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (296, N'渭南市', 27)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (297, N'延安市', 27)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (298, N'汉中市', 27)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (299, N'榆林市', 27)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (300, N'安康市', 27)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (301, N'商洛市', 27)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (302, N'荆门市', 18)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (303, N'鄂州市', 18)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (304, N'孝感市', 18)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (305, N'黄冈市', 18)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (306, N'咸宁市', 18)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (307, N'随州市', 18)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (308, N'恩施土家族苗族自治州', 18)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (309, N'仙桃市', 18)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (310, N'天门市', 18)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (311, N'潜江市', 18)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (312, N'神农架林区', 18)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (313, N'武汉市', 18)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (314, N'黄石市', 18)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (315, N'襄樊市', 18)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (316, N'十堰市', 18)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (317, N'荆州市', 18)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (318, N'宜昌市', 18)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (319, N'长沙市', 19)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (320, N'株洲市', 19)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (321, N'湘潭市', 19)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (322, N'衡阳市', 19)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (323, N'邵阳市', 19)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (324, N'岳阳市', 19)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (325, N'常德市', 19)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (326, N'张家界市', 19)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (327, N'益阳市', 19)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (328, N'郴州市', 19)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (329, N'永州市', 19)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (330, N'怀化市', 19)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (331, N'娄底市', 19)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (332, N'湘西土家族苗族自治州', 19)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (333, N'西宁市', 26)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (334, N'海东地区', 26)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (335, N'海北藏族自治州', 26)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (336, N'黄南藏族自治州', 26)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (337, N'海南藏族自治州', 26)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (338, N'洛藏族自治州', 26)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (339, N'玉树藏族自治州', 26)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (340, N'海西蒙古族藏族自治州', 26)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (341, N'兰州市', 21)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (342, N'金昌市', 21)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (343, N'白银市', 21)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (344, N'天水市', 21)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (345, N'嘉峪关市', 21)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (346, N'武威市', 21)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (347, N'张掖市', 21)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (348, N'平凉市', 21)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (349, N'酒泉市', 21)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (350, N'庆阳市', 21)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (351, N'定西地区', 21)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (352, N'陇南地区', 21)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (353, N'甘南藏族自治州', 21)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (354, N'临夏回族自治州', 21)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (355, N'呼和浩特市', 32)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (356, N'包头市', 32)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (357, N'乌海市', 32)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (358, N'赤峰市', 32)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (359, N'鄂尔多斯市', 32)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (360, N'呼伦贝尔市', 32)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (361, N'乌兰察布盟', 32)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (362, N'锡林郭勒盟', 32)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (363, N'巴彦淖尔盟', 32)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (364, N'阿拉善盟', 32)
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName], [CityID]) VALUES (365, N'兴安盟', 32)
GO
SET IDENTITY_INSERT [dbo].[Province] OFF
GO
SET IDENTITY_INSERT [dbo].[UserInfo] ON 
GO
INSERT [dbo].[UserInfo] ([UserID], [UserAccount], [UserPwd], [UserIDCard], [UserPhone], [UserBirthday], [UserCity], [userProvince], [UserImg], [UserLikeWork], [UserCreateTime]) VALUES (1, N'admin', N'?}?l@。08AF31DBB3458E58E5516B53155C0753', N'452131200110110916', N'17377009057', CAST(N'2001-10-11' AS Date), 28, 117, N'/Images/UserImages/220613051405073.jpg', N'，气质小裙子，黑裙子，一字肩，时尚，阔腿裤，男，休闲鞋', CAST(N'2022-05-13T15:27:35.620' AS DateTime))
GO
INSERT [dbo].[UserInfo] ([UserID], [UserAccount], [UserPwd], [UserIDCard], [UserPhone], [UserBirthday], [UserCity], [userProvince], [UserImg], [UserLikeWork], [UserCreateTime]) VALUES (2, N'测试', N'V??
????。FFB66B7AB8857F46C20BD2156AD1F6F4', NULL, N'13877635241', NULL, NULL, NULL, N'/Images/UserImages/Default.png', NULL, CAST(N'2022-05-24T00:12:05.000' AS DateTime))
GO
INSERT [dbo].[UserInfo] ([UserID], [UserAccount], [UserPwd], [UserIDCard], [UserPhone], [UserBirthday], [UserCity], [userProvince], [UserImg], [UserLikeWork], [UserCreateTime]) VALUES (3, N'user1', N'?~???H3。9F02190A9D50C498BD5A198866D128E6', N'421102200307223443', N'17786197891', CAST(N'2022-06-15' AS Date), 1, 1, N'/Images/UserImages/Default.png', NULL, CAST(N'2022-06-10T14:04:57.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRegion] ON 
GO
INSERT [dbo].[UserRegion] ([RegionID], [UserID], [Province], [City], [DetailedAddress], [Phone], [IsDefault]) VALUES (2, 1, N'广西壮族自治区', N'南宁市', N'广西壮族自治区南宁市江南区江南万达华府B区菜鸟驿站', N'17377009057', 0)
GO
INSERT [dbo].[UserRegion] ([RegionID], [UserID], [Province], [City], [DetailedAddress], [Phone], [IsDefault]) VALUES (4, 1, N'湖北省', N'武汉市', N'湖北省武汉市洪山区狮山街道野芷湖一号湖北生物科技职业学院', N'17377009057', 1)
GO
INSERT [dbo].[UserRegion] ([RegionID], [UserID], [Province], [City], [DetailedAddress], [Phone], [IsDefault]) VALUES (5, 3, N'湖北省', N'黄冈市', N'经济开发区', N'17786197891', 1)
GO
SET IDENTITY_INSERT [dbo].[UserRegion] OFF
GO
SET IDENTITY_INSERT [dbo].[Business] ON 
GO
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessIDCard], [BusinessPhone], [BusinessAccount], [BusinessPwd], [BusinessImg], [BusinessReview], [IsOnline], [BusinessCreateTime]) VALUES (1, N'十一', N'429005200212223439', N'13687252862', NULL, N'12345678', N'', 1, 0, CAST(N'2022-05-07T22:59:10.360' AS DateTime))
GO
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessIDCard], [BusinessPhone], [BusinessAccount], [BusinessPwd], [BusinessImg], [BusinessReview], [IsOnline], [BusinessCreateTime]) VALUES (2, NULL, NULL, N'17377009057', N'admin', N'`&??????。33A279CF6C8F0B969AC2A55969CF0387', N'/Images/UserImages/Default.png', NULL, NULL, CAST(N'2022-05-18T00:26:57.000' AS DateTime))
GO
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessIDCard], [BusinessPhone], [BusinessAccount], [BusinessPwd], [BusinessImg], [BusinessReview], [IsOnline], [BusinessCreateTime]) VALUES (3, NULL, NULL, N'15972405994', N'小陈服装店', N'zZ?\:?H?。A0B94D299D68907C4F6D47C92281D823', N'/Images/UserImages/Default.png', NULL, NULL, CAST(N'2022-05-21T22:48:24.000' AS DateTime))
GO
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessIDCard], [BusinessPhone], [BusinessAccount], [BusinessPwd], [BusinessImg], [BusinessReview], [IsOnline], [BusinessCreateTime]) VALUES (4, NULL, NULL, N'17786197892', N'慢热的暗恋', N'T??w?y。22E9DA1D6E5D02A376AAFC8A93AA05E5', N'/Images/UserImages/Default.png', NULL, NULL, CAST(N'2022-05-28T16:29:33.000' AS DateTime))
GO
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessIDCard], [BusinessPhone], [BusinessAccount], [BusinessPwd], [BusinessImg], [BusinessReview], [IsOnline], [BusinessCreateTime]) VALUES (5, NULL, NULL, N'17786197891', N'所念皆星河', N'9?
??
e。A5894D7F5ED7F04CCF5727E93177F661', N'/Images/UserImages/220604021737623.jpg', NULL, NULL, CAST(N'2022-06-04T14:17:16.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Business] OFF
GO
SET IDENTITY_INSERT [dbo].[RecommendType] ON 
GO
INSERT [dbo].[RecommendType] ([RecommendTypeID], [UserID], [KeyWork]) VALUES (1, 1, N'水简约，百搭，气质小裙子，黑裙子，一字肩，圆领，短袖休闲，夏季新品，T恤，男，水乳，洗面奶，珍珠项链，简约，百搭，短袖，气质小裙子，黑裙子，一字肩，鼠标，游戏本，电竞椅，JK，高跟鞋，游戏本，键盘，头戴耳机，彩妆蛋，短裙，睡衣，家居服，女，男，休闲鞋，运动鼠标，短裙，虚拟产品，短款，鼠标，手链，撞色，九分裤，女，')
GO
INSERT [dbo].[RecommendType] ([RecommendTypeID], [UserID], [KeyWork]) VALUES (2, 3, N'手链，手链，手链，手链，手链，')
GO
SET IDENTITY_INSERT [dbo].[RecommendType] OFF
GO
SET IDENTITY_INSERT [dbo].[Store] ON 
GO
INSERT [dbo].[Store] ([StoreID], [BusinessID], [StoreName], [StoreDetails], [StoreImg], [StoreRegion], [StoreScore], [StoreHot], [StoreCreateTime]) VALUES (2, 2, N'生科电商', N'生科计应12班杂货铺', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/Default.jpg', N'湖北省/武汉市', 4.5, NULL, CAST(N'2022-05-18T00:29:14.097' AS DateTime))
GO
INSERT [dbo].[Store] ([StoreID], [BusinessID], [StoreName], [StoreDetails], [StoreImg], [StoreRegion], [StoreScore], [StoreHot], [StoreCreateTime]) VALUES (3, 3, N'生科百货店', N'湖北生物科技职业学院官方旗舰店', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/qq_pic_merged_1626352799124.jpg', N'湖北省/武汉市', 5, NULL, CAST(N'2022-05-21T22:50:23.433' AS DateTime))
GO
INSERT [dbo].[Store] ([StoreID], [BusinessID], [StoreName], [StoreDetails], [StoreImg], [StoreRegion], [StoreScore], [StoreHot], [StoreCreateTime]) VALUES (4, 3, N'小陈服装店', N'绝对高仿，天王老子来了也看不出来假', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/QQ%E5%9B%BE%E7%89%8720220521115623.png', N'湖北省/咸宁市', 4.5, NULL, CAST(N'2022-05-22T14:05:13.103' AS DateTime))
GO
INSERT [dbo].[Store] ([StoreID], [BusinessID], [StoreName], [StoreDetails], [StoreImg], [StoreRegion], [StoreScore], [StoreHot], [StoreCreateTime]) VALUES (5, 4, N'百变小刘', N'这是小胡为小刘开的店铺，啥都卖，包括小刘', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/backiee-79836.jpg', N'湖北省/孝感市', 4, NULL, CAST(N'2022-05-28T16:34:25.130' AS DateTime))
GO
INSERT [dbo].[Store] ([StoreID], [BusinessID], [StoreName], [StoreDetails], [StoreImg], [StoreRegion], [StoreScore], [StoreHot], [StoreCreateTime]) VALUES (6, 4, N'小胡的饰品店', N'专卖饰品的一家小店', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN011eihAv1yhQk11F3EQ_%21%21477926610.jpg_400x400.jpg', N'湖北省/黄冈市', 4.5, NULL, CAST(N'2022-05-29T15:04:19.640' AS DateTime))
GO
INSERT [dbo].[Store] ([StoreID], [BusinessID], [StoreName], [StoreDetails], [StoreImg], [StoreRegion], [StoreScore], [StoreHot], [StoreCreateTime]) VALUES (7, 4, N'七月半夏制服馆', N'一家只卖JK制服的店铺', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN011eihAv1yhQk11F3EQ_%21%21477926610.jpg_400x400.jpg', N'黑龙江省/哈尔滨市', 4.5, NULL, CAST(N'2022-05-29T15:19:12.360' AS DateTime))
GO
INSERT [dbo].[Store] ([StoreID], [BusinessID], [StoreName], [StoreDetails], [StoreImg], [StoreRegion], [StoreScore], [StoreHot], [StoreCreateTime]) VALUES (8, 4, N'电竞馆', N'电竞全套有售', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01kUqomq1eH3ZHonvNb_%21%213242073845.jpg_430x430q90.jpg', N'北京市/北京', 4.5, NULL, CAST(N'2022-05-29T15:42:10.657' AS DateTime))
GO
INSERT [dbo].[Store] ([StoreID], [BusinessID], [StoreName], [StoreDetails], [StoreImg], [StoreRegion], [StoreScore], [StoreHot], [StoreCreateTime]) VALUES (10, 4, N'lisa的肉肉', N'这是小别的店，啥都卖，真一赔十', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/backiee-50570.jpg', N'福建省/莆田市', 2.3, NULL, CAST(N'2022-06-03T17:07:02.753' AS DateTime))
GO
INSERT [dbo].[Store] ([StoreID], [BusinessID], [StoreName], [StoreDetails], [StoreImg], [StoreRegion], [StoreScore], [StoreHot], [StoreCreateTime]) VALUES (11, 5, N'小致的店铺', N'属于小致的店铺，全网仅此一家', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/%E8%B4%AD%E7%89%A9%E8%BD%A6.png', N'湖北省/武汉市', 4.5, NULL, CAST(N'2022-06-04T14:19:27.863' AS DateTime))
GO
INSERT [dbo].[Store] ([StoreID], [BusinessID], [StoreName], [StoreDetails], [StoreImg], [StoreRegion], [StoreScore], [StoreHot], [StoreCreateTime]) VALUES (12, 5, N'慢热的百货店', N'百货店很慢热，百货店的老板也很慢热，百货店的货源很热，百货店老板就叫慢热', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/0199385cd1a1f7a801208f8bebf973.jpg%401280w_1l_2o_100sh.jpg', N'安徽省/芜湖市', 4.5, NULL, CAST(N'2022-06-04T15:19:42.213' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Store] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 
GO
INSERT [dbo].[ProductType] ([TypeId], [TypeName]) VALUES (1, N'衣服')
GO
INSERT [dbo].[ProductType] ([TypeId], [TypeName]) VALUES (2, N'裤子')
GO
INSERT [dbo].[ProductType] ([TypeId], [TypeName]) VALUES (3, N'潮鞋')
GO
INSERT [dbo].[ProductType] ([TypeId], [TypeName]) VALUES (4, N'美妆')
GO
INSERT [dbo].[ProductType] ([TypeId], [TypeName]) VALUES (5, N'数码')
GO
INSERT [dbo].[ProductType] ([TypeId], [TypeName]) VALUES (6, N'饰品')
GO
INSERT [dbo].[ProductType] ([TypeId], [TypeName]) VALUES (7, N'百货')
GO
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
SET IDENTITY_INSERT [dbo].[Goods] ON 
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (1, N'一字肩气质小裙子女式露肩网纱连衣裙2022新款夏季女小黑裙子', 2, 1, N'气质小裙子，黑裙子，一字肩', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/一字肩气质小裙子女式露肩网纱连衣裙2022新款夏季女小黑裙子.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【圆领纯色短袖连衣裙】2022夏装新款女士修身显瘦休闲中裙.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2022夏季气质欧根纱气质显瘦轻薄裙子五分袖连衣裙.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/真维斯旗下短袖t恤女2022新款夏纯棉体恤半袖露脐高腰短款上衣.jpg,', 399.0000, 15, 5, NULL, CAST(N'2022-05-18T00:32:57.617' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (2, N'个性图案舒适透气简约百搭 男款圆领T恤训练短袖男', 2, 1, N'简约，百搭', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/个性图案舒适透气简约百搭 男款圆领T恤训练短袖男.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【贴布绣】22年夏季新品时尚圆领短袖T恤男.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/22年夏季新品动物印花字母刺绣休闲T恤男.jpg,', 99.0000, 8, 1, NULL, CAST(N'2022-05-18T00:37:01.303' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (4, N'【防震聚拢上托】无痕防脱U型美背文胸无钢圈运动内衣背心式胸罩', 3, 1, N'背心式胸罩，无痕', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色，绿色，黄色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【大胸显小 透气薄杯】收副乳调整型薄款内衣无钢圈聚拢文胸罩.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【超薄无痕洞洞杯】大包容贴合美背内衣女透气洞洞无痕聚拢文胸罩.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【超薄显小仙美蕾丝】全包容防下垂稳定调整型无钢圈上托文胸罩.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【蚕丝抑菌 轻薄透气】婴肌棉舒适柔软内衣女聚拢无钢圈文胸罩.jpg,', 120.0000, 11, 0, NULL, CAST(N'2022-05-21T23:00:46.467' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (6, N'【聚拢薄杯】时尚甜美小胸内衣女舒适透气美背上托无钢圈内衣文胸', 3, 1, N'聚拢薄杯，内衣文胸', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【蚕丝抑菌 轻薄透气】婴肌棉舒适柔软内衣女聚拢无钢圈文胸罩.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【超薄承托】微甜大胸显小防凸点全罩杯内衣大码文胸.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【超薄无痕洞洞杯】大包容贴合美背内衣女透气洞洞无痕聚拢文胸罩.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【大胸显小】潮汐蕾丝大杯背勾文胸薄款无钢圈内衣女胸罩.jpg,', 69.0000, 13, 0, NULL, CAST(N'2022-05-21T23:04:06.497' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (7, N'【欧阳娜娜同款】无尺码系列背心式文胸无钢圈内衣女明星同款', 3, 1, N'欧阳娜娜，背心式文胸', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【两件装 欧阳娜娜同款】无尺码系列文胸无钢圈内衣女明星同款.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【聚拢薄杯】时尚甜美小胸内衣女舒适透气美背上托无钢圈内衣文胸.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【欧阳娜娜同款】无尺码系列背心式文胸无钢圈内衣女明星同款.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【聚拢内衣套装】超薄蕾丝性感内衣聚拢文胸记忆钢圈内衣内裤套装.jpg,', 699.0000, 12, 0, NULL, CAST(N'2022-05-21T23:05:30.537' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (8, N'运动内衣女无钢圈跑步健身瑜伽美背背心式文胸', 3, 1, N'运动，文胸', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色，绿色，黄色，紫色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/新款女装潮流运动背心跑步防震瑜伽健身胸衣紧身内衣.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/ UA Infinity女子防震健身跑步运动内衣高强度.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【22年专柜新品】女胸衣运动休闲综训女运动内衣_文胸.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【小胸专属】小胸聚拢加厚上托模杯文胸内衣女胸罩.jpg,', 39.0000, 13, 0, NULL, CAST(N'2022-05-21T23:06:55.477' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (9, N'【100%纯棉】时尚气质简约小清新不规则短款上衣女圆领短袖', 3, 1, N'纯棉，小清新', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色，绿色，黄色尺码：S，M，L，XL，XLL.颜色：黑色，白色，蓝色，绿色，黄色.', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【2022】夏季新款都市时尚简约气质经典黑白舒适优雅女士衬衫.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【玫瑰印花女式t恤】2022夏季新款通勤翻领打底衫短袖t恤女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【POLO翻领】2022新款夏季减龄字母刺绣短款短袖T恤女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【法式小众小衫】22春夏新款圆领蕾丝拼接衬衫女中袖雪纺上衣女.jpg,', 69.0000, 13, 0, NULL, CAST(N'2022-05-21T23:09:10.147' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (10, N'【100%纯棉】夏季设计感花边袖子时尚百搭舒适圆领短袖', 3, 1, N'纯棉，时尚，短袖', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色，绿色，雾霾蓝', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【MIX系列】安踏女款短袖衫新款舒适透气运动T恤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【POLO翻领】2022新款夏季减龄字母刺绣短款短袖T恤女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【法式小众小衫】22春夏新款圆领蕾丝拼接衬衫女中袖雪纺上衣女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【POLO翻领】2022新款夏季减龄字母刺绣短款短袖T恤女.jpg,', 49.0000, 13, 0, NULL, CAST(N'2022-05-21T23:11:07.260' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (11, N'【2022】夏季新款都市时尚简约气质经典黑白舒适优雅女士衬衫', 3, 1, N'夏季，舒适，衬衫', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【浪漫优雅女式T恤】22夏季新款温柔气质唯美镂空花纹蕾丝衫.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【立体压花纹理上衣】22春夏新款气质小香风V领开襟短袖衬衫女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【简约印花】落肩短袖女夏季圆领短款T恤女校园百搭女装T恤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【凉爽冰麻条纹撞色T恤】22年夏季时尚宽松五分袖拼接针织衫女.jpg,', 99.0000, 64, 0, NULL, CAST(N'2022-05-21T23:12:27.600' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (12, N'夏季新款时尚印花拼接气质百搭遮肚显瘦洋气圆领女式衬衫', 3, 1, N'时尚，衬衫', N'尺码：S，M，L，XL，XLL。颜色：白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【速干透气T恤】夏季新款短袖宽松休闲女式T恤上衣女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【锁骨之恋】夏季新款舒适棉法式通勤方领显瘦短袖女式t恤女上衣.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【温柔风雪纺衫】22夏季新款短袖上衣时尚减龄压褶圆领微闪衬衫.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【花边荷叶袖减龄浪漫T恤】2022夏季新品优雅拼色韩版宽松上衣.jpg,', 129.0000, 31, 0, NULL, CAST(N'2022-05-21T23:13:29.647' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (13, N'女士设计感开叉T恤2022年新款夏季圆领短袖休闲心机显瘦上衣', 3, 1, N'圆领，短袖休闲', N'尺码：S，M，L，XL，XLL。颜色：白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【简约印花】落肩短袖女夏季圆领短款T恤女校园百搭女装T恤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【玫瑰印花女式t恤】2022夏季新款通勤翻领打底衫短袖t恤女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【钉珠贴布绣】2022夏季新款可乐猫咪图案短袖t恤宽松女式t恤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【元气满满很】22夏季新款色彩缤纷小鹿印花圆领短袖女式T恤.jpg,', 159.0000, 12, 0, NULL, CAST(N'2022-05-21T23:14:41.830' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (14, N'夏季精选推荐修身百搭显瘦女烟管小脚裤女士休闲裤九分裤', 3, 2, N'修身百搭，休闲裤', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/夏季新款时尚纯色简约百搭显瘦直筒阔腿裤宽松开叉牛仔拖地裤子女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/夏季精选推荐修身百搭显瘦女烟管小脚裤女士休闲裤九分裤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2022夏季新款时尚印花拼接气质百搭遮肚显瘦洋气圆领女式衬衫.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【简约百搭】夏季宽松直筒牛仔阔腿裤女显瘦高腰泫雅风拖地裤子女.jpg,', 79.0000, 13, 0, NULL, CAST(N'2022-05-21T23:16:12.397' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (15, N'夏季新款时尚纯色简约百搭显瘦直筒阔腿裤宽松开叉牛仔拖地裤子', 3, 2, N'时尚，阔腿裤', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色，绿色尺码：S，M，L，XL，XLL.颜色：黑色，白色，蓝色，绿色.', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/夏季精选推荐修身百搭显瘦女烟管小脚裤女士休闲裤九分裤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【夏季新款】时尚高腰牛仔裤宽松直筒阔腿时尚简约纯色拖地裤子女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【圆领棉舒适刺绣拼接上衣】22夏装新款时尚舒适百搭休闲T恤女.jpg,', 89.0000, 13, 0, NULL, CAST(N'2022-05-21T23:18:24.710' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (16, N'轻薄棋盘冰丝休闲裤女2022新款夏百搭显瘦垂感通勤直筒阔腿裤', 3, 2, N'轻薄，阔腿裤', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/宽松百搭休闲牛仔裤女2022年春夏新品显瘦直筒开叉烟管裤女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/轻薄棋盘冰丝休闲裤女2022新款夏百搭显瘦垂感通勤直筒阔腿裤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/夏季新款时尚纯色简约百搭显瘦直筒阔腿裤宽松开叉牛仔拖地裤子女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【高腰宽松直筒裤】22夏新款时尚棋盘格系带女裤长裤女式休闲裤.jpg,', 129.0000, 32, 0, NULL, CAST(N'2022-05-21T23:21:07.410' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (17, N' 男 干修身休闲运动长裤士速干修身休闲运动长裤 Under Armour', 3, 2, N'男，运动长裤', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/ Under Armour  男士速干修身休闲运动长裤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/ 针织九分裤透气休闲裤卫裤 男款运动裤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【22新品】春夏百搭运动裤男松紧系带长裤通勤柔软舒适休闲裤男.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【爆款】运动裤女高弹透气亲肤打底裤健身房跑步高腰提臀瑜伽裤.jpg,', 299.0000, 13, 0, NULL, CAST(N'2022-05-21T23:22:59.367' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (18, N'【爆款推荐】新款轻便透气女款运动短裤', 3, 2, N'运动短裤，轻便', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【爆款推荐】新款轻便透气女款运动短裤女装.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【爆款推荐】新款透气男式运动裤男运动短裤男装.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【爆款推荐】新品舒适女式运动休闲九分裤女装.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【宽松速干】运动T恤男训练透气健身跑步羽毛球网球速干衣短袖.jpg,', 129.0000, 13, 0, NULL, CAST(N'2022-05-21T23:23:43.787' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (19, N'【男女同款】运动短裤舒适透气羽毛球服夏季休闲百搭短裤中性款', 3, 2, N'运动短裤，休闲', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【男女同款】运动短裤舒适透气羽毛球服夏季休闲百搭短裤中性款.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【爆款推荐】新款透气男式运动裤男运动短裤男装.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【速干排汗】运动裤女七分裤2022夏季新品轻薄梭织裤跑步短裤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2022年新款时尚女裤运动裤跑步健身休闲五分裤短裤.jpg,', 89.0000, 13, 0, NULL, CAST(N'2022-05-21T23:24:38.187' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (20, N'【速干凉感透气】运动短裤篮球裤男22年春夏新品宽松训练五分裤', 3, 2, N'速干凉，运动短裤', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【速干凉感透气】运动短裤篮球裤男22年春夏新品宽松训练五分裤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【速干排汗】运动裤女七分裤2022夏季新品轻薄梭织裤跑步短裤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【运动五分裤女】轻盈透气打底裤外穿跑步健身裤紧身高腰瑜伽裤女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【一拳超人联名】夏季男女运动休闲短裤.jpg,', 69.0000, 13, 0, NULL, CAST(N'2022-05-21T23:25:32.143' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (21, N'【夏季薄款】速干透气宽松冰凉户外男休闲运动短裤', 3, 2, N'夏季薄款，运动短裤', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2022年新款时尚女裤运动裤跑步健身休闲五分裤短裤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【运动五分裤女】轻盈透气打底裤外穿跑步健身裤紧身高腰瑜伽裤女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【夏季薄款】冰凉速干透气宽松户外男休闲运动短裤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【夏季薄款】速干透气宽松冰凉户外男休闲运动短裤.jpg,', 49.0000, 12, 0, NULL, CAST(N'2022-05-21T23:26:36.497' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (22, N'春季新款 女款梭织长裤 女裤 女式休闲裤 运动裤子', 3, 2, N'女，运动裤子', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/春季新款 女款梭织长裤 女裤 女式休闲裤 运动裤子.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/春夏款女子休闲束脚运动梭织长裤训练跑步女下装裤子.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2022年休闲百搭女款长裤运动裤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【运动疾风】运动裤男薄款针织跑步透气吸汗九分针织长裤.jpg,', 79.0000, 33, 0, NULL, CAST(N'2022-05-21T23:27:24.053' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (23, N'短裤男裤夏季夏季薄款运动裤跑步健身裤五分裤', 3, 2, N'短裤男，健身裤', N'尺码：S，M，L，XL，XLL 。颜色：黑色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/短裤男裤夏季夏季薄款运动裤跑步健身裤五分裤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/官方UA春夏Launch男子9英寸跑步运动短裤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/男运动五分裤轻薄透气夏季新款运动短裤新款梭织运动裤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/男士针织短裤可调节抽绳松紧腰身宽松舒适夏季新款.jpg,', 89.0000, 133, 0, NULL, CAST(N'2022-05-21T23:28:18.140' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (24, N'【22年专柜新品】男街头百搭简约经典板鞋系列男运动休闲鞋', 3, 3, N'男，休闲鞋', N'尺码：38，39，40，41，42，43，44，45。颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【22年专柜新品】男街头百搭简约经典板鞋系列男运动休闲鞋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【爆款】22年春季新款透气网面百搭小白鞋板鞋男休闲运动鞋男鞋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【爆款】22年新款男鞋夏季透气小白鞋板鞋男士休闲鞋运动鞋男鞋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【爆款】春季新款男鞋轻便软底舒适男款跑步鞋 休闲运动鞋男.jpg,', 299.0000, 21, 1, NULL, CAST(N'2022-05-21T23:29:21.427' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (25, N'【爆款】春季新款时尚百搭小白鞋板鞋男休闲运动鞋男鞋', 3, 3, N'春季新款，运动鞋，男鞋', N'尺码：38，39，40，41，42，43，44，45。颜色：黑色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【爆款】春季新款时尚百搭小白鞋板鞋男休闲运动鞋男鞋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【爆款推荐】春季新款飞织简约休闲运动鞋跑步鞋椰子鞋休闲鞋男鞋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【尺码偏小】男式KAPTIR时尚舒适休闲透气运动跑步鞋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【春季新款】奥康男鞋韩版潮流百搭休闲运动风板鞋.jpg,', 199.0000, 23, 0, NULL, CAST(N'2022-05-21T23:30:00.613' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (26, N'【猎手】休闲鞋男鞋夏季新款国潮板鞋防滑耐磨减震户外运动老爹鞋', 3, 3, N'猎手，老爹鞋', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色，绿色尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色，绿色尺码：38，39，40，41，42，43，44，45.颜色：黑色，白色，蓝色，绿色.', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【猎手】休闲鞋男鞋夏季新款国潮板鞋防滑耐磨减震户外运动老爹鞋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【轻便透气】红蜻蜓新款男鞋舒适网面鞋潮流防滑运动鞋男士休闲鞋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【轻便透气】红蜻蜓新款男鞋网面休闲运动鞋百搭板鞋男.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【情侣帆布鞋】22春夏新款男女简约潮流帆布鞋轻便舒适休闲鞋.jpg,', 269.0000, 23, 0, NULL, CAST(N'2022-05-21T23:30:56.837' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (28, N'【热销爆款】2022夏新款男鞋透气帆布鞋百搭板鞋低帮休闲鞋男', 3, 3, N'夏新款，男鞋', N'尺码：38，39，40，41，42，43，44，45。颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【热销爆款】2022夏新款男鞋透气帆布鞋百搭板鞋低帮休闲鞋男.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【热销爆款】百丽男鞋新驾车鞋一脚蹬平跟休闲豆豆鞋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【热销爆款】夏季新款厚底男鞋高帮拼色板鞋百搭小白鞋运动休闲鞋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【人气】意尔康男鞋春夏季透气男士休闲鞋小白鞋板鞋运动鞋子男.jpg,', 599.0000, 23, 0, NULL, CAST(N'2022-05-21T23:33:26.723' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (29, N'【软弹加倍】男鞋春夏软底贴足休闲鞋拼接鞋面透气减震防滑运动鞋', 3, 3, N'男鞋，透气减震', N'尺码：38，39，40，41，42，43，44，45。颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【软弹加倍】男鞋春夏软底贴足休闲鞋拼接鞋面透气减震防滑运动鞋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【头层牛皮】新款真皮男士皮鞋商务休闲牛津鞋男透气正装皮鞋男鞋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【透气飞织】22春夏新款男轻便舒适运动休闲鞋时尚潮流跑步鞋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【夏季上新】简约百搭休闲鞋男网面鞋透气套脚男鞋懒人一脚蹬男鞋.jpg,', 499.0000, 23, 0, NULL, CAST(N'2022-05-21T23:35:39.857' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (30, N'【KAKAO联名款】新款简约百搭女款板鞋女鞋', 3, 3, N'KAKAO，板鞋女鞋', N'尺码：38，39，40，41，42，43，44，45。颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【22年专柜新品】男街头百搭简约经典板鞋系列男运动休闲鞋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【爆款】22年春季新款透气网面百搭小白鞋板鞋男休闲运动鞋男鞋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【爆款】22年新款男鞋夏季透气小白鞋板鞋男士休闲鞋运动鞋男鞋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【爆款】春季新款男鞋轻便软底舒适男款跑步鞋 休闲运动鞋男.jpg,', 1599.0000, 23, 0, NULL, CAST(N'2022-05-21T23:37:00.017' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (31, N'【爆款】春季新款时尚百搭小白鞋板鞋男休闲运动鞋男鞋', 3, 3, N'春季，小白鞋，运动鞋', N'尺码：38，39，40，41，42，43，44，45。颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【爆款】春季新款时尚百搭小白鞋板鞋男休闲运动鞋男鞋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【爆款推荐】春季新款飞织简约休闲运动鞋跑步鞋椰子鞋休闲鞋男鞋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【尺码偏小】男式KAPTIR时尚舒适休闲透气运动跑步鞋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【春季新款】奥康男鞋韩版潮流百搭休闲运动风板鞋.jpg,', 899.0000, 23, 0, NULL, CAST(N'2022-05-21T23:37:58.477' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (32, N'【热销爆款】2022夏新款男鞋透气帆布鞋百搭板鞋低帮休闲鞋男', 3, 3, N'夏新，男，休闲鞋', N'尺码：38，39，40，41，42，43，44，45。颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【热销爆款】2022夏新款男鞋透气帆布鞋百搭板鞋低帮休闲鞋男.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【热销爆款】百丽男鞋新驾车鞋一脚蹬平跟休闲豆豆鞋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【热销爆款】夏季新款厚底男鞋高帮拼色板鞋百搭小白鞋运动休闲鞋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【人气】意尔康男鞋春夏季透气男士休闲鞋小白鞋板鞋运动鞋子男.jpg,', 799.0000, 23, 0, NULL, CAST(N'2022-05-21T23:38:45.363' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (33, N'【二层牛皮】平底瓢鞋通勤鞋奶奶鞋女皮鞋子女豆豆鞋女单鞋女鞋', 3, 3, N'平底，豆豆鞋，女', N'尺码：38，39，40，41，42，43，44，45。颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【二层牛皮】平底瓢鞋通勤鞋奶奶鞋女皮鞋子女豆豆鞋女单鞋女鞋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【复古玛丽珍鞋】2022年春季新款女时尚休闲鞋女单鞋玛丽珍鞋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【金属扣饰】粗跟穆勒鞋女半拖鞋子女凉拖鞋女包头凉鞋女夏季女鞋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【镂空透气】红蜻蜓女鞋舒适平底豆豆鞋护士鞋浅口女单鞋.jpg,', 1299.0000, 23, 0, NULL, CAST(N'2022-05-21T23:39:53.450' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (34, N'【美妆蛋盒】Ukiss粉扑海绵蛋干湿两用小巧便携清洁涂抹工具', 3, 4, N'粉扑海绵蛋，Ukiss', N'版本：鸡蛋盒美妆蛋，四季美妆蛋', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【2件起售】【美妆蛋盒】Ukiss粉扑海绵蛋干湿两用小巧便携清洁涂抹工具.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【2件起售】罐装粉扑12枚装干湿两用不易吃粉彩妆蛋海绵块粉饼化妆工具.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【3枚装】蛋黄派粉扑气垫菠萝派粉底液专用化妆海绵美妆蛋棉花糖.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【4枚+收纳盒】散粉扑蜜粉扑植绒粉扑定妆自然不吃粉洁面修复遮瑕.jpg,', 399.0000, 23, 0, NULL, CAST(N'2022-05-21T23:42:10.197' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (35, N'【4枚装】斗转星移粉扑气垫粉扑定妆散粉粉饼不易吃粉干湿两用', 3, 4, N'气垫，粉饼', N'版本：鸡蛋盒美妆蛋，四季美妆蛋', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【4枚装】斗转星移粉扑气垫粉扑定妆散粉粉饼不易吃粉干湿两用.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【5件套】化妆刷套装全套初学者粉刷工具刷子眼影刷修眉工具.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【7枚装】北斗七星粉扑气垫粉扑定妆散粉粉饼不易吃粉干湿两用.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【熬夜救星】伊思复原精粹水乳4件护肤品套组改善暗沉拯救熬夜肌.jpg,', 399.0000, 23, 0, NULL, CAST(N'2022-05-22T12:59:13.560' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (36, N'【白钻松露水乳洁面三件套】酵母平衡精华护肤品水乳洁面套装', 3, 4, N'洁面，水乳', N'版本：鸡蛋盒美妆蛋，四季美妆蛋', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【白钻松露水乳洁面三件套】酵母平衡精华护肤品水乳洁面套装.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【保湿抗皱】酵米焕活3件套 （精华水+精华乳+洁面乳）.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【便携尝鲜包】白芍美白保湿礼盒美白淡斑小样旅行包.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【补水保湿 温和清洁】玫瑰纯露+氨基酸泡沫洗面奶收缩毛孔.jpg,', 129.0000, 23, 0, NULL, CAST(N'2022-05-22T12:59:58.353' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (37, N'【补水淡干纹】珀莱雅活能密集洗面奶水乳面霜保湿面膜护肤品套装', 3, 4, N'珀莱雅，水乳，洗面奶', N'版本：鸡蛋盒美妆蛋，四季美妆蛋', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【补水淡干纹】珀莱雅活能密集洗面奶水乳面霜保湿面膜护肤品套装.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【补水凝润一整天】母菊蚕丝水嫩倍现4件套保湿水乳护肤品套装.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【彩妆6件套】高保湿玻尿酸隔离+口红+眉笔+眼影盘化妆刷+卸妆.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【超值2套刷】奢华化妆刷5支+55号魔术粉底刷无痕化妆刷套装.jpg,', 79.0000, 23, 0, NULL, CAST(N'2022-05-22T13:01:55.430' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (38, N'【超值4只装】美妆蛋粉扑彩妆不吃粉干湿两用化妆工具海绵蛋', 3, 4, N'美妆蛋，海绵蛋', N'版本：鸡蛋盒美妆蛋，四季美妆蛋', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【超值4只装】美妆蛋粉扑彩妆不吃粉干湿两用化妆工具海绵蛋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【超值礼盒】雅诗兰黛 小棕瓶第七代两件套装ANR精华露.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【超值礼盒】雅诗兰黛红石榴亮采日霜+晚霜套装新旧版本随机发货.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【超值礼盒】雅诗兰黛红石榴套装 洁面+水+晚霜新旧版本随机发.jpg,', 89.0000, 0, 0, NULL, CAST(N'2022-05-22T13:03:23.093' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (39, N'【超值礼盒】雅诗兰黛红石榴洗面奶泡沫洁面乳套装125ml_2', 3, 4, N'雅诗兰黛，沫洁面乳', N'版本：鸡蛋盒美妆蛋，四季美妆蛋', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【超值礼盒】雅诗兰黛红石榴洗面奶泡沫洁面乳套装125ml_2.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【超值两支装】55号魔术粉底刷无痕化妆刷套装不吃粉底液美妆刷.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【超值两支装】55号魔术粉底刷无痕软毛不吃粉扁头美妆刷子工具.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【超值两支装】55号魔术粉底刷无痕软毛不吃粉美妆化妆刷工具.jpg,', 129.0000, 23, 0, NULL, CAST(N'2022-05-22T13:03:59.160' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (40, N'【超值套装】星空美妆蛋粉扑3个装配蛋+粉扑清洗剂150ml', 3, 4, N'星空美妆，装配蛋', N'', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【超值套装】星空美妆蛋粉扑3个装配蛋+粉扑清洗剂150ml.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【初学者彩妆7件套】隔离+粉底+遮瑕膏+口红+眉笔.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【春季特惠双礼盒】珍珠臻白祛斑亮采礼盒美白亮肤补水保湿双礼盒.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【抵御初老】白茶洁面+水+乳液+红茶面霜护肤套装A醇.jpg,', 99.0000, 23, 0, NULL, CAST(N'2022-05-22T13:04:44.770' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (41, N'【点心款】花浅染芙蓉凝酥美妆蛋_化妆工具超软不吃粉点心彩妆蛋', 3, 4, N'美妆蛋，彩妆蛋', N'版本：鸡蛋盒美妆蛋，四季美妆蛋', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【点心款】花浅染芙蓉凝酥美妆蛋_化妆工具超软不吃粉点心彩妆蛋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【东方礼】东方佳人妆奁彩妆套装_化妆品全套组合美妆礼盒.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【多效粉扑】粉扑不吃粉海绵化妆多效干湿两用气垫粉扑.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【改善暗沉】韩后肽嫩红石榴鲜肌水乳套装提亮肌肤抗初老补水保湿.jpg,', 129.0000, 21, 1, NULL, CAST(N'2022-05-22T13:05:32.167' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (42, N'【改善初老】束而类蛇毒肽强韧新生保湿补水洁面水乳精华霜5件套', 3, 4, N'保湿，补水洁面', N'版本：鸡蛋盒美妆蛋，四季美妆蛋', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【改善初老】束而类蛇毒肽强韧新生保湿补水洁面水乳精华霜5件套.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【干湿两用不吃粉】美妆蛋粉扑 柔软亲肤彩妆海绵蛋化妆工具2个装.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【干湿两用柔软质地】丝绒美妆蛋化妆蛋粉扑海绵不易吃粉柔软三只.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【化妆刷6件套】眼部化妆刷5支装化妆工具眼部晕染刷+散粉刷.jpg,', 169.0000, 23, 0, NULL, CAST(N'2022-05-22T13:06:13.100' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (43, N'【玫瑰花精粹】水乳套装护肤品洗面奶乳液爽肤补水保湿抗皱紧致', 3, 4, N'水乳，洗面奶', N'版本：鸡蛋盒美妆蛋，四季美妆蛋', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【玫瑰花精粹】水乳套装护肤品洗面奶乳液爽肤补水保湿抗皱紧致.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【美白淡斑 白皙透亮】焕彩透白补水护肤品减暗沉淡色素水乳套装.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【美白淡斑 清洁护肤】焕采水乳氨基酸洁面乳3件套 护肤品保湿.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【美白淡斑 一套搞定】焕采水乳霜洁面乳4件套 护肤品保湿补水.jpg,', 139.0000, 23, 0, NULL, CAST(N'2022-05-22T13:06:56.497' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (44, N'【迪士尼原装正品】蓝牙耳机超长待机降噪通用', 3, 5, N'迪士尼，蓝牙耳机', N'颜色：黑色，白色，蓝色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【迪士尼原装正品】蓝牙耳机超长待机降噪苹果vivo华为oppo通用.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/Enco Air2 新品 半透明果冻仓超长续航真无线蓝牙耳机.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/freebuds 4i无线蓝牙耳机双重降噪【保护套套餐】.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/FreeBuds 4i主动降噪 无线蓝牙耳机.jpg,', 89.0000, 23, 0, NULL, CAST(N'2022-05-22T13:21:54.813' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (45, N'【运动跑步】蓝牙无线耳机电竞头戴式降噪适用于苹果华为', 3, 5, N'运动跑步，蓝牙，头戴式', N'颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【运动跑步】蓝牙无线耳机电竞头戴式降噪适用于苹果华为oppo小米.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/4G全网通智能电话多功能GPS定位可插卡视频通话儿童智能手表.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2019款苹果AirPods2真无线蓝牙耳机H1芯片更长续航.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2021华为平板MatePad11键盘保护套适用于华为pad10.95英寸磁吸壳.jpg,', 899.0000, 17, 1, NULL, CAST(N'2022-05-22T13:23:28.920' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (46, N'6204 迷你收音机全波段老年人小型充电插卡立体声广播半导体', 3, 5, N'迷你收音机，老年人，广播', N'颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/6204 迷你收音机全波段老年人小型充电插卡立体声广播半导体.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/Amazfit华米GTR3PRO跃我智能手表血压研究长续航.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/CP4000L照片打印机家用小型彩色便携式迷你手机相片冲印机.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/EMBERTON马歇尔蓝牙音箱无线户外防水便携音响重低音炮.jpg,', 499.0000, 23, 0, NULL, CAST(N'2022-05-22T13:24:17.593' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (47, N'半透明果冻仓超长续航真无线蓝牙耳机苹果通用长续航真无线蓝牙耳机苹果通用', 3, 5, N'半透明，蓝牙耳机', N'颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2019款苹果AirPods2真无线蓝牙耳机H1芯片更长续航.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/Enco Air2 新品 半透明果冻仓超长续航真无线蓝牙耳机.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/freebuds 4i无线蓝牙耳机双重降噪【保护套套餐】.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/FreeBuds 4i主动降噪 无线蓝牙耳机.jpg,', 69.0000, 23, 0, NULL, CAST(N'2022-05-22T13:25:01.003' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (48, N'K30直板按键老人机学生老年备用机超长待机大屏大字大按键手机', 3, 5, N'按键老人机，按键手机', N'颜色：黑色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/K30直板按键老人机学生老年备用机超长待机大屏大字大按键手机.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/pro5s无线蓝牙耳机入耳式适用于华为苹果vivoppo小米降噪小巧舒适.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/Razer雷蛇新蝰蛇标准版黑白色电竞游戏笔记本电脑机械鼠标.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/Redmi AirDots3 Pro主动降噪运动无线蓝牙耳机.jpg,', 79.0000, 23, 0, NULL, CAST(N'2022-05-22T13:25:41.820' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (49, N'S1便携式收音机老年人迷你充电插卡FM调频广播半导体', 3, 5, N'收音机，广播，半导体', N'颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/S1便携式收音机老年人迷你充电插卡FM调频广播半导体.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/T-02收音机老年人全波段便携式数字点歌可充电插TF卡半导体.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/T-16 全波段便携式收音机老年人复古怀旧FM调频半导体.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/USB挂脖电风扇大风小型迷你便携随身可充电宿舍床上静音学生室外.jpg,', 79.0000, 23, 0, NULL, CAST(N'2022-05-22T13:26:52.087' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (50, N'vivo x70pro+手机壳素皮玻璃x70pro双面磁吸', 3, 5, N'vivo，vivo x70pro，手机壳', N'颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/vivo x70pro+手机壳x60pro素皮玻璃x70pro双面磁吸x60镜头全包.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/vivo x70pro手机壳y70s小蛮腰x60pro蓝光s9e卡通s10防摔保护套.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/X1投影仪墙投小型便携1080p超清家庭影院可连手机投影机.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/X2 真无线蓝牙入耳式耳机 音乐耳机 苹果手机耳机 蓝牙耳机.jpg,', 99.0000, 23, 0, NULL, CAST(N'2022-05-22T13:28:07.100' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (51, N'X2 真无线蓝牙入耳式耳机 音乐耳机 苹果手机耳机 蓝牙耳机', 3, 5, N'无线蓝牙，耳机', N'颜色：黑色，白色，蓝色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/X2 真无线蓝牙入耳式耳机 音乐耳机 苹果手机耳机 蓝牙耳机.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/Z1真无线蓝牙耳机X2定制金标版 苹果华为小米音乐耳机.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/飞利浦MP3学生随身听无损音乐播放器6116便携.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/潮牌熊华为mate40pro手机壳30保护套e女nova87曲屏硅胶p50pro壳.jpg,', 699.0000, 23, 0, NULL, CAST(N'2022-05-22T13:39:35.430' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (52, N'飞利浦新国标USB 插线板_插排_排插_拖线板插座', 3, 5, N'飞利浦，排插，插排', N'颜色：黑色，白色，蓝色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/飞利浦新国标USB 插线板_插排_排插_拖线板插座.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/飞利浦新国标安全插座4位总控插线板_插排_排插_接线板_拖线板.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/飞利浦一转三3位五孔新国标转换器无线插排插座.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/富士mini Evo 数模一次成像相机复古2021新款拍立得.jpg,', 55.0000, 23, 0, NULL, CAST(N'2022-05-22T13:40:24.090' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (53, N'骨传导蓝牙耳机概念不入耳商务运动超长待机挂耳数显', 3, 5, N'蓝牙耳机，挂耳，骨传导', N'颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/骨传导蓝牙耳机概念不入耳商务运动超长待机挂耳数显5.2语音接听.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/手表小风扇迷你便携式静音usb手腕电风扇随身手持电扇手环充电式.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/华为mate30_mate30pro素皮手机壳M30epro套m30保护套全包防摔壳.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/极米 NEW Play特别版 投影机 投影仪家用 便携 手机投影同屏.jpg,', 69.0000, 23, 0, NULL, CAST(N'2022-05-22T13:41:16.640' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (54, N'【7号早十母亲礼物】铂金吊坠Pt950白金女星星送礼计价', 3, 6, N'铂金，白金，星星', N'颜色：黑色，白色，蓝色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【7号早十母亲礼物】铂金吊坠Pt950白金女星星送礼计价.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【7号早十母亲礼物】黄金耳钉耳环女款栀子花型足金耳饰计价.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【7号早十母亲礼物】素圈黄金戒指女细款足金实心正品计价.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【520礼物】S925银镶天然和田玉莲花珠吊坠.jpg,', 1299.0000, 23, 0, NULL, CAST(N'2022-05-22T13:42:55.813' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (55, N'【520礼物】和田玉珠平安扣锁骨链项链女ins风小众设计感项', 3, 4, N'项链，设计感，锁骨链', N'颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【520礼物】和田玉珠平安扣锁骨链项链女ins风小众设计感项.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【爆款】ins网红蜂巢戒指5G黄金戒指足金六角形指环爱巢系列.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【爆款】焰火手链小众设计轻奢925银女气质简约个性520礼物.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【爆款日钜惠】魔力小葫芦系列耳线足金黄金耳环单只礼物.jpg,', 1399.0000, 23, 0, NULL, CAST(N'2022-05-22T13:43:44.460' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (56, N'【爆款小蛮腰】阿玛尼小蛮腰锁骨链转运珠项链女送女友生日礼物', 3, 6, N'阿玛尼，锁骨链，女', N'尺码：短，中，长', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【爆款小蛮腰】阿玛尼小蛮腰锁骨链转运珠项链女送女友生日礼物.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【超值爆款】蔻斯琦罗马数字时尚钛钢双环项链锁骨链潮流爆款.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【春夏热销】小熊项链男简约百搭长款ins嘻哈女潮毛衣卫衣链.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【国潮风】温玉S925纯银和田玉平安扣项链女吊坠锁骨链女饰品.jpg,', 299.0000, 23, 0, NULL, CAST(N'2022-05-22T13:45:06.170' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (57, N'【节日礼物】S925银颈链幸运锁骨链女项链吊坠四叶草项链女', 3, 6, N'银颈链，项链女', N'尺码：短，中，长', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【节日礼物】S925银颈链幸运锁骨链女项链吊坠四叶草项链女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【冷淡风】蔻斯琦超值纯银小米粒豆豆项链锁骨链颈链衬衣链卫衣链.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【礼献母爱】精工镶嵌7-8mm时尚淡水珍珠项链玉髓项链.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【母亲节钜献】黄金戒指皇冠活口足金戒指结婚婚嫁礼物.jpg,', 100.0000, 23, 0, NULL, CAST(N'2022-05-22T13:45:45.197' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (58, N'【母亲节钜献】手绳可穿珠转运珠编织绳串珠2.0mm手绳', 3, 6, N'手绳，织绳串珠', N'尺码：短，中，长', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【母亲节钜献】手绳可穿珠转运珠编织绳串珠2.0mm手绳.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【母亲节钜献】足金路路通转运珠圆珠珠子黄金吊坠礼物.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【母亲节礼物】18K金貔貅手链红玛瑙手链K金手链.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【母亲节礼物】999纯银项链女吊坠足银海豚锁骨链送女友生日.jpg,', 129.0000, 23, 0, NULL, CAST(N'2022-05-22T13:46:23.110' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (59, N'925纯银可爱草莓晶兔子项链女ins潮夏日清凉锁骨链简约时尚', 3, 6, N'项链女，骨链，纯银', N'尺码：短，中，长', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/925纯银可爱草莓晶兔子项链女ins潮夏日清凉锁骨链简约时尚.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【节日礼物】S925银颈链幸运锁骨链女项链吊坠四叶草项链女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/925纯银手链裙摆简约气质幸运四叶草手饰手环银饰闺蜜生日礼物.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/925纯银小蛮腰吊坠项链女锁骨链时尚银饰颈链气质毛衣链.jpg,', 520.0000, 23, 0, NULL, CAST(N'2022-05-22T13:47:39.320' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (60, N'925银仿珍珠项链女锁骨链星星吊坠时尚气质毛衣链女配饰冬季', 3, 6, N'银仿，女锁骨链，项链', N'尺码：短，中，长', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/925银仿珍珠项链女锁骨链星星吊坠时尚气质毛衣链女配饰冬季.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/珍珠项链女高级设计感2022新款爱心桃心颈链小众轻奢锁骨链.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【生日礼物】北斗七星项链女款吊坠女士设计感个性流苏时尚锁骨链.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【温润和田玉】静风格玉石项链女锁骨链吊坠颈链饰品夏季休闲链.jpg,', 521.0000, 521, 0, NULL, CAST(N'2022-05-22T13:48:33.170' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (61, N'925纯银小蛮腰吊坠项链女锁骨链时尚银饰颈链气质毛衣链', 3, 6, N'纯银，颈链，骨链', N'尺码：短，中，长', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/925纯银小蛮腰吊坠项链女锁骨链时尚银饰颈链气质毛衣链.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【生日礼物】北斗七星项链女款吊坠女士设计感个性流苏时尚锁骨链.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/925纯银项链锁骨链气质星星吊坠时尚气质银饰毛衣链闺蜜生日礼物.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/巴洛克不规则珍珠项链女猫眼石星芒吊坠设计感法式高级感气质颈链.jpg,', 5200.0000, 2, 0, NULL, CAST(N'2022-05-22T13:49:36.500' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (62, N'【唯品独享款】简约时尚足金黄金玉髓手链手串【多款】', 3, 6, N'简约时尚，金，手链', N'款式：带珠，带星星', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【唯品独享款】简约时尚足金黄金玉髓手链手串【多款】.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【平安是福】经典百搭淡水珍珠项链锁骨链红玛瑙项链送母亲礼物.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【五一低至435_g】宝宝手镯足金黄金手镯满月周岁礼物.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【母亲节献礼】昭梦S925银淡水珍珠吊坠9-10mm女礼物.jpg,', 699.0000, 23, 0, NULL, CAST(N'2022-05-22T13:50:56.197' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (63, N'复古气质珍珠项链女简约时尚锁骨链高级感百搭吊坠颈链配饰饰品', 3, 6, N'颈链，珍珠项链', N'尺码：短，中，长', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/复古气质仿珍珠项链女简约时尚锁骨链高级感百搭吊坠颈链配饰饰品.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【夏上新】人鱼的眼泪蔻斯琦纯银水晶珠优雅气质鱼尾项链锁骨链.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/纯银项链925银转运珠个性吊坠锁骨颈链毛衣链素链生日母亲节礼物.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/999足银四叶草项链时尚纯银吊坠锁骨颈链毛衣链高级感母亲节礼物.jpg,', 99999.0000, 3, 0, NULL, CAST(N'2022-05-22T13:52:20.740' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (64, N' 盲盒收纳盒手办收纳盒亚克力收纳箱透明 玩具收纳箱', 3, 7, N' 盲盒，收纳箱', N'尺码：小，中等，大', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/ 盲盒收纳盒手办收纳盒亚克力收纳箱透明 玩具收纳箱.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【2件起售】厨房壁挂式收纳盒免打孔橱柜多功能塑料储物盒杂物收纳筐.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【2件起售】家用针线盒套装创意便携针线包小便携宿舍学生多功能线盒.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【2件起售】药盒便携式分装内部可拆卸大容量防潮密封小鸟外形简约萌趣收纳盒.jpg,', 12.0000, 666, 0, NULL, CAST(N'2022-05-22T13:53:45.250' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (65, N'【2件组合装】城市街景兼容乐高积木男女孩益智儿童玩具生日礼物', 3, 7, N'生日礼物，乐高积木', N'尺码：小，中等，大', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【2件组合装】城市街景兼容乐高积木男女孩益智儿童玩具生日礼物.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【16条】数据线网线收纳理线器耳机充电线绕线器扎带绑带电线扣.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【1000根】自锁式尼龙扎带扎线带捆扎带大号塑料扎带束线带.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【灯光防尘罩】女孩街景系列积木兼容乐高玩具精品摆件生日礼物.jpg,', 59.0000, 23, 0, NULL, CAST(N'2022-05-22T13:54:27.753' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (66, N'【双层分格】高颜值家庭医药箱便携家用药箱子药物收纳箱医疗箱', 3, 7, N'医药箱，收纳箱', N'尺码：小，中等，大', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【双层分格】高颜值家庭医药箱便携家用药箱子药物收纳箱医疗箱.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【四个装】宝宝收纳筐置物篮杂物厨房客厅浴室零食置物框收纳.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2个装门窗限位器窗口锁扣固定器铝合金纱窗限位器儿童安全锁.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/3个装 创意自动按压式牙签盒家用客厅牙签罐牙签瓶便携塑料牙签筒.jpg,', 35.0000, 23, 0, NULL, CAST(N'2022-05-22T13:55:08.503' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (67, N'3个装果蔬收纳篮可折叠镂空菜罩多功能餐桌防蚊虫苍蝇罩沥水篮', 3, 7, N'收纳篮，沥水篮。苍蝇罩', N'尺码：小，中等，大', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/3个装果蔬收纳篮可折叠镂空菜罩多功能餐桌防蚊虫苍蝇罩沥水篮.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/3件套防尘储物箱日用百货杂物整理箱衣物收纳多功能收纳盒收纳箱.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/4个装 被子收纳筒家用装衣服的袋子大号防潮收纳整理袋.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/4个装插头固定器插头挂钩电源线数据线收纳理线器电线固定理线器.jpg,', 21.0000, 23, 0, NULL, CAST(N'2022-05-22T13:55:58.720' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (68, N'收纳盒挂壁墙上文具整理盒储物盒收纳盒学生床头手机收纳架', 3, 7, N'收纳架，挂壁，收纳盒', N'颜色：黑色，白色，蓝色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/4个装收纳盒挂壁墙上文具整理盒储物盒收纳盒学生床头手机收纳架.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/4件套带刻度杂粮密封罐厨房食品储物盒塑料干果收纳盒零食储存罐.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/6个装创意云朵可绕线插头固定器免打孔粘贴理线器数插头据线收纳.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/6个装亚克力大容量盲盒收纳展示架手办盒模型透明防尘.jpg,', 19.0000, 23, 0, NULL, CAST(N'2022-05-22T13:57:04.840' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (69, N'冰箱贴吸磁铁贴片贴墙固定背胶引磁片磁力贴家用收纳粘贴片', 3, 7, N'冰箱贴，粘贴片，收纳粘', N'颜色：黑色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/6片装冰箱贴吸磁铁贴片贴墙固定背胶引磁片磁力贴家用收纳粘贴片.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/20斤厨房储米箱密封防虫防潮分类米缸多功能五谷杂粮分隔米桶.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/50条耳机数据线理线器电脑整理捆绑绳扎线扣彩色扎带魔术贴理线带.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/360度可旋转三合一分格杂粮米桶旋转米桶家用防虫防潮密封桶.jpg,', 5.0000, 23, 0, NULL, CAST(N'2022-05-22T13:57:55.233' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (70, N'北欧撞色药箱家用全套药物收纳盒小应急大号医药箱家庭装', 3, 7, N'医药箱，北欧', N'颜色：黑色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/ALCOCO北欧撞色药箱家用全套药物收纳盒小应急大号医药箱家庭装.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/ALCOCO带轮木盖户外折叠露营防水车载家用侧开多功能储物盒.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2个装门窗限位器窗口锁扣固定器铝合金纱窗限位器儿童安全锁.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/4个装收纳盒挂壁墙上文具整理盒储物盒收纳盒学生床头手机收纳架.jpg,', 39.0000, 23, 0, NULL, CAST(N'2022-05-22T13:58:38.703' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (71, N'创意少女心桌面带盖迷你垃圾桶办公室卧室家用床头可爱杂物收纳桶', 3, 7, N'收纳桶，少女，可爱', N'颜色：黑色，白色，蓝色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/创意少女心桌面带盖迷你垃圾桶办公室卧室家用床头可爱杂物收纳桶.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/蚕宝宝养殖太空舱儿童昆虫观察盒学生活物养育桶不含蚕跟桑叶.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/创意时尚欧式便携棉签盒美式可爱牙签筒.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/创意自动弹出牙签盒家用客厅按压式餐厅牙签筒罐便携式随身牙签筒.jpg,', 19.0000, 23, 0, NULL, CAST(N'2022-05-22T13:59:27.770' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (72, N'米桶面粉储存罐面桶厨房防潮防虫密封家用储米箱收纳盒米缸', 3, 7, N'米桶面，米缸，收纳盒', N'颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/米桶面粉储存罐面桶厨房防潮防虫密封家用储米箱收纳盒米缸MT789.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/北欧铁艺蚊香架创意抽象植物蚊香盒接灰檀香盒不漏灰香薰收纳盒.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/家庭手提式便捷医药护理箱双层急救药品收纳箱家用儿童应急药箱.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/三件套收纳盒印花防尘储物箱日用百货杂物多功能整理衣物收纳箱.jpg,', 69.0000, 23, 0, NULL, CAST(N'2022-05-22T14:00:16.880' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (73, N'棉花娃娃收纳桶小布偶毛绒玩具收纳透明盒叠加收纳神器圆柱筐', 3, 7, N'棉花娃娃，收纳桶', N'颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/棉花娃娃收纳桶小布偶毛绒玩具收纳透明盒叠加收纳神器圆柱筐pvc.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/ 盲盒收纳盒手办收纳盒亚克力收纳箱透明 玩具收纳箱.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/6个装亚克力大容量盲盒收纳展示架手办盒模型透明防尘.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/城市街景兼容乐高积木男童女孩益智儿童玩具拼装模型生日礼物.jpg,', 20.0000, 23, 0, NULL, CAST(N'2022-05-22T14:01:02.697' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (74, N'港味刺绣翻领雪纺衫简约显瘦短袖白衬衫女衬衣女士上衣女夏', 4, 1, N'港味，衬衣，简约显瘦', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/港味刺绣翻领雪纺衫简约显瘦短袖白衬衫女衬衣女士上衣女夏.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【元气满满很】22夏季新款色彩缤纷小鹿印花圆领短袖女式T恤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【小熊背影印花圆领短袖T恤】22年夏季甜酷纯棉舒适女款上衣.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【拼接撞色蝴蝶结小黑裙】22夏新款气质宽松短袖连衣裙女裙子.jpg,', 89.0000, 23, 0, NULL, CAST(N'2022-05-22T14:07:22.460' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (75, N'【特色拼接老虎印花短袖t恤】2022夏季新款轻熟优雅女式t恤', 4, 1, N'短袖t恤，女式，优雅', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【特色拼接老虎印花短袖t恤】2022夏季新款轻熟优雅女式t恤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【小香风撞色V领连衣裙】22新款夏季花边设计气质纽扣简约裙子.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【小熊背影印花圆领短袖T恤】22年夏季甜酷纯棉舒适女款上衣.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【速干透气T恤】夏季新款短袖宽松休闲女式T恤上衣女.jpg,', 69.0000, 23, 0, NULL, CAST(N'2022-05-22T14:08:22.350' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (76, N'【元气满满很】22夏季新款色彩缤纷小鹿印花圆领短袖女式T恤', 4, 1, N'元气满满，女式T恤，圆领短袖', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【元气满满很】22夏季新款色彩缤纷小鹿印花圆领短袖女式T恤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【水墨印花垂感宽松阔腿裤】2022夏装新款高腰长款休闲裤女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【简约印花】落肩短袖女夏季圆领短款T恤女校园百搭女装T恤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【小熊背影印花圆领短袖T恤】22年夏季甜酷纯棉舒适女款上衣.jpg,', 169.0000, 23, 0, NULL, CAST(N'2022-05-22T14:09:19.007' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (77, N'【条纹棉t】2022夏季新品圆领落肩打底衫短袖女式t恤', 4, 1, N'条纹棉，女式t恤', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【条纹棉t】2022夏季新品圆领落肩打底衫短袖女式t恤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【木耳边小翻领印花雪纺衫】夏装新款短袖大码宽松套头衬衫女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2022夏季新款西装领泡泡袖显瘦女士复古格纹裙通勤风连衣裙女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2022夏季新款时尚印花拼接气质百搭遮肚显瘦洋气圆领女式衬衫.jpg,', 266.0000, 23, 0, NULL, CAST(N'2022-05-22T14:09:59.027' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (78, N'性感冰丝睡衣女春夏季长袖仿真丝棋盘格套装薄款可外穿女士家居服', 4, 1, N'睡衣，家居服，女', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/性感冰丝睡衣女春夏季长袖仿真丝棋盘格套装薄款可外穿女士家居服.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2022新款百搭休闲裤子直筒高腰简约通勤百搭烟管九分西装裤女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/22春夏新款韩版时尚气质撞色线条设计女设计感百搭通勤衬衫.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【时尚圆领】2022春夏新款HT系列爱心黑色修身短袖T恤女.jpg,', 999.0000, 22, 1, NULL, CAST(N'2022-05-22T14:10:51.180' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (79, N'【多色】翻领polo衫男士2022夏季新品休闲短袖套头T恤', 4, 1, N'套头T恤，短袖，男', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【多色】翻领polo衫男士2022夏季新品休闲短袖套头T恤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【精致刺绣】22年夏季新品潮搭舒适短袖T恤男.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【含桑蚕丝】新款弹力莫代尔亲肤短袖t恤男纯色翻领Polo衫.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【冰爽棉】2022夏季新款男士字母印花凉感亲肤圆领短袖T恤.jpg,', 99.0000, 23, 0, NULL, CAST(N'2022-05-22T14:11:50.553' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (80, N'【明线元素】22年夏季新品口袋撞色休闲舒适短袖T恤男', 4, 1, N'夏季新品，T恤，男', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【明线元素】22年夏季新品口袋撞色休闲舒适短袖T恤男.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【棋盘格小熊】22年夏季新品休闲立体感印花短袖T恤男.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【老花小熊刺绣】22年夏季新品卡通简约短袖polo衫男.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【凉感透气】男装短袖舒适薄款POLO衫男休闲运动T恤翻领上衣.jpg,', 0.0000, 0, 1, NULL, CAST(N'2022-05-22T14:13:11.297' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (81, N'翻领短袖男款新款POLO衫运动宽松T恤', 4, 1, N'翻领，宽松T恤，运动，男', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/翻领短袖男款新款POLO衫运动宽松T恤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【明线元素】22年夏季新品口袋撞色休闲舒适短袖T恤男.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【速干】男士清爽透气经典舒适微弹短袖POLO衫.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【满身印花】22年夏季新品卡通休闲短袖T恤男.jpg,', 399.0000, 23, 0, NULL, CAST(N'2022-05-22T14:13:56.270' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (82, N'【透气珠地】2022夏季新款柔软弹力刺绣男士短袖POLO衫', 4, 1, N'透气，短袖，男', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【透气珠地】2022夏季新款柔软弹力刺绣男士短袖POLO衫.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【速干】男士清爽透气经典舒适微弹短袖POLO衫.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【透气珠地】2022夏季新款柔软弹力刺绣男士短袖POLO衫.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【贴布绣】22年夏季新品时尚圆领短袖T恤男.jpg,', 299.0000, 23, 0, NULL, CAST(N'2022-05-22T14:14:41.330' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (83, N'22年夏季新品植物刺绣短袖POLO衫男', 4, 1, N'夏季，衫男，刺绣短袖', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/22年夏季新品植物刺绣短袖POLO衫男.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【含桑蚕丝 凉爽薄款】夏季新款休闲无痕短袖T恤男式Polo衫.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【冰爽棉】2022夏新款男士舒适柔软经典圆领字母凉感点缀短袖T恤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【冰肤科技】2022夏季新款男款宽松短袖透气休闲冰丝运动T恤.jpg,', 159.0000, 23, 0, NULL, CAST(N'2022-05-22T14:15:21.950' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (84, N'【凉爽薄款】商务直筒男士牛仔裤弹力透气男裤宽松亲肤牛仔裤男', 4, 2, N'凉爽，牛仔裤，男', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【凉爽薄款】商务直筒男士牛仔裤弹力透气男裤宽松亲肤牛仔裤男.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/JEEP_吉普2022夏季新款纯色百搭松紧腰束脚裤休闲冰丝裤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/运动t恤亲肤短袖t恤男式圆领透气舒适运动t恤男款简约运动上衣.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/22年夏季新品时尚休闲轻薄百搭梭织束脚裤.jpg,', 169.0000, 23, 0, NULL, CAST(N'2022-05-22T14:16:26.190' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (85, N'22年夏季新品时尚休闲百搭梭织束脚裤', 4, 2, N'束脚裤，夏季，休闲百搭', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/22年夏季新品时尚休闲百搭梭织束脚裤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/22年夏季新品时尚休闲轻薄百搭梭织束脚裤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【云感系列】夏新品轻薄透气牛仔裤男后袋绣标男裤直筒裤子男.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/JEEP_吉普2022夏季新款纯色百搭松紧腰束脚裤休闲冰丝裤.jpg,', 466.0000, 23, 0, NULL, CAST(N'2022-05-22T14:17:17.487' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (86, N'【爆款推荐】甜美气质飞飞袖荷叶边方领提花雪纺连衣裙女夏', 4, 2, N'甜美气质，女，纺连衣', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，粉色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【爆款推荐】甜美气质飞飞袖荷叶边方领提花雪纺连衣裙女夏.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【清仓特卖】纯棉九分裤子女哈伦裤大码女裤松紧休闲小脚裤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【夏季新款】时尚高腰牛仔裤宽松直筒阔腿时尚简约纯色拖地裤子女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【小香风撞色V领连衣裙】22新款夏季花边设计气质纽扣简约裙子.jpg,', 366.0000, 23, 0, NULL, CAST(N'2022-05-22T14:18:20.150' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (87, N'夏季新款时尚纯色简约百搭显瘦直筒阔腿裤宽松开叉牛仔拖地裤子女', 4, 2, N'裤子，女，显瘦', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/夏季新款时尚纯色简约百搭显瘦直筒阔腿裤宽松开叉牛仔拖地裤子女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/微喇叭牛仔裤女春款2022年新款高腰显瘦小个子九分开叉喇叭裤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【夏季新款】时尚高腰牛仔裤宽松直筒阔腿时尚简约纯色拖地裤子女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2022夏季新款时尚印花拼接气质百搭遮肚显瘦洋气圆领女式衬衫.jpg,', 129.0000, 23, 0, NULL, CAST(N'2022-05-22T14:19:13.590' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (88, N'2022夏季新款西装领泡泡袖显瘦女士复古格纹裙通勤风连衣裙女', 4, 2, N'连衣裙，女，复古', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2022夏季新款西装领泡泡袖显瘦女士复古格纹裙通勤风连衣裙女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【特色拼接老虎印花短袖t恤】2022夏季新款轻熟优雅女式t恤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【水墨印花垂感宽松阔腿裤】2022夏装新款高腰长款休闲裤女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【吸睛拼接印花T恤】2022夏季新品独特设计款短袖合身套头上衣.jpg,', 211.0000, 12, 0, NULL, CAST(N'2022-05-22T14:19:59.423' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (89, N'2022春夏季新款v领碎花裙子收腰显瘦荷叶边中长款短袖连衣裙', 4, 2, N'夏季，连衣裙，领碎，女', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2022春夏季新款v领碎花裙子收腰显瘦荷叶边中长款短袖连衣裙.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/高腰直筒牛仔裤女春夏新款时尚简约翻边九分裤弹力修身显瘦烟管裤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/夏季精选推荐修身百搭显瘦女烟管小脚裤女士休闲裤九分裤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【开叉显瘦连衣裙】22夏季新款抽绳收腰字母印花休闲短袖T恤裙.jpg,', 199.0000, 23, 0, NULL, CAST(N'2022-05-22T14:20:50.600' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (90, N'母亲节衣服妈妈夏季雪纺七分袖休闲套装中年女装T恤中老年两件套', 4, 2, N'T恤，女', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/母亲节衣服妈妈夏季雪纺七分袖休闲套装中年女装T恤中老年两件套.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【撞色格子哈伦女式休闲裤】春夏新款时尚高腰简约宽松遮肉九分裤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【简约百搭】夏季宽松直筒牛仔阔腿裤女显瘦高腰泫雅风拖地裤子女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【高腰宽松直筒裤】22夏新款时尚棋盘格系带女裤长裤女式休闲裤.jpg,', 129.0000, 23, 0, NULL, CAST(N'2022-05-22T14:21:33.113' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (91, N'【舒适透气】夏季短袖t恤都市轻熟优雅百搭纯棉圆领女式t恤', 4, 2, N'透气，女，t恤', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【舒适透气】夏季短袖t恤都市轻熟优雅百搭纯棉圆领女式t恤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【夏季新款】时尚高腰牛仔裤宽松直筒阔腿时尚简约纯色拖地裤子女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【撞色格子哈伦女式休闲裤】春夏新款时尚高腰简约宽松遮肉九分裤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【夏季新款】时尚高腰牛仔裤宽松直筒阔腿时尚简约纯色拖地裤子女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【圆领棉舒适刺绣拼接上衣】22夏装新款时尚舒适百搭休闲T恤女.jpg,', 299.0000, 23, 0, NULL, CAST(N'2022-05-22T14:22:31.990' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (92, N'【撞色格子哈伦女式休闲裤】春夏新款时尚高腰简约宽松遮肉九分裤', 4, 2, N'撞色，九分裤，女', N'尺码：S，M，L，XL，XLL。颜色：黑色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/【撞色格子哈伦女式休闲裤】春夏新款时尚高腰简约宽松遮肉九分裤.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/真维斯旗下短袖t恤女2022新款夏纯棉体恤半袖露脐高腰短款上衣.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2022新款百搭休闲裤子直筒高腰简约通勤百搭烟管九分西装裤女.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2022年春夏新款法式方领泡泡袖甜美可爱风女款时尚短袖上衣.jpg,', 299.0000, 23, 0, NULL, CAST(N'2022-05-22T14:23:17.247' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (93, N'MAC/魅可尤雾弹口红唇膏哑光显白 316/925/豆沙色 ', 5, 4, N'口红', N'颜色：#925墨西哥红棕，#923糖纸樱花，#314白桃奶茶，#316小辣椒', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01B7bbQO2HQvAvhAp9K_!!0-item_pic.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01nVf6HT2HQvAz9Kj2A_!!3170729146.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01zLIc9d2HQv723mj9p_!!3170729146.jpg_430x430q90.jpg,', 180.0000, 9, 1, NULL, CAST(N'2022-05-28T16:57:00.950' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (94, N'CHANEL 香奈儿嘉柏丽尔香水系列 天性发香雾润体乳', 5, 4, N'香水', N'香型：嘉柏丽尔天性香水，嘉柏丽尔柔肤身体乳', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01hKyMeM274nidaBsAs_!!4207517744.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01NNIMHR274ncSqoKH3_!!4207517744.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01AobNIS274ntAdQvcZ_!!4207517744.jpg_430x430q90.jpg,', 550.0000, 999, 0, NULL, CAST(N'2022-05-28T17:02:57.730' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (96, N'VALENTINO华伦天奴ROCKSTUD铆钉高跟鞋凉鞋 ', 5, 3, N'高跟鞋', N' 尺码：37，38，39，40', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01EItN2M1oSdbj37CqG_!!0-item_pic.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01oYUdXt1oSdWzHVMtq_!!4256425224.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01wClPwI1oSdWyfsz0Q_!!4256425224.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01i62UA81oSdWyL1XcK_!!4256425224.jpg_430x430q90.jpg,', 7900.0000, 6, 0, NULL, CAST(N'2022-05-28T17:15:16.243' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (97, N'CK Jeans女装时尚简约圆领交叠刺绣LOGO', 5, 1, N'短袖', N' 尺码：S，M，L，XL，XLL', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01SXMfxC1ciPyBqO4QW-2217893634.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01XSF0971ciPyFWVplb-2217893634.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN0120jbmC1ciPyHBbAX4-2217893634.jpg_430x430q90.jpg,', 399.0000, 10, 1, NULL, CAST(N'2022-05-28T17:18:23.310' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (98, N'甜辣小衫 法式高级感白色锁骨一字肩吊带上衣女短款', 5, 1, N'短款', N'尺码：S，M。颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01On6ndm28BVI2HcPQf_!!745957894.jpg_400x400.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01R7HeIG28BVI4SLwxl_!!745957894.jpg_400x400.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01xou5tf28BVI6tB6Pa_!!745957894.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01Z7KPQw28BVI6lGoXq_!!745957894.jpg,', 189.0000, 10, 0, NULL, CAST(N'2022-05-29T14:53:24.127' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (99, N'抹胸小礼服毛毛生日party裙年会小众奶甜在逃公主短款纱裙', 5, 1, N'短裙', N' 尺码：S，M，L，XL。颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01qERMpF1MuIRIof4zL_!!2207721494.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01EjgIvQ1MuIREriBls_!!2207721494.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01qPEPWf1MuIRG8pqJR_!!2207721494.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN015H6UJ81MuIRC6jnGo_!!2207721494.jpg,', 328.0000, 3, 2, NULL, CAST(N'2022-05-29T14:57:12.373' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (101, N'Mavis鲁伯特之泪项链女轻奢小众高级感闺蜜情侣礼物饰品', 6, 6, N'项链', N'尺码：38cm+5cm，联系客服定制', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01ABmuMU20PgZizvC72_!!2184646842.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01xt8lyr20PgZlRuWVN_!!2184646842.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01USzMJl20PgZg9Dmdm_!!2184646842.jpg,', 168.0000, 97, 1, NULL, CAST(N'2022-05-29T15:07:05.743' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (102, N'《望舒》薾曼轻奢 温柔蕾丝琉璃月亮纯银项链微镶仙女锁骨链礼物', 6, 6, N'项链', N'颜色：图片色.', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01x3Dael1QTxzZ2VDVf_!!1726331978.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01eTvPXy1QTxzhCzi8I_!!1726331978.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01QMAKbu1QTxzhD2jF1_!!1726331978.jpg,', 138.0000, 9, 0, NULL, CAST(N'2022-05-29T15:08:34.870' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (103, N'Star Jewelry 10k 新月 月亮石 锁骨链', 6, 6, N'项链', N'', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01x2N4J123w9MLdyh1I_!!371087319.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN019hmFwX23w9MIvYmDs_!!371087319.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN012D3Yxs23w9MIvYApg_!!371087319.jpg,', 1850.0000, 0, 0, NULL, CAST(N'2022-05-29T15:12:00.637' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (104, N'中牌制服馆 碳灰掉落原创JK制服格子裙', 7, 1, N'JK', N'尺码：XS，S，M，L，XL。颜色：【碳灰42cm】，【碳灰45cm】，【碳灰48cm】', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01EjRDgi1jAiA3cEVsr_!!1047354508.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01gZ84MP1jAiA5NzTFp_!!1047354508.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01Lsv5Kw1jAiA9ldHyl_!!1047354508.jpg,', 128.0000, 4, 1, NULL, CAST(N'2022-05-29T15:22:41.070' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (105, N'沙华原创JK格裙虾滑短裙半身裙正统JK制服水手服掉落', 7, 1, N'JK', N' 尺码：XS，S，M，L，XL。颜色：39cm，42cm，45cm，48cm', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01ivKgnE1jAi9Fegkrk_!!1047354508.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01PEQCyu1jAi9K9gu5H_!!1047354508.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01ER7xi01jAi9AcQFdL_!!1047354508.jpg,', 148.0000, 66, 0, NULL, CAST(N'2022-05-29T15:27:51.360' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (106, N'冰淇淋JK制服格裙原创百褶裙日系校园少女短裙现货', 7, 1, N'JK', N'尺码：XS，S，M，L，XL。颜色：39cm，42cm，45cm', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN015dZxdr1jAi7ltIqcX_!!1047354508.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN015mi9tk1jAi7j8lybR_!!1047354508.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN0126JwmZ1jAi7eEEo9d_!!1047354508.jpg,', 148.0000, 10, 0, NULL, CAST(N'2022-05-29T15:30:15.280' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (107, N'【现货】月野HOUSE 浓绀身白二本 基础款冬服', 7, 1, N'JK', N' 尺码：S，M，L，XL，XLL', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01YGHQHd25PIMhvKnFM_!!2537277518.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN012edIXq25PII65YZRd_!!2537277518.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01uhmhJQ25PII2geWEJ_!!2537277518.jpg,', 248.0000, 6, 0, NULL, CAST(N'2022-05-29T15:33:30.043' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (108, N'傲风玉桂狗大耳狗联名款 电竞椅女生人体工学椅电脑椅子家用座椅', 5, 7, N'电竞椅', N'颜色：玉桂狗联名款', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01IB8vZm1eH3d7i6eop_!!3242073845.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01VSiFiw1eH3ZACR7Jt_!!3242073845.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01kUqomq1eH3ZHonvNb_!!3242073845.jpg_430x430q90.jpg,', 1899.0000, 10, 0, NULL, CAST(N'2022-05-29T15:37:41.817' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (109, N'傲风荣耀之盾 电竞椅男生游戏椅人体工学椅家用舒适座椅电脑椅子', 5, 7, N'电竞椅', N'颜色：荣耀之盾-天宇，荣耀之盾-天宇脚踏款，荣耀之盾-烈光，荣耀之盾-暗骑', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01havHvP1eH3d5PfK67_!!3242073845.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01QFZzI01eH3cxiFq1i_!!3242073845.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01VC2kkp1eH3dA9ZpAP_!!3242073845.jpg_430x430q90.jpg,', 1499.0000, 5, 0, NULL, CAST(N'2022-05-29T15:40:35.957' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (110, N'ALIENWARE外星人全新x14 酷睿i7办公游戏本 ', 8, 5, N'游戏本', N'颜色：黑色，白色。内存：16GB。硬盘内存：512固态硬盘', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN013fqICa1DTt5sWoAFh_!!2510050218.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01eOpZiO1DTt5nyl7Sn_!!2510050218.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01CGb7pu1DTt5tqoQ1j_!!2510050218.jpg_430x430q90.jpg,', 12119.0000, 5, 0, NULL, CAST(N'2022-05-29T15:44:50.993' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (111, N'asus华硕天选2代笔记本电脑游戏本AMD锐龙R7高配', 8, 5, N'游戏本', N'内存：16GB，32GB。硬盘内存：512固态硬盘，1TB固态硬盘。颜色：日蚀灰，魔幻青', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01KEAeyX1bOR6iD6Htr_!!686773455.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01vGJn9j1bOR95EGS1W_!!686773455.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01Vv18SJ1bOR99X0Lla_!!686773455.jpg_430x430q90.jpg,', 5899.0000, 15, 0, NULL, CAST(N'2022-05-29T15:49:33.307' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (112, N'黑峡谷GK715游戏机械键盘茶轴红轴白轴粉色键盘女生', 8, 5, N'键盘', N'颜色分类：粉-白轴，粉-红轴，粉-茶轴。套餐类型：官方标配', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01iRLSQG1ge4jHcLaj1_!!2212897894166.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01IpWsho1ge4jPFbMJf_!!2212897894166.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01YOLUhj1ge4jQoOucA_!!2212897894166.jpg_430x430q90.jpg,', 269.0000, 19, 1, NULL, CAST(N'2022-05-29T15:53:19.247' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (113, N'ALIENWARE外星人AW510K游戏机械键盘Cherry', 8, 5, N'键盘', N'颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01fnh6Q11DTt6IG1KPV_!!2510050218.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01VHh3Up1DTt4qcrGNL_!!2510050218.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN010cywYC1DTt6L49QDh_!!2510050218.jpg_430x430q90.jpg,', 1399.0000, 99, 0, NULL, CAST(N'2022-05-29T15:55:24.413' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (114, N'罗技G102二代有线游戏电竞机械鼠标RGB流光灯效', 8, 5, N'鼠标', N'颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01i5FSgZ1Dy7AlyrQ1y_!!2494290284.png_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01BcurUV1Dy7Bdg2oJz_!!2494290284.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01lDepVV1Dy77DYog6g_!!2494290284.jpg_430x430q90.jpg,', 144.0000, 9, 1, NULL, CAST(N'2022-05-29T16:02:29.717' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (115, N'ALIENWARE外星人AW610M无线有线双模高端电竞游戏', 8, 5, N'鼠标', N'颜色：黑色，灰白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01TgRRml1DTt6DwaX9C_!!2510050218.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01bz3EYd1DTt670dOPr_!!2510050218.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01mLkF7x1DTt4d67TTB_!!2510050218.jpg_430x430q90.jpg,', 699.0000, 12, 0, NULL, CAST(N'2022-05-29T16:04:16.167' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (116, N'onikuma网红主播粉色猫耳朵专业电竞少女心有线游戏', 8, 5, N'头戴耳机', N'颜色分类：海洋蓝，少女粉，薄荷奶青，质感灰。套餐类型：官方标配', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01zfwqev2NDzdsCdmOQ_!!726749930.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01gMzRhs2NDzdoIgiaX_!!726749930.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN019bFnCQ2NDzdk1ydDA_!!726749930.jpg_430x430q90.jpg,', 229.0000, 5, 1, NULL, CAST(N'2022-05-29T16:08:11.753' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (117, N'漫步者头戴式无线蓝牙耳机游戏电竞直播主播可爱', 8, 5, N'头戴耳机', N'颜色：铂晶粉，知更蓝，水晶蓝', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01e4NHwi28UHX2SWhHo_!!2591257935.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01fYuFAa28UHX2SWpbn_!!2591257935.jpg_430x430q90.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01TiSmoh28UHX9F4ErP_!!2591257935.jpg_430x430q90.jpg,', 599.0000, 15, 0, NULL, CAST(N'2022-05-29T16:11:15.510' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (118, N'法国color works小碎钻U型马蹄扣项链纯银饰女轻奢小众设计高级感', 11, 6, N'轻奢', N'颜色分类：标准银渡白金包装，加厚银渡白金包装', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01bZ5rnM2CGJuTFyl0v_!!67998446.jpg_400x400.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01bPV5FF2CGJuegGwNN_!!67998446.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN016co0l02CGJuegGbaW_!!67998446.jpg,', 178.0000, 66, 0, NULL, CAST(N'2022-06-04T14:28:03.210' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (119, N'《人海星芒》薾曼轻奢复古蓝托帕石项链银镀金宝石简约锁骨链礼物', 11, 6, N'礼物', N'款式：图片款', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/1.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/3.jpg,', 128.0000, 155, 0, NULL, CAST(N'2022-06-04T14:29:56.047' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (120, N'月溅星河 天然拉长石 灰月光石 爱心造型14k包金项链锁骨链礼物女', 11, 6, N'锁骨链', N'尺码：38cm，40cm，42cm', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/4.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/5.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/6.jpg,', 79.0000, 31, 0, NULL, CAST(N'2022-06-04T14:31:50.653' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (121, N'flos小众设计S925纯银镀金小珍珠项链轻奢百搭极细大气锁骨链女夏', 11, 6, N'尺码：纯银40cm，纯银小爱心40cm+3cm', N'锁骨链', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/8.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/9.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/7.jpg,', 199.0000, 25, 0, NULL, CAST(N'2022-06-04T14:36:06.407' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (122, N'ZENGLIU925纯银蝴蝶项链ins简约锁骨链女轻奢小众颈链礼物送女友', 11, 6, N'锁骨链', N' 尺码：小蝶飞绕项链，小蝶飞绕项链+情动朝夕礼盒', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/10.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/11.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/O1CN01McJb7f1fjHdqT1H0q_!!1712484042.jpg_430x430q90.jpg,', 169.0000, 23, 0, NULL, CAST(N'2022-06-04T14:39:57.513' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (123, N'无法复刻的美貌◆高级感轻奢锆石项链颈链锁骨链银针耳钉配饰品仙', 11, 6, N'锁骨链', N'款式：银针耳钉，银针项链', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/12.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/13.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/14.jpg,', 399.0000, 78, 0, NULL, CAST(N'2022-06-04T14:41:43.063' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (124, N'SiElla海星贝壳纯银项链精灵的眼泪ins吊坠女嘻哈森系小众设计感', 11, 6, N'锁骨链', N'颜色：金色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/15.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/16.jpg,', 167.0000, 12, 0, NULL, CAST(N'2022-06-04T14:56:33.580' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (125, N'FFantasy人鱼同款美国进口14k包金马眼锆石项链可洗澡百搭超闪韩', 11, 6, N'美国进口', N'颜色：进口美国14k包金', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/18.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/19.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/20.jpg,', 124.0000, 65, 0, NULL, CAST(N'2022-06-04T15:03:11.777' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (126, N'松下Doltz变频电动牙刷声波全自动成人男女情侣软毛DC01旗舰店', 12, 7, N'电动牙刷', N'颜色：黑色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/21.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/22.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/23.jpg,', 349.0000, 100, 0, NULL, CAST(N'2022-06-04T15:22:12.570' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (127, N'行李箱女20寸结实耐用密码箱2021新款学生箱包静音万向轮拉杆箱男', 12, 7, N'行李箱', N'尺码：18寸，20寸，22寸，24寸，26寸.颜色：黑色，白色，蓝色，绿色.', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/24.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/25.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/26.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/27.jpg,', 186.0000, 12, 0, NULL, CAST(N'2022-06-04T15:26:34.737' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (128, N'水晶钜惠返场中，水晶库存，放出5000+', 12, 7, N'虚拟产品', N'游戏版本：典藏版', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/28.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/29.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/30.jpg,', 988.0000, 1, 0, NULL, CAST(N'2022-06-04T15:28:23.157' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (129, N'蕉下花苞伞遮阳伞包口袋防晒伞女晴雨防紫外线黑胶花花伞遮太阳伞', 12, 7, N'太阳伞', N'颜色：黑色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/31.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/32.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/33.jpg,', 249.0000, 15, 0, NULL, CAST(N'2022-06-04T15:30:54.883' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (130, N'家庭卧室生活家居用品用具小百货新房子居家宿舍住校神器家用大全', 12, 7, N'收纳抽屉', N'颜色：粉色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/34.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/35.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/36.jpg,', 66.0000, 12, 0, NULL, CAST(N'2022-06-04T15:32:41.563' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (131, N'宿舍用品生活好物男寝室女大学生实用居家百货大全租房小物件神器', 12, 7, N'夜灯', N'颜色分类：触控款，感应款', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/37.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/38.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/39.jpg,', 35.0000, 33, 0, NULL, CAST(N'2022-06-04T15:37:18.453' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (132, N'创意居家居厨房用品用具小百货家用大全卫生间拖把收纳神器小物件', 12, 7, N'收纳神器', N'颜色：小狮子，兔子，蓝鲸，蘑菇', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/40.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/41.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/42.jpg,', 9.9000, 99, 0, NULL, CAST(N'2022-06-04T15:39:10.407' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (133, N'家居生活厕所用品居家庭日用品家用百货大全出租卫生间各种神器', 12, 7, N'日用品', N'颜色：灰色，白色，蓝色，粉色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/44.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/45.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/46.jpg,', 28.9000, 36, 0, NULL, CAST(N'2022-06-04T15:40:48.160' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (134, N'日本MUJIΕ居家居用品用具百货家用大全牙刷架神器生活实用日用品', 12, 7, N'牙刷架', N'颜色：黑色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/48.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/47.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/49.jpg,', 73.8000, 15, 0, NULL, CAST(N'2022-06-04T15:42:30.463' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (135, N'yes93line白色长袖方领连衣裙时髦2022新款女夏收腰公主纱裙裙子', 5, 1, N'连衣裙', N' 尺码：S，M', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/50.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/51.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/52.jpg,', 259.0000, 11, 0, NULL, CAST(N'2022-06-04T16:16:48.840' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (136, N'高级质感轻奢复古超闪奥地利水晶手镯美国14K包金小众设计学生ins', 6, 6, N'手镯', N'尺码：13cm，14cm，15cm，16cm，17cm', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/53.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/54.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/55.jpg,', 145.0000, 65, 0, NULL, CAST(N'2022-06-04T16:21:52.380' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (137, N'「落跑甜心」复古月亮项链饰品小众设计2022年新款女项链送女友', 6, 6, N'项链', N'颜色：落跑甜心 月亮项链', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/56.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/57.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/58.jpg,', 96.8000, 16, 0, NULL, CAST(N'2022-06-04T16:24:10.430' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (138, N'华晖佳宝2022春夏新品 花朝系列铃兰花锁骨链项链轻奢小众锁骨链', 6, 6, N'锁骨链', N'颜色：铜版，银版', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/59.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/60.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/61.jpg,', 970.0000, 27, 0, NULL, CAST(N'2022-06-04T16:27:09.790' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (139, N'Mavis生之颂原创设计星星点缀ins风925银手链女日韩学生个性饰品', 6, 6, N'手链', N' 尺码：14cm+3cm，16cm+cm', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/62.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/63.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/64.jpg,', 128.0000, 34, 0, NULL, CAST(N'2022-06-04T16:29:43.503' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (140, N'【现货】I Do Romance系列 18K金钻石手链女珠宝饰品正品ido', 6, 6, N'手链', N'颜色：淡白.', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/65.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/66.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/67.jpg,', 2299.0000, 10, 1, NULL, CAST(N'2022-06-04T16:32:45.157' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (141, N'新家生活用品家用百货大全日用品居家家居用品用具小百货好物神器', 5, 7, N'扫把', N'颜色：黑色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/68.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/69.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/70.jpg,', 34.8000, 45, 0, NULL, CAST(N'2022-06-10T14:38:27.420' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (142, N'创意生活日用品实用小件浴室收纳工具抖音百货家居家新家稀奇玩意', 5, 7, N'收纳', N'颜色：黑色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/71.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/72.jpg,', 9.9000, 5, 0, NULL, CAST(N'2022-06-10T14:40:24.553' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (143, N'创意家居用品用具居家生活小百货家用大全小物件神器宿舍好物日用', 5, 7, N'家居用品', N'颜色：黑色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/74.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/75.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/73.jpg,', 78.0000, 13, 0, NULL, CAST(N'2022-06-10T14:42:27.140' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (144, N'创意家居生活日用品小百货卫生间用品用具佳佳熊厨房置物架小玩意', 5, 7, N'置物架', N' 尺码：S，M，L，XL，XLL', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/76.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/77.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/78.jpg,', 37.8000, 34, 0, NULL, CAST(N'2022-06-10T14:43:52.080' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (145, N'日本进口厨房生活用品家用大全小百货置物架家居收纳各种神器厨具', 5, 7, N'置物架', N'颜色：黑色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/79.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/80.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/81.jpg,', 96.0000, 6, 0, NULL, CAST(N'2022-06-10T14:45:24.900' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (146, N'简约家居用品用具家用小百货好物大全新家宿舍小物件收纳神器礼品', 5, 7, N'收纳', N'颜色：灰色，白色，蓝色，粉色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/1.1.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/1.2.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/1.3.jpg,', 53.0000, 120, 0, NULL, CAST(N'2022-06-10T14:56:53.753' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (147, N'智能家居厨房用品家用大全各种收纳盒神器用具居家好物生活小百货', 5, 7, N'收纳', N'颜色：黑色，白色，蓝色，绿色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2.1.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2.2.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2.3.jpg,', 119.0000, 16, 0, NULL, CAST(N'2022-06-10T14:59:42.893' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (148, N'家居用品用具小百货家庭居家生活日用品新家大全家用好物宿舍神器', 5, 7, N'收纳', N'颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2.4.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2.5.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2.6.jpg,', 49.8000, 45, 0, NULL, CAST(N'2022-06-10T15:00:56.053' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (149, N'【椿】Aziza/珍珠后网纱蝴蝶结尖头中空细高跟鞋仙女风婚鞋伴娘鞋', 5, 3, N'凉鞋', N'尺码：37，38，39，40', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2.7.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2.8.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/2.9.jpg,', 159.0000, 11, 0, NULL, CAST(N'2022-06-10T15:03:07.040' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (150, N'原野2022春秋新款赫本浅口珍珠文艺复古漆皮单鞋淑女平底玛丽珍鞋', 5, 3, N'玛丽珍鞋', N'颜色：黑色，白色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/3.1.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/3.2.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/3.3.jpg,', 219.0000, 56, 0, NULL, CAST(N'2022-06-10T15:04:11.987' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (151, N'厚底鞋女2021新款韩版时尚真皮小白鞋防水台松糕系带休闲鞋百搭', 5, 3, N'厚底鞋', N'尺码：36，37，38，39', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/3.4.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/3.5.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/3.6.jpg,', 149.0000, 23, 0, NULL, CAST(N'2022-06-10T15:05:32.780' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (152, N'2022麦昆小白鞋女港风百搭内增高玫瑰红时尚女鞋真皮松糕厚底板鞋', 5, 3, N'厚底鞋', N' 尺码：36，37，38，39', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/4.1.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/4.2.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/4.3.jpg,', 3999.0000, 33, 0, NULL, CAST(N'2022-06-10T15:07:35.053' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (153, N'葡萄妈studiolee 仙女风钻带法式羊皮蝴蝶结单鞋圆头芭蕾玛丽珍鞋', 5, 3, N'玛丽珍鞋', N' 尺码：35，36，37，38，39。颜色：蓝色，裸粉色', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/4.4.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/4.5.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/4.6.jpg,', 399.0000, 6, 0, NULL, CAST(N'2022-06-10T15:09:13.060' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (154, N'伯爵猫高跟鞋2022年新款鞋子厚底小皮鞋单鞋真皮女鞋玛丽珍鞋女夏', 5, 3, N'玛丽珍鞋', N' 尺码：35，36，37，38，39', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/5.1.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/5.2.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/5.3.jpg,', 158.0000, 67, 0, NULL, CAST(N'2022-06-10T15:10:44.560' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (155, N'【618盛典】Bally/巴利JANELLE女士白色皮革乐福单鞋6228182', 5, 3, N'单鞋', N'尺码：35，36，37，38，39', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/6.1.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/6.2.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/6.3.jpg,', 5999.0000, 0, 0, NULL, CAST(N'2022-06-10T15:13:11.790' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (156, N'Skechers斯凯奇糖果熊 女鞋透气运动鞋撞色冰淇淋鞋休闲鞋老爹鞋', 5, 3, N'老爹鞋', N'尺码：35，36，37，38，39', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/5.4.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/5.5.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/5.6.jpg,', 449.0000, 7, 0, NULL, CAST(N'2022-06-10T15:14:48.887' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (157, N'New Balance NB官方正品女鞋复古运动休闲老爹鞋452系列WX452SB', 5, 3, N'老爹鞋', N'尺码：35，36，37，38，39', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/5.7.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/5.8.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/5.9.jpg,', 599.0000, 4, 0, NULL, CAST(N'2022-06-10T15:16:19.767' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (158, N'佩顿化妆品痘痘套装专柜正品痘痘肌肤日常问题润泽保湿免邮男女', 5, 4, N'套装', N'颜色：标配', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/7.1.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/7.2.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/7.3.jpg,', 299.0000, 10, 0, NULL, CAST(N'2022-06-10T15:19:17.367' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (159, N'SUQQU记忆粉饼美妆粉底霜提亮遮瑕粉霜30g油皮粉底液持久轻薄底妆', 5, 4, N'粉底液', N'容量：30ml，40ml，50ml', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/7.4.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/7.5.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/7.6.jpg,', 699.0000, 10, 0, NULL, CAST(N'2022-06-10T15:20:53.703' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (160, N'everbab艾蓓拉猫蛋蛋美妆蛋省粉海绵彩妆蛋粉扑干湿两用化妆工具', 5, 4, N'美妆蛋', N' 尺码：3只装', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/7.7.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/7.8.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/7.9.jpg,', 45.0000, 16, 0, NULL, CAST(N'2022-06-10T15:22:20.680' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (161, N'花西子花浅染化妆刷套装/化妆工具美妆用品全套初学者刷子女套刷', 5, 4, N'化妆刷', N' 尺码：五件套', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/8.1.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/8.2.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/8.3.jpg,', 199.0000, 99, 0, NULL, CAST(N'2022-06-10T15:23:33.270' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (162, N'尔木萄粉扑粉底液专用美妆蛋气垫海绵粉饼干湿两用葡旗舰店尔女萄', 5, 4, N'粉扑', N'尺码：3只装，5只装', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/8.4.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/8.5.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/8.6.jpg,', 45.0000, 12, 0, NULL, CAST(N'2022-06-10T15:24:50.143' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (163, N'UKISS粉扑清洗剂液美妆蛋化妆刷清洗二合一海绵蛋工具清洁盒子器', 5, 4, N'清洗液', N'尺码：1件', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/8.7.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/8.8.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/8.9.jpg,', 19.9000, 87, 0, NULL, CAST(N'2022-06-10T15:26:00.063' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (164, N'【618店铺直播专属】HR赫莲娜绿宝瓶精华黑绷带套装修护保湿舒缓', 5, 4, N'保湿', N'尺码：50ml', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/9.1.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/9.2.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/9.3.jpg,', 5160.0000, 77, 0, NULL, CAST(N'2022-06-10T15:27:43.990' AS DateTime))
GO
INSERT [dbo].[Goods] ([GoodsID], [GoodsTitle], [StoreID], [TypeId], [GoodsKeyWord], [GoodsAttribute], [GoodsImg], [GoodsPrice], [GoodsStock], [GoodsSales], [GoodsStatu], [ProductCreateTime]) VALUES (165, N'【直播专享】黛珂牛油果乳液紫苏水150ml水乳套装改善粗糙', 5, 4, N'乳液', N' 尺码：150ml', N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/9.4.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/9.5.jpg,http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/9.6.jpg,', 699.0000, 6, 0, NULL, CAST(N'2022-06-10T15:29:02.850' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Goods] OFF
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 
GO
INSERT [dbo].[Comment] ([CommentID], [UserID], [GoodsID], [Content], [CommentTime]) VALUES (1, 1, 1, N'请问', CAST(N'2022-06-13T02:46:10.537' AS DateTime))
GO
INSERT [dbo].[Comment] ([CommentID], [UserID], [GoodsID], [Content], [CommentTime]) VALUES (3, 2, 1, N'啊大大', CAST(N'2022-06-13T02:53:40.653' AS DateTime))
GO
INSERT [dbo].[Comment] ([CommentID], [UserID], [GoodsID], [Content], [CommentTime]) VALUES (5, 1, 1, N'a', CAST(N'2022-06-13T23:10:41.550' AS DateTime))
GO
INSERT [dbo].[Comment] ([CommentID], [UserID], [GoodsID], [Content], [CommentTime]) VALUES (6, 1, 1, N'@Content', CAST(N'2022-06-14T00:22:26.107' AS DateTime))
GO
INSERT [dbo].[Comment] ([CommentID], [UserID], [GoodsID], [Content], [CommentTime]) VALUES (7, 1, 1, N'qwe', CAST(N'2022-06-14T00:23:12.270' AS DateTime))
GO
INSERT [dbo].[Comment] ([CommentID], [UserID], [GoodsID], [Content], [CommentTime]) VALUES (8, 1, 1, N'[可爱]', CAST(N'2022-06-14T00:25:48.187' AS DateTime))
GO
INSERT [dbo].[Comment] ([CommentID], [UserID], [GoodsID], [Content], [CommentTime]) VALUES (9, 1, 1, N'[挖鼻]', CAST(N'2022-06-14T00:26:57.933' AS DateTime))
GO
INSERT [dbo].[Comment] ([CommentID], [UserID], [GoodsID], [Content], [CommentTime]) VALUES (10, 1, 1, N'[吃惊]', CAST(N'2022-06-14T00:27:05.743' AS DateTime))
GO
INSERT [dbo].[Comment] ([CommentID], [UserID], [GoodsID], [Content], [CommentTime]) VALUES (11, 1, 1, N'[挤眼]', CAST(N'2022-06-14T00:27:33.400' AS DateTime))
GO
INSERT [dbo].[Comment] ([CommentID], [UserID], [GoodsID], [Content], [CommentTime]) VALUES (12, 1, 1, N'[挤眼]', CAST(N'2022-06-14T00:27:36.810' AS DateTime))
GO
INSERT [dbo].[Comment] ([CommentID], [UserID], [GoodsID], [Content], [CommentTime]) VALUES (13, 1, 164, N'[微笑]', CAST(N'2022-06-14T00:27:50.947' AS DateTime))
GO
INSERT [dbo].[Comment] ([CommentID], [UserID], [GoodsID], [Content], [CommentTime]) VALUES (14, 1, 157, N'[哈哈]', CAST(N'2022-06-14T00:29:00.317' AS DateTime))
GO
INSERT [dbo].[Comment] ([CommentID], [UserID], [GoodsID], [Content], [CommentTime]) VALUES (15, 1, 109, N'[太开心]', CAST(N'2022-06-14T00:29:22.527' AS DateTime))
GO
INSERT [dbo].[Comment] ([CommentID], [UserID], [GoodsID], [Content], [CommentTime]) VALUES (16, 1, 109, N'[害羞]', CAST(N'2022-06-14T00:29:26.563' AS DateTime))
GO
INSERT [dbo].[Comment] ([CommentID], [UserID], [GoodsID], [Content], [CommentTime]) VALUES (17, 1, 1, N'[衰]', CAST(N'2022-06-14T00:29:49.257' AS DateTime))
GO
INSERT [dbo].[Comment] ([CommentID], [UserID], [GoodsID], [Content], [CommentTime]) VALUES (18, 1, 2, N'[哈哈]', CAST(N'2022-06-14T00:50:48.737' AS DateTime))
GO
INSERT [dbo].[Comment] ([CommentID], [UserID], [GoodsID], [Content], [CommentTime]) VALUES (19, 2, 2, N'[嘻嘻]', CAST(N'2022-06-14T00:52:32.120' AS DateTime))
GO
INSERT [dbo].[Comment] ([CommentID], [UserID], [GoodsID], [Content], [CommentTime]) VALUES (20, 3, 2, N'自行车v', CAST(N'2022-06-14T01:01:12.600' AS DateTime))
GO
INSERT [dbo].[Comment] ([CommentID], [UserID], [GoodsID], [Content], [CommentTime]) VALUES (21, 3, 2, N'悲伤的歌', CAST(N'2022-06-14T01:02:22.900' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[CommentReview] ON 
GO
INSERT [dbo].[CommentReview] ([CommentReviewID], [CommentID], [CommentUserID], [ReviewContent], [ReviewCommentTime]) VALUES (1, 1, 2, N'问啥？', CAST(N'2022-06-13T02:47:19.560' AS DateTime))
GO
INSERT [dbo].[CommentReview] ([CommentReviewID], [CommentID], [CommentUserID], [ReviewContent], [ReviewCommentTime]) VALUES (2, 1, 2, N'？', CAST(N'2022-06-13T02:47:41.600' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[CommentReview] OFF
GO
SET IDENTITY_INSERT [dbo].[ShoppingCart] ON 
GO
INSERT [dbo].[ShoppingCart] ([CartID], [UserID], [GoodsID], [SelectAttributes], [IsSelect], [ProductNum], [IsOrder], [AddTime]) VALUES (1, 1, 104, N'尺码：S。颜色：【碳灰42cm】。', 1, 2, 0, CAST(N'2022-06-08T00:38:07.423' AS DateTime))
GO
INSERT [dbo].[ShoppingCart] ([CartID], [UserID], [GoodsID], [SelectAttributes], [IsSelect], [ProductNum], [IsOrder], [AddTime]) VALUES (2, 1, 93, N'颜色：#316小辣椒。', 1, 1, 0, CAST(N'2022-06-08T00:38:23.853' AS DateTime))
GO
INSERT [dbo].[ShoppingCart] ([CartID], [UserID], [GoodsID], [SelectAttributes], [IsSelect], [ProductNum], [IsOrder], [AddTime]) VALUES (3, 1, 96, N' 尺码：39。', 0, 2, 1, CAST(N'2022-06-08T00:38:33.877' AS DateTime))
GO
INSERT [dbo].[ShoppingCart] ([CartID], [UserID], [GoodsID], [SelectAttributes], [IsSelect], [ProductNum], [IsOrder], [AddTime]) VALUES (4, 1, 110, N'颜色：黑色。内存：16GB。硬盘内存：512固态硬盘。', 0, 2, 1, CAST(N'2022-06-08T00:38:51.233' AS DateTime))
GO
INSERT [dbo].[ShoppingCart] ([CartID], [UserID], [GoodsID], [SelectAttributes], [IsSelect], [ProductNum], [IsOrder], [AddTime]) VALUES (5, 1, 112, N'颜色分类：粉-茶轴。套餐类型：官方标配。', 1, 1, 0, CAST(N'2022-06-08T00:39:12.127' AS DateTime))
GO
INSERT [dbo].[ShoppingCart] ([CartID], [UserID], [GoodsID], [SelectAttributes], [IsSelect], [ProductNum], [IsOrder], [AddTime]) VALUES (6, 1, 61, N'尺码：短。', 0, 2, 1, CAST(N'2022-06-08T00:39:23.340' AS DateTime))
GO
INSERT [dbo].[ShoppingCart] ([CartID], [UserID], [GoodsID], [SelectAttributes], [IsSelect], [ProductNum], [IsOrder], [AddTime]) VALUES (7, 1, 101, N'尺码：联系客服定制。', 0, 1, 1, CAST(N'2022-06-08T00:57:06.763' AS DateTime))
GO
INSERT [dbo].[ShoppingCart] ([CartID], [UserID], [GoodsID], [SelectAttributes], [IsSelect], [ProductNum], [IsOrder], [AddTime]) VALUES (8, 1, 116, N'颜色分类：海洋蓝。套餐类型：官方标配。', 1, 1, 0, CAST(N'2022-06-08T00:57:49.787' AS DateTime))
GO
INSERT [dbo].[ShoppingCart] ([CartID], [UserID], [GoodsID], [SelectAttributes], [IsSelect], [ProductNum], [IsOrder], [AddTime]) VALUES (9, 1, 41, N'版本：鸡蛋盒美妆蛋。', 1, 2, 0, CAST(N'2022-06-08T01:04:23.880' AS DateTime))
GO
INSERT [dbo].[ShoppingCart] ([CartID], [UserID], [GoodsID], [SelectAttributes], [IsSelect], [ProductNum], [IsOrder], [AddTime]) VALUES (10, 1, 99, N' 尺码：S。颜色：白色。', 1, 1, 0, CAST(N'2022-06-08T01:08:54.013' AS DateTime))
GO
INSERT [dbo].[ShoppingCart] ([CartID], [UserID], [GoodsID], [SelectAttributes], [IsSelect], [ProductNum], [IsOrder], [AddTime]) VALUES (11, 1, 78, N'尺码：S。颜色：白色。', 1, 1, 0, CAST(N'2022-06-08T01:09:45.900' AS DateTime))
GO
INSERT [dbo].[ShoppingCart] ([CartID], [UserID], [GoodsID], [SelectAttributes], [IsSelect], [ProductNum], [IsOrder], [AddTime]) VALUES (12, 1, 101, N'尺码：38cm+5cm。', 1, 2, 0, CAST(N'2022-06-08T01:12:48.290' AS DateTime))
GO
INSERT [dbo].[ShoppingCart] ([CartID], [UserID], [GoodsID], [SelectAttributes], [IsSelect], [ProductNum], [IsOrder], [AddTime]) VALUES (13, 1, 24, N'尺码：41。颜色：白色。', 1, 2, 0, CAST(N'2022-06-08T08:54:08.620' AS DateTime))
GO
INSERT [dbo].[ShoppingCart] ([CartID], [UserID], [GoodsID], [SelectAttributes], [IsSelect], [ProductNum], [IsOrder], [AddTime]) VALUES (14, 1, 45, N'颜色：白色。', 1, 6, 0, CAST(N'2022-06-08T08:57:03.173' AS DateTime))
GO
INSERT [dbo].[ShoppingCart] ([CartID], [UserID], [GoodsID], [SelectAttributes], [IsSelect], [ProductNum], [IsOrder], [AddTime]) VALUES (15, 1, 114, N'颜色：白色。', 1, 1, 0, CAST(N'2022-06-08T21:30:52.477' AS DateTime))
GO
INSERT [dbo].[ShoppingCart] ([CartID], [UserID], [GoodsID], [SelectAttributes], [IsSelect], [ProductNum], [IsOrder], [AddTime]) VALUES (16, 1, 99, N' 尺码：S。颜色：黑色。', 1, 1, 0, CAST(N'2022-06-09T01:57:55.093' AS DateTime))
GO
INSERT [dbo].[ShoppingCart] ([CartID], [UserID], [GoodsID], [SelectAttributes], [IsSelect], [ProductNum], [IsOrder], [AddTime]) VALUES (17, 1, 128, N'游戏版本：典藏版。', 0, 1, 1, CAST(N'2022-06-09T02:22:29.120' AS DateTime))
GO
INSERT [dbo].[ShoppingCart] ([CartID], [UserID], [GoodsID], [SelectAttributes], [IsSelect], [ProductNum], [IsOrder], [AddTime]) VALUES (18, 1, 98, N'尺码：S。颜色：白色。', 0, 2, 1, CAST(N'2022-06-09T02:23:00.417' AS DateTime))
GO
INSERT [dbo].[ShoppingCart] ([CartID], [UserID], [GoodsID], [SelectAttributes], [IsSelect], [ProductNum], [IsOrder], [AddTime]) VALUES (19, 1, 115, N'颜色：灰白色。', 0, 2, 1, CAST(N'2022-06-09T02:23:22.133' AS DateTime))
GO
INSERT [dbo].[ShoppingCart] ([CartID], [UserID], [GoodsID], [SelectAttributes], [IsSelect], [ProductNum], [IsOrder], [AddTime]) VALUES (20, 1, 139, N' 尺码：14cm+3cm。', 0, 2, 1, CAST(N'2022-06-09T02:23:38.403' AS DateTime))
GO
INSERT [dbo].[ShoppingCart] ([CartID], [UserID], [GoodsID], [SelectAttributes], [IsSelect], [ProductNum], [IsOrder], [AddTime]) VALUES (21, 3, 140, N'', 1, 45, 0, CAST(N'2022-06-10T14:07:08.970' AS DateTime))
GO
INSERT [dbo].[ShoppingCart] ([CartID], [UserID], [GoodsID], [SelectAttributes], [IsSelect], [ProductNum], [IsOrder], [AddTime]) VALUES (22, 1, 92, N'', 0, 2, 1, CAST(N'2022-06-13T17:15:21.703' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ShoppingCart] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 
GO
INSERT [dbo].[Order] ([OrderID], [UserID], [CartID], [OrderMoney], [RegionID], [OrderStatus], [PaymentStatus], [ReasonForCancellation], [IsCancellation], [DeliverGoodsTime], [ReceivingTime], [CancelTime], [OrderTime]) VALUES (1, 1, 5, 269.0000, 2, 3, 1, N'电话/地址填写错误:地址填错了', 1, NULL, NULL, NULL, CAST(N'2022-06-09T01:36:32.487' AS DateTime))
GO
INSERT [dbo].[Order] ([OrderID], [UserID], [CartID], [OrderMoney], [RegionID], [OrderStatus], [PaymentStatus], [ReasonForCancellation], [IsCancellation], [DeliverGoodsTime], [ReceivingTime], [CancelTime], [OrderTime]) VALUES (2, 1, 1, 128.0000, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-06-09T01:43:35.547' AS DateTime))
GO
INSERT [dbo].[Order] ([OrderID], [UserID], [CartID], [OrderMoney], [RegionID], [OrderStatus], [PaymentStatus], [ReasonForCancellation], [IsCancellation], [DeliverGoodsTime], [ReceivingTime], [CancelTime], [OrderTime]) VALUES (3, 1, 16, 328.0000, 4, 1, 1, NULL, NULL, CAST(N'2022-06-09' AS Date), NULL, NULL, CAST(N'2022-06-09T01:58:05.623' AS DateTime))
GO
INSERT [dbo].[Order] ([OrderID], [UserID], [CartID], [OrderMoney], [RegionID], [OrderStatus], [PaymentStatus], [ReasonForCancellation], [IsCancellation], [DeliverGoodsTime], [ReceivingTime], [CancelTime], [OrderTime]) VALUES (4, 3, 21, 2299.0000, 5, 3, 1, N'退款：不喜欢/不想要：急急急', 1, NULL, NULL, NULL, CAST(N'2022-06-10T14:09:22.263' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[BrowseRecords] ON 
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (2, 1, 60, CAST(N'2022-06-06T23:27:39.470' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (3, 1, 120, CAST(N'2022-06-06T23:27:51.257' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (4, 1, 107, CAST(N'2022-06-06T23:28:36.720' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (5, 1, 1, CAST(N'2022-06-06T23:34:29.067' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (6, 1, 100, CAST(N'2022-06-06T23:39:58.893' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (7, 1, 114, CAST(N'2022-06-06T23:40:40.883' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (8, 1, 110, CAST(N'2022-06-06T23:40:55.923' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (9, 1, 93, CAST(N'2022-06-06T23:41:12.697' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (10, 1, 109, CAST(N'2022-06-06T23:41:33.777' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (11, 1, 96, CAST(N'2022-06-06T23:42:02.033' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (12, 1, 30, CAST(N'2022-06-06T23:42:15.620' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (13, 1, 29, CAST(N'2022-06-06T23:42:24.860' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (14, 1, 91, CAST(N'2022-06-06T23:42:41.657' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (15, 1, 14, CAST(N'2022-06-06T23:42:47.923' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (16, 1, 121, CAST(N'2022-06-06T23:43:00.040' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (17, 1, 10, CAST(N'2022-06-06T23:43:07.787' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (18, 1, 118, CAST(N'2022-06-06T23:43:28.993' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (19, 1, 104, CAST(N'2022-06-08T00:38:00.870' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (20, 1, 112, CAST(N'2022-06-08T00:39:04.960' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (21, 1, 61, CAST(N'2022-06-08T00:39:18.187' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (22, 1, 116, CAST(N'2022-06-08T00:57:41.490' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (23, 1, 41, CAST(N'2022-06-08T01:04:18.890' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (24, 1, 99, CAST(N'2022-06-08T01:08:45.160' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (25, 1, 80, CAST(N'2022-06-08T01:09:14.577' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (26, 1, 78, CAST(N'2022-06-08T01:09:37.317' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (27, 1, 101, CAST(N'2022-06-08T01:12:42.567' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (28, 1, 24, CAST(N'2022-06-08T08:54:02.500' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (29, 1, 128, CAST(N'2022-06-09T02:22:21.640' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (30, 1, 135, CAST(N'2022-06-09T02:22:44.590' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (31, 1, 98, CAST(N'2022-06-09T02:22:55.133' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (32, 1, 115, CAST(N'2022-06-09T02:23:18.287' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (33, 1, 139, CAST(N'2022-06-09T02:23:33.970' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (34, 3, 140, CAST(N'2022-06-10T14:06:39.523' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (35, 3, 119, CAST(N'2022-06-10T14:07:54.410' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (36, 1, 147, CAST(N'2022-06-12T22:58:02.550' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (37, 1, 165, CAST(N'2022-06-12T23:37:17.207' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (38, 1, 92, CAST(N'2022-06-13T17:15:16.317' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (39, 1, 164, CAST(N'2022-06-14T00:27:48.050' AS DateTime))
GO
INSERT [dbo].[BrowseRecords] ([RecordsID], [UserID], [GoodsID], [Recordsttate]) VALUES (40, 1, 157, CAST(N'2022-06-14T00:28:54.887' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[BrowseRecords] OFF
GO
SET IDENTITY_INSERT [dbo].[Messages] ON 
GO
INSERT [dbo].[Messages] ([MessagesID], [UserID], [BusinessID], [MessagesDetails], [Stuate], [Type], [MessagesTime]) VALUES (1, 1, 3, N'大师傅大师傅似的', 0, N'text', CAST(N'2022-06-04T16:53:54.840' AS DateTime))
GO
INSERT [dbo].[Messages] ([MessagesID], [UserID], [BusinessID], [MessagesDetails], [Stuate], [Type], [MessagesTime]) VALUES (2, 3, 4, N'http://yccc-1311860589.cos.ap-nanjing.myqcloud.com/1cab8d6a-4b72-4331-a6ef-96917374ae62', 0, N'image', CAST(N'2022-06-10T14:06:55.860' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Messages] OFF
GO
