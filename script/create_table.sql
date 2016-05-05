-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.11-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table erp.comsumer
CREATE TABLE IF NOT EXISTS `comsumer` (
  `id` int(11) NOT NULL COMMENT 'id',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `sex` int(11) DEFAULT NULL COMMENT '性别',
  `phone` int(11) DEFAULT NULL COMMENT '电话',
  `address` varchar(50) DEFAULT NULL COMMENT '收货地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消费者';

-- Dumping data for table erp.comsumer: ~0 rows (approximately)
/*!40000 ALTER TABLE `comsumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `comsumer` ENABLE KEYS */;


-- Dumping structure for table erp.inorder
CREATE TABLE IF NOT EXISTS `inorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `vendor` varchar(50) NOT NULL DEFAULT '0' COMMENT '供应商',
  `inprice` varchar(50) NOT NULL DEFAULT '0' COMMENT '进货单价',
  `count` int(11) NOT NULL DEFAULT '0' COMMENT '进货数量',
  `settlement` int(11) NOT NULL DEFAULT '0' COMMENT '结算方式',
  `payable` int(11) NOT NULL DEFAULT '0' COMMENT '应付',
  `paid` int(11) NOT NULL DEFAULT '0' COMMENT '已付',
  `unpay` int(11) NOT NULL DEFAULT '0' COMMENT '未付',
  `brokerage` varchar(50) NOT NULL DEFAULT '0' COMMENT '经手人',
  `operateUserAccount` varchar(50) NOT NULL DEFAULT '0' COMMENT '操作人',
  `createTime` varchar(50) NOT NULL DEFAULT '0' COMMENT '进货时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='进货单';

-- Dumping data for table erp.inorder: ~6 rows (approximately)
/*!40000 ALTER TABLE `inorder` DISABLE KEYS */;
INSERT INTO `inorder` (`id`, `productId`, `vendor`, `inprice`, `count`, `settlement`, `payable`, `paid`, `unpay`, `brokerage`, `operateUserAccount`, `createTime`) VALUES
	(1, 1, '2', '3', 4, 5, 6, 7, 8, '9', 'admin', '11'),
	(2, 1, '2', '3', 4, 5, 6, 7, 8, '9', 'admin', '11'),
	(3, 1, '2', '3', 4, 5, 6, 7, 8, '9', 'admin', '11'),
	(4, 1, '2', '3', 4, 5, 6, 7, 8, '9', 'admin', '11'),
	(5, 0, '3', '4', 2, 2, 0, 45, 54, '2', 'admin', '23'),
	(6, 6, '234', '234', 234, 34, 224, 1234, 124, '21', 'admin', '124'),
	(7, 2, '2', '3', 4, 5, 6, 7, 8, '9', 'admin', '11'),
	(8, 2, '2', '3', 4, 5, 6, 7, 8, '9', 'admin', '11');
/*!40000 ALTER TABLE `inorder` ENABLE KEYS */;


-- Dumping structure for table erp.order
CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `count` int(11) NOT NULL DEFAULT '0' COMMENT '数量',
  `comsumerId` varchar(50) NOT NULL DEFAULT '0' COMMENT '消费者id',
  `price` varchar(50) NOT NULL DEFAULT '0' COMMENT '销售价',
  `brokerage` varchar(50) NOT NULL DEFAULT '0' COMMENT '经手人',
  `expressCom` varchar(50) NOT NULL DEFAULT '0' COMMENT '快递公司',
  `expressNum` int(11) NOT NULL DEFAULT '0' COMMENT '快递单号',
  `createTime` varchar(50) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `confirmTime` varchar(50) NOT NULL DEFAULT '0' COMMENT '确认时间',
  `tpye` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0：销售订单1：退货订单',
  `operateUserAccount` varchar(50) NOT NULL DEFAULT '0' COMMENT '操作人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='销售订单';

-- Dumping data for table erp.order: ~0 rows (approximately)
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` (`id`, `productId`, `count`, `comsumerId`, `price`, `brokerage`, `expressCom`, `expressNum`, `createTime`, `confirmTime`, `tpye`, `operateUserAccount`) VALUES
	(1, 1, 2, '4', '5', '6', '0', 0, '0', '0', 0, 'admin'),
	(2, 4, 23453, '3543', '5435', '345', '0', 0, '0', '0', 0, 'admin'),
	(3, 4, 23453, '3543', '5435', '345', '0', 0, '0', '0', 0, 'admin'),
	(4, 4, 1, '1234', '423', '23434', '0', 0, '0', '0', 0, 'admin'),
	(5, 4, 1, '1234', '423', '23434', '0', 0, '0', '0', 0, 'admin'),
	(6, 4, 1, '1234', '423', '23434', '0', 0, '0', '0', 0, 'admin'),
	(7, 4, 1, '1234', '423', '23434', '0', 0, '0', '0', 0, 'admin'),
	(8, 4, 1, '4', '1', '43', '0', 0, '0', '0', 0, 'admin'),
	(9, 4, 1, '4', '1', '43', '0', 0, '0', '0', 0, 'admin'),
	(10, 4, -1, '1', '1', '1', '0', 0, '0', '0', 1, 'admin');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;


-- Dumping structure for table erp.product
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) DEFAULT '0' COMMENT '名称',
  `count` int(11) DEFAULT '0' COMMENT '库存',
  `inCount` int(11) DEFAULT '0' COMMENT '累计进货数量',
  `outCount` int(11) DEFAULT '0' COMMENT '累计销售数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='商品';

-- Dumping data for table erp.product: ~6 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`, `name`, `count`, `inCount`, `outCount`) VALUES
	(1, '1', NULL, NULL, NULL),
	(2, '11', NULL, NULL, NULL),
	(3, '111', NULL, NULL, NULL),
	(4, '112', 8, 0, 0),
	(5, '1234', 0, 0, 0),
	(6, '423', 0, 0, 0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


-- Dumping structure for table erp.user
CREATE TABLE IF NOT EXISTS `user` (
  `account` varchar(50) NOT NULL DEFAULT '0' COMMENT '账号',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- Dumping data for table erp.user: ~0 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`account`, `password`) VALUES
	('admin', '123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
