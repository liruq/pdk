-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.11-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出  表 erp.comsumer 结构
CREATE TABLE IF NOT EXISTS `comsumer` (
  `id` int(11) NOT NULL COMMENT 'id',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `sex` int(11) DEFAULT NULL COMMENT '性别',
  `phone` int(11) DEFAULT NULL COMMENT '电话',
  `address` varchar(50) DEFAULT NULL COMMENT '收货地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消费者';

-- 正在导出表  erp.comsumer 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `comsumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `comsumer` ENABLE KEYS */;


-- 导出  表 erp.inorder 结构
CREATE TABLE IF NOT EXISTS `inorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `vendor` varchar(50) NOT NULL DEFAULT '0' COMMENT '供应商',
  `inprice` varchar(50) NOT NULL DEFAULT '0' COMMENT '进货单价',
  `settlement` int(11) NOT NULL DEFAULT '0' COMMENT '结算方式',
  `payable` int(11) NOT NULL DEFAULT '0' COMMENT '应付',
  `paid` int(11) NOT NULL DEFAULT '0' COMMENT '已付',
  `unpay` int(11) NOT NULL DEFAULT '0' COMMENT '未付',
  `brokerage` varchar(50) NOT NULL DEFAULT '0' COMMENT '经手人',
  `operateUserId` int(11) NOT NULL DEFAULT '0' COMMENT '操作人',
  `createTime` varchar(50) NOT NULL DEFAULT '0' COMMENT '进货时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='进货单';

-- 正在导出表  erp.inorder 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `inorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `inorder` ENABLE KEYS */;


-- 导出  表 erp.order 结构
CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `count` int(11) NOT NULL DEFAULT '0' COMMENT '数量',
  `comsumerId` varchar(50) NOT NULL DEFAULT '0' COMMENT '消费者id',
  `price` varchar(50) NOT NULL DEFAULT '0' COMMENT '销售价',
  `brokerage` varchar(50) NOT NULL DEFAULT '0' COMMENT '经手人',
  `operateUserId` int(11) NOT NULL DEFAULT '0' COMMENT '操作人',
  `expressCom` varchar(50) NOT NULL DEFAULT '0' COMMENT '快递公司',
  `expressNum` int(11) NOT NULL DEFAULT '0' COMMENT '快递单号',
  `createTime` varchar(50) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `confirmTime` varchar(50) NOT NULL DEFAULT '0' COMMENT '确认时间',
  `tpye` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0：销售订单1：退货订单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售订单';

-- 正在导出表  erp.order 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;


-- 导出  表 erp.product 结构
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) NOT NULL DEFAULT '0' COMMENT '名称',
  `count` int(11) NOT NULL DEFAULT '0' COMMENT '库存',
  `price` int(11) NOT NULL DEFAULT '0' COMMENT '建议售价',
  `inCount` int(11) NOT NULL DEFAULT '0' COMMENT '累计进货数量',
  `outCount` int(11) NOT NULL DEFAULT '0' COMMENT '累计销售数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品';

-- 正在导出表  erp.product 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


-- 导出  表 erp.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `account` varchar(50) NOT NULL DEFAULT '0' COMMENT '账号',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- 正在导出表  erp.user 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`account`, `password`) VALUES
	('admin', '123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
