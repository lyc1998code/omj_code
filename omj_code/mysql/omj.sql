--
-- Database: `omj`
--
SET NAMES UTF8;
DROP DATABASE IF EXISTS omj;
CREATE DATABASE `omj` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `omj`;

-- --------------------------------------------------------

--
-- 表的结构 `omj_admin`
--

CREATE TABLE `omj_admin` (
  `id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `aname` varchar(32) NOT NULL,
  `apwd` varchar(6) NOT NULL,
  `aphone` varchar(16) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `omj_admin`
--

INSERT INTO `omj_admin` VALUES
(null,'admin', 'admin',null),
(null,'admin', '123456',null),
(null,'admin', '888888',null);

-- --------------------------------------------------------

--
-- 表的结构 `omj_user`
--

CREATE TABLE `omj_user` (
  `uid` int(11) PRIMARY KEY AUTO_INCREMENT,
  `uname` varchar(32) NOT NULL,
  `sex` tinyint(1) DEFAULT '1',
  `phone` varchar(16) NOT NULL,
  `upwd` varchar(32) NOT NULL,
  `day` int,
  `month` int,
  `year` int,
  `country` varchar(32) DEFAULT "中国"
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `omj_user`
--

INSERT INTO `omj_user` (`uid`,`uname`, `sex`, `phone`, `upwd`) VALUES
(1, 'tao', 1, '15555551235', '123321'),
(2, 'Tom', 1, '15555551135', '123321'),
(3, 'Jerry', 0, '15515551235', '123321'),
(4, 'David', 1, '15155551235', '123321'),
(5, 'Maria', 0, '15525551235', '123321'),
(6, 'Leo', 1, '15553551235', '123321'),
(7, 'Black', 1, '15545551235', '123321'),
(8, 'Peter', 1, '15556551235', '123321'),
(9, 'Franc', 1, '15555751235', '123321'),
(10, 'Tacy', 1, '15555581235', '123321'),
(11, 'Lucy', 0, '15555591235', '123321'),
(12, 'Jone', 1, '15555511235', '123321'),
(13, 'Lily', 0, '15555521235', '123321'),
(14, 'Lisa', 0, '15555531235', '123321'),
(15, 'King', 1, '15557551235', '123321'),
(16, 'Brown', 1, '15565651235', '123321'),
(17, 'qqqq', 1, '13456789876', '123456'),
(18, 'qqqq', 1, '13456789877', '123456');

-- --------------------------------------------------------

--
-- 表的结构 `omj_laptop` 所有商品
--商品属性

CREATE TABLE `omj_laptop` (
  `lid` int(11) PRIMARY KEY AUTO_INCREMENT,
  `xl` varchar(32) NOT NULL,#系列
  `zxl` varchar(64) NOT NULL, #子系列
  `biaoke` varchar(64) NOT NULL, #表壳
  `biaolian` varchar(64) NOT NULL, #表链
  `color` varchar(8) NOT NULL, #表盘颜色
  `bksize` varchar(64) NOT NULL, #表壳直径
  # `tese` varchar(8) NOT NULL, #特色
  `jxlx` varchar(32) NOT NULL, #机芯类型
  `fsxn` varchar(32) NOT NULL, #防水性能
  `price` decimal(7,2) NOT NULL, #价格
  `ip` varchar(64) NOT NULL, #ip编号
  `pic` varchar(500) NOT NULL #图片路径
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `omj_laptop`
--所有商品数据

INSERT INTO `omj_laptop` VALUES
(null,'海马系列','300米潜水表','精钢表壳','“NATO”北约军用表带','白色','39.5毫米同轴腕表','手动上链','3',47800.00,'220.12.41.21.03.005','http://127.0.0.1:8080/image/shopp/omega-constellation-13112412106001-list.jpg'),
(null,'星座系列','超霸38毫米腕表','精钢-k金表壳','皮革','红色','29毫米至臻天文台表','自动上链','5',47800.00,'432.13.40.21.03.001','http://127.0.0.1:8080/image/shopp/omega-de-ville-tresor-master-co-axial-chronometer-40-mm-43213402103001-list.jpg'),
(null,'超霸系列','38毫米同轴计时表','精钢‑Sedna 18K金表壳','尼龙','棕色', '42毫米至臻天文台表','石英','5',53100.00, '220.22.41.21.03.001', 'http://127.0.0.1:8080/image/shopp/omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-34-mm-22023342060001-list.jpg'),
(null,'碟飞系列','典雅系列','精钢表壳', '钛金属', '银色','全新的39.5毫米腕表', '自动上链手表','10',28500.00,'220.22.41.21.03.001', 'http://127.0.0.1:8080/image/shopp/omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-41-mm-22020412102001-list.jpg'),
(null,'海马系列','300米潜水表','精钢表壳','“NATO”北约军用表带','白色','39.5毫米同轴腕表','手动上链','3',47800.00,'220.12.41.21.03.005','http://127.0.0.1:8080/image/shopp/omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-small-seconds-41-mm-22012412102005-list.jpg'),
(null,'星座系列','超霸38毫米腕表','精钢-k金表壳','皮革','红色','29毫米至臻天文台表','自动上链','5',47800.00,'432.13.40.21.03.001','http://127.0.0.1:8080/image/shopp/omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-small-seconds-41-mm-22012412103005-list.jpg'),
(null,'超霸系列','38毫米同轴计时表','精钢‑Sedna 18K金表壳','尼龙','棕色', '42毫米至臻天文台表','石英','5',53100.00, '220.22.41.21.03.001','http://127.0.0.1:8080/image/shopp/omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-small-seconds-41-mm-22022412103001-list.jpg'),
(null,'碟飞系列','典雅系列','精钢表壳', '钛金属', '银色','全新的39.5毫米腕表', '自动上链手表','10',28500.00,'220.22.41.21.03.001', 'http://127.0.0.1:8080/image/shopp/omega-seamaster-diver-300m-co-axial-master-chronometer-42-mm-52230422004001-list.jpg'),
(null,'碟飞系列','陀飞轮腕表','铂金表壳', '皮革', '黑色','全新的39.5毫米腕表', '自动上链手表','3',79700.00,'220.22.41.21.03.001', 'http://127.0.0.1:8080/image/shopp/omega-seamaster-diver-300m-co-axial-master-chronometer-43-5-mm-21062442001001-list.jpg'),
(null,'海马系列','300米潜水表','精钢表壳','“NATO”北约军用表带','白色','39.5毫米同轴腕表','手动上链','3',47800.00,'220.12.41.21.03.005','http://127.0.0.1:8080/image/shopp/omega-constellation-13112412106001-list.jpg'),
(null,'星座系列','超霸38毫米腕表','精钢-k金表壳','皮革','红色','29毫米至臻天文台表','自动上链','5',47800.00,'432.13.40.21.03.001','http://127.0.0.1:8080/image/shopp/omega-de-ville-tresor-master-co-axial-chronometer-40-mm-43213402103001-list.jpg'),
(null,'超霸系列','38毫米同轴计时表','精钢‑Sedna 18K金表壳','尼龙','棕色', '42毫米至臻天文台表','石英','5',53100.00, '220.22.41.21.03.001', 'http://127.0.0.1:8080/image/shopp/omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-34-mm-22023342060001-list.jpg'),
(null,'碟飞系列','典雅系列','精钢表壳', '钛金属', '银色','全新的39.5毫米腕表', '自动上链手表','10',28500.00,'220.22.41.21.03.001', 'http://127.0.0.1:8080/image/shopp/omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-41-mm-22020412102001-list.jpg'),
(null,'海马系列','300米潜水表','精钢表壳','“NATO”北约军用表带','白色','39.5毫米同轴腕表','手动上链','3',47800.00,'220.12.41.21.03.005','http://127.0.0.1:8080/image/shopp/omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-small-seconds-41-mm-22012412102005-list.jpg'),
(null,'星座系列','超霸38毫米腕表','精钢-k金表壳','皮革','红色','29毫米至臻天文台表','自动上链','5',47800.00,'432.13.40.21.03.001','http://127.0.0.1:8080/image/shopp/omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-small-seconds-41-mm-22012412103005-list.jpg'),
(null,'超霸系列','38毫米同轴计时表','精钢‑Sedna 18K金表壳','尼龙','棕色', '42毫米至臻天文台表','石英','5',53100.00, '220.22.41.21.03.001','http://127.0.0.1:8080/image/shopp/omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-small-seconds-41-mm-22022412103001-list.jpg'),
(null,'碟飞系列','典雅系列','精钢表壳', '钛金属', '银色','全新的39.5毫米腕表', '自动上链手表','10',28500.00,'220.22.41.21.03.001', 'http://127.0.0.1:8080/image/shopp/omega-seamaster-diver-300m-co-axial-master-chronometer-42-mm-52230422004001-list.jpg'),
(null,'碟飞系列','陀飞轮腕表','铂金表壳', '皮革', '黑色','全新的39.5毫米腕表', '自动上链手表','3',79700.00,'220.22.41.21.03.001', 'http://127.0.0.1:8080/image/shopp/omega-seamaster-diver-300m-co-axial-master-chronometer-43-5-mm-21062442001001-list.jpg'),
(null,'海马系列','300米潜水表','精钢表壳','“NATO”北约军用表带','白色','39.5毫米同轴腕表','手动上链','3',47800.00,'220.12.41.21.03.005','http://127.0.0.1:8080/image/shopp/omega-constellation-13112412106001-list.jpg'),
(null,'星座系列','超霸38毫米腕表','精钢-k金表壳','皮革','红色','29毫米至臻天文台表','自动上链','5',47800.00,'432.13.40.21.03.001','http://127.0.0.1:8080/image/shopp/omega-de-ville-tresor-master-co-axial-chronometer-40-mm-43213402103001-list.jpg'),
(null,'超霸系列','38毫米同轴计时表','精钢‑Sedna 18K金表壳','尼龙','棕色', '42毫米至臻天文台表','石英','5',53100.00, '220.22.41.21.03.001', 'http://127.0.0.1:8080/image/shopp/omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-34-mm-22023342060001-list.jpg'),
(null,'碟飞系列','典雅系列','精钢表壳', '钛金属', '银色','全新的39.5毫米腕表', '自动上链手表','10',28500.00,'220.22.41.21.03.001', 'http://127.0.0.1:8080/image/shopp/omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-41-mm-22020412102001-list.jpg'),
(null,'海马系列','300米潜水表','精钢表壳','“NATO”北约军用表带','白色','39.5毫米同轴腕表','手动上链','3',47800.00,'220.12.41.21.03.005','http://127.0.0.1:8080/image/shopp/omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-small-seconds-41-mm-22012412102005-list.jpg'),
(null,'星座系列','超霸38毫米腕表','精钢-k金表壳','皮革','红色','29毫米至臻天文台表','自动上链','5',47800.00,'432.13.40.21.03.001','http://127.0.0.1:8080/image/shopp/omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-small-seconds-41-mm-22012412103005-list.jpg'),
(null,'超霸系列','38毫米同轴计时表','精钢‑Sedna 18K金表壳','尼龙','棕色', '42毫米至臻天文台表','石英','5',53100.00, '220.22.41.21.03.001','http://127.0.0.1:8080/image/shopp/omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-small-seconds-41-mm-22022412103001-list.jpg'),
(null,'碟飞系列','典雅系列','精钢表壳', '钛金属', '银色','全新的39.5毫米腕表', '自动上链手表','10',28500.00,'220.22.41.21.03.001', 'http://127.0.0.1:8080/image/shopp/omega-seamaster-diver-300m-co-axial-master-chronometer-42-mm-52230422004001-list.jpg'),
(null,'碟飞系列','陀飞轮腕表','铂金表壳', '皮革', '黑色','全新的39.5毫米腕表', '自动上链手表','3',79700.00,'220.22.41.21.03.001', 'http://127.0.0.1:8080/image/shopp/omega-seamaster-diver-300m-co-axial-master-chronometer-43-5-mm-21062442001001-list.jpg');


-- --------------------------------------------------------

--
-- 表的结构 `omj_shopp_tese` 商品特色
-- 所有商品特色数据属性

CREATE TABLE `omj_laptop_tese` (
  `id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `jsgn` varchar(32) , #计时功能
  `tmbb` varchar(32) , #透明表背
  `rqxs` varchar(32) , #日期显示
  `xmzp` varchar(32) , #小秒针盘
  `tfl` varchar(32) , #陀飞轮
  `zztwtrz` varchar(32) , #至臻天文台认证
  `sid` int(11) not null,
  FOREIGN KEY(sid) REFERENCES omj_laptop(lid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `omj_shopp_tese`
-- 所有商品特色数据

INSERT INTO `omj_laptop_tese` VALUES
(null,"计时功能","透明表背","日期显示","小秒针盘","陀飞轮","至臻天文台认证",1),
(null,"计时功能","透明表背","日期显示","小秒针盘","陀飞轮","至臻天文台认证",2),
(null,"计时功能","透明表背","日期显示","小秒针盘","陀飞轮","至臻天文台认证",3),
(null,"计时功能","透明表背","日期显示","小秒针盘","陀飞轮","至臻天文台认证",10),
(null,"计时功能","透明表背","日期显示","小秒针盘","陀飞轮","至臻天文台认证",12),
(null,"计时功能","透明表背","日期显示","小秒针盘","陀飞轮","至臻天文台认证",13),
(null,"计时功能","透明表背","日期显示","小秒针盘","陀飞轮","至臻天文台认证",15),
(null,"计时功能","透明表背","日期显示","小秒针盘","陀飞轮","至臻天文台认证",9),
(null,"计时功能","透明表背","日期显示","小秒针盘","陀飞轮","至臻天文台认证",7),
(null,"计时功能","透明表背","日期显示","小秒针盘","陀飞轮","至臻天文台认证",6);

-- --------------------------------------------------------

--
-- 表的结构 `omj_shopp` 购物车
--所有购物车数据属性

CREATE TABLE `omj_shopp` (
  `sid` int(11) PRIMARY KEY AUTO_INCREMENT,
  `laptopId` int(11) DEFAULT NULL,
  FOREIGN KEY(laptopId) REFERENCES omj_laptop(lid),
  `userId` int(11) DEFAULT NULL,
  FOREIGN KEY(userId) REFERENCES omj_user(uid),
  `scount` int DEFAULT '1' 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `omj_shopp`
--所有购物车数据

INSERT INTO `omj_shopp` VALUES
(1,3,10,DEFAULT),
(2,2,2,DEFAULT),
(3,1,3,DEFAULT),
(null,5,6,DEFAULT),
(null,5,6,DEFAULT),
(null,5,6,DEFAULT),
(null,5,6,DEFAULT),
(null,5,6,DEFAULT),
(null,5,6,DEFAULT),
(null,5,6,DEFAULT),
(null,5,6,DEFAULT),
(null,5,6,DEFAULT),
(null,5,6,DEFAULT),
(null,5,6,DEFAULT);

-- --------------------------------------------------------

-- 表的结构 `user_addr`  
--用户地址表
--
CREATE TABLE user_addr(
  id int PRIMARY KEY AUTO_INCREMENT,
  aname varchar(32) NOT NULL,
  aphone varchar(16) NOT NULL,
  asheng varchar(100) NOT NULL,
  ashi varchar(100) NOT NULL,
  aqu varchar(100) NOT NULL,
  addr varchar(100) NOT NULL,
  postcode varchar(6) NOT NULL,#邮编
  userid int NOT NULL,
  FOREIGN KEY(userid) REFERENCES omj_user(uid)
);
--
-- 转存表中的数据 `user_addr`
--
INSERT INTO user_addr VALUES
(null,'lucy','15535137129','山西省','大同市','云冈区','xx街道','000000',10),
(null,'lucy','15535137129','山西省','大同市','云冈区','xx街道','000000',10),
(null,'lucy','15535137129','山西省','大同市','云冈区','xx街道','000000',10),
(null,'lucy','15535137129','山西省','大同市','云冈区','xx街道','000000',12),
(null,'lucy','15535137129','山西省','大同市','云冈区','xx街道','000000',12);

-- --------------------------------------------------------

--
-- 表的结构 `user_pay`  
--用户订单表
--id订单序号 
CREATE TABLE `user_pay` (
  id int PRIMARY KEY AUTO_INCREMENT,
  -- 订单编号
  -- pnum bigint NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  FOREIGN KEY(userid) REFERENCES omj_user(uid),
  `pid` int NOT NULL,
  FOREIGN KEY(pid) REFERENCES omj_laptop(lid),
  `pname` varchar(32) NOT NULL,
  `pprice` decimal(7,2) NOT NULL,
  `pcolor` varchar(8) NOT NULL,
  pcount int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user_pay`
--

INSERT INTO `user_pay` VALUES
(null,1,2,'300米潜水表','41800.00','白色',NULL),
(null,1,2,'300米潜水表','41800.00','白色',NULL),
(null,1,2,'300米潜水表','41800.00','白色',NULL),
(null,1,2,'300米潜水表','41800.00','白色',NULL),
(null,1,1,'300米潜水表','41800.00','白色',NULL);

-- --------------------------------------------------------

--
-- 表的结构 `omj_index_banner`
--

CREATE TABLE `omj_index_banner` (
  `bid` int(11) PRIMARY KEY AUTO_INCREMENT,
  `img` varchar(500) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `isIndex` tinyint(1) DEFAULT '0',
  `href` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `omj_index_banner`
--

INSERT INTO `omj_index_banner` VALUES
(1, 'https://www.omegawatches.cn/media/wysiwyg/cn/home-se300-bronzegold-medium.jpg', NULL, 0, 'https://www.omegawatches.cn/'),
(2, 'https://www.omegawatches.cn/media/wysiwyg/cn/home-se300-bronzegold-medium.jpg', NULL, 0, 'https://www.omegawatches.cn/'),
(3, 'https://www.omegawatches.cn/media/wysiwyg/cn/home-se300-bronzegold-medium.jpg', NULL, 0, 'https://www.omegawatches.cn/'),
(4, 'https://www.omegawatches.cn/media/wysiwyg/cn/home-se300-bronzegold-medium.jpg', NULL, 0, 'https://www.omegawatches.cn/'),
(5, 'https://www.omegawatches.cn/media/wysiwyg/cn/home-se300-bronzegold-medium.jpg', NULL, 0, 'https://www.omegawatches.cn/');

-- --------------------------------------------------------

--
-- 表的结构 `omj_index_nav`
--

CREATE TABLE `omj_index_nav` (
  `id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `omj_index_nav`
--

INSERT INTO `omj_index_nav` VALUES
(1, '星座系列'),
(2, '海马系列'),
(3, '超霸系列'),
(4, '碟飞系列'),
(5, '表带'),
(6, '分类查询');

-- --------------------------------------------------------

--
-- 表的结构 `omj_index_nav_n`
--

CREATE TABLE `omj_index_nav_n` (
  `id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `nid` int(11) NOT NULL,
  FOREIGN KEY(nid) REFERENCES omj_index_nav(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `omj_index_nav_n`
--

INSERT INTO `omj_index_nav_n` VALUES
(1, '尊霸腕表', 1),
(2, '星座腕表', 1),
(3, 'AQUA TERRA 150米腕表', 2),
(4, '300米潜水表', 2),
(5, '海洋宇宙600米腕表', 2),
(6, '传承表款', 2),
(7, '专业月球表', 3),
(8, '传承表款', 3),
(9, '月之暗面腕表', 3),
(10, 'SPEEDMASTER 38', 3),
(11, '双小表盘款式', 3),
(12, '多功能计时表款', 3),
(13, 'LADYMATIC腕表', 4),
(14, 'HOUR VISION腕表', 4),
(15, '名典腕表', 4),
(16, '典雅腕表', 4),
(17, '陀飞轮腕表', 4),
(18, 'NATO表带', 5),
(19, '皮质及其他表带', 5);

-- --------------------------------------------------------

--
-- 表的结构 `omj_index_product`
--

CREATE TABLE `omj_index_product` (
  `id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `pid` int ,
  FOREIGN KEY(pid) REFERENCES omj_laptop(lid),
  `pname` varchar(32) NOT NULL,
  `pic` varchar(500) NOT NULL,
  `price` decimal(7,2) DEFAULT '5999',
  `psize` varchar(32) NOT NULL,
  `href` varchar(128) DEFAULT NULL,
  `isIndex` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `omj_index_product`
--

INSERT INTO `omj_index_product` VALUES
(NULL,1,'300米潜水表','https://www.omegawatches.cn/media/catalog/product/cache/5edafca295d0eaa013854cf48b1568f0dfdb28db2be0e9f9b92a86ae47388cb0/o/m/omega-de-ville-prestige-42410332005001-list.jpg',NULL,'42毫米至臻天文台表',DEFAULT,DEFAULT),
(NULL,1,'300米潜水表','https://www.omegawatches.cn/media/catalog/product/cache/5edafca295d0eaa013854cf48b1568f0dfdb28db2be0e9f9b92a86ae47388cb0/o/m/omega-de-ville-prestige-42410332005001-list.jpg',NULL,'42毫米至臻天文台表',DEFAULT,DEFAULT),
(NULL,1,'300米潜水表','https://www.omegawatches.cn/media/catalog/product/cache/5edafca295d0eaa013854cf48b1568f0dfdb28db2be0e9f9b92a86ae47388cb0/o/m/omega-de-ville-prestige-42410332005001-list.jpg',NULL,'42毫米至臻天文台表',DEFAULT,DEFAULT),
(NULL,1,'300米潜水表','https://www.omegawatches.cn/media/catalog/product/cache/5edafca295d0eaa013854cf48b1568f0dfdb28db2be0e9f9b92a86ae47388cb0/o/m/omega-de-ville-prestige-42410332005001-list.jpg',NULL,'42毫米至臻天文台表',DEFAULT,DEFAULT),
(NULL,1,'300米潜水表','https://www.omegawatches.cn/media/catalog/product/cache/5edafca295d0eaa013854cf48b1568f0dfdb28db2be0e9f9b92a86ae47388cb0/o/m/omega-de-ville-prestige-42410332005001-list.jpg',NULL,'42毫米至臻天文台表',DEFAULT,DEFAULT);


-- --------------------------------------------------------

