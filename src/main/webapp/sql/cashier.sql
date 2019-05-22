-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        10.1.30-MariaDB - mariadb.org binary distribution
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 document 的数据库结构
CREATE DATABASE IF NOT EXISTS `document` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `document`;

-- 导出  表 document.alteration 结构
CREATE TABLE IF NOT EXISTS `alteration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_info_id` int(11) DEFAULT NULL COMMENT '分类id',
  `unit_name` varchar(50) DEFAULT NULL COMMENT '单位名称',
  `unit_name_time` date DEFAULT NULL COMMENT '单位名称时间',
  `user` int(11) DEFAULT NULL COMMENT '所属用户id',
  `legal_representative` varchar(50) DEFAULT NULL COMMENT '法定代表人',
  `representative_time` date DEFAULT NULL COMMENT '法定代表人时间',
  `address` varchar(50) DEFAULT NULL COMMENT '地址',
  `address_time` date DEFAULT NULL COMMENT '地址时间',
  `area` varchar(50) DEFAULT NULL COMMENT '面积',
  `area_time` date DEFAULT NULL COMMENT '面积时间',
  `terminal_numbe` varchar(50) DEFAULT NULL COMMENT '终端台数',
  `terminal_numbe_time` date DEFAULT NULL COMMENT '终端台数时间',
  `number` varchar(50) DEFAULT NULL,
  `numbertime` varchar(50) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `servicetime` date DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `type` int(11) DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- 正在导出表  document.alteration 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `alteration` DISABLE KEYS */;
INSERT IGNORE INTO `alteration` (`id`, `type_info_id`, `unit_name`, `unit_name_time`, `user`, `legal_representative`, `representative_time`, `address`, `address_time`, `area`, `area_time`, `terminal_numbe`, `terminal_numbe_time`, `number`, `numbertime`, `service`, `servicetime`, `status`, `type`) VALUES
	(7, 2, '阿萨大', '2019-05-10', 1, '阿斯顿撒', '2019-05-16', '阿萨大 ', '2019-05-28', '12', '2019-05-23', '12', '2019-06-04', '12', '2019-05-29', NULL, NULL, 0, 2),
	(8, 1, '额外', '2019-05-16', 1, '请问', '2019-05-01', '请问请问', '2019-05-24', '21', '2019-05-23', '12', '2019-05-29', NULL, NULL, NULL, NULL, 0, 2);
/*!40000 ALTER TABLE `alteration` ENABLE KEYS */;

-- 导出  表 document.document 结构
CREATE TABLE IF NOT EXISTS `document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_info_id` int(11) DEFAULT NULL COMMENT '分类id',
  `user` int(11) DEFAULT NULL COMMENT '所属用户id',
  `Fire_control` varchar(200) DEFAULT NULL COMMENT '消防',
  `environmental_protection` varchar(200) DEFAULT NULL COMMENT '环保',
  `hygiene` varchar(200) DEFAULT NULL COMMENT '卫生',
  `business_circles` varchar(200) DEFAULT NULL COMMENT '工商',
  `status` int(2) DEFAULT '0',
  `type` int(2) DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- 正在导出表  document.document 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
INSERT IGNORE INTO `document` (`id`, `type_info_id`, `user`, `Fire_control`, `environmental_protection`, `hygiene`, `business_circles`, `status`, `type`) VALUES
	(1, 4, NULL, '21321', '12313', '12321', '12313', 0, 0),
	(2, 1, NULL, '23423', '23423', '3242', '34242', 0, 1),
	(3, 4, NULL, '464', '4545', '454', '4545', 0, 2),
	(8, 12, 1, '324234', '234234', '234234', '234234', 0, 2),
	(9, 2, 1, '23432', '34234', '342', '34234', 0, 2);
/*!40000 ALTER TABLE `document` ENABLE KEYS */;

-- 导出  表 document.places 结构
CREATE TABLE IF NOT EXISTS `places` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_info_id` int(11) DEFAULT NULL COMMENT '分类id',
  `child` int(11) DEFAULT NULL COMMENT '子分类',
  `user` int(11) DEFAULT NULL,
  `unit_name` varchar(50) DEFAULT NULL COMMENT '单位名称',
  `business_address` varchar(50) DEFAULT NULL COMMENT '经营地址',
  `management` varchar(50) DEFAULT NULL COMMENT '经营性质',
  `work_telephone` varchar(50) DEFAULT NULL COMMENT '单位电话',
  `operating_area` varchar(50) DEFAULT NULL COMMENT '经营面积（m2）',
  `box_quantity` varchar(50) DEFAULT NULL COMMENT '包厢数量',
  `performance_area` varchar(50) DEFAULT NULL COMMENT '备案号',
  `number_equipment` varchar(50) DEFAULT '3' COMMENT '设备台数',
  `total_investment` varchar(50) DEFAULT NULL COMMENT '总投资额（万元）',
  `license_key` varchar(50) DEFAULT NULL COMMENT '许可证号',
  `Issuing_time` date DEFAULT NULL COMMENT '发证时间',
  `certification_authority` varchar(50) DEFAULT NULL COMMENT '发证机关',
  `inspection_time` date DEFAULT NULL COMMENT '年检时间',
  `rules` varchar(50) DEFAULT '0' COMMENT '规章制度',
  `number_people_employed` varchar(50) DEFAULT NULL COMMENT '从业人员数',
  `authorized_number` varchar(50) DEFAULT NULL COMMENT '核定人数',
  `status` int(1) DEFAULT '0' COMMENT '是否删除 0正常 1删除',
  `type` int(10) DEFAULT '2' COMMENT '审核状态 0通过 1未通过 2未审核',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- 正在导出表  document.places 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT IGNORE INTO `places` (`id`, `type_info_id`, `child`, `user`, `unit_name`, `business_address`, `management`, `work_telephone`, `operating_area`, `box_quantity`, `performance_area`, `number_equipment`, `total_investment`, `license_key`, `Issuing_time`, `certification_authority`, `inspection_time`, `rules`, `number_people_employed`, `authorized_number`, `status`, `type`) VALUES
	(7, NULL, NULL, NULL, '啊飒飒', '啊飒飒', '2', '12321232123', '121', '12', '1212', '12', '12', '121121', '2019-05-22', '洒洒水', '2019-05-03', '0', '121', '121', 0, 0),
	(8, 3, NULL, 1, '瑟得瑟', '瑟得瑟', '2', '34234', '23', '23', NULL, '23', '23432', '23', '2019-05-25', '23', '2019-05-18', 'on', '23', '23', 0, 2);
/*!40000 ALTER TABLE `places` ENABLE KEYS */;

-- 导出  表 document.places_alteration 结构
CREATE TABLE IF NOT EXISTS `places_alteration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_info_id` int(11) DEFAULT NULL COMMENT '分类id',
  `user` int(11) DEFAULT NULL COMMENT '所属用户id',
  `unit_name` varchar(50) DEFAULT NULL COMMENT '单位名称',
  `unit_name_time` date DEFAULT NULL COMMENT '单位名称时间',
  `legal_representative` varchar(50) DEFAULT NULL COMMENT '法定代表人',
  `representative_time` date DEFAULT NULL COMMENT '法定代表人时间',
  `address` varchar(50) DEFAULT NULL COMMENT '地址',
  `address_time` date DEFAULT NULL COMMENT '地址时间',
  `area` varchar(50) DEFAULT NULL COMMENT '面积',
  `area_time` date DEFAULT NULL COMMENT '面积时间',
  `box_quantity` varchar(50) DEFAULT NULL COMMENT '包厢数量',
  `box_quantity_time` date DEFAULT NULL COMMENT '包厢数量时间',
  `status` int(11) DEFAULT '0',
  `type` int(11) DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 正在导出表  document.places_alteration 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `places_alteration` DISABLE KEYS */;
INSERT IGNORE INTO `places_alteration` (`id`, `type_info_id`, `user`, `unit_name`, `unit_name_time`, `legal_representative`, `representative_time`, `address`, `address_time`, `area`, `area_time`, `box_quantity`, `box_quantity_time`, `status`, `type`) VALUES
	(4, 1, 1, 'uiu', '2019-05-24', 'uiu', '2019-05-10', 'uiu', '2019-05-03', '121', '2019-05-10', '12', '2019-05-15', 0, 0);
/*!40000 ALTER TABLE `places_alteration` ENABLE KEYS */;

-- 导出  表 document.punishment 结构
CREATE TABLE IF NOT EXISTS `punishment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_info_id` int(11) DEFAULT NULL COMMENT '分类id',
  `warning` varchar(50) DEFAULT NULL COMMENT '警告',
  `user` varchar(50) DEFAULT NULL COMMENT '所属用户id',
  `warning_time` date DEFAULT NULL COMMENT '警告时间',
  `fine` varchar(50) DEFAULT NULL COMMENT '罚款',
  `fine_time` date DEFAULT NULL COMMENT '罚款时间',
  `rectify` varchar(50) DEFAULT NULL COMMENT '责令停业整顿',
  `rectify_time` date DEFAULT NULL COMMENT '责令停业整顿时间',
  `revocation_permit` varchar(50) DEFAULT '1' COMMENT '吊销许可证',
  `revocation_permit_time` date DEFAULT NULL COMMENT '吊销许可证时间',
  `confiscation_income` varchar(50) DEFAULT NULL COMMENT '没收违法所得',
  `confiscation_income_time` date DEFAULT NULL COMMENT '没收违法所得时间',
  `confiscation_property` varchar(50) DEFAULT NULL COMMENT '没收非法财物',
  `confiscation_property_time` date DEFAULT NULL COMMENT '没收非法财物时间',
  `status` int(2) DEFAULT '0',
  `type` int(2) DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- 正在导出表  document.punishment 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `punishment` DISABLE KEYS */;
INSERT IGNORE INTO `punishment` (`id`, `type_info_id`, `warning`, `user`, `warning_time`, `fine`, `fine_time`, `rectify`, `rectify_time`, `revocation_permit`, `revocation_permit_time`, `confiscation_income`, `confiscation_income_time`, `confiscation_property`, `confiscation_property_time`, `status`, `type`) VALUES
	(3, 2, '12', '1', '2019-05-20', '1212', '2019-05-04', '12', '2019-05-10', 'on', '2019-05-23', '121', '2019-05-17', NULL, '2019-05-30', 0, 0),
	(4, 12, '12', '1', '2019-05-04', '12', '2019-06-07', '12', '2019-05-03', 'on', '2019-05-03', '12', '2019-05-16', NULL, '2019-05-09', 0, 2),
	(22, 1, '阿萨', '1', '2019-05-22', '12', '2019-05-03', '12', '2019-05-03', '1', '2019-05-10', '12', '2019-05-03', '20190522093448840.txt', '2019-05-10', 0, 2);
/*!40000 ALTER TABLE `punishment` ENABLE KEYS */;

-- 导出  表 document.representative 结构
CREATE TABLE IF NOT EXISTS `representative` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL DEFAULT '0' COMMENT '所属用户id',
  `type_info_id` int(11) DEFAULT NULL COMMENT '分类id',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(50) DEFAULT NULL COMMENT '性别',
  `birth` varchar(50) DEFAULT NULL COMMENT '出生年月',
  `translate` varchar(50) DEFAULT NULL COMMENT '民族（手填 默认 汉）',
  `photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `political_outlook` varchar(50) DEFAULT NULL COMMENT '政治面貌',
  `degree` varchar(50) DEFAULT NULL COMMENT '学历',
  `address` varchar(50) DEFAULT NULL COMMENT '住址',
  `idcard` varchar(50) DEFAULT NULL COMMENT '身份证号码',
  `landline` varchar(50) DEFAULT NULL COMMENT '座机',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `status` int(2) DEFAULT '0',
  `type` int(2) DEFAULT '2',
  `alias` int(2) NOT NULL COMMENT '类别（0法定代表人 1负责人）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- 正在导出表  document.representative 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `representative` DISABLE KEYS */;
INSERT IGNORE INTO `representative` (`id`, `user`, `type_info_id`, `name`, `sex`, `birth`, `translate`, `photo`, `political_outlook`, `degree`, `address`, `idcard`, `landline`, `phone`, `status`, `type`, `alias`) VALUES
	(7, 1, 4, '阿萨', '1', '2019-05', '哈巴', 'http://localhost:8080/static/images/20190521/1558454058158_870.jpg', '2', '1', '重庆', '3424', '23423', '15421232545', 0, 2, 0),
	(10, 1, 4, 'java', '1', '2019-05', '哈巴', 'http://localhost:8080/static/images/20190521/1558454180483_919.jpg', '2', '1', '重庆', '3424', '23423', '15421232545', 0, 2, 1),
	(11, 1, 12, 'book', '1', '2019-05', '汉', 'http://localhost:8080/static/images/20190522/1558457224709_381.jpg', '1', '1', '重庆', '3424', '23423', '15421232545', 0, 2, 0);
/*!40000 ALTER TABLE `representative` ENABLE KEYS */;

-- 导出  表 document.singing 结构
CREATE TABLE IF NOT EXISTS `singing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_info_id` int(11) DEFAULT NULL COMMENT '分类id',
  `user` int(11) DEFAULT NULL COMMENT '所属用户id',
  `child` int(11) DEFAULT NULL COMMENT '子分类',
  `unit_name` varchar(50) DEFAULT NULL COMMENT '单位名称',
  `business_address` varchar(50) DEFAULT NULL COMMENT '经营地址',
  `management` varchar(50) DEFAULT NULL COMMENT '经营性质',
  `work_telephone` varchar(50) DEFAULT NULL COMMENT '单位电话',
  `operating_area` varchar(50) DEFAULT NULL COMMENT '经营面积（m2）',
  `box_quantity` varchar(50) DEFAULT NULL COMMENT '包厢数量',
  `performance_area` varchar(50) DEFAULT NULL COMMENT '表演区（大厅）面积（m2）',
  `number_equipment` varchar(50) DEFAULT '3' COMMENT '点歌设备台数',
  `total_investment` varchar(50) DEFAULT NULL COMMENT '总投资额（万元）',
  `license_key` varchar(50) DEFAULT NULL COMMENT '许可证号',
  `Issuing_time` date DEFAULT NULL COMMENT '发证时间',
  `certification_authority` varchar(50) DEFAULT NULL COMMENT '发证机关',
  `inspection_time` date DEFAULT NULL COMMENT '年检时间',
  `rules` varchar(50) DEFAULT '0' COMMENT '规章制度',
  `number_people_employed` varchar(50) DEFAULT NULL COMMENT '从业人员数',
  `authorized_number` varchar(50) DEFAULT NULL COMMENT '核定人数',
  `status` int(1) DEFAULT '0' COMMENT '是否删除 0正常 1删除',
  `type` int(10) DEFAULT '2' COMMENT '审核状态 0通过 1未通过 2未审核',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- 正在导出表  document.singing 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `singing` DISABLE KEYS */;
INSERT IGNORE INTO `singing` (`id`, `type_info_id`, `user`, `child`, `unit_name`, `business_address`, `management`, `work_telephone`, `operating_area`, `box_quantity`, `performance_area`, `number_equipment`, `total_investment`, `license_key`, `Issuing_time`, `certification_authority`, `inspection_time`, `rules`, `number_people_employed`, `authorized_number`, `status`, `type`) VALUES
	(7, 1, NULL, NULL, '1', '1', '1', '12321232123', '1', '1', '1', '3', '1', '1', '2019-05-17', '1', '2019-05-17', '0', '1', '1', 0, 0),
	(8, 1, NULL, NULL, '二', '二二', '1', '12321232123', '12', '12', '12', '12', '12', '12222', '2019-05-22', '11我 ', '2019-05-29', '1', '12', '12', 0, 2),
	(9, NULL, NULL, NULL, '阿萨', '阿萨', '1', '12345678909', '12', '12', '121', '12', '121', '1211', '2019-05-28', '112', '2019-05-15', '0', '12', '12', 0, 2),
	(10, NULL, 1, NULL, '阿萨', '阿萨', '1', '12321232123', '12', '12', '12', '12', '12', '12121', '2019-05-31', '121点睡', '2019-06-05', '0', '12', '12', 0, 1);
/*!40000 ALTER TABLE `singing` ENABLE KEYS */;

-- 导出  表 document.sing_alteration 结构
CREATE TABLE IF NOT EXISTS `sing_alteration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_info_id` int(11) DEFAULT NULL COMMENT '分类id',
  `unit_name` varchar(50) DEFAULT NULL COMMENT '单位名称',
  `unit_name_time` date DEFAULT NULL COMMENT '单位名称时间',
  `user` int(11) DEFAULT NULL COMMENT '所属用户id',
  `legal_representative` varchar(50) DEFAULT NULL COMMENT '法定代表人',
  `representative_time` date DEFAULT NULL COMMENT '法定代表人时间',
  `address` varchar(50) DEFAULT NULL COMMENT '地址',
  `address_time` date DEFAULT NULL COMMENT '地址时间',
  `area` varchar(50) DEFAULT NULL COMMENT '面积',
  `area_time` date DEFAULT NULL COMMENT '面积时间',
  `box_quantity` varchar(50) DEFAULT NULL COMMENT '包厢数量',
  `box_quantity_time` date DEFAULT NULL COMMENT '包厢数量时间',
  `status` int(11) DEFAULT '0',
  `type` int(11) DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 正在导出表  document.sing_alteration 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `sing_alteration` DISABLE KEYS */;
INSERT IGNORE INTO `sing_alteration` (`id`, `type_info_id`, `unit_name`, `unit_name_time`, `user`, `legal_representative`, `representative_time`, `address`, `address_time`, `area`, `area_time`, `box_quantity`, `box_quantity_time`, `status`, `type`) VALUES
	(6, 12, '二位', '2019-05-22', 1, '23423第三方', '2019-05-23', '重庆南岸', '2019-05-10', '234', '2019-05-17', '23', '2019-06-06', 0, 2);
/*!40000 ALTER TABLE `sing_alteration` ENABLE KEYS */;

-- 导出  表 document.situation 结构
CREATE TABLE IF NOT EXISTS `situation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_info_id` int(11) DEFAULT NULL COMMENT '分类id',
  `child` int(11) DEFAULT NULL COMMENT '子分类',
  `unit_name` varchar(50) DEFAULT NULL COMMENT '单位名称',
  `user` int(11) DEFAULT NULL COMMENT '所属用户id',
  `business_address` varchar(50) DEFAULT NULL COMMENT '经营地址',
  `management` varchar(50) DEFAULT NULL COMMENT '经营性质',
  `work_telephone` varchar(50) DEFAULT NULL COMMENT '单位电话',
  `operating_area` varchar(50) DEFAULT NULL COMMENT '经营面积（m2）',
  `numberof_servers` varchar(50) DEFAULT NULL COMMENT '服务器台数',
  `terminal_number` varchar(50) DEFAULT NULL COMMENT '终端台数',
  `network_access` varchar(50) DEFAULT '3' COMMENT '网络接入商',
  `people_employed` varchar(50) DEFAULT NULL COMMENT '从业人员数',
  `license_key` varchar(50) DEFAULT NULL COMMENT '许可证号',
  `Issuing_time` date DEFAULT NULL COMMENT '发证时间',
  `certification_authority` varchar(50) DEFAULT NULL COMMENT '发证机关',
  `inspection_time` date DEFAULT NULL COMMENT '年检时间',
  `rules` varchar(50) DEFAULT '0' COMMENT '规章制度',
  `address` varchar(50) DEFAULT NULL COMMENT '地区',
  `total_investment` varchar(50) DEFAULT NULL COMMENT '总投资额（万元）',
  `ipaddress` varchar(50) DEFAULT NULL COMMENT 'IP地址',
  `ipnumber` varchar(50) DEFAULT NULL COMMENT 'ICP备案号',
  `service` varchar(50) DEFAULT NULL COMMENT '服务器地址',
  `program` varchar(50) DEFAULT NULL COMMENT '是否传播',
  `status` int(1) DEFAULT '0' COMMENT '是否删除 0正常 1删除',
  `type` int(10) DEFAULT '2' COMMENT '审核状态 0通过 1未通过 2未审核',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- 正在导出表  document.situation 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `situation` DISABLE KEYS */;
INSERT IGNORE INTO `situation` (`id`, `type_info_id`, `child`, `unit_name`, `user`, `business_address`, `management`, `work_telephone`, `operating_area`, `numberof_servers`, `terminal_number`, `network_access`, `people_employed`, `license_key`, `Issuing_time`, `certification_authority`, `inspection_time`, `rules`, `address`, `total_investment`, `ipaddress`, `ipnumber`, `service`, `program`, `status`, `type`) VALUES
	(11, 2, NULL, NULL, 1, '请问请问', '1', '12321232123', '12', '12', NULL, '12', '12', '12', '2019-05-10', '12', '2019-05-10', 'on', '12', '12', NULL, NULL, NULL, NULL, 0, 2),
	(12, 5, NULL, '驱蚊器', 1, '驱蚊器', '2', '11111', '21', NULL, '12', '3', '12', '1212', '2019-05-09', '12121', '2019-05-18', 'on', '2', '12', NULL, NULL, NULL, NULL, 0, 2),
	(13, 9, NULL, '阿萨', 1, '飒飒', '', '234234', '23432', NULL, '23432', '3', '234', '23432', '2019-05-10', '234234', '2019-05-02', 'on', NULL, '234', NULL, NULL, NULL, NULL, 0, 2),
	(14, 1, NULL, '阿斯顿撒', 1, '啊实打实', '1', '12321232123', '21', '12', '12', '1', '12', '121', '2019-05-21', '12', '2019-05-14', '1', '12', '12', NULL, NULL, NULL, NULL, 0, 2),
	(15, 4, NULL, '萨达', 1, '阿萨德', '2', '12321232123', '12', '12', NULL, '12121', '12', '12121', '2019-05-07', '121点睡', '2019-05-16', 'on', NULL, '12', NULL, NULL, NULL, NULL, 0, 2);
/*!40000 ALTER TABLE `situation` ENABLE KEYS */;

-- 导出  表 document.type_info 结构
CREATE TABLE IF NOT EXISTS `type_info` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `url` varchar(50) DEFAULT NULL COMMENT '页面地址',
  `status` int(1) DEFAULT '0' COMMENT '是否删除 0正常，1 删除',
  `type` int(1) DEFAULT NULL COMMENT '审核是否通过 0通过 1不 通过',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- 正在导出表  document.type_info 的数据：~13 rows (大约)
/*!40000 ALTER TABLE `type_info` DISABLE KEYS */;
INSERT IGNORE INTO `type_info` (`id`, `name`, `url`, `status`, `type`) VALUES
	(1, '网吧', 'internerBar/InternetBar', 0, 0),
	(2, '歌舞娱乐场所', 'songDance/songDance', 0, 0),
	(3, '游艺娱乐场所', 'entertainment/entertainment', 0, 0),
	(4, '音像', 'Audio-visual/Audio-visual', 0, 0),
	(5, '电影', 'movie/movie', 0, 0),
	(6, '营业性演出', 'businessNature/businessNature', 0, 0),
	(7, '印刷企业', 'printing/printing', 0, 0),
	(8, '出版物', 'publication/publication', 0, 0),
	(9, '广播电视', 'radioBroadcast/radioBroadcast', 0, 0),
	(10, '卫星地面接收', 'satellite/satellite', 0, 0),
	(11, '互联网站', 'internetWebsite/internetWebsite', 0, 0),
	(12, '书（店）报摊', 'bookshop/bookshop', 0, 0),
	(13, '文物', 'culturalRelic/culturalRelic', 0, 0);
/*!40000 ALTER TABLE `type_info` ENABLE KEYS */;

-- 导出  表 document.type_info_one 结构
CREATE TABLE IF NOT EXISTS `type_info_one` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `type_info_id` int(11) DEFAULT NULL COMMENT '父分类id',
  `name` varchar(50) DEFAULT NULL COMMENT '子分类名称',
  `status` int(2) DEFAULT NULL,
  `type` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- 正在导出表  document.type_info_one 的数据：~9 rows (大约)
/*!40000 ALTER TABLE `type_info_one` DISABLE KEYS */;
INSERT IGNORE INTO `type_info_one` (`id`, `type_info_id`, `name`, `status`, `type`) VALUES
	(1, 6, '文艺表演团体', 0, 0),
	(2, 6, '演出场所', 0, NULL),
	(3, 6, '个体演员', 0, NULL),
	(4, 6, '个体演出经纪人', 0, NULL),
	(5, 7, '所属', 0, NULL),
	(6, 7, '如图', 0, NULL),
	(7, 7, '二二', 0, NULL),
	(8, 8, '同一天', 0, NULL),
	(9, 4, '电影院', 0, NULL);
/*!40000 ALTER TABLE `type_info_one` ENABLE KEYS */;

-- 导出  表 document.user_info 结构
CREATE TABLE IF NOT EXISTS `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '用户名称',
  `password` varchar(50) DEFAULT NULL COMMENT '用户密码',
  `type` varchar(50) DEFAULT NULL COMMENT '用户类型（0管理员 1普通用户）',
  `type_info_id` int(11) DEFAULT NULL COMMENT '分类id',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- 正在导出表  document.user_info 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT IGNORE INTO `user_info` (`id`, `name`, `password`, `type`, `type_info_id`) VALUES
	(1, 'admin', '123456789', '0', 1),
	(2, 'lhh', '123456789', '1', 1),
	(3, '1212121', '121212', NULL, NULL),
	(4, '123456', '123456', '1', NULL),
	(5, '123456789', '123456789', '1', NULL);
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
