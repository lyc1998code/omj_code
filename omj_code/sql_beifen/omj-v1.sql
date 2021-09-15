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
(null,1, 'admin', 'admin'),
(null,2, 'admin', '123456'),
(null,3, 'admin', '888888');

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
  `photo` varchar(128) NOT NULL DEFAULT 'http://127.0.0.1:8080/img',
  `email` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `omj_user`
--

INSERT INTO `omj_user` (`uid`, `uname`, `sex`, `phone`, `upwd`, `photo`, `email`) VALUES
(1, 'tao', 1, '15555551235', '123321', 'http://127.0.0.1:8080/img', '123@163.com'),
(2, 'Tom', 1, '15555551135', '123321', 'http://127.0.0.1:8080/img', '123@163.com'),
(3, 'Jerry', 0, '15515551235', '123321', 'http://127.0.0.1:8080/img', '123@163.com'),
(4, 'David', 1, '15155551235', '123321', 'http://127.0.0.1:8080/img', '123@163.com'),
(5, 'Maria', 0, '15525551235', '123321', 'http://127.0.0.1:8080/img', '123@163.com'),
(6, 'Leo', 1, '15553551235', '123321', 'http://127.0.0.1:8080/img', '123@163.com'),
(7, 'Black', 1, '15545551235', '123321', 'http://127.0.0.1:8080/img', '123@163.com'),
(8, 'Peter', 1, '15556551235', '123321', 'http://127.0.0.1:8080/img', '123@163.com'),
(9, 'Franc', 1, '15555751235', '123321', 'http://127.0.0.1:8080/img', '123@163.com'),
(10, 'Tacy', 1, '15555581235', '123321', 'http://127.0.0.1:8080/img', '123@163.com'),
(11, 'Lucy', 0, '15555591235', '123321', 'http://127.0.0.1:8080/img', '123@163.com'),
(12, 'Jone', 1, '15555511235', '123321', 'http://127.0.0.1:8080/img', '123@163.com'),
(13, 'Lily', 0, '15555521235', '123321', 'http://127.0.0.1:8080/img', '123@163.com'),
(14, 'Lisa', 0, '15555531235', '123321', 'http://127.0.0.1:8080/img', '123@163.com'),
(15, 'King', 1, '15557551235', '123321', 'http://127.0.0.1:8080/img', '123@163.com'),
(16, 'Brown', 1, '15565651235', '123321', 'http://127.0.0.1:8080/img', '123@163.com'),
(17, 'qqqq', 1, '13456789876', '123456','http://127.0.0.1:8080/img', NULL),
(19, 'qqqq', 1, '13456789877', '123456', 'http://127.0.0.1:8080/img', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `omj_laptop` 所有商品
--商品属性

CREATE TABLE `omj_laptop` (
  `lid` int(11) PRIMARY KEY AUTO_INCREMENT,
  `lname` varchar(32) NOT NULL,
  `size` varchar(32) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `details` varchar(3000) NOT NULL,
  `color` varchar(8) NOT NULL,
  `texture` varchar(500) NOT NULL,
  `feature` varchar(100) NOT NULL,
  `pic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `omj_laptop`
--所有商品数据

INSERT INTO `omj_laptop` VALUES
(null, '300米潜水表', '42毫米至臻天文台表', '41800.00', '海马系列', '欧米茄海马系列300米专业潜水表', '白色', '精钢表壳', '单向旋转表圈', 'http://127.0.0.1:8080/image/shopp/omega-constellation-13112412106001-list.jpg'),
(null, '月之暗面腕表', '44.25计时表', '78300.00', '超霸系列', '富有传奇色彩的欧米茄超霸系列腕表', '黑色', '黑色陶瓷表壳', '小秒针盘', 'http://127.0.0.1:8080/image/shopp/omega-de-ville-tresor-master-co-axial-chronometer-40-mm-43213402103001-list.jpg'),
(null, '超霸38毫米腕表', '38毫米同轴计时表', '53100.00', '超霸系列', '超霸系列38毫米腕表', '棕色', '精钢‑Sedna 18K金表壳', 'Sedna 18K金', 'http://127.0.0.1:8080/image/shopp/omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-34-mm-22023342060001-list.jpg'),
(null, '星座系列', '29毫米至臻天文台表', '99200.00', '星座系列', '欧米茄星座系列隽永迷人', '银色', '精钢‑Sedna 18K金表壳', '瑞士官方天文台表', 'http://127.0.0.1:8080/image/shopp/omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-41-mm-22020412102001-list.jpg'),
(null, '典雅系列', '39.5毫米同轴腕表', '28500.00', '碟飞系列', '全新的39.5毫米腕表', '银色', '精钢表壳', '自动上链手表', 'http://127.0.0.1:8080/image/shopp/omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-small-seconds-41-mm-22012412102005-list.jpg'),
(null, '300米潜水表', '42毫米至臻天文台表', '41800.00', '海马系列', '欧米茄海马系列300米专业潜水表', '白色', '精钢表壳', '单向旋转表圈', 'http://127.0.0.1:8080/image/shopp/omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-small-seconds-41-mm-22012412103005-list.jpg'),
(null, '月之暗面腕表', '44.25计时表', '78300.00', '超霸系列', '富有传奇色彩的欧米茄超霸系列腕表', '黑色', '黑色陶瓷表壳', '小秒针盘', 'http://127.0.0.1:8080/image/shopp/omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-small-seconds-41-mm-22022412103001-list.jpg'),
(null, '超霸38毫米腕表', '38毫米同轴计时表', '53100.00', '超霸系列', '超霸系列38毫米腕表', '棕色', '精钢‑Sedna 18K金表壳', 'Sedna 18K金','http://127.0.0.1:8080/image/shopp/omega-seamaster-diver-300m-co-axial-master-chronometer-42-mm-52230422004001-list.jpg'),
(null, '星座系列', '29毫米至臻天文台表', '99200.00', '星座系列', '欧米茄星座系列隽永迷人', '银色', '精钢‑Sedna 18K金表壳', '瑞士官方天文台表', 'http://127.0.0.1:8080/image/shopp/omega-seamaster-diver-300m-co-axial-master-chronometer-43-5-mm-21062442001001-list.jpg'),
(null, '300米潜水表', '42毫米至臻天文台表', '41800.00', '海马系列', '欧米茄海马系列300米专业潜水表', '白色', '精钢表壳', '单向旋转表圈', 'http://127.0.0.1:8080/image/shopp/omega-constellation-13112412106001-list.jpg'),
(null, '月之暗面腕表', '44.25计时表', '78300.00', '超霸系列', '富有传奇色彩的欧米茄超霸系列腕表', '黑色', '黑色陶瓷表壳', '小秒针盘', 'http://127.0.0.1:8080/image/shopp/omega-de-ville-tresor-master-co-axial-chronometer-40-mm-43213402103001-list.jpg'),
(null, '超霸38毫米腕表', '38毫米同轴计时表', '53100.00', '超霸系列', '超霸系列38毫米腕表', '棕色', '精钢‑Sedna 18K金表壳', 'Sedna 18K金', 'http://127.0.0.1:8080/image/shopp/omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-34-mm-22023342060001-list.jpg'),
(null, '星座系列', '29毫米至臻天文台表', '99200.00', '星座系列', '欧米茄星座系列隽永迷人', '银色', '精钢‑Sedna 18K金表壳', '瑞士官方天文台表', 'http://127.0.0.1:8080/image/shopp/omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-41-mm-22020412102001-list.jpg'),
(null, '典雅系列', '39.5毫米同轴腕表', '28500.00', '碟飞系列', '全新的39.5毫米腕表', '银色', '精钢表壳', '自动上链手表', 'http://127.0.0.1:8080/image/shopp/omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-small-seconds-41-mm-22012412102005-list.jpg'),
(null, '300米潜水表', '42毫米至臻天文台表', '41800.00', '海马系列', '欧米茄海马系列300米专业潜水表', '白色', '精钢表壳', '单向旋转表圈', 'http://127.0.0.1:8080/image/shopp/omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-small-seconds-41-mm-22012412103005-list.jpg'),
(null, '月之暗面腕表', '44.25计时表', '78300.00', '超霸系列', '富有传奇色彩的欧米茄超霸系列腕表', '黑色', '黑色陶瓷表壳', '小秒针盘', 'http://127.0.0.1:8080/image/shopp/omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-small-seconds-41-mm-22022412103001-list.jpg'),
(null, '超霸38毫米腕表', '38毫米同轴计时表', '53100.00', '超霸系列', '超霸系列38毫米腕表', '棕色', '精钢‑Sedna 18K金表壳', 'Sedna 18K金','http://127.0.0.1:8080/image/shopp/omega-seamaster-diver-300m-co-axial-master-chronometer-42-mm-52230422004001-list.jpg'),
(null, '星座系列', '29毫米至臻天文台表', '99200.00', '星座系列', '欧米茄星座系列隽永迷人', '银色', '精钢‑Sedna 18K金表壳', '瑞士官方天文台表', 'http://127.0.0.1:8080/image/shopp/omega-seamaster-diver-300m-co-axial-master-chronometer-43-5-mm-21062442001001-list.jpg');





-- --------------------------------------------------------

--
-- 表的结构 `omj_shopp` 购物车
--所有购物车数据属性

CREATE TABLE `omj_shopp` (
  `sid` int(11) PRIMARY KEY AUTO_INCREMENT,
  `sname` varchar(32) DEFAULT NULL,
  `sprice` decimal(7,2)  DEFAULT '59999',
  `spic` varchar(500) DEFAULT NULL,
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
(1, '超霸38毫米腕表', '53100.00', 'https://www.omegawatches.cn/media/catalog/product/cache/5edafca295d0eaa013854cf48b1568f0dfdb28db2be0e9f9b92a86ae47388cb0/o/m/omega-speedmaster-speedmaster-38-co-axial-chronometer-chronograph-38-mm-32423385002001-list.jpg',3,10,1),
(2, '超霸38毫米腕表', '53100.00', 'https://www.omegawatches.cn/media/catalog/product/cache/5edafca295d0eaa013854cf48b1568f0dfdb28db2be0e9f9b92a86ae47388cb0/o/m/omega-speedmaster-speedmaster-38-co-axial-chronometer-chronograph-38-mm-32423385002001-list.jpg',2,2,1),
(3, '超霸38毫米腕表', '53100.00', 'https://www.omegawatches.cn/media/catalog/product/cache/5edafca295d0eaa013854cf48b1568f0dfdb28db2be0e9f9b92a86ae47388cb0/o/m/omega-speedmaster-speedmaster-38-co-axial-chronometer-chronograph-38-mm-32423385002001-list.jpg',1,3,2);

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
  userid int NOT NULL,
  FOREIGN KEY(userid) REFERENCES omj_user(uid)
);
--
-- 转存表中的数据 `user_addr`
--
INSERT INTO user_addr VALUES
(null,'lucy','15535137129','山西省','大同市','云冈区','xx街道',10),
(null,'lucy','15535137129','山西省','大同市','云冈区','xx街道',10),
(null,'lucy','15535137129','山西省','大同市','云冈区','xx街道',10),
(null,'lucy','15535137129','山西省','大同市','云冈区','xx街道',12),
(null,'lucy','15535137129','山西省','大同市','云冈区','xx街道',12);

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

