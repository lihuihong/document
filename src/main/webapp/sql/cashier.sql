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
CREATE DATABASE IF NOT EXISTS `document` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `document`;

-- 导出  表 document.alteration 结构
CREATE TABLE IF NOT EXISTS `alteration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_info_id` int(11) DEFAULT NULL COMMENT '分类id',
  `unit_name` varchar(50) DEFAULT NULL COMMENT '单位名称',
  `unit_name_time` date DEFAULT NULL COMMENT '单位名称时间',
  `legal_representative` varchar(50) DEFAULT NULL COMMENT '法定代表人',
  `representative_time` date DEFAULT NULL COMMENT '法定代表人时间',
  `address` varchar(50) DEFAULT NULL COMMENT '地址',
  `address_time` date DEFAULT NULL COMMENT '地址时间',
  `area` varchar(50) DEFAULT NULL COMMENT '面积',
  `area_time` date DEFAULT NULL COMMENT '面积时间',
  `terminal_numbe` varchar(50) DEFAULT NULL COMMENT '终端台数',
  `terminal_numbe_time` date DEFAULT NULL COMMENT '终端台数时间',
  `status` int(11) DEFAULT '0',
  `type` int(11) DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 正在导出表  document.alteration 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `alteration` DISABLE KEYS */;
INSERT IGNORE INTO `alteration` (`id`, `type_info_id`, `unit_name`, `unit_name_time`, `legal_representative`, `representative_time`, `address`, `address_time`, `area`, `area_time`, `terminal_numbe`, `terminal_numbe_time`, `status`, `type`) VALUES
	(1, 1, '232', '2019-05-16', '323', '2019-05-16', '232', '2019-05-16', '232', '2019-05-16', '232', '2019-05-16', 0, 1),
	(2, 4, '瑟得瑟', '2019-05-09', '瑟得瑟', '2019-05-07', '瑟得瑟', '2019-05-15', '32', '2019-05-07', '22', '2019-05-20', 0, 1),
	(3, 1, '阿萨', '2019-05-16', '啊飒飒', '2019-05-09', '阿萨飒飒', '2019-05-10', '12121', '2019-05-16', '1212 ', '2019-05-05', 0, 2);
/*!40000 ALTER TABLE `alteration` ENABLE KEYS */;

-- 导出  表 document.document 结构
CREATE TABLE IF NOT EXISTS `document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_info_id` int(11) DEFAULT NULL COMMENT '分类id',
  `Fire_control` varchar(200) DEFAULT NULL COMMENT '消防',
  `environmental_protection` varchar(200) DEFAULT NULL COMMENT '环保',
  `hygiene` varchar(200) DEFAULT NULL COMMENT '卫生',
  `business_circles` varchar(200) DEFAULT NULL COMMENT '工商',
  `status` int(2) DEFAULT '0',
  `type` int(2) DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 正在导出表  document.document 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
INSERT IGNORE INTO `document` (`id`, `type_info_id`, `Fire_control`, `environmental_protection`, `hygiene`, `business_circles`, `status`, `type`) VALUES
	(1, 4, '21321', '12313', '12321', '12313', 0, 0),
	(2, 1, '23423', '23423', '3242', '34242', 0, 1),
	(3, 4, '464', '4545', '454', '4545', 0, 2);
/*!40000 ALTER TABLE `document` ENABLE KEYS */;

-- 导出  表 document.punishment 结构
CREATE TABLE IF NOT EXISTS `punishment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_info_id` int(11) DEFAULT NULL COMMENT '分类id',
  `warning` varchar(50) DEFAULT NULL COMMENT '警告',
  `warning_time` date DEFAULT NULL COMMENT '警告时间',
  `fine` varchar(50) DEFAULT NULL COMMENT '罚款',
  `fine_time` date DEFAULT NULL COMMENT '罚款时间',
  `rectify` varchar(50) DEFAULT NULL COMMENT '责令停业整顿',
  `rectify_time` date DEFAULT NULL COMMENT '责令停业整顿时间',
  `revocation_permit` varchar(50) DEFAULT NULL COMMENT '吊销许可证',
  `revocation_permit_time` date DEFAULT NULL COMMENT '吊销许可证时间',
  `confiscation_income` varchar(50) DEFAULT NULL COMMENT '没收违法所得',
  `confiscation_income_time` date DEFAULT NULL COMMENT '没收违法所得时间',
  `confiscation_property` varchar(50) DEFAULT NULL COMMENT '没收非法财物',
  `confiscation_property_time` date DEFAULT NULL COMMENT '没收非法财物时间',
  `status` int(2) DEFAULT '0',
  `type` int(2) DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  document.punishment 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `punishment` DISABLE KEYS */;
INSERT IGNORE INTO `punishment` (`id`, `type_info_id`, `warning`, `warning_time`, `fine`, `fine_time`, `rectify`, `rectify_time`, `revocation_permit`, `revocation_permit_time`, `confiscation_income`, `confiscation_income_time`, `confiscation_property`, `confiscation_property_time`, `status`, `type`) VALUES
	(1, 2, '12去', '2019-05-05', '121', '2019-05-05', '121', '2019-05-05', '1', '2019-05-05', '1212', '2019-05-05', '1212去', '2019-05-05', 0, 1);
/*!40000 ALTER TABLE `punishment` ENABLE KEYS */;

-- 导出  表 document.representative 结构
CREATE TABLE IF NOT EXISTS `representative` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `type` int(2) DEFAULT '0',
  `alias` int(2) NOT NULL COMMENT '类别（0法定代表人 1负责人）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  document.representative 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `representative` DISABLE KEYS */;
INSERT IGNORE INTO `representative` (`id`, `type_info_id`, `name`, `sex`, `birth`, `translate`, `photo`, `political_outlook`, `degree`, `address`, `idcard`, `landline`, `phone`, `status`, `type`, `alias`) VALUES
	(1, 3, '灰灰', '2', '2019-05-15', '汉', 'http://localhost:9080/static/images/20190505/1557000825259_412.jpg', '2', '2', '重庆市', '500231544212502123', '55420125', '12352125421', 0, 0, 0);
/*!40000 ALTER TABLE `representative` ENABLE KEYS */;

-- 导出  表 document.situation 结构
CREATE TABLE IF NOT EXISTS `situation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_info_id` int(11) DEFAULT NULL COMMENT '分类id',
  `child` int(11) DEFAULT NULL COMMENT '子分类',
  `unit_name` varchar(50) DEFAULT NULL COMMENT '单位名称',
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
  `status` int(1) DEFAULT '0' COMMENT '是否删除 0正常 1删除',
  `type` int(10) DEFAULT '2' COMMENT '审核状态 0通过 1未通过 2未审核',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 正在导出表  document.situation 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `situation` DISABLE KEYS */;
INSERT IGNORE INTO `situation` (`id`, `type_info_id`, `child`, `unit_name`, `business_address`, `management`, `work_telephone`, `operating_area`, `numberof_servers`, `terminal_number`, `network_access`, `people_employed`, `license_key`, `Issuing_time`, `certification_authority`, `inspection_time`, `rules`, `address`, `total_investment`, `status`, `type`) VALUES
	(5, 1, NULL, '重庆市华谊影院', '重庆市南岸区', '2', '15425653251', '120', '210', '20', '3', '120', '1235231', '2019-05-05', '重庆市', '2019-05-05', '0', '重庆市', '2000', 0, 1),
	(6, 5, NULL, '重庆', '撒飒飒', '2', '12321232123', '1222', '12', '12', '2', '12', '1212121', '2019-05-10', '重庆', '2019-05-01', '0', '重庆', '123', 0, 0);
/*!40000 ALTER TABLE `situation` ENABLE KEYS */;

-- 导出  表 document.type_info 结构
CREATE TABLE IF NOT EXISTS `type_info` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `status` int(1) DEFAULT '0' COMMENT '是否删除 0正常，1 删除',
  `type` int(1) DEFAULT NULL COMMENT '审核是否通过 0通过 1不 通过',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- 正在导出表  document.type_info 的数据：~13 rows (大约)
/*!40000 ALTER TABLE `type_info` DISABLE KEYS */;
INSERT IGNORE INTO `type_info` (`id`, `name`, `status`, `type`) VALUES
	(1, '音像（出版）', 1, 0),
	(2, '电影', 0, 0),
	(3, '营业性演出', 0, 0),
	(4, '印刷企业', 0, 0),
	(5, '出版物', 0, 0),
	(6, '广播电视', 0, 0),
	(7, '卫星地面接收', 0, 0),
	(8, '互联网站', 0, 0),
	(9, '书（店）报摊', 0, 0),
	(10, '文物', 0, 0),
	(11, '网吧', 0, 0),
	(12, '歌舞娱乐场所', 0, 0),
	(13, '游艺娱乐场所', 1, 1);
/*!40000 ALTER TABLE `type_info` ENABLE KEYS */;

-- 导出  表 document.type_info_one 结构
CREATE TABLE IF NOT EXISTS `type_info_one` (
  `id` bigint(50) DEFAULT NULL,
  `type_info_id` int(11) DEFAULT NULL COMMENT '父分类id',
  `name` varchar(50) DEFAULT NULL COMMENT '子分类名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  document.type_info_one 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `type_info_one` DISABLE KEYS */;
/*!40000 ALTER TABLE `type_info_one` ENABLE KEYS */;

-- 导出  表 document.user_info 结构
CREATE TABLE IF NOT EXISTS `user_info` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '用户名称',
  `password` varchar(50) DEFAULT NULL COMMENT '用户密码',
  `type` varchar(50) DEFAULT NULL COMMENT '用户类型（0管理员 1普通用户）',
  `type_info_id` int(11) DEFAULT NULL COMMENT '分类id',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  document.user_info 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT IGNORE INTO `user_info` (`id`, `name`, `password`, `type`, `type_info_id`) VALUES
	(1, 'admin', '123456789', '0', 1);
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
