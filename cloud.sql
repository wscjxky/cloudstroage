-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 2018-08-02 09:06:41
-- 服务器版本： 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cloud`
--

-- --------------------------------------------------------

--
-- 表的结构 `apply_money`
--

CREATE TABLE `apply_money` (
  `Id` int(11) NOT NULL,
  `DomainId` int(11) DEFAULT NULL,
  `Money` float DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `UserId` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- 转存表中的数据 `apply_money`
--

INSERT INTO `apply_money` (`Id`, `DomainId`, `Money`, `CreateTime`, `Status`, `UserId`) VALUES
(1, 24, 3000, '2015-10-28 16:05:03', 2, 43);

-- --------------------------------------------------------

--
-- 表的结构 `attachment_protect`
--

CREATE TABLE `attachment_protect` (
  `Id` int(11) NOT NULL,
  `ObjectId` int(11) DEFAULT NULL,
  `ContractId` int(11) DEFAULT NULL,
  `Deadline` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- 转存表中的数据 `attachment_protect`
--

INSERT INTO `attachment_protect` (`Id`, `ObjectId`, `ContractId`, `Deadline`) VALUES
(16, 398, 89, '2015-09-02 19:10:23'),
(17, 408, 92, '2015-09-13 11:02:10'),
(18, 408, 96, '2015-11-05 11:12:12'),
(19, 703, 96, '2015-11-05 11:12:12'),
(20, 790, 94, '2015-11-10 11:31:58'),
(22, 399, 100, '2015-11-10 21:08:20'),
(23, 402, 101, '2015-11-11 21:33:03'),
(24, 703, 93, '2015-11-13 17:50:48'),
(25, 807, 104, '2016-03-24 11:50:48'),
(26, 904, 108, '2016-07-25 13:49:24'),
(27, 904, 112, '2016-10-27 17:18:21'),
(28, 905, 112, '2016-10-27 17:18:21');

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE `category` (
  `Id` bigint(20) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Level` int(11) DEFAULT NULL,
  `ParentId` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`Id`, `Name`, `Level`, `ParentId`) VALUES
(2, '宣传片', 1, NULL),
(18, '微电影', 1, NULL),
(31, '动画视频', 1, NULL),
(48, '活动视频', 1, NULL),
(56, '宣传', 2, 2),
(57, '广告', 2, 2),
(58, '企业微电影', 2, 18),
(59, '2D动漫', 2, 31),
(60, '3D动画', 2, 31);

-- --------------------------------------------------------

--
-- 表的结构 `collection_producer`
--

CREATE TABLE `collection_producer` (
  `Id` bigint(20) NOT NULL,
  `DomainId` bigint(20) NOT NULL,
  `UserId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `collection_producer`
--

INSERT INTO `collection_producer` (`Id`, `DomainId`, `UserId`) VALUES
(7, 18, 33),
(8, 18, 35),
(9, 18, 37),
(10, 21, 34),
(11, 21, 36),
(12, 18, 36),
(13, 25, 35),
(14, 24, 38);

-- --------------------------------------------------------

--
-- 表的结构 `collection_video`
--

CREATE TABLE `collection_video` (
  `Id` bigint(20) NOT NULL,
  `ZoneItemId` bigint(20) NOT NULL,
  `UserId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `comment_video`
--

CREATE TABLE `comment_video` (
  `Id` bigint(20) NOT NULL,
  `ObjectId` bigint(20) NOT NULL,
  `UserId` bigint(20) NOT NULL,
  `CreateTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `comment_video`
--

INSERT INTO `comment_video` (`Id`, `ObjectId`, `UserId`, `CreateTime`, `Content`) VALUES
(2, 394, 33, '2015-08-03 06:47:10', '还不错'),
(4, 399, 34, '2015-11-15 10:01:30', 'nice'),
(5, 395, 34, '2015-11-15 10:25:23', 'nice'),
(6, 473, 34, '2015-11-19 03:51:48', '啦啦'),
(7, 792, 37, '2015-11-19 06:14:41', '不错哈！'),
(8, 395, 37, '2015-12-16 01:31:51', '片子非常有美感'),
(9, 395, 37, '2015-12-16 01:32:08', '很不错'),
(10, 399, 37, '2015-12-21 14:28:13', '不错！'),
(11, 399, 37, '2015-12-21 14:31:15', '你好！'),
(12, 399, 37, '2015-12-23 01:31:46', '拍得很有气势'),
(13, 476, 37, '2016-01-01 04:23:38', '不错！'),
(14, 476, 37, '2016-01-01 04:24:05', '好看！'),
(15, 451, 34, '2016-01-01 04:56:56', 'nice'),
(16, 451, 34, '2016-01-01 04:57:02', 'good'),
(17, 451, 34, '2016-01-10 12:57:49', 'more'),
(18, 399, 91, '2016-10-26 04:48:56', '好'),
(19, 824, 75, '2016-10-31 09:00:26', '描述清晰，画面贴切'),
(20, 824, 75, '2016-10-31 09:20:43', '做得还是不错的！'),
(21, 824, 75, '2016-10-31 09:59:57', '我想着做一个'),
(22, 970, 37, '2016-12-23 09:24:37', '漂亮！'),
(23, 975, 37, '2016-12-23 12:15:30', '气势磅礴！');

--
-- 触发器 `comment_video`
--
DELIMITER $$
CREATE TRIGGER `cv_updateTime` BEFORE INSERT ON `comment_video` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `contract`
--

CREATE TABLE `contract` (
  `Id` bigint(20) NOT NULL,
  `RequirementId` bigint(20) NOT NULL,
  `Version` bigint(20) NOT NULL DEFAULT '0',
  `Title` varchar(255) NOT NULL,
  `Detail` text NOT NULL,
  `ServiceUserId` bigint(20) NOT NULL,
  `CustomerUserId` bigint(20) NOT NULL,
  `Status` bigint(20) NOT NULL,
  `Amount` float NOT NULL,
  `CreateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `PayState` int(11) DEFAULT '0',
  `Scheme` text,
  `Script` text,
  `DepositPercent` float(11,0) DEFAULT NULL,
  `Procedure` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `contract`
--

INSERT INTO `contract` (`Id`, `RequirementId`, `Version`, `Title`, `Detail`, `ServiceUserId`, `CustomerUserId`, `Status`, `Amount`, `CreateTime`, `PayState`, `Scheme`, `Script`, `DepositPercent`, `Procedure`) VALUES
(89, 64, 0, '新需求测试', '你在南方的艳阳里大雪纷飞我在北方的寒夜里四季如春如果天黑之前来得及我要忘了你的眼睛穷极一生做不完一场梦他不再和谁谈论相逢的孤岛因为心里早已荒芜人烟他的心里再装不下一个家做一个只对自己说谎的哑巴他说你任何为人称道的美丽不及他第一次遇见你时光苟延残喘无可奈何\n如果所有土地连在一起\n走上一生只为拥抱你\n喝醉了他的梦，晚安\n\n他听见有人唱着古老的歌唱着今天还在远方发生的\n像在她眼睛里看到的孤岛\n没有悲伤但也没有花朵\n你在南方的艳阳里大雪纷飞\n我在北方的寒夜里四季如春\n如果天黑之前来得及\n我要忘了你的眼睛\n穷极一生做不完一场梦\n你在南方的艳阳里大雪纷飞我在北方的寒夜里四季如春\n如果天黑之前来得及\n我要忘了你的眼睛\n穷极一生做不完一场梦\n大梦初醒荒唐了一生\n南山南，北秋悲南山有谷堆\n南风喃，北海北\n北海有墓碑\n南山南，北秋悲\n南山有谷堆\n南风喃，北海北北海有墓碑\n北海有墓碑', 35, 33, 2, 10, '2015-08-18 11:07:49', NULL, NULL, NULL, 50, 'active'),
(90, 66, 0, '汇腾宣传片', '如此如此', 35, 37, 2, 0.1, '2015-08-19 07:57:41', NULL, NULL, NULL, 50, 'active'),
(91, 72, 0, '超级蜂巢宣传片', '标签：宣传片 企业形象 庄重 时尚 唯美 ', 35, 37, 2, 50000, '2015-08-20 08:10:47', NULL, NULL, NULL, 50, 'active'),
(92, 79, 0, '测试-1', '标签：3D动画 建筑动画 华丽 时尚 唯美 ', 38, 34, 2, 11, '2015-08-29 03:00:54', NULL, NULL, NULL, 50, 'active'),
(93, 65, 0, '北京市宣传片', '如此', 38, 37, 2, 0, '2015-09-09 12:29:10', NULL, NULL, NULL, 50, 'active'),
(94, 83, 0, '宣传片', '体现出蒋氏正脊产生的背景、由来和特色', 43, 49, 2, 3000, '2015-09-09 12:34:57', NULL, NULL, NULL, 50, 'active'),
(96, 86, 0, '2015-10-21 DEMO', '描述如此。', 38, 37, 2, 66, '2015-10-21 02:41:40', NULL, NULL, NULL, 50, 'active'),
(100, 87, 0, 'DEMO10-26', '1.如此；\n2.如此；\n3.如此。', 35, 37, 2, 0.2, '2015-10-26 12:48:44', NULL, NULL, NULL, 50, 'active'),
(101, 85, 0, '中国好餐饮-发布会', '1.\n2.\n3.', 35, 37, 2, 0.1, '2015-10-27 13:04:36', NULL, NULL, NULL, 50, 'active'),
(102, 88, 0, 'demo-27', '如此。', 38, 37, 2, 0.1, '2015-10-29 10:44:53', NULL, NULL, NULL, 50, 'active'),
(104, 91, 0, '我要做三d动画', '恩，两分钟吧，关于游戏的广告，', 35, 37, 2, 0, '2016-03-09 03:36:24', NULL, NULL, NULL, 50, 'active'),
(105, 92, 0, '11', '1', 35, 37, 2, 0, '2016-03-14 03:38:38', NULL, NULL, NULL, 50, 'active'),
(108, 112, 0, 'test3', '新色彩', 38, 75, 2, 0.1, '2016-07-10 05:40:31', NULL, NULL, NULL, 50, 'active'),
(109, 140, 0, '需求测试20', '最好的视频', 38, 75, 2, 0, '2016-09-05 07:22:13', NULL, NULL, NULL, 50, 'active'),
(110, 114, 0, 'test723a', 'fgshgshg', 38, 75, 2, 1, '2016-09-05 07:30:00', NULL, NULL, NULL, 50, 'active'),
(112, 143, 0, '企业产品推广片', '推广企业产品，扩大知名度，', 38, 91, 2, 0.02, '2016-10-12 09:03:49', NULL, NULL, NULL, 50, 'active');

--
-- 触发器 `contract`
--
DELIMITER $$
CREATE TRIGGER `contract_updateTime` BEFORE INSERT ON `contract` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `contractattachment`
--

CREATE TABLE `contractattachment` (
  `Id` bigint(20) NOT NULL,
  `ContractId` bigint(20) NOT NULL,
  `ProviderUserId` bigint(20) NOT NULL,
  `ObjectId` bigint(20) NOT NULL,
  `CreateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Type` int(11) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `contractattachment`
--

INSERT INTO `contractattachment` (`Id`, `ContractId`, `ProviderUserId`, `ObjectId`, `CreateTime`, `Type`, `Status`) VALUES
(134, 89, 35, 398, '2015-08-18 11:09:22', 0, 1),
(142, 100, 35, 399, '2015-10-26 12:58:46', 0, 1),
(148, 90, 35, 395, '2015-11-03 13:06:49', 0, 0),
(149, 108, 38, 904, '2016-07-10 05:46:36', 0, 1),
(150, 112, 38, 904, '2016-10-12 09:09:43', 0, 1),
(151, 112, 38, 905, '2016-10-12 09:15:57', 0, 1),
(152, 102, 38, 904, '2016-10-25 05:54:21', 0, 0),
(153, 102, 38, 905, '2016-10-25 05:57:55', 0, 0),
(154, 105, 35, 395, '2016-11-17 03:53:37', 0, 0);

--
-- 触发器 `contractattachment`
--
DELIMITER $$
CREATE TRIGGER `ca_updateTime` BEFORE INSERT ON `contractattachment` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `contractclips`
--

CREATE TABLE `contractclips` (
  `Id` bigint(20) NOT NULL,
  `Version` bigint(20) NOT NULL,
  `ContractId` bigint(20) NOT NULL,
  `Detail` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `contractclipshistory`
--

CREATE TABLE `contractclipshistory` (
  `Id` bigint(20) NOT NULL,
  `ContractId` bigint(20) NOT NULL,
  `ContractClipsId` bigint(20) NOT NULL,
  `Version` bigint(20) NOT NULL,
  `Detail` text,
  `RejectReason` varchar(1024) DEFAULT NULL,
  `RejectTime` datetime DEFAULT NULL,
  `ApplyRemark` varchar(1024) DEFAULT NULL,
  `ApplyTime` datetime DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 触发器 `contractclipshistory`
--
DELIMITER $$
CREATE TRIGGER `cch_updateTime` BEFORE INSERT ON `contractclipshistory` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `contracteventlog`
--

CREATE TABLE `contracteventlog` (
  `Id` bigint(20) NOT NULL,
  `ContractId` bigint(20) NOT NULL,
  `UserId` bigint(20) NOT NULL,
  `Action` bigint(20) DEFAULT NULL,
  `Segment` bigint(20) DEFAULT NULL,
  `Detail` text NOT NULL,
  `CreateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `contracteventlog`
--

INSERT INTO `contracteventlog` (`Id`, `ContractId`, `UserId`, `Action`, `Segment`, `Detail`, `CreateTime`) VALUES
(472, 89, 35, 1, 3, '制作商\"剪片子官方自营制作商\"发起了针对合同\"新需求测试\"的审核申请确认', '2015-08-18 11:09:38'),
(473, 89, 33, 2, 3, '用户\"529450714@qq.com\"驳回了您针对合同\"新需求测试\"的申请确认行为，理由为：\"环节驳回\"', '2015-08-18 11:09:54'),
(474, 89, 35, 1, 3, '制作商\"剪片子官方自营制作商\"发起了针对合同\"新需求测试\"的审核申请确认', '2015-08-18 11:10:12'),
(475, 89, 33, 2, 3, '用户\"529450714@qq.com\"通过了您针对合同\"新需求测试\"的申请确认行为，备注信息：\"环节通过\"', '2015-08-18 11:10:23'),
(476, 92, 38, 1, 3, '制作商\"汇腾视频制作公司\"发起了针对合同\"测试-1\"的审核申请确认', '2015-08-29 03:02:01'),
(477, 92, 34, 2, 3, '用户\"erikaq@126.com\"通过了您针对合同\"测试-1\"的申请确认行为，备注信息：\"环节通过\"', '2015-08-29 03:02:10'),
(478, 96, 38, 1, 3, '制作商\"汇腾视频制作公司\"发起了针对合同\"2015-10-21 DEMO\"的审核申请确认', '2015-10-21 03:05:54'),
(479, 96, 37, 2, 3, '用户\"rick_zhang@126.com\"通过了您针对合同\"2015-10-21 DEMO\"的申请确认行为，备注信息：\"环节通过\"', '2015-10-21 03:12:12'),
(480, 94, 43, 1, 3, '制作商\"visual rage\"发起了针对合同\"宣传片\"的审核申请确认', '2015-10-26 02:34:48'),
(481, 94, 49, 2, 3, '用户\"xgq\"通过了您针对合同\"宣传片\"的申请确认行为，备注信息：\"环节通过\"', '2015-10-26 03:31:58'),
(482, 100, 35, 1, 3, '制作商\"剪片网官方自营制作商\"发起了针对合同\"DEMO10-26\"的审核申请确认', '2015-10-26 13:06:00'),
(483, 100, 37, 2, 3, '用户\"rick_zhang@126.com\"通过了您针对合同\"DEMO10-26\"的申请确认行为，备注信息：\"环节通过\"', '2015-10-26 13:06:33'),
(484, 100, 37, 2, 3, '用户\"rick_zhang@126.com\"反悔了\"DEMO10-26\"的支付尾款要求，项目回退到审片环节', '2015-10-26 13:06:41'),
(485, 100, 35, 1, 3, '制作商\"剪片网官方自营制作商\"发起了针对合同\"DEMO10-26\"的审核申请确认', '2015-10-26 13:07:45'),
(486, 100, 37, 2, 3, '用户\"rick_zhang@126.com\"通过了您针对合同\"DEMO10-26\"的申请确认行为，备注信息：\"环节通过\"', '2015-10-26 13:08:20'),
(487, 101, 35, 1, 3, '制作商\"剪片网官方自营制作商\"发起了针对合同\"中国好餐饮-发布会\"的审核申请确认', '2015-10-27 13:27:55'),
(488, 101, 37, 2, 3, '用户\"rick_zhang@126.com\"通过了您针对合同\"中国好餐饮-发布会\"的申请确认行为，备注信息：\"环节通过\"', '2015-10-27 13:33:03'),
(489, 93, 38, 1, 3, '制作商\"汇腾视频制作公司\"发起了针对合同\"北京市宣传片\"的审核申请确认', '2015-10-29 09:49:57'),
(490, 93, 37, 2, 3, '用户\"rick_zhang@126.com\"通过了您针对合同\"北京市宣传片\"的申请确认行为，备注信息：\"环节通过\"', '2015-10-29 09:50:48'),
(491, 90, 35, 1, 3, '制作商\"剪片网官方自营制作商\"发起了针对合同\"汇腾宣传片\"的审核申请确认', '2015-11-03 13:06:52'),
(492, 90, 37, 2, 3, '用户\"rick_zhang@126.com\"驳回了您针对合同\"汇腾宣传片\"的申请确认行为，理由为：\"环节驳回\"', '2015-11-03 14:17:15'),
(493, 90, 35, 1, 3, '制作商\"剪片网官方自营制作商\"发起了针对合同\"汇腾宣传片\"的审核申请确认', '2015-11-03 14:19:21'),
(494, 90, 37, 2, 3, '用户\"rick_zhang@126.com\"驳回了您针对合同\"汇腾宣传片\"的申请确认行为，理由为：\"环节驳回\"', '2015-11-05 12:47:21'),
(495, 104, 35, 1, 3, '制作商\"汇腾宣传片制作团队\"发起了针对合同\"我要做三d动画\"的审核申请确认', '2016-03-09 03:47:19'),
(496, 104, 37, 2, 3, '用户\"rick_zhang@126.com\"通过了您针对合同\"我要做三d动画\"的申请确认行为，备注信息：\"环节通过\"', '2016-03-09 03:50:48'),
(497, 105, 35, 1, 3, '制作商\"汇腾宣传片制作团队\"发起了针对合同\"11\"的审核申请确认', '2016-03-14 09:33:10'),
(498, 105, 37, 2, 3, '用户\"rick_zhang@126.com\"驳回了您针对合同\"11\"的申请确认行为，理由为：\"环节驳回\"', '2016-03-14 09:38:19'),
(499, 105, 35, 1, 3, '制作商\"汇腾宣传片制作团队\"发起了针对合同\"11\"的审核申请确认', '2016-03-14 09:40:29'),
(500, 108, 38, 1, 3, '制作商\"联盟微电影制作团队\"发起了针对合同\"test3\"的审核申请确认', '2016-07-10 05:48:31'),
(501, 108, 75, 2, 3, '用户\"test2@ht.com\"通过了您针对合同\"test3\"的申请确认行为，备注信息：\"环节通过\"', '2016-07-10 05:49:23'),
(502, 109, 38, 1, 3, '制作商\"联盟微电影制作团队\"发起了针对合同\"需求测试20\"的审核申请确认', '2016-10-12 06:03:34'),
(503, 112, 38, 1, 3, '制作商\"联盟微电影制作团队\"发起了针对合同\"企业产品推广片\"的审核申请确认', '2016-10-12 09:17:18'),
(504, 112, 91, 2, 3, '用户\"461654008@qq.com\"驳回了您针对合同\"企业产品推广片\"的申请确认行为，理由为：\"环节驳回\"', '2016-10-12 09:17:41'),
(505, 112, 38, 1, 3, '制作商\"联盟微电影制作团队\"发起了针对合同\"企业产品推广片\"的审核申请确认', '2016-10-12 09:18:09'),
(506, 112, 91, 2, 3, '用户\"461654008@qq.com\"通过了您针对合同\"企业产品推广片\"的申请确认行为，备注信息：\"环节通过\"', '2016-10-12 09:18:21'),
(507, 105, 37, 2, 3, '用户\"rick_zhang@126.com\"驳回了您针对合同\"11\"的申请确认行为，理由为：\"环节驳回\"', '2016-11-17 03:51:31');

--
-- 触发器 `contracteventlog`
--
DELIMITER $$
CREATE TRIGGER `contractEvn_updateTime` BEFORE INSERT ON `contracteventlog` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();	
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `contracthistory`
--

CREATE TABLE `contracthistory` (
  `Id` bigint(20) NOT NULL,
  `Version` bigint(20) NOT NULL,
  `ContractId` bigint(20) NOT NULL,
  `RejectReason` varchar(1024) DEFAULT NULL,
  `RejectTime` datetime DEFAULT NULL,
  `ApplyRemark` varchar(1024) DEFAULT NULL,
  `ApplyTime` datetime DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Detail` text,
  `ModifyPerson` varchar(255) DEFAULT NULL,
  `Scheme` text,
  `Script` text,
  `DepositPercent` float(11,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 触发器 `contracthistory`
--
DELIMITER $$
CREATE TRIGGER `contractHistory_updateTime` BEFORE INSERT ON `contracthistory` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `contractreply`
--

CREATE TABLE `contractreply` (
  `Id` bigint(20) NOT NULL,
  `ContractId` bigint(20) NOT NULL,
  `PublisherId` bigint(20) NOT NULL,
  `Reply` text NOT NULL,
  `CreateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` bigint(20) NOT NULL,
  `DestUserId` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 触发器 `contractreply`
--
DELIMITER $$
CREATE TRIGGER `cr_updateTime` BEFORE INSERT ON `contractreply` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `contractsegment`
--

CREATE TABLE `contractsegment` (
  `Id` bigint(20) NOT NULL,
  `ContractId` bigint(20) NOT NULL,
  `Segment` bigint(20) NOT NULL,
  `Deadline` datetime NOT NULL,
  `Remark` varchar(2000) DEFAULT NULL,
  `ApplyUserId` bigint(20) DEFAULT NULL,
  `ApplyTime` datetime DEFAULT NULL,
  `ApplyRemark` varchar(2000) DEFAULT NULL,
  `ConfirmUserId` bigint(20) DEFAULT NULL,
  `ConfirmTime` datetime DEFAULT NULL,
  `ConfirmRemark` varchar(2000) DEFAULT NULL,
  `Status` bigint(20) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ServiceResponser` bigint(20) DEFAULT NULL,
  `CustomerResponser` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 触发器 `contractsegment`
--
DELIMITER $$
CREATE TRIGGER `contractSeg_updateTime` BEFORE INSERT ON `contractsegment` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `contractSegmentLog`
--

CREATE TABLE `contractSegmentLog` (
  `Id` bigint(20) NOT NULL,
  `ContractId` bigint(20) NOT NULL,
  `SegmentId` bigint(20) NOT NULL,
  `RejectRemark` varchar(1024) DEFAULT NULL,
  `RejectTime` datetime DEFAULT NULL,
  `ApplyRemark` varchar(1024) DEFAULT NULL,
  `ApplyTime` datetime DEFAULT NULL,
  `bConfirm` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `contractusergroup`
--

CREATE TABLE `contractusergroup` (
  `Id` bigint(20) NOT NULL,
  `ContractId` bigint(20) NOT NULL,
  `UserId` bigint(20) NOT NULL,
  `DomainId` bigint(20) NOT NULL,
  `CreateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `contractusergroup`
--

INSERT INTO `contractusergroup` (`Id`, `ContractId`, `UserId`, `DomainId`, `CreateTime`, `Description`) VALUES
(117, 89, 35, 18, '2015-08-18 11:07:49', '需求申请者'),
(118, 89, 33, 16, '2015-08-18 11:07:49', '合同建立者'),
(119, 90, 35, 18, '2015-08-19 07:57:41', '需求申请者'),
(120, 90, 37, 20, '2015-08-19 07:57:41', '合同建立者'),
(121, 91, 35, 18, '2015-08-20 08:10:47', '需求申请者'),
(122, 91, 37, 20, '2015-08-20 08:10:47', '合同建立者'),
(123, 92, 38, 21, '2015-08-29 03:00:54', '需求申请者'),
(124, 92, 34, 17, '2015-08-29 03:00:54', '合同建立者'),
(125, 93, 38, 21, '2015-09-09 12:29:10', '需求申请者'),
(126, 93, 37, 20, '2015-09-09 12:29:10', '合同建立者'),
(127, 94, 43, 24, '2015-09-09 12:34:57', '需求申请者'),
(128, 94, 49, 29, '2015-09-09 12:34:57', '合同建立者'),
(131, 96, 38, 21, '2015-10-21 02:41:40', '需求申请者'),
(132, 96, 37, 20, '2015-10-21 02:41:40', '合同建立者'),
(139, 100, 35, 18, '2015-10-26 12:48:44', '需求申请者'),
(140, 100, 37, 20, '2015-10-26 12:48:44', '合同建立者'),
(141, 101, 35, 18, '2015-10-27 13:04:36', '需求申请者'),
(142, 101, 37, 20, '2015-10-27 13:04:36', '合同建立者'),
(143, 102, 38, 21, '2015-10-29 10:44:53', '需求申请者'),
(144, 102, 37, 20, '2015-10-29 10:44:53', '合同建立者'),
(147, 104, 35, 18, '2016-03-09 03:36:24', '需求申请者'),
(148, 104, 37, 20, '2016-03-09 03:36:24', '合同建立者'),
(149, 105, 35, 18, '2016-03-14 03:38:38', '需求申请者'),
(150, 105, 37, 20, '2016-03-14 03:38:38', '合同建立者'),
(155, 108, 38, 21, '2016-07-10 05:40:31', '需求申请者'),
(156, 108, 75, 54, '2016-07-10 05:40:31', '合同建立者'),
(157, 109, 38, 21, '2016-09-05 07:22:13', '需求申请者'),
(158, 109, 75, 54, '2016-09-05 07:22:13', '合同建立者'),
(159, 110, 38, 21, '2016-09-05 07:30:00', '需求申请者'),
(160, 110, 75, 54, '2016-09-05 07:30:00', '合同建立者'),
(163, 112, 38, 21, '2016-10-12 09:03:49', '需求申请者'),
(164, 112, 91, 69, '2016-10-12 09:03:49', '合同建立者');

--
-- 触发器 `contractusergroup`
--
DELIMITER $$
CREATE TRIGGER `cug_updateTime` BEFORE INSERT ON `contractusergroup` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `contract_abort_record`
--

CREATE TABLE `contract_abort_record` (
  `ContractId` bigint(20) NOT NULL,
  `ApplyRemark` varchar(255) DEFAULT NULL,
  `ConfirmRemark` varchar(255) DEFAULT NULL,
  `ApplyUserId` bigint(20) NOT NULL,
  `ApplyTime` datetime DEFAULT NULL,
  `ConfirmTime` datetime DEFAULT NULL,
  `ApplyDomainId` bigint(20) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `contract_log_notify`
--

CREATE TABLE `contract_log_notify` (
  `Id` bigint(20) NOT NULL,
  `LogId` bigint(20) NOT NULL,
  `DomainId` bigint(20) NOT NULL,
  `UserId` bigint(20) DEFAULT NULL,
  `ContractId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `contract_order`
--

CREATE TABLE `contract_order` (
  `Id` bigint(20) NOT NULL,
  `ContractId` bigint(20) NOT NULL,
  `OrderId` bigint(20) NOT NULL,
  `OrderType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `contract_order`
--

INSERT INTO `contract_order` (`Id`, `ContractId`, `OrderId`, `OrderType`) VALUES
(40, 89, 73, 0),
(41, 89, 74, 1),
(42, 90, 75, 0),
(43, 91, 76, 0),
(44, 92, 77, 0),
(45, 92, 78, 1),
(46, 93, 79, 0),
(47, 94, 80, 0),
(49, 96, 82, 0),
(54, 96, 87, 1),
(55, 94, 88, 1),
(59, 100, 92, 0),
(61, 100, 94, 1),
(62, 101, 95, 0),
(63, 101, 96, 1),
(64, 93, 97, 1),
(65, 102, 98, 0),
(67, 104, 101, 0),
(68, 104, 102, 1),
(69, 105, 103, 0),
(72, 108, 124, 0),
(73, 108, 125, 1),
(74, 109, 126, 0),
(75, 110, 127, 0),
(77, 112, 129, 0),
(78, 112, 130, 1);

-- --------------------------------------------------------

--
-- 表的结构 `domain`
--

CREATE TABLE `domain` (
  `Id` bigint(20) NOT NULL,
  `DomainName` varchar(255) NOT NULL,
  `OwnerUserId` bigint(20) NOT NULL,
  `ExpireTime` datetime NOT NULL,
  `CreateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Alipay` varchar(50) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `ShowType` int(2) NOT NULL DEFAULT '1',
  `CompanyName` varchar(255) DEFAULT NULL,
  `CompanyAddr` varchar(1024) DEFAULT NULL,
  `CompanyLicense` varchar(50) DEFAULT NULL,
  `CompanyPhone` varchar(15) DEFAULT NULL,
  `CompanyCelPhone` varchar(15) DEFAULT NULL,
  `CompanyFax` varchar(20) DEFAULT NULL,
  `CompanyEmail` varchar(100) DEFAULT NULL,
  `CompanyLicAttachment` varchar(255) DEFAULT NULL,
  `IsService` bit(1) DEFAULT NULL,
  `UsedSize` bigint(20) NOT NULL DEFAULT '0',
  `Intro` varchar(1024) DEFAULT NULL,
  `StarLevel` int(11) DEFAULT NULL,
  `ZoneName` varchar(255) DEFAULT NULL,
  `Focus` int(11) DEFAULT NULL,
  `Level` int(11) DEFAULT NULL,
  `Work` int(11) DEFAULT NULL,
  `Trade` int(11) DEFAULT NULL,
  `Count` float DEFAULT NULL,
  `DefaultStorageSize` bigint(20) NOT NULL,
  `ExtendStorageSize` bigint(20) NOT NULL DEFAULT '0',
  `ESExpireTime` datetime DEFAULT NULL,
  `MembershipTax` bigint(20) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Portrait` varchar(255) DEFAULT NULL,
  `Weight` float DEFAULT NULL,
  `ZoneBanner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `domain`
--

INSERT INTO `domain` (`Id`, `DomainName`, `OwnerUserId`, `ExpireTime`, `CreateTime`, `Alipay`, `Status`, `ShowType`, `CompanyName`, `CompanyAddr`, `CompanyLicense`, `CompanyPhone`, `CompanyCelPhone`, `CompanyFax`, `CompanyEmail`, `CompanyLicAttachment`, `IsService`, `UsedSize`, `Intro`, `StarLevel`, `ZoneName`, `Focus`, `Level`, `Work`, `Trade`, `Count`, `DefaultStorageSize`, `ExtendStorageSize`, `ESExpireTime`, `MembershipTax`, `Price`, `Portrait`, `Weight`, `ZoneBanner`) VALUES
(16, '哈哈哈', 33, '2015-07-31 15:38:31', '2016-11-25 02:52:01', NULL, 2, 0, '529450714@qq.com', '北京市海淀区', NULL, '18811437396', 'lqs ', 'jianpianzi.com', '529450714', NULL, b'0', 3686251, '那样的唱着那一年的歌\n那样的回忆那么足够\n足够我天天都品尝着寂寞\n当一阵风吹来风筝飞上天空\n为了你而祈祷而祝福 而感动\n终于你身影消失在人海尽头\n才发现笑着哭最痛\n当一阵风吹来风筝飞上天空\n为了你而祈祷而祝福 而感动\n终于你身影消失在人海尽头\n才发现笑着哭最痛wo…\n如果我爱上你的笑容', NULL, NULL, 0, NULL, NULL, 0, 9990, 1073741824, 0, '2015-07-31 15:38:31', NULL, 0, '/fileFolders/userPortrait/15-09/67a34df5-d54f-4e7c-b116-13e7cc047bdc.png', 0, '/fileFolders/zonePic/15-09/64504d6c-21ea-45a5-b34d-1d1939d89128.png'),
(17, 'erikaq@126.com\'s family', 34, '2015-07-31 15:38:55', '2016-11-25 04:15:54', NULL, 0, 0, 'erikaq@126.com', NULL, NULL, NULL, '', NULL, NULL, NULL, b'0', 370907182, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2015-07-31 15:38:55', NULL, 0, '/fileFolders/userPortrait/0a3dcfba-7f98-4dd8-ad9b-c856ed8ca4cf.png', 0, '/fileFolders/zonePic/15-10/648adfa8-d3e4-4754-aefe-82b370762993.png'),
(18, '宣传片制作组', 35, '2020-07-31 16:00:21', '2016-12-20 10:30:03', NULL, 2, 2, '宣传片制作组', '北京市朝阳区北花园乐栋300小区A座202室', '', '18611828618', '张洪', 'www.jianpianzi.com', 'jianpianzi@126.com', NULL, b'1', 1364760956, '商影联盟制作团队具有丰富的影视宣传片策划、拍摄和制作经验，拥有国内资深的制作人员和先进的拍摄仪器，为用户提供极具创意和美感的宣传片，给用户带来巨大宣传推广价值。', NULL, NULL, 4, NULL, NULL, 18, -39243.2, 1073741824, 10737418240, '2016-06-05 16:00:21', NULL, -1, '/fileFolders/userPortrait/16-11/f9ae1f1f-9262-4a69-8824-a69d763ffd4f.png', 0, '/fileFolders/zonePic/16-11/f243f681-ee6b-45ac-a3ed-b62e5241617e.png'),
(19, '897245916@qq.com\'s family', 36, '2015-08-01 09:38:35', '2016-11-25 02:58:18', NULL, 0, 0, '897245916@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 'jjjjjjjjjjjjjjjj', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2015-08-01 09:38:35', NULL, 0, '/image/contacts.png', 0, NULL),
(20, 'zhanghong', 37, '2015-08-01 09:57:21', '2016-12-31 07:23:33', NULL, 2, 0, '拼搏中的制片人', '', '', '', '', '', '', NULL, b'0', 349219114, '相信奋斗可以创造成就！', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2015-08-01 09:57:21', NULL, 0, 'http://123.57.157.64:8080/tmpfiles/01151150487.jpg', 0, NULL),
(21, '微电影制作组', 38, '2020-08-04 09:58:21', '2017-01-02 15:42:29', NULL, 2, 2, '微电影制作组', '北京市朝阳区乐栋300小区A座202室', '', '18611828618', '85385138', 'www.jianpianzi.com', 'huiteng@126.com', NULL, b'1', 855031969, '商影联盟微电影制作团队拥有央视著名导演及其制作团队，从剧本到拍摄再到影片完成，每一步我们都精益求精，为用户提供品质一流的视觉盛宴。', NULL, NULL, 2, NULL, NULL, 3, 76.32, 2147483648, 0, '2020-08-04 09:58:21', NULL, -1, '/fileFolders/userPortrait/16-11/29043747-4348-4e30-98b8-d80c27cf7048.png', 0, '/fileFolders/zonePic/16-11/0dda20c2-2152-4ee3-b948-257180e1f0f7.png'),
(22, '4223665@qq.com\'s family', 39, '2015-08-05 08:39:04', '2016-11-25 02:56:47', NULL, 0, 0, '4223665@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', 58430679, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2015-08-05 08:39:04', NULL, 0, '/image/contacts.png', 0, NULL),
(23, '20345797@qq.com\'s family', 41, '2015-08-08 10:16:46', '2016-11-25 02:57:04', NULL, 0, 0, '20345797@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2015-08-08 10:16:46', NULL, 0, '/image/contacts.png', 0, NULL),
(24, '动画制作组', 43, '2016-08-04 00:00:00', '2016-12-19 14:08:22', '18910698677', 2, 2, '动画制作组', '北京市朝阳区北花园街甲1号院乐栋300A座202室', NULL, '18611828618', '张洪', 'www.jianpianzi.com', 'jianpianzi@126.com', NULL, b'1', 1012864933, '商影联盟动画制作团队是拥有国内顶尖动画2D和3D建模经验人员的团队，不仅为用户提供优质的动画视频制作服务，更为用户带来极致的商业价值和宣传效应。', NULL, NULL, 1, NULL, NULL, 1, 3000, 1073741824, 0, '2015-08-10 14:07:59', NULL, -1, '/fileFolders/userPortrait/16-11/b5538820-56fe-4b07-84cc-f64428d041b0.png', 0, '/fileFolders/zonePic/16-11/aba4d6f4-242b-4413-a6b0-e65cb1d3aa6f.png'),
(25, '梦心缘工作室\'s family', 44, '2016-02-09 00:00:00', '2016-03-30 01:46:22', NULL, 1, 0, '梦心缘工作室', '', '', '', '12345678', '', '', NULL, b'1', 191994231, '梦心缘工作室专业制作，婚礼视频，宣传视频，表白视频，毕业纪念，个人宣传，游戏宣传等视频，以顾客满意为宗旨！让您的视频代表你的心！', NULL, NULL, 1, NULL, NULL, 0, 0, 1073741824, 0, '2015-08-13 18:29:03', NULL, 0, 'http://123.57.157.64:8080/tmpfiles/13184543832.jpg', 0, 'http://123.57.157.64:8080/tmpfiles/14114116111.jpg'),
(26, 'Helios\' family', 45, '2015-08-20 13:44:46', '2016-11-25 04:50:37', NULL, 2, 0, '313536715@qq.com', '', '', '', '', '', '', NULL, b'0', 23948658, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2015-08-20 13:44:46', NULL, 0, '/image/contacts.png', 0, NULL),
(27, '462264505@qq.com\'s family', 46, '2015-08-22 11:58:33', '2016-11-25 02:55:19', NULL, 0, 0, '462264505@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', 31677951, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2015-08-22 11:58:33', NULL, 0, '/image/contacts.png', 0, NULL),
(28, 'qingsangao', 47, '2015-08-25 22:37:18', '2016-11-25 05:59:30', NULL, 2, 1, '清三高花茶饼', '浙江省绍兴市越城区平江路190号', NULL, '13205858386', '', '', '1048014094@qq.com', NULL, b'0', 51650, '我国“医食同源”养生文化已有三千多年，据《周礼*矢官*疾医》记载：“以五味、五谷、五药养其病。”清三高花茶饼以黑木耳、玉米粉、雪菊、苦荞、山药等食材，由香港医药集团高血脂（高血压）高血糖三高症研究有限公司研制的专业为电商、连锁药店等OEM、贴牌代加工的饼干。 ', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2015-08-25 22:37:18', NULL, 0, '/fileFolders/userPortrait/16-11/fff3825d-015f-40e4-9f61-ec6995be6d1e.png', 0, NULL),
(29, '正脊和堂', 48, '2015-09-01 15:06:03', '2016-11-25 05:56:59', NULL, 2, 1, '正脊和堂', '北京市朝阳区高碑店乡盛世龙源文化创意园A座605室', NULL, '4001141877', '', '', 'jiangxuechao@sina.cn ', NULL, b'0', 65730302, '北京正脊和堂脊柱健康管理中心，以己之诚，换彼之信，十年来，我们专注国人健康，让龙的传人挺起脊梁', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2015-09-01 15:06:03', NULL, 0, '/fileFolders/userPortrait/16-11/1dba1c4e-26de-4066-8a80-f99a6ce14b0d.png', 0, '/fileFolders/zonePic/15-09/bcee175e-9ad9-4e50-9799-2eddf8b3e35b.png'),
(31, '597626879@qq.com\'s family', 51, '2015-09-07 21:38:28', '2016-11-25 02:54:16', NULL, 0, 0, '597626879@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2015-09-07 21:38:28', NULL, 0, '/image/contacts.png', 0, NULL),
(32, '青崧兄弟', 52, '2015-09-07 22:27:04', '2016-11-25 05:53:03', NULL, 2, 1, '青崧兄弟手工定制眼镜', '北京市朝阳区东大桥8号SOHO尚都西塔1427厅', NULL, '18601220822', '刘承禹', 'www.lyybros.com', 'hi@lyybros.com', NULL, b'0', 0, '青崧兄弟  --  舒适的艺术，中国唯一手工定制眼镜品牌。', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2015-09-07 22:27:04', NULL, 0, '/fileFolders/userPortrait/16-11/b1d50e1d-b7ec-4628-bb77-b09a912a8e82.png', 0, NULL),
(33, '活动拍摄组', 53, '2016-03-11 00:00:00', '2016-12-19 05:52:34', NULL, 2, 2, '活动拍摄组', '北京市朝阳区三间房街道乐栋300小区A座202室', NULL, '18611828618', '张洪', 'www.jianpianzi.com', 'jianpianzi@126.com', NULL, b'1', 554475251, '商影联盟活动视频拍摄团队拥有众多国内一流名校毕业的专业摄影师团队，为客户提供量身定制活动视频拍摄方案，给用户带来深远的宣传影响。', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2015-09-13 11:20:59', NULL, -1, '/fileFolders/userPortrait/16-11/085f3be5-7397-40c2-b027-ad631a7e5a8a.png', 0, '/fileFolders/zonePic/16-11/0f6d8c4a-1142-43bc-8c10-7c3f358338f4.png'),
(37, 'lxq@ht.com\'s family', 57, '2015-10-16 09:11:20', '2016-11-25 02:57:41', NULL, 0, 0, 'lxq@ht.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2015-10-16 09:11:20', NULL, 0, '/image/contacts.png', 0, NULL),
(38, 'zhuangw123@qq.com\'s family', 58, '2015-11-20 13:08:30', '2016-11-25 02:58:02', NULL, 0, 0, 'zhuangw123@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2015-11-20 13:08:30', NULL, 0, '/image/contacts.png', 0, NULL),
(39, '2395402079@qq.com\'s family', 59, '2015-11-20 13:23:54', '2016-11-25 02:58:59', NULL, 0, 0, '2395402079@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2015-11-20 13:23:54', NULL, 0, '/image/contacts.png', 0, NULL),
(40, '406763092@qq.com\'s family', 60, '2015-12-02 11:50:19', '2016-11-25 02:59:17', NULL, 0, 0, '406763092@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2015-12-02 11:50:19', NULL, 0, '/image/contacts.png', 0, NULL),
(41, 'test', 62, '2016-01-02 11:45:52', '2016-11-25 04:51:21', NULL, 2, 0, '3408225816@qq.com', NULL, NULL, NULL, 'testa', NULL, NULL, NULL, b'0', 6290887, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2016-01-02 11:45:52', NULL, 0, '/image/contacts.png', 0, NULL),
(42, '迈纳士', 63, '2016-01-04 11:06:12', '2016-11-25 05:52:20', NULL, 2, 1, '北京迈纳士手术机器人技术股份有限公司', '', NULL, '', '刘子忠', '', '', NULL, b'0', 158428682, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2016-01-04 11:06:12', NULL, 0, '/fileFolders/userPortrait/16-11/6331d0d9-5846-4b42-b8f0-75ad47e78fb3.png', 0, NULL),
(43, 'sifenke', 64, '2016-01-04 11:44:52', '2016-11-25 05:58:18', NULL, 2, 1, '斯芬克教育有限公司', '', NULL, '', '王洋', '', '', NULL, b'0', 0, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2016-01-04 11:44:52', NULL, 0, '/fileFolders/userPortrait/16-11/0f1a5e7e-a10d-4b1c-aa10-0b9d5d9fde89.png', 0, NULL),
(44, '长寿方舟', 65, '2016-01-04 12:00:42', '2016-11-25 03:04:05', NULL, 2, 1, '长寿方舟健康管理公司', '', NULL, '', '肖海东', '', '', NULL, b'0', 0, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2016-01-04 12:00:42', NULL, 0, '/fileFolders/userPortrait/16-01/3bed99d2-b4f2-44d9-9d81-7b41c8197936.png', 0, NULL),
(45, 'lijingjie_51@163.com\'s', 66, '2016-04-10 11:38:05', '2016-07-10 14:26:26', NULL, 0, 0, 'lijingjie_51@163.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', 204738806, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2016-04-10 11:38:05', NULL, 0, '/image/contacts.png', 0, NULL),
(46, 'lijingjiehe@163.com\'s', 67, '2016-04-10 15:18:32', '2016-12-17 08:57:44', NULL, 0, 0, 'lijingjiehe@163.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', 65205208, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2016-04-10 15:18:32', NULL, 0, '/image/contacts.png', 0, NULL),
(47, '470429699@QQ.com\'s', 68, '2016-04-12 00:51:34', '2016-07-10 14:26:27', NULL, 0, 0, '470429699@QQ.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2016-04-12 00:51:34', NULL, 0, '/image/contacts.png', 0, NULL),
(48, 'test1@ht.com\'s', 69, '2016-05-07 23:04:36', '2016-07-10 14:26:28', NULL, 0, 0, 'test1@ht.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2016-05-07 23:04:36', NULL, 0, '/image/contacts.png', 0, NULL),
(54, 'test2@ht.com\'s', 75, '2016-07-10 10:03:23', '2016-12-14 01:33:59', NULL, 0, 0, 'test2@ht.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', 22012, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2016-07-10 10:03:23', NULL, 0, '/image/contacts.png', 0, NULL),
(67, '3249568058@qq.com\'s', 89, '2016-08-11 15:51:06', '2016-08-11 07:51:06', NULL, 0, 0, '3249568058@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2016-08-11 15:51:06', NULL, 0, '/image/contacts.png', 0, NULL),
(68, 'zhangbo@sobey.com\'s', 90, '2016-09-13 10:25:07', '2016-09-13 02:25:06', NULL, 0, 0, 'zhangbo@sobey.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2016-09-13 10:25:07', NULL, 0, '/image/contacts.png', 0, NULL),
(69, '461654008@qq.com\'s', 91, '2016-10-11 17:14:29', '2016-10-11 09:14:29', NULL, 0, 0, '461654008@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2016-10-11 17:14:29', NULL, 0, '/image/contacts.png', 0, NULL),
(70, '马驹桥镇中心小学', 92, '2016-11-24 15:41:23', '2016-11-25 05:44:47', NULL, 2, 1, '马驹桥镇中心小学', '', NULL, '', '张老师', '', '', NULL, b'0', 0, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2016-11-24 15:41:23', NULL, 0, '/fileFolders/userPortrait/16-11/f2c9493c-d54e-4985-83ea-a4ac8e0ba84c.png', 0, NULL),
(71, '华为', 93, '2016-11-24 15:54:16', '2016-11-25 05:43:48', NULL, 2, 2, '华为', '', NULL, '', '赵先生', '', '', NULL, b'0', 0, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2016-11-24 15:54:16', NULL, 0, '/fileFolders/userPortrait/16-11/3f5c15a3-f829-4df4-b95b-74cade7a1f8b.png', 0, NULL),
(72, '工商银行', 94, '2016-11-24 15:59:11', '2016-11-25 05:43:21', NULL, 2, 2, '工商银行', '', NULL, '', '李先生', '', '', NULL, b'0', 0, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2016-11-24 15:59:11', NULL, 0, '/fileFolders/userPortrait/16-11/b6c3d620-d969-4bb3-8aa1-765e9c98b3b1.png', 0, NULL),
(73, '中粮集团', 95, '2016-11-24 16:05:56', '2016-11-25 05:42:54', NULL, 2, 2, '中粮集团', '', NULL, '', '张先生', '', '', NULL, b'0', 0, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2016-11-24 16:05:56', NULL, 0, '/fileFolders/userPortrait/16-11/4ebd4fd7-913c-4adc-801a-baa87fddf39f.png', 0, NULL),
(74, '58金融', 96, '2016-11-24 16:12:23', '2016-11-25 05:42:29', NULL, 2, 2, '58金融', '', NULL, '', '刘先生', '', '', NULL, b'0', 0, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2016-11-24 16:12:23', NULL, 0, '/fileFolders/userPortrait/16-11/3938a1fd-2b13-4117-bc27-d2e793a7a5b3.png', 0, NULL),
(75, '牛栏山', 97, '2016-11-24 16:23:17', '2016-11-25 05:41:42', NULL, 2, 2, '牛栏山', '', NULL, '', '王先生', '', '', NULL, b'0', 0, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2016-11-24 16:23:17', NULL, 0, '/fileFolders/userPortrait/16-11/df9d0491-656d-40ae-b936-4959993d6dea.png', 0, NULL),
(76, '1848945126@qq.com\'s', 98, '2016-11-25 16:30:47', '2016-11-25 08:30:47', NULL, 0, 0, '1848945126@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 'intro', NULL, NULL, 0, NULL, NULL, 0, 0, 1073741824, 0, '2016-11-25 16:30:47', NULL, 0, '/image/contacts.png', 0, NULL);

--
-- 触发器 `domain`
--
DELIMITER $$
CREATE TRIGGER `domain_updateTime` BEFORE INSERT ON `domain` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `extendStorage_order`
--

CREATE TABLE `extendStorage_order` (
  `Id` bigint(20) NOT NULL,
  `ExtendTime` int(11) DEFAULT NULL,
  `UseAccount` bigint(20) DEFAULT NULL,
  `ExtendStorageSize` bigint(20) DEFAULT NULL,
  `OrderId` bigint(20) NOT NULL,
  `CreateTime` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `extendStorage_order`
--

INSERT INTO `extendStorage_order` (`Id`, `ExtendTime`, `UseAccount`, `ExtendStorageSize`, `OrderId`, `CreateTime`) VALUES
(16, 10, 0, 10, 52, '2015-07-31 08:19:16'),
(17, 12, 0, 100, 57, '2015-08-02 08:26:54'),
(18, 12, 0, 10, 58, '2015-08-02 08:27:36'),
(19, 12, 0, 1, 131, '2016-11-27 05:05:43');

--
-- 触发器 `extendStorage_order`
--
DELIMITER $$
CREATE TRIGGER `extendso_updateTime` BEFORE INSERT ON `extendStorage_order` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `favorite`
--

CREATE TABLE `favorite` (
  `Id` int(11) NOT NULL,
  `ZoneItemId` int(11) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `favorite`
--

INSERT INTO `favorite` (`Id`, `ZoneItemId`, `UserId`) VALUES
(1, 68, 33),
(2, 161, 34),
(3, 160, 37),
(4, 152, 37),
(5, 128, 64),
(6, 168, 37),
(7, 168, 63),
(8, 171, 63),
(9, 173, 38),
(10, 66, 37),
(11, 184, 37),
(12, 202, 37),
(13, 201, 37),
(14, 182, 75),
(15, 166, 37),
(16, 155, 37),
(17, 146, 37),
(18, 140, 37),
(19, 200, 37),
(20, 198, 37),
(21, 188, 37),
(22, 205, 37),
(23, 191, 37),
(24, 204, 37),
(25, 141, 37),
(26, 178, 37);

-- --------------------------------------------------------

--
-- 表的结构 `filecache`
--

CREATE TABLE `filecache` (
  `Id` bigint(20) NOT NULL,
  `ClientFileName` varchar(255) DEFAULT NULL,
  `ServerFileName` varchar(255) DEFAULT NULL,
  `Size` bigint(20) DEFAULT NULL,
  `TotalSize` bigint(20) DEFAULT NULL,
  `UserId` bigint(20) DEFAULT NULL,
  `FileName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `finalvideo`
--

CREATE TABLE `finalvideo` (
  `Id` bigint(20) NOT NULL,
  `Version` bigint(20) NOT NULL,
  `ContractId` bigint(20) NOT NULL,
  `Detail` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `finalvideohistory`
--

CREATE TABLE `finalvideohistory` (
  `Id` bigint(20) NOT NULL,
  `ContractId` bigint(20) NOT NULL,
  `FinalVideoId` bigint(20) NOT NULL,
  `Version` bigint(20) NOT NULL,
  `Detail` text,
  `RejectReason` varchar(1024) DEFAULT NULL,
  `RejectTime` datetime DEFAULT NULL,
  `ApplyRemark` varchar(1024) DEFAULT NULL,
  `ApplyTime` datetime DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 触发器 `finalvideohistory`
--
DELIMITER $$
CREATE TRIGGER `fvh_updateTime` BEFORE INSERT ON `finalvideohistory` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `focus`
--

CREATE TABLE `focus` (
  `Id` bigint(20) NOT NULL,
  `From` bigint(20) DEFAULT NULL,
  `To` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `followerattachment`
--

CREATE TABLE `followerattachment` (
  `Id` bigint(20) NOT NULL,
  `FollowerId` bigint(20) NOT NULL,
  `ObjectId` bigint(20) NOT NULL,
  `CreateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `group`
--

CREATE TABLE `group` (
  `Id` bigint(20) NOT NULL,
  `ShareObjectId` bigint(20) DEFAULT NULL,
  `GroupName` varchar(50) DEFAULT NULL,
  `GroupRead` bit(1) DEFAULT NULL,
  `GroupWrite` bit(1) DEFAULT NULL,
  `GroupCreate` bit(1) DEFAULT NULL,
  `GroupDelete` bit(1) DEFAULT NULL,
  `GroupDownload` bit(1) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 触发器 `group`
--
DELIMITER $$
CREATE TRIGGER `group_updateTime` BEFORE INSERT ON `group` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `groupuser`
--

CREATE TABLE `groupuser` (
  `Id` bigint(20) NOT NULL,
  `GroupId` bigint(20) DEFAULT NULL,
  `UserId` bigint(20) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 触发器 `groupuser`
--
DELIMITER $$
CREATE TRIGGER `groupUser_updateTime` BEFORE INSERT ON `groupuser` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `indexbanner`
--

CREATE TABLE `indexbanner` (
  `Id` int(11) NOT NULL,
  `Banner` varchar(255) DEFAULT NULL,
  `Path` varchar(255) DEFAULT NULL,
  `ActivityPage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `indexbanner`
--

INSERT INTO `indexbanner` (`Id`, `Banner`, `Path`, `ActivityPage`) VALUES
(287, 'banner.jpg', '/fileFolders/activityImage/1a942585-23bf-4bd2-b849-0dbe822a3e43', '/activity/');

-- --------------------------------------------------------

--
-- 表的结构 `leave_msg`
--

CREATE TABLE `leave_msg` (
  `Id` bigint(20) NOT NULL,
  `Msg` varchar(1024) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT NULL,
  `Deal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `leave_msg`
--

INSERT INTO `leave_msg` (`Id`, `Msg`, `Name`, `Phone`, `Email`, `CreateTime`, `Deal`) VALUES
(8, '我想做一个片子', '张先生', '18600000001', 'rick_zhang@126.com', '2015-11-09 13:34:56', 1),
(55, 'title:商影联盟宣传片;detail:商影联盟的宣传片;long10;amount1000;deadline04/19/2016', '张先生', '85388138', '', '2016-04-18 03:15:56', 0),
(56, 'title:123;detail:123;long12;amount111111;deadline08/31/2016', 'da', '18612065110', '', '2016-08-19 08:23:05', 0),
(57, '留言', '', '', '', '2016-10-25 08:20:37', 0);

-- --------------------------------------------------------

--
-- 表的结构 `manage_storage`
--

CREATE TABLE `manage_storage` (
  `Id` bigint(20) NOT NULL,
  `PlatformStorage` float(20,0) NOT NULL,
  `UserStorage` float(20,0) NOT NULL,
  `UsedStorage` float(20,0) NOT NULL,
  `UpdateTime` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `manage_storage`
--

INSERT INTO `manage_storage` (`Id`, `PlatformStorage`, `UserStorage`, `UsedStorage`, `UpdateTime`) VALUES
(20, 107374182400, 18253611008, 445461216, '2015-08-05'),
(21, 107374182400, 18253611008, 446782304, '2015-08-06'),
(22, 107374182400, 18253611008, 631214272, '2015-08-07'),
(23, 107374182400, 19327352832, 631214272, '2015-08-08'),
(24, 107374182400, 19327352832, 631214272, '2015-08-09'),
(25, 107374182400, 20401094656, 631214272, '2015-08-10'),
(26, 107374182400, 20401094656, 631214272, '2015-08-11'),
(27, 107374182400, 20401094656, 631214272, '2015-08-12'),
(28, 107374182400, 21474836480, 631257600, '2015-08-13'),
(29, 107374182400, 21474836480, 823208512, '2015-08-14'),
(30, 107374182400, 21474836480, 823208512, '2015-08-15'),
(31, 107374182400, 21474836480, 823208512, '2015-08-16'),
(32, 107374182400, 21474836480, 823208512, '2015-08-17'),
(33, 107374182400, 21474836480, 829736256, '2015-08-18'),
(34, 107374182400, 21474836480, 829736256, '2015-08-19'),
(35, 107374182400, 22548578304, 938024448, '2015-08-20'),
(36, 107374182400, 22548578304, 938024448, '2015-08-21'),
(37, 107374182400, 23622320128, 969702400, '2015-08-22'),
(38, 107374182400, 23622320128, 969702400, '2015-08-23'),
(39, 107374182400, 23622320128, 1048811968, '2015-08-24'),
(40, 107374182400, 23622320128, 1048811968, '2015-08-25'),
(41, 107374182400, 24696061952, 1093092224, '2015-08-26'),
(42, 107374182400, 24696061952, 1093092224, '2015-08-27'),
(43, 107374182400, 24696061952, 1093744768, '2015-08-28'),
(44, 107374182400, 24696061952, 1093744768, '2015-08-29'),
(45, 107374182400, 24696061952, 1093744768, '2015-08-30'),
(46, 107374182400, 24696061952, 1093744768, '2015-08-31'),
(47, 107374182400, 25769803776, 1041784768, '2015-09-01'),
(48, 107374182400, 25769803776, 1107515136, '2015-09-02'),
(49, 107374182400, 25769803776, 1107515136, '2015-09-03'),
(50, 107374182400, 25769803776, 1376433536, '2015-09-04'),
(51, 107374182400, 25769803776, 1376433536, '2015-09-05'),
(52, 107374182400, 25769803776, 1376433536, '2015-09-06'),
(53, 107374182400, 25769803776, 1376433536, '2015-09-07'),
(54, 107374182400, 28991029248, 1376433536, '2015-09-08'),
(55, 107374182400, 28991029248, 1376433536, '2015-09-09'),
(56, 107374182400, 28991029248, 1376433536, '2015-09-10'),
(57, 107374182400, 27917287424, 1376433536, '2015-09-11'),
(58, 107374182400, 27917287424, 1376433536, '2015-09-12'),
(59, 107374182400, 28991029248, 1517881216, '2015-09-13'),
(60, 107374182400, 28991029248, 1566771584, '2015-09-14'),
(61, 107374182400, 28991029248, 1566771584, '2015-09-15'),
(62, 107374182400, 28991029248, 1566771584, '2015-09-16'),
(63, 107374182400, 28991029248, 1566771584, '2015-09-17'),
(64, 107374182400, 28991029248, 2159964672, '2015-09-18'),
(65, 107374182400, 28991029248, 2161726208, '2015-09-19'),
(66, 107374182400, 28991029248, 2161726208, '2015-09-20'),
(67, 107374182400, 28991029248, 2161726208, '2015-09-21'),
(68, 107374182400, 28991029248, 2369367552, '2015-09-22'),
(69, 107374182400, 28991029248, 2552691968, '2015-09-23'),
(70, 107374182400, 28991029248, 2552691968, '2015-09-24'),
(71, 107374182400, 28991029248, 2652383744, '2015-09-25'),
(72, 107374182400, 28991029248, 2670532096, '2015-09-26'),
(73, 107374182400, 28991029248, 2553042432, '2015-09-27'),
(74, 107374182400, 28991029248, 2553042432, '2015-09-28'),
(75, 107374182400, 28991029248, 2553042432, '2015-09-29'),
(76, 107374182400, 28991029248, 2553042432, '2015-09-30'),
(77, 107374182400, 28991029248, 2084919552, '2015-10-01'),
(78, 107374182400, 28991029248, 2084919552, '2015-10-02'),
(79, 107374182400, 28991029248, 2084919552, '2015-10-03'),
(80, 107374182400, 28991029248, 2084919552, '2015-10-04'),
(81, 107374182400, 28991029248, 2084919552, '2015-10-05'),
(82, 107374182400, 28991029248, 2084919552, '2015-10-06'),
(83, 107374182400, 28991029248, 2084919552, '2015-10-07'),
(84, 107374182400, 28991029248, 2084919552, '2015-10-08'),
(85, 107374182400, 28991029248, 2084919552, '2015-10-09'),
(86, 107374182400, 28991029248, 2083157888, '2015-10-10'),
(87, 107374182400, 28991029248, 2083157888, '2015-10-11'),
(88, 107374182400, 28991029248, 2083157888, '2015-10-12'),
(89, 107374182400, 28991029248, 2083157888, '2015-10-13'),
(90, 107374182400, 28991029248, 2083157888, '2015-10-14'),
(91, 107374182400, 28991029248, 2083157888, '2015-10-15'),
(92, 107374182400, 30064771072, 2083157888, '2015-10-16'),
(93, 107374182400, 30064771072, 2083157888, '2015-10-17'),
(94, 107374182400, 30064771072, 2083157888, '2015-10-18'),
(95, 107374182400, 30064771072, 2083157888, '2015-10-19'),
(96, 107374182400, 30064771072, 2083157888, '2015-10-20'),
(97, 107374182400, 30064771072, 2083157888, '2015-10-21'),
(98, 107374182400, 30064771072, 2083157888, '2015-10-22'),
(99, 107374182400, 30064771072, 2083157888, '2015-10-23'),
(100, 107374182400, 30064771072, 2083157888, '2015-10-24'),
(101, 107374182400, 30064771072, 2409953024, '2015-10-25'),
(102, 107374182400, 30064771072, 2409953024, '2015-10-26'),
(103, 107374182400, 30064771072, 2409953024, '2015-10-27'),
(104, 107374182400, 30064771072, 2409953024, '2015-10-28'),
(105, 107374182400, 30064771072, 2409953024, '2015-10-29'),
(106, 107374182400, 30064771072, 2409953024, '2015-10-30'),
(107, 107374182400, 30064771072, 2409953024, '2015-10-31'),
(108, 107374182400, 30064771072, 2409953024, '2015-11-01'),
(109, 107374182400, 30064771072, 2409953024, '2015-11-02'),
(110, 107374182400, 30064771072, 2409953024, '2015-11-03'),
(111, 107374182400, 30064771072, 2401543424, '2015-11-04'),
(112, 107374182400, 30064771072, 2401543424, '2015-11-05'),
(113, 107374182400, 30064771072, 2660517632, '2015-11-06'),
(114, 107374182400, 30064771072, 2660531200, '2015-11-07'),
(115, 107374182400, 30064771072, 2660531200, '2015-11-08'),
(116, 107374182400, 30064771072, 2660531200, '2015-11-09'),
(117, 107374182400, 30064771072, 2660531200, '2015-11-10'),
(118, 107374182400, 30064771072, 2660549376, '2015-11-11'),
(119, 107374182400, 30064771072, 2660549376, '2015-11-12'),
(120, 107374182400, 30064771072, 2660549376, '2015-11-13'),
(121, 107374182400, 30064771072, 2660549376, '2015-11-14'),
(122, 107374182400, 30064771072, 2660549376, '2015-11-15'),
(123, 107374182400, 30064771072, 2660549376, '2015-11-16'),
(124, 107374182400, 30064771072, 2660549376, '2015-11-17'),
(125, 107374182400, 30064771072, 2660549376, '2015-11-18'),
(126, 107374182400, 30064771072, 2660549376, '2015-11-19'),
(127, 107374182400, 32212254720, 2660549376, '2015-11-20'),
(128, 107374182400, 32212254720, 2660549376, '2015-11-21'),
(129, 107374182400, 32212254720, 2660549376, '2015-11-22'),
(130, 107374182400, 32212254720, 2660549376, '2015-11-23'),
(131, 107374182400, 32212254720, 2660549376, '2015-11-24'),
(132, 107374182400, 32212254720, 2660549376, '2015-11-25'),
(133, 107374182400, 32212254720, 2660549376, '2015-11-26'),
(134, 107374182400, 32212254720, 2660549376, '2015-11-27'),
(135, 107374182400, 32212254720, 2660549376, '2015-11-28'),
(136, 107374182400, 32212254720, 2660549376, '2015-11-29'),
(137, 107374182400, 32212254720, 2660549376, '2015-11-30'),
(138, 107374182400, 32212254720, 2660549376, '2015-12-01'),
(139, 107374182400, 33285996544, 2660549376, '2015-12-02'),
(140, 107374182400, 33285996544, 2660549376, '2015-12-03'),
(141, 107374182400, 33285996544, 2660549376, '2015-12-04'),
(142, 107374182400, 33285996544, 2660549376, '2015-12-05'),
(143, 107374182400, 33285996544, 2660549376, '2015-12-06'),
(144, 107374182400, 33285996544, 2660549376, '2015-12-07'),
(145, 107374182400, 33285996544, 2660549376, '2015-12-08'),
(146, 107374182400, 33285996544, 2660549376, '2015-12-09'),
(147, 107374182400, 33285996544, 2660549376, '2015-12-10'),
(148, 107374182400, 33285996544, 2660549376, '2015-12-11'),
(149, 107374182400, 33285996544, 2660549376, '2015-12-12'),
(150, 107374182400, 33285996544, 2660549376, '2015-12-13'),
(151, 107374182400, 33285996544, 2660549376, '2015-12-14'),
(152, 107374182400, 33285996544, 2660549376, '2015-12-15'),
(153, 107374182400, 33285996544, 3027434752, '2015-12-16'),
(154, 107374182400, 33285996544, 3027434752, '2015-12-17'),
(155, 107374182400, 33285996544, 3027434752, '2015-12-18'),
(156, 107374182400, 33285996544, 3027434752, '2015-12-19'),
(157, 107374182400, 33285996544, 3027434752, '2015-12-20'),
(158, 107374182400, 33285996544, 3027434752, '2015-12-21'),
(159, 107374182400, 33285996544, 3027434752, '2015-12-22'),
(160, 107374182400, 33285996544, 3027434752, '2015-12-23'),
(161, 107374182400, 33285996544, 3027434752, '2015-12-24'),
(162, 107374182400, 33285996544, 3027434752, '2015-12-25'),
(163, 107374182400, 33285996544, 3027434752, '2015-12-26'),
(164, 107374182400, 33285996544, 3027434752, '2015-12-27'),
(165, 107374182400, 33285996544, 3027434752, '2015-12-28'),
(166, 107374182400, 33285996544, 3027434752, '2015-12-29'),
(167, 107374182400, 33285996544, 3027434752, '2015-12-30'),
(168, 107374182400, 33285996544, 3027434752, '2015-12-31'),
(169, 107374182400, 33285996544, 3027434752, '2016-01-01'),
(170, 107374182400, 34359738368, 3027434752, '2016-01-02'),
(171, 107374182400, 34359738368, 3027434752, '2016-01-03'),
(172, 107374182400, 37580963840, 3027434752, '2016-01-04'),
(173, 107374182400, 37580963840, 3027434752, '2016-01-05'),
(174, 107374182400, 37580963840, 3027434752, '2016-01-06'),
(175, 107374182400, 37580963840, 3027434752, '2016-01-07'),
(176, 107374182400, 37580963840, 3064394752, '2016-01-08'),
(177, 107374182400, 37580963840, 3064394752, '2016-01-09'),
(178, 107374182400, 37580963840, 3064394752, '2016-01-10'),
(179, 107374182400, 37580963840, 3185863424, '2016-01-11'),
(180, 107374182400, 37580963840, 3185863424, '2016-01-12'),
(181, 107374182400, 37580963840, 3185863424, '2016-01-13'),
(182, 107374182400, 37580963840, 3185863424, '2016-01-14'),
(183, 107374182400, 37580963840, 3185863424, '2016-01-15'),
(184, 107374182400, 37580963840, 3185863424, '2016-01-16'),
(185, 107374182400, 37580963840, 3185863424, '2016-01-17'),
(186, 107374182400, 37580963840, 3185863424, '2016-01-18'),
(187, 107374182400, 37580963840, 3185863424, '2016-01-19'),
(188, 107374182400, 37580963840, 3185863424, '2016-01-20'),
(189, 107374182400, 37580963840, 3185863424, '2016-01-21'),
(190, 107374182400, 37580963840, 3510448896, '2016-01-22'),
(191, 107374182400, 37580963840, 3510525696, '2016-01-23'),
(192, 107374182400, 37580963840, 3510525696, '2016-01-24'),
(193, 107374182400, 37580963840, 3510525696, '2016-01-25'),
(194, 107374182400, 37580963840, 3510525696, '2016-01-26'),
(195, 107374182400, 37580963840, 3510525696, '2016-01-27'),
(196, 107374182400, 37580963840, 3510525696, '2016-01-28'),
(197, 107374182400, 37580963840, 3510525696, '2016-01-29'),
(198, 107374182400, 37580963840, 3510525696, '2016-01-30'),
(199, 107374182400, 37580963840, 3510525696, '2016-01-31'),
(200, 107374182400, 37580963840, 3510525696, '2016-02-01'),
(201, 107374182400, 37580963840, 3510525696, '2016-02-02'),
(202, 107374182400, 37580963840, 3510525696, '2016-02-03'),
(203, 107374182400, 37580963840, 3510525696, '2016-02-04'),
(204, 107374182400, 37580963840, 3510525696, '2016-02-05'),
(205, 107374182400, 37580963840, 3510525696, '2016-02-06'),
(206, 107374182400, 37580963840, 3510525696, '2016-02-07'),
(207, 107374182400, 37580963840, 3510525696, '2016-02-08'),
(208, 107374182400, 37580963840, 3510525696, '2016-02-09'),
(209, 107374182400, 37580963840, 3510525696, '2016-02-10'),
(210, 107374182400, 37580963840, 3510525696, '2016-02-11'),
(211, 107374182400, 37580963840, 3510525696, '2016-02-12'),
(212, 107374182400, 37580963840, 3510525696, '2016-02-13'),
(213, 107374182400, 37580963840, 3510525696, '2016-02-14'),
(214, 107374182400, 37580963840, 3510525696, '2016-02-15'),
(215, 107374182400, 37580963840, 3510525696, '2016-02-16'),
(216, 107374182400, 37580963840, 3510525696, '2016-02-17'),
(217, 107374182400, 37580963840, 3510525696, '2016-02-18'),
(218, 107374182400, 37580963840, 3510525696, '2016-02-19'),
(219, 107374182400, 37580963840, 3510525696, '2016-02-20'),
(220, 107374182400, 37580963840, 3510525696, '2016-02-21'),
(221, 107374182400, 37580963840, 3510525696, '2016-02-22'),
(222, 107374182400, 37580963840, 3510525696, '2016-02-23'),
(223, 107374182400, 37580963840, 3510525696, '2016-02-24'),
(224, 107374182400, 37580963840, 3510525696, '2016-02-25'),
(225, 107374182400, 37580963840, 3510583040, '2016-02-26'),
(226, 107374182400, 37580963840, 3510583040, '2016-02-27'),
(227, 107374182400, 37580963840, 3510583040, '2016-02-28'),
(228, 107374182400, 37580963840, 3510583040, '2016-02-29'),
(229, 107374182400, 37580963840, 3510583040, '2016-03-01'),
(230, 107374182400, 37580963840, 3510583040, '2016-03-02'),
(231, 107374182400, 37580963840, 3510583040, '2016-03-03'),
(232, 107374182400, 37580963840, 3510583040, '2016-03-04'),
(233, 107374182400, 37580963840, 3510583040, '2016-03-05'),
(234, 107374182400, 37580963840, 3510583040, '2016-03-06'),
(235, 107374182400, 37580963840, 3510583040, '2016-03-07'),
(236, 107374182400, 37580963840, 3510583040, '2016-03-08'),
(237, 107374182400, 37580963840, 3510583040, '2016-03-09'),
(238, 107374182400, 37580963840, 3510583040, '2016-03-10'),
(239, 107374182400, 37580963840, 3510583040, '2016-03-11'),
(240, 107374182400, 37580963840, 3510583040, '2016-03-12'),
(241, 107374182400, 37580963840, 3510583040, '2016-03-13'),
(242, 107374182400, 37580963840, 3510583040, '2016-03-14'),
(243, 107374182400, 37580963840, 3510583040, '2016-03-15'),
(244, 107374182400, 37580963840, 3510583040, '2016-03-16'),
(245, 107374182400, 37580963840, 3510583040, '2016-03-17'),
(246, 107374182400, 37580963840, 3510583040, '2016-03-18'),
(247, 107374182400, 37580963840, 3510583040, '2016-03-19'),
(248, 107374182400, 37580963840, 3510583040, '2016-03-20'),
(249, 107374182400, 37580963840, 3510583040, '2016-03-21'),
(250, 107374182400, 37580963840, 3510583040, '2016-03-22'),
(251, 107374182400, 37580963840, 3510583040, '2016-03-23'),
(252, 107374182400, 37580963840, 3510583040, '2016-03-24'),
(253, 107374182400, 37580963840, 3510583040, '2016-03-25'),
(254, 107374182400, 37580963840, 3510583040, '2016-03-26'),
(255, 107374182400, 37580963840, 3510583040, '2016-03-27'),
(256, 107374182400, 37580963840, 3788524032, '2016-03-28'),
(257, 107374182400, 37580963840, 2056392064, '2016-03-29'),
(258, 107374182400, 37580963840, 2056392064, '2016-03-30'),
(259, 107374182400, 37580963840, 2239734528, '2016-03-31'),
(260, 107374182400, 37580963840, 2566529792, '2016-04-01'),
(261, 107374182400, 37580963840, 2566529792, '2016-04-02'),
(262, 107374182400, 37580963840, 2567217664, '2016-04-03'),
(263, 107374182400, 37580963840, 2567217664, '2016-04-04'),
(264, 107374182400, 37580963840, 2567217664, '2016-04-05'),
(265, 107374182400, 37580963840, 2567217664, '2016-04-06'),
(266, 107374182400, 37580963840, 2567217664, '2016-04-07'),
(267, 107374182400, 37580963840, 2567217664, '2016-04-08'),
(268, 107374182400, 37580963840, 2567217664, '2016-04-09'),
(269, 107374182400, 39728447488, 2567217664, '2016-04-10'),
(270, 107374182400, 39728447488, 2567217664, '2016-04-11'),
(271, 107374182400, 40802189312, 2567217664, '2016-04-12'),
(272, 107374182400, 40802189312, 3165368832, '2016-04-13'),
(273, 107374182400, 40802189312, 2586633728, '2016-04-14'),
(274, 107374182400, 40802189312, 2586633728, '2016-04-15'),
(275, 107374182400, 40802189312, 2586633728, '2016-04-16'),
(276, 107374182400, 40802189312, 2586633728, '2016-04-17'),
(277, 107374182400, 40802189312, 2586633728, '2016-04-18'),
(278, 107374182400, 40802189312, 3165368832, '2016-04-19'),
(279, 107374182400, 40802189312, 2670848512, '2016-04-20'),
(280, 107374182400, 40802189312, 2669586944, '2016-04-21'),
(281, 107374182400, 40802189312, 2669586944, '2016-04-22'),
(282, 107374182400, 40802189312, 2669586944, '2016-04-23'),
(283, 107374182400, 40802189312, 2669586944, '2016-04-24'),
(284, 107374182400, 40802189312, 2669586944, '2016-04-25'),
(285, 107374182400, 40802189312, 2669586944, '2016-04-26'),
(286, 107374182400, 40802189312, 2675968512, '2016-04-27'),
(287, 107374182400, 40802189312, 2669586944, '2016-04-28'),
(288, 107374182400, 40802189312, 2669586944, '2016-04-29'),
(289, 107374182400, 40802189312, 2669586944, '2016-04-30'),
(290, 107374182400, 40802189312, 2669586944, '2016-05-01'),
(291, 107374182400, 40802189312, 2669586944, '2016-05-02'),
(292, 107374182400, 40802189312, 2669586944, '2016-05-03');

--
-- 触发器 `manage_storage`
--
DELIMITER $$
CREATE TRIGGER `ms_updateDate` BEFORE INSERT ON `manage_storage` FOR EACH ROW BEGIN
	set new.UpdateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `manage_trade`
--

CREATE TABLE `manage_trade` (
  `Id` bigint(20) NOT NULL,
  `ExtendStorageAmount` double NOT NULL,
  `ContractAmount` double NOT NULL,
  `RechargeAccountAmount` double NOT NULL,
  `MemberShipTaxAmount` double NOT NULL,
  `TotalAmount` double NOT NULL,
  `UpdateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `manage_trade`
--

INSERT INTO `manage_trade` (`Id`, `ExtendStorageAmount`, `ContractAmount`, `RechargeAccountAmount`, `MemberShipTaxAmount`, `TotalAmount`, `UpdateTime`) VALUES
(1, 3100, 400.20000000298023, 0, 0, 3500.2000000029802, '2015-08-05 21:01:30'),
(2, 3100, 400.3500000052154, 0, 0, 3500.3500000052154, '2015-08-06 21:01:30'),
(3, 3100, 400.3500000052154, 0, 0, 3500.3500000052154, '2015-08-07 21:01:30'),
(4, 3100, 400.3500000052154, 0, 0, 3500.3500000052154, '2015-08-08 21:01:30'),
(5, 3100, 400.3500000052154, 0, 0, 3500.3500000052154, '2015-08-09 21:01:30'),
(6, 3100, 400.4500000067055, 0, 0, 3500.4500000067055, '2015-08-10 21:01:30'),
(7, 3100, 400.4500000067055, 0, 0, 3500.4500000067055, '2015-08-11 21:01:30'),
(8, 3100, 400.4500000067055, 0, 0, 3500.4500000067055, '2015-08-12 21:01:30'),
(9, 3100, 400.4500000067055, 0, 0, 3500.4500000067055, '2015-08-13 21:01:30'),
(10, 3100, 400.4500000067055, 0, 0, 3500.4500000067055, '2015-08-14 21:01:30'),
(11, 3100, 400.55000000819564, 0, 0, 3500.5500000081956, '2015-08-15 21:01:30'),
(12, 3100, 400.55000000819564, 0, 0, 3500.5500000081956, '2015-08-16 21:01:30'),
(13, 3100, 400.55000000819564, 0, 0, 3500.5500000081956, '2015-08-17 21:01:30'),
(14, 3100, 10, 0, 0, 3510.5500000081956, '2015-08-18 21:01:30'),
(15, 3100, 10.100000001490116, 0, 0, 3510.6500000096858, '2015-08-19 21:01:30'),
(16, 3100, 10.100000001490116, 0, 0, 3510.6500000096858, '2015-08-20 21:01:30'),
(17, 3100, 10.100000001490116, 0, 0, 3510.6500000096858, '2015-08-21 21:01:30'),
(18, 3100, 10.100000001490116, 0, 0, 3510.6500000096858, '2015-08-22 21:01:30'),
(19, 3100, 10.100000001490116, 0, 0, 3510.6500000096858, '2015-08-23 21:01:30'),
(20, 3100, 10.100000001490116, 0, 0, 3510.6500000096858, '2015-08-24 21:01:30'),
(21, 3100, 10.100000001490116, 0, 0, 3510.6500000096858, '2015-08-25 21:01:30'),
(22, 3100, 10.100000001490116, 0, 0, 3510.6500000096858, '2015-08-26 21:01:30'),
(23, 3100, 10.100000001490116, 0, 0, 3510.6500000096858, '2015-08-27 21:01:30'),
(24, 3100, 10.100000001490116, 0, 0, 3510.6500000096858, '2015-08-28 21:01:30'),
(25, 3100, 21.100000001490116, 0, 0, 3521.6500000096858, '2015-08-29 21:01:30'),
(26, 3100, 21.100000001490116, 0, 0, 3521.6500000096858, '2015-08-30 21:01:30'),
(27, 3100, 21.100000001490116, 0, 0, 3521.6500000096858, '2015-08-31 21:01:30'),
(28, 3100, 15.600000001490116, 0, 0, 3516.1500000096858, '2015-09-01 21:01:30'),
(29, 3100, 15.600000001490116, 0, 0, 3516.1500000096858, '2015-09-02 21:01:30'),
(30, 3100, 15.600000001490116, 0, 0, 3516.1500000096858, '2015-09-03 21:01:30'),
(31, 3100, 15.600000001490116, 0, 0, 3516.1500000096858, '2015-09-04 21:01:30'),
(32, 3100, 15.600000001490116, 0, 0, 3516.1500000096858, '2015-09-05 21:01:30'),
(33, 3100, 15.600000001490116, 0, 0, 3516.1500000096858, '2015-09-06 21:01:30'),
(34, 3100, 15.600000001490116, 0, 0, 3516.1500000096858, '2015-09-07 21:01:30'),
(35, 3100, 15.600000001490116, 0, 0, 3516.1500000096858, '2015-09-08 21:01:30'),
(36, 3100, 15.600000001490116, 0, 0, 3516.1500000096858, '2015-09-09 21:01:30'),
(37, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-09-10 21:01:30'),
(38, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-09-11 21:01:30'),
(39, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-09-12 21:01:30'),
(40, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-09-13 21:01:30'),
(41, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-09-14 21:01:30'),
(42, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-09-15 21:01:30'),
(43, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-09-16 21:01:30'),
(44, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-09-17 21:01:30'),
(45, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-09-18 21:01:30'),
(46, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-09-19 21:01:30'),
(47, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-09-20 21:01:30'),
(48, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-09-21 21:01:30'),
(49, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-09-22 21:01:30'),
(50, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-09-23 21:01:30'),
(51, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-09-24 21:01:30'),
(52, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-09-25 21:01:30'),
(53, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-09-26 21:01:30'),
(54, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-09-27 21:01:30'),
(55, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-09-28 21:01:30'),
(56, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-09-29 21:01:30'),
(57, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-09-30 21:01:30'),
(58, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-10-01 21:01:30'),
(59, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-10-02 21:01:30'),
(60, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-10-03 21:01:30'),
(61, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-10-04 21:01:30'),
(62, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-10-05 21:01:30'),
(63, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-10-06 21:01:30'),
(64, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-10-07 21:01:30'),
(65, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-10-08 21:01:30'),
(66, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-10-09 21:01:30'),
(67, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-10-10 21:01:30'),
(68, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-10-11 21:01:30'),
(69, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-10-12 21:01:30'),
(70, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-10-13 21:01:30'),
(71, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-10-14 21:01:30'),
(72, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-10-15 21:01:30'),
(73, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-10-16 21:01:30'),
(74, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-10-17 21:01:30'),
(75, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-10-18 21:01:30'),
(76, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-10-19 21:01:30'),
(77, 3100, 1515.6000000014901, 0, 0, 5016.150000009686, '2015-10-20 21:01:30'),
(78, 3100, 1515.8000000044703, 0, 0, 5016.350000012666, '2015-10-21 21:01:30'),
(79, 3100, 1515.8000000044703, 0, 0, 5016.350000012666, '2015-10-22 21:01:30'),
(80, 3100, 1515.8000000044703, 0, 0, 5016.350000012666, '2015-10-23 21:01:30'),
(81, 3100, 1515.8000000044703, 0, 0, 5016.350000012666, '2015-10-24 21:01:30'),
(82, 3100, 1515.8000000044703, 0, 0, 5016.350000012666, '2015-10-25 21:01:30'),
(83, 3100, 3015.9000000059605, 0, 0, 6516.450000014156, '2015-10-26 21:01:30'),
(84, 3100, 3016.0000000074506, 0, 0, 6516.550000015646, '2015-10-27 21:01:30'),
(85, 3100, 3016.1500000096858, 0, 0, 6516.700000017881, '2015-10-28 21:01:30'),
(86, 3100, 3016.200000010431, 0, 0, 6516.750000018626, '2015-10-29 21:01:30'),
(87, 3100, 3016.200000010431, 0, 0, 6516.750000018626, '2015-10-30 21:01:30'),
(88, 3100, 3016.200000010431, 0, 0, 6516.750000018626, '2015-10-31 21:01:30'),
(89, 3100, 3016.200000010431, 0, 0, 6516.650000017136, '2015-11-01 21:01:30'),
(90, 3100, 3016.200000010431, 0, 0, 6516.650000017136, '2015-11-02 21:01:30'),
(91, 3100, 3016.200000010431, 0, 0, 6516.550000015646, '2015-11-03 21:01:30'),
(92, 3100, 3016.200000010431, 0, 0, 6516.550000015646, '2015-11-04 21:01:30'),
(93, 3100, 3016.200000010431, 0, 0, 6516.400000013411, '2015-11-05 21:01:30'),
(94, 3100, 3016.200000010431, 0, 0, 6516.400000013411, '2015-11-06 21:01:30'),
(95, 3100, 3016.200000010431, 0, 0, 6516.400000013411, '2015-11-07 21:01:30'),
(96, 3100, 3016.200000010431, 0, 0, 6516.400000013411, '2015-11-08 21:01:30'),
(97, 3100, 3016.200000010431, 0, 0, 6516.300000011921, '2015-11-09 21:01:30'),
(98, 3100, 3016.200000010431, 0, 0, 6516.300000011921, '2015-11-10 21:01:30'),
(99, 3100, 3016.200000010431, 0, 0, 6516.300000011921, '2015-11-11 21:01:30'),
(100, 3100, 3016.200000010431, 0, 0, 6516.300000011921, '2015-11-12 21:01:30'),
(101, 3100, 3016.200000010431, 0, 0, 6516.300000011921, '2015-11-13 21:01:30'),
(102, 3100, 3016.200000010431, 0, 0, 6516.200000010431, '2015-11-14 21:01:30'),
(103, 3100, 3016.200000010431, 0, 0, 6516.200000010431, '2015-11-15 21:01:30'),
(104, 3100, 3016.200000010431, 0, 0, 6516.200000010431, '2015-11-16 21:01:30'),
(105, 3100, 3016.200000010431, 0, 0, 6516.200000010431, '2015-11-17 21:01:30'),
(106, 3100, 3016.1000000089407, 0, 0, 6516.100000008941, '2015-11-18 21:01:30'),
(107, 3100, 3016.1000000089407, 0, 0, 6516.100000008941, '2015-11-19 21:01:30'),
(108, 3100, 3016.1000000089407, 0, 0, 6516.100000008941, '2015-11-20 21:01:30'),
(109, 3100, 3016.1000000089407, 0, 0, 6516.100000008941, '2015-11-21 21:01:30'),
(110, 3100, 3016.1000000089407, 0, 0, 6516.100000008941, '2015-11-22 21:01:30'),
(111, 3100, 3016.1000000089407, 0, 0, 6516.100000008941, '2015-11-23 21:01:30'),
(112, 3100, 3016.1000000089407, 0, 0, 6516.100000008941, '2015-11-24 21:01:30'),
(113, 3100, 3016.1000000089407, 0, 0, 6516.100000008941, '2015-11-25 21:01:30'),
(114, 3100, 3016.1000000089407, 0, 0, 6516.100000008941, '2015-11-26 21:01:30'),
(115, 3100, 3016.1000000089407, 0, 0, 6516.100000008941, '2015-11-27 21:01:30'),
(116, 3100, 3016.1000000089407, 0, 0, 6516.100000008941, '2015-11-28 21:01:30'),
(117, 3100, 3016.1000000089407, 0, 0, 6516.100000008941, '2015-11-29 21:01:30'),
(118, 3100, 3016.1000000089407, 0, 0, 6516.100000008941, '2015-11-30 21:01:30'),
(119, 3100, 3016.1000000089407, 0, 0, 6516.100000008941, '2015-12-01 21:01:30'),
(120, 3100, 3016.1000000089407, 0, 0, 6516.100000008941, '2015-12-02 21:01:30'),
(121, 3100, 3016.1000000089407, 0, 0, 6516.100000008941, '2015-12-03 21:01:30'),
(122, 3100, 3016.1000000089407, 0, 0, 6516.100000008941, '2015-12-04 21:01:30'),
(123, 3100, 3016.1000000089407, 0, 0, 6516.100000008941, '2015-12-05 21:01:30'),
(124, 3100, 3016.1000000089407, 0, 0, 6516.100000008941, '2015-12-06 21:01:30'),
(125, 3100, 3016.1000000089407, 0, 0, 6516.100000008941, '2015-12-07 21:01:30'),
(126, 3100, 3016.1000000089407, 0, 0, 6516.100000008941, '2015-12-08 21:01:30'),
(127, 3100, 3016.1000000089407, 0, 0, 6516.100000008941, '2015-12-09 21:01:30'),
(128, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2015-12-10 21:01:30'),
(129, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2015-12-11 21:01:30'),
(130, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2015-12-12 21:01:30'),
(131, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2015-12-13 21:01:30'),
(132, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2015-12-14 21:01:30'),
(133, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2015-12-15 21:01:30'),
(134, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2015-12-16 21:01:30'),
(135, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2015-12-17 21:01:30'),
(136, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2015-12-18 21:01:30'),
(137, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2015-12-19 21:01:30'),
(138, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2015-12-20 21:01:30'),
(139, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2015-12-21 21:01:30'),
(140, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2015-12-22 21:01:30'),
(141, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2015-12-23 21:01:30'),
(142, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2015-12-24 21:01:30'),
(143, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2015-12-25 21:01:30'),
(144, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2015-12-26 21:01:30'),
(145, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2015-12-27 21:01:30'),
(146, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2015-12-28 21:01:30'),
(147, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2015-12-29 21:01:30'),
(148, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2015-12-30 21:01:30'),
(149, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2015-12-31 21:01:30'),
(150, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2016-01-01 21:01:30'),
(151, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2016-01-02 21:01:30'),
(152, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2016-01-03 21:01:30'),
(153, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2016-01-04 21:01:30'),
(154, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2016-01-05 21:01:30'),
(155, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2016-01-06 21:01:30'),
(156, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2016-01-07 21:01:30'),
(157, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2016-01-08 21:01:30'),
(158, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2016-01-09 21:01:30'),
(159, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2016-01-10 21:01:30'),
(160, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2016-01-11 21:01:30'),
(161, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2016-01-12 21:01:30'),
(162, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2016-01-13 21:01:30'),
(163, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2016-01-14 21:01:30'),
(164, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2016-01-15 21:01:30'),
(165, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2016-01-16 21:01:30'),
(166, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2016-01-17 21:01:30'),
(167, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2016-01-18 21:01:30'),
(168, 3100, 1516.1000000089407, 0, 0, 5016.100000008941, '2016-01-19 21:01:30'),
(169, 3100, 1515.9000000059605, 0, 0, 5015.9000000059605, '2016-01-20 21:01:30'),
(170, 3100, 1515.9000000059605, 0, 0, 5015.9000000059605, '2016-01-21 21:01:30'),
(171, 3100, 1515.9000000059605, 0, 0, 5015.9000000059605, '2016-01-22 21:01:30'),
(172, 3100, 1515.9000000059605, 0, 0, 5015.9000000059605, '2016-01-23 21:01:30'),
(173, 3100, 1515.9000000059605, 0, 0, 5015.9000000059605, '2016-01-24 21:01:30'),
(174, 3100, 15.800000004470348, 0, 0, 3515.8000000044703, '2016-01-25 21:01:30'),
(175, 3100, 15.700000002980232, 0, 0, 3515.7000000029802, '2016-01-26 21:01:30'),
(176, 3100, 15.550000000745058, 0, 0, 3515.550000000745, '2016-01-27 21:01:30'),
(177, 3100, 15.5, 0, 0, 3515.5, '2016-01-28 21:01:30'),
(178, 3100, 15.5, 0, 0, 3515.5, '2016-01-29 21:01:30'),
(179, 3100, 15.5, 0, 0, 3515.5, '2016-01-30 21:01:30'),
(180, 3100, 15.5, 0, 0, 3515.5, '2016-01-31 21:01:30'),
(181, 3100, 15.5, 0, 0, 3515.5, '2016-02-01 21:01:30'),
(182, 3100, 15.5, 0, 0, 3515.5, '2016-02-02 21:01:30'),
(183, 3100, 15.5, 0, 0, 3515.5, '2016-02-03 21:01:31'),
(184, 3100, 15.5, 0, 0, 3515.5, '2016-02-04 21:01:30'),
(185, 3100, 15.5, 0, 0, 3515.5, '2016-02-05 21:01:30'),
(186, 3100, 15.5, 0, 0, 3515.5, '2016-02-06 21:01:30'),
(187, 3100, 15.5, 0, 0, 3515.5, '2016-02-07 21:01:30'),
(188, 3100, 15.5, 0, 0, 3515.5, '2016-02-08 21:01:30'),
(189, 3100, 15.5, 0, 0, 3515.5, '2016-02-09 21:01:30'),
(190, 3100, 15.5, 0, 0, 3515.5, '2016-02-10 21:01:30'),
(191, 3100, 15.5, 0, 0, 3515.5, '2016-02-11 21:01:30'),
(192, 3100, 15.5, 0, 0, 3515.5, '2016-02-12 21:01:30'),
(193, 3100, 15.5, 0, 0, 3515.5, '2016-02-13 21:01:30'),
(194, 3100, 15.5, 0, 0, 3515.5, '2016-02-14 21:01:30'),
(195, 3100, 15.5, 0, 0, 3515.5, '2016-02-15 21:01:30'),
(196, 3100, 15.5, 0, 0, 3515.5, '2016-02-16 21:01:30'),
(197, 3100, 15.5, 0, 0, 3515.5, '2016-02-17 21:01:30'),
(198, 3100, 15.5, 0, 0, 3515.5, '2016-02-18 21:01:30'),
(199, 3100, 15.5, 0, 0, 3515.5, '2016-02-19 21:01:30'),
(200, 3100, 15.5, 0, 0, 3515.5, '2016-02-20 21:01:30'),
(201, 3100, 15.5, 0, 0, 3515.5, '2016-02-21 21:01:30'),
(202, 3100, 15.5, 0, 0, 3515.5, '2016-02-22 21:01:30'),
(203, 3100, 15.5, 0, 0, 3515.5, '2016-02-23 21:01:30'),
(204, 3100, 15.5, 0, 0, 3515.5, '2016-02-24 21:01:30'),
(205, 3100, 15.5, 0, 0, 3515.5, '2016-02-25 21:01:30'),
(206, 3100, 15.5, 0, 0, 3515.5, '2016-02-26 21:01:30'),
(207, 3100, 15.5, 0, 0, 3515.5, '2016-02-27 21:01:30'),
(208, 3100, 15.5, 0, 0, 3515.5, '2016-02-28 21:01:30'),
(209, 3100, 15.5, 0, 0, 3515.5, '2016-02-29 21:01:30'),
(210, 3100, 15.5, 0, 0, 3515.5, '2016-03-01 21:01:30'),
(211, 3100, 15.5, 0, 0, 3515.5, '2016-03-02 21:01:30'),
(212, 3100, 15.5, 0, 0, 3515.5, '2016-03-03 21:01:30'),
(213, 3100, 15.5, 0, 0, 3515.5, '2016-03-04 21:01:30'),
(214, 3100, 15.5, 0, 0, 3515.5, '2016-03-05 21:01:30'),
(215, 3100, 15.5, 0, 0, 3515.5, '2016-03-06 21:01:30'),
(216, 3100, 15.5, 0, 0, 3515.5, '2016-03-07 21:01:30'),
(217, 3100, 15.5, 0, 0, 3515.5, '2016-03-08 21:01:30'),
(218, 3100, 15.5, 0, 0, 3515.5, '2016-03-09 21:01:30'),
(219, 3100, 15.5, 0, 0, 3515.5, '2016-03-10 21:01:30'),
(220, 3100, 15.5, 0, 0, 3515.5, '2016-03-11 21:01:30'),
(221, 3100, 15.5, 0, 0, 3515.5, '2016-03-12 21:01:30'),
(222, 3100, 15.5, 0, 0, 3515.5, '2016-03-13 21:01:30'),
(223, 3100, 15.5, 0, 0, 3515.5, '2016-03-14 21:01:30'),
(224, 3100, 15.5, 0, 0, 3515.5, '2016-03-15 21:01:30'),
(225, 3100, 15.5, 0, 0, 3515.5, '2016-03-16 21:01:30'),
(226, 3100, 15.5, 0, 0, 3515.5, '2016-03-17 21:01:30'),
(227, 3100, 15.5, 0, 0, 3515.5, '2016-03-18 21:01:30'),
(228, 3100, 15.5, 0, 0, 3515.5, '2016-03-19 21:01:30'),
(229, 3100, 15.5, 0, 0, 3515.5, '2016-03-20 21:01:30'),
(230, 3100, 15.5, 0, 0, 3515.5, '2016-03-21 21:01:30'),
(231, 3100, 15.5, 0, 0, 3515.5, '2016-03-22 21:01:30'),
(232, 3100, 15.5, 0, 0, 3515.5, '2016-03-23 21:01:30'),
(233, 3100, 15.5, 0, 0, 3515.5, '2016-03-24 21:01:30'),
(234, 3100, 15.5, 0, 0, 3515.5, '2016-03-25 21:01:30'),
(235, 3100, 15.5, 0, 0, 3515.5, '2016-03-26 21:01:30'),
(236, 3100, 15.5, 0, 0, 3515.5, '2016-03-27 21:01:30'),
(237, 3100, 15.5, 0, 0, 3515.5, '2016-03-28 21:01:30'),
(238, 3100, 15.5, 0, 0, 3515.5, '2016-03-29 21:01:30'),
(239, 3100, 15.5, 0, 0, 3515.5, '2016-03-30 21:01:30'),
(240, 3100, 15.5, 0, 0, 3515.5, '2016-03-31 21:01:30'),
(241, 3100, 15.5, 0, 0, 3515.5, '2016-04-01 21:01:30'),
(242, 3100, 15.5, 0, 0, 3515.5, '2016-04-02 21:01:30'),
(243, 3100, 15.5, 0, 0, 3515.5, '2016-04-03 21:01:30'),
(244, 3100, 15.5, 0, 0, 3515.5, '2016-04-04 21:01:30'),
(245, 3100, 15.5, 0, 0, 3515.5, '2016-04-05 21:01:30'),
(246, 3100, 15.5, 0, 0, 3515.5, '2016-04-06 21:01:30'),
(247, 3100, 15.5, 0, 0, 3515.5, '2016-04-07 21:01:30'),
(248, 3100, 15.5, 0, 0, 3515.5, '2016-04-08 21:01:30'),
(249, 3100, 15.5, 0, 0, 3515.5, '2016-04-09 21:01:30'),
(250, 3100, 15.5, 0, 0, 3515.5, '2016-04-10 21:01:30'),
(251, 3100, 15.5, 0, 0, 3515.5, '2016-04-11 21:01:30'),
(252, 3100, 15.5, 0, 0, 3515.5, '2016-04-12 21:01:30'),
(253, 3100, 15.5, 0, 0, 3515.5, '2016-04-13 21:01:30'),
(254, 3100, 15.5, 0, 0, 3515.5, '2016-04-14 21:01:30'),
(255, 3100, 15.5, 0, 0, 3515.5, '2016-04-15 21:01:30'),
(256, 3100, 15.5, 0, 0, 3515.5, '2016-04-16 21:01:30'),
(257, 3100, 15.5, 0, 0, 3515.5, '2016-04-17 21:01:30'),
(258, 3100, 15.5, 0, 0, 3515.5, '2016-04-18 21:01:30'),
(259, 3100, 15.5, 0, 0, 3515.5, '2016-04-19 21:01:30'),
(260, 3100, 15.5, 0, 0, 3515.5, '2016-04-20 21:01:30'),
(261, 3100, 15.5, 0, 0, 3515.5, '2016-04-21 21:01:30'),
(262, 3100, 15.5, 0, 0, 3515.5, '2016-04-22 21:01:30'),
(263, 3100, 15.5, 0, 0, 3515.5, '2016-04-23 21:01:30'),
(264, 3100, 15.5, 0, 0, 3515.5, '2016-04-24 21:01:30'),
(265, 3100, 15.5, 0, 0, 3515.5, '2016-04-25 21:01:30'),
(266, 3100, 15.5, 0, 0, 3515.5, '2016-04-26 21:01:30'),
(267, 3100, 15.5, 0, 0, 3515.5, '2016-04-27 21:01:30'),
(268, 3100, 15.5, 0, 0, 3515.5, '2016-04-28 21:01:30'),
(269, 3100, 15.5, 0, 0, 3515.5, '2016-04-29 21:01:30'),
(270, 3100, 15.5, 0, 0, 3515.5, '2016-04-30 21:01:30'),
(271, 3100, 15.5, 0, 0, 3515.5, '2016-05-01 21:01:30'),
(272, 3100, 15.5, 0, 0, 3515.5, '2016-05-02 21:01:30'),
(273, 3100, 15.5, 0, 0, 3515.5, '2016-05-03 21:01:30');

--
-- 触发器 `manage_trade`
--
DELIMITER $$
CREATE TRIGGER `mt_updateTime` BEFORE INSERT ON `manage_trade` FOR EACH ROW BEGIN
	set new.UpdateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `manage_user`
--

CREATE TABLE `manage_user` (
  `Id` bigint(20) NOT NULL,
  `CustomerCount` bigint(20) NOT NULL,
  `ProducerCount` bigint(20) NOT NULL,
  `UpdateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `manage_user`
--

INSERT INTO `manage_user` (`Id`, `CustomerCount`, `ProducerCount`, `UpdateTime`) VALUES
(1, 5, 2, '2015-08-06 09:52:10'),
(2, 6, 2, '2015-08-07 09:52:10'),
(3, 6, 2, '2015-08-08 09:52:10'),
(4, 7, 2, '2015-08-09 09:52:10'),
(5, 7, 2, '2015-08-10 09:52:10'),
(6, 7, 3, '2015-08-11 09:52:10'),
(7, 7, 3, '2015-08-12 09:52:10'),
(8, 7, 3, '2015-08-13 09:52:10'),
(9, 7, 4, '2015-08-14 09:52:10'),
(10, 7, 4, '2015-08-15 09:52:10'),
(11, 7, 4, '2015-08-16 09:52:10'),
(12, 7, 4, '2015-08-17 09:52:10'),
(13, 7, 4, '2015-08-18 09:52:10'),
(14, 7, 4, '2015-08-19 09:52:10'),
(15, 7, 4, '2015-08-20 09:52:10'),
(16, 8, 4, '2015-08-21 09:52:10'),
(17, 8, 4, '2015-08-22 09:52:10'),
(18, 9, 4, '2015-08-23 09:52:10'),
(19, 9, 4, '2015-08-24 09:52:10'),
(20, 9, 4, '2015-08-25 09:52:10'),
(21, 10, 4, '2015-08-26 09:52:10'),
(22, 10, 4, '2015-08-27 09:52:10'),
(23, 10, 4, '2015-08-28 09:52:10'),
(24, 10, 4, '2015-08-29 09:52:10'),
(25, 10, 4, '2015-08-30 09:52:10'),
(26, 10, 4, '2015-08-31 09:52:10'),
(27, 10, 4, '2015-09-01 09:52:10'),
(28, 11, 4, '2015-09-02 09:52:10'),
(29, 12, 4, '2015-09-03 09:52:10'),
(30, 12, 4, '2015-09-04 09:52:10'),
(31, 12, 4, '2015-09-05 09:52:10'),
(32, 12, 4, '2015-09-06 09:52:10'),
(33, 12, 4, '2015-09-07 09:52:10'),
(34, 15, 4, '2015-09-08 09:52:10'),
(35, 15, 4, '2015-09-09 09:52:10'),
(36, 15, 4, '2015-09-10 09:52:10'),
(37, 15, 4, '2015-09-11 09:52:10'),
(38, 14, 4, '2015-09-12 09:52:10'),
(39, 14, 4, '2015-09-13 09:52:10'),
(40, 14, 5, '2015-09-14 09:52:10'),
(41, 14, 5, '2015-09-15 09:52:10'),
(42, 14, 5, '2015-09-16 09:52:10'),
(43, 14, 5, '2015-09-17 09:52:10'),
(44, 14, 5, '2015-09-18 09:52:10'),
(45, 14, 5, '2015-09-19 09:52:10'),
(46, 14, 5, '2015-09-20 09:52:10'),
(47, 14, 5, '2015-09-21 09:52:10'),
(48, 14, 5, '2015-09-22 09:52:10'),
(49, 14, 5, '2015-09-23 09:52:10'),
(50, 14, 5, '2015-09-24 09:52:10'),
(51, 14, 5, '2015-09-25 09:52:10'),
(52, 14, 5, '2015-09-26 09:52:10'),
(53, 14, 5, '2015-09-27 09:52:10'),
(54, 14, 5, '2015-09-28 09:52:10'),
(55, 14, 5, '2015-09-29 09:52:10'),
(56, 14, 5, '2015-09-30 09:52:10'),
(57, 14, 5, '2015-10-01 09:52:10'),
(58, 14, 5, '2015-10-02 09:52:10'),
(59, 14, 5, '2015-10-03 09:52:10'),
(60, 14, 5, '2015-10-04 09:52:11'),
(61, 14, 5, '2015-10-05 09:52:10'),
(62, 14, 5, '2015-10-06 09:52:10'),
(63, 14, 5, '2015-10-07 09:52:10'),
(64, 14, 5, '2015-10-08 09:52:10'),
(65, 14, 5, '2015-10-09 09:52:10'),
(66, 14, 5, '2015-10-10 09:52:10'),
(67, 14, 5, '2015-10-11 09:52:11'),
(68, 14, 5, '2015-10-12 09:52:10'),
(69, 14, 5, '2015-10-13 09:52:10'),
(70, 14, 5, '2015-10-14 09:52:10'),
(71, 14, 5, '2015-10-15 09:52:10'),
(72, 15, 5, '2015-10-16 09:52:10'),
(73, 15, 5, '2015-10-17 09:52:10'),
(74, 15, 5, '2015-10-18 09:52:10'),
(75, 15, 5, '2015-10-19 09:52:10'),
(76, 15, 5, '2015-10-20 09:52:10'),
(77, 15, 5, '2015-10-21 09:52:10'),
(78, 15, 5, '2015-10-22 09:52:10'),
(79, 15, 5, '2015-10-23 09:52:10'),
(80, 15, 5, '2015-10-24 09:52:10'),
(81, 15, 5, '2015-10-25 09:52:10'),
(82, 15, 5, '2015-10-26 09:52:10'),
(83, 15, 5, '2015-10-27 09:52:10'),
(84, 15, 5, '2015-10-28 09:52:10'),
(85, 15, 5, '2015-10-29 09:52:10'),
(86, 15, 5, '2015-10-30 09:52:10'),
(87, 15, 5, '2015-10-31 09:52:10'),
(88, 15, 5, '2015-11-01 09:52:10'),
(89, 15, 5, '2015-11-02 09:52:10'),
(90, 15, 5, '2015-11-03 09:52:10'),
(91, 15, 5, '2015-11-04 09:52:10'),
(92, 15, 5, '2015-11-05 09:52:10'),
(93, 15, 5, '2015-11-06 09:52:10'),
(94, 15, 5, '2015-11-07 09:52:10'),
(95, 15, 5, '2015-11-08 09:52:10'),
(96, 15, 5, '2015-11-09 09:52:10'),
(97, 15, 5, '2015-11-10 09:52:10'),
(98, 15, 5, '2015-11-11 09:52:10'),
(99, 15, 5, '2015-11-12 09:52:10'),
(100, 15, 5, '2015-11-13 09:52:10'),
(101, 15, 5, '2015-11-14 09:52:10'),
(102, 15, 5, '2015-11-15 09:52:10'),
(103, 15, 5, '2015-11-16 09:52:10'),
(104, 15, 5, '2015-11-17 09:52:10'),
(105, 15, 5, '2015-11-18 09:52:10'),
(106, 15, 5, '2015-11-19 09:52:10'),
(107, 15, 5, '2015-11-20 09:52:10'),
(108, 17, 5, '2015-11-21 09:52:10'),
(109, 17, 5, '2015-11-22 09:52:10'),
(110, 17, 5, '2015-11-23 09:52:10'),
(111, 17, 5, '2015-11-24 09:52:10'),
(112, 17, 5, '2015-11-25 09:52:10'),
(113, 17, 5, '2015-11-26 09:52:10'),
(114, 17, 5, '2015-11-27 09:52:10'),
(115, 17, 5, '2015-11-28 09:52:10'),
(116, 17, 5, '2015-11-29 09:52:10'),
(117, 17, 5, '2015-11-30 09:52:10'),
(118, 17, 5, '2015-12-01 09:52:10'),
(119, 17, 5, '2015-12-02 09:52:10'),
(120, 18, 5, '2015-12-03 09:52:10'),
(121, 18, 5, '2015-12-04 09:52:10'),
(122, 18, 5, '2015-12-05 09:52:10'),
(123, 18, 5, '2015-12-06 09:52:10'),
(124, 18, 5, '2015-12-07 09:52:10'),
(125, 18, 5, '2015-12-08 09:52:10'),
(126, 18, 5, '2015-12-09 09:52:10'),
(127, 18, 5, '2015-12-10 09:52:10'),
(128, 18, 5, '2015-12-11 09:52:10'),
(129, 18, 5, '2015-12-12 09:52:10'),
(130, 18, 5, '2015-12-13 09:52:10'),
(131, 18, 5, '2015-12-14 09:52:10'),
(132, 18, 5, '2015-12-15 09:52:10'),
(133, 18, 5, '2015-12-16 09:52:10'),
(134, 18, 5, '2015-12-17 09:52:10'),
(135, 18, 5, '2015-12-18 09:52:10'),
(136, 18, 5, '2015-12-19 09:52:10'),
(137, 18, 6, '2015-12-20 09:52:10'),
(138, 18, 6, '2015-12-21 09:52:10'),
(139, 18, 6, '2015-12-22 09:52:10'),
(140, 18, 6, '2015-12-23 09:52:10'),
(141, 18, 6, '2015-12-24 09:52:10'),
(142, 18, 6, '2015-12-25 09:52:10'),
(143, 18, 6, '2015-12-26 09:52:10'),
(144, 18, 6, '2015-12-27 09:52:10'),
(145, 18, 6, '2015-12-28 09:52:10'),
(146, 18, 6, '2015-12-29 09:52:10'),
(147, 18, 6, '2015-12-30 09:52:10'),
(148, 18, 6, '2015-12-31 09:52:10'),
(149, 18, 6, '2016-01-01 09:52:10'),
(150, 18, 6, '2016-01-02 09:52:10'),
(151, 19, 6, '2016-01-03 09:52:10'),
(152, 19, 6, '2016-01-04 09:52:10'),
(153, 22, 6, '2016-01-05 09:52:10'),
(154, 22, 6, '2016-01-06 09:52:10'),
(155, 22, 6, '2016-01-07 09:52:10'),
(156, 22, 6, '2016-01-08 09:52:10'),
(157, 22, 6, '2016-01-09 09:52:10'),
(158, 22, 6, '2016-01-10 09:52:10'),
(159, 22, 6, '2016-01-11 09:52:10'),
(160, 22, 6, '2016-01-12 09:52:10'),
(161, 22, 6, '2016-01-13 09:52:10'),
(162, 22, 6, '2016-01-14 09:52:10'),
(163, 22, 6, '2016-01-15 09:52:10'),
(164, 22, 6, '2016-01-16 09:52:10'),
(165, 22, 6, '2016-01-17 09:52:10'),
(166, 22, 6, '2016-01-18 09:52:10'),
(167, 22, 6, '2016-01-19 09:52:10'),
(168, 22, 6, '2016-01-20 09:52:10'),
(169, 22, 6, '2016-01-21 09:52:10'),
(170, 22, 6, '2016-01-22 09:52:10'),
(171, 22, 6, '2016-01-23 09:52:10'),
(172, 22, 6, '2016-01-24 09:52:10'),
(173, 22, 6, '2016-01-25 09:52:10'),
(174, 22, 6, '2016-01-26 09:52:10'),
(175, 22, 6, '2016-01-27 09:52:10'),
(176, 22, 6, '2016-01-28 09:52:10'),
(177, 22, 6, '2016-01-29 09:52:10'),
(178, 22, 6, '2016-01-30 09:52:10'),
(179, 22, 6, '2016-01-31 09:52:10'),
(180, 22, 6, '2016-02-01 09:52:10'),
(181, 22, 6, '2016-02-02 09:52:10'),
(182, 22, 6, '2016-02-03 09:52:10'),
(183, 22, 6, '2016-02-04 09:52:11'),
(184, 22, 6, '2016-02-05 09:52:10'),
(185, 22, 6, '2016-02-06 09:52:10'),
(186, 22, 6, '2016-02-07 09:52:10'),
(187, 22, 6, '2016-02-08 09:52:10'),
(188, 22, 6, '2016-02-09 09:52:10'),
(189, 22, 6, '2016-02-10 09:52:10'),
(190, 22, 6, '2016-02-11 09:52:10'),
(191, 22, 6, '2016-02-12 09:52:10'),
(192, 22, 6, '2016-02-13 09:52:10'),
(193, 22, 6, '2016-02-14 09:52:10'),
(194, 22, 6, '2016-02-15 09:52:10'),
(195, 22, 6, '2016-02-16 09:52:10'),
(196, 22, 6, '2016-02-17 09:52:10'),
(197, 22, 6, '2016-02-18 09:52:10'),
(198, 22, 6, '2016-02-19 09:52:10'),
(199, 22, 6, '2016-02-20 09:52:10'),
(200, 22, 6, '2016-02-21 09:52:10'),
(201, 22, 6, '2016-02-22 09:52:10'),
(202, 22, 6, '2016-02-23 09:52:10'),
(203, 22, 6, '2016-02-24 09:52:10'),
(204, 22, 6, '2016-02-25 09:52:10'),
(205, 22, 6, '2016-02-26 09:52:10'),
(206, 22, 6, '2016-02-27 09:52:10'),
(207, 22, 6, '2016-02-28 09:52:10'),
(208, 22, 6, '2016-02-29 09:52:10'),
(209, 22, 6, '2016-03-01 09:52:10'),
(210, 22, 6, '2016-03-02 09:52:10'),
(211, 22, 6, '2016-03-03 09:52:10'),
(212, 22, 6, '2016-03-04 09:52:10'),
(213, 22, 6, '2016-03-05 09:52:10'),
(214, 22, 6, '2016-03-06 09:52:10'),
(215, 22, 6, '2016-03-07 09:52:10'),
(216, 22, 6, '2016-03-08 09:52:10'),
(217, 22, 6, '2016-03-09 09:52:10'),
(218, 22, 6, '2016-03-10 09:52:10'),
(219, 22, 6, '2016-03-11 09:52:10'),
(220, 22, 6, '2016-03-12 09:52:10'),
(221, 22, 6, '2016-03-13 09:52:10'),
(222, 22, 6, '2016-03-14 09:52:10'),
(223, 22, 6, '2016-03-15 09:52:10'),
(224, 22, 6, '2016-03-16 09:52:10'),
(225, 22, 6, '2016-03-17 09:52:10'),
(226, 22, 6, '2016-03-18 09:52:10'),
(227, 22, 6, '2016-03-19 09:52:10'),
(228, 22, 6, '2016-03-20 09:52:10'),
(229, 22, 6, '2016-03-21 09:52:10'),
(230, 22, 6, '2016-03-22 09:52:10'),
(231, 22, 6, '2016-03-23 09:52:10'),
(232, 22, 6, '2016-03-24 09:52:10'),
(233, 22, 6, '2016-03-25 09:52:10'),
(234, 22, 6, '2016-03-26 09:52:10'),
(235, 22, 6, '2016-03-27 09:52:10'),
(236, 22, 6, '2016-03-28 09:52:10'),
(237, 22, 6, '2016-03-29 09:52:10'),
(238, 22, 6, '2016-03-30 09:52:10'),
(239, 22, 6, '2016-03-31 09:52:10'),
(240, 22, 6, '2016-04-01 09:52:10'),
(241, 22, 6, '2016-04-02 09:52:10'),
(242, 22, 6, '2016-04-03 09:52:10'),
(243, 22, 6, '2016-04-04 09:52:10'),
(244, 22, 6, '2016-04-05 09:52:10'),
(245, 22, 6, '2016-04-06 09:52:10'),
(246, 22, 6, '2016-04-07 09:52:10'),
(247, 22, 6, '2016-04-08 09:52:10'),
(248, 22, 6, '2016-04-09 09:52:10'),
(249, 22, 6, '2016-04-10 09:52:10'),
(250, 24, 6, '2016-04-11 09:52:10'),
(251, 25, 6, '2016-04-12 09:52:10'),
(252, 25, 6, '2016-04-13 09:52:10'),
(253, 25, 6, '2016-04-14 09:52:10'),
(254, 25, 6, '2016-04-15 09:52:10'),
(255, 25, 6, '2016-04-16 09:52:10'),
(256, 25, 6, '2016-04-17 09:52:10'),
(257, 25, 6, '2016-04-18 09:52:10'),
(258, 25, 6, '2016-04-19 09:52:10'),
(259, 25, 6, '2016-04-20 09:52:10'),
(260, 25, 6, '2016-04-21 09:52:10'),
(261, 25, 6, '2016-04-22 09:52:10'),
(262, 25, 6, '2016-04-23 09:52:10'),
(263, 25, 6, '2016-04-24 09:52:10'),
(264, 25, 6, '2016-04-25 09:52:10'),
(265, 25, 6, '2016-04-26 09:52:10'),
(266, 25, 6, '2016-04-27 09:52:10'),
(267, 25, 6, '2016-04-28 09:52:10'),
(268, 25, 6, '2016-04-29 09:52:10'),
(269, 25, 6, '2016-04-30 09:52:10'),
(270, 25, 6, '2016-05-01 09:52:10'),
(271, 25, 6, '2016-05-02 09:52:10'),
(272, 25, 6, '2016-05-03 09:52:10');

--
-- 触发器 `manage_user`
--
DELIMITER $$
CREATE TRIGGER `mu_updateTime` BEFORE INSERT ON `manage_user` FOR EACH ROW BEGIN
	set new.UpdateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `markpoint`
--

CREATE TABLE `markpoint` (
  `Id` bigint(20) NOT NULL,
  `AttachmentId` bigint(20) NOT NULL,
  `Time` time NOT NULL,
  `Content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `markpoint`
--

INSERT INTO `markpoint` (`Id`, `AttachmentId`, `Time`, `Content`) VALUES
(31, 109, '00:00:02', 'test'),
(32, 113, '00:00:01', '有些小问题。'),
(33, 113, '00:00:02', '有些小问题。'),
(34, 121, '00:00:08', '光线亮一点'),
(35, 121, '00:00:20', '这里也有问题'),
(36, 129, '00:00:05', '太暗'),
(38, 133, '00:00:07', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉'),
(39, 136, '00:00:11', '这个地方颜色太亮了   '),
(40, 137, '00:00:04', '画面很模糊。'),
(41, 141, '00:00:07', '123'),
(42, 150, '00:00:14', 'fggfggffgfg'),
(43, 150, '00:00:00', '6565565'),
(44, 150, '00:00:07', 'erererererr'),
(45, 150, '00:00:09', '6565565'),
(46, 150, '00:00:49', '6565565'),
(47, 150, '00:01:44', '989898898');

-- --------------------------------------------------------

--
-- 表的结构 `membershiptax_order`
--

CREATE TABLE `membershiptax_order` (
  `Id` bigint(20) NOT NULL,
  `OrgExpireTime` datetime NOT NULL,
  `ExpireTime` datetime NOT NULL,
  `OrderId` bigint(20) NOT NULL,
  `CreateTime` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 触发器 `membershiptax_order`
--
DELIMITER $$
CREATE TRIGGER `mst_updateTime` BEFORE INSERT ON `membershiptax_order` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `object`
--

CREATE TABLE `object` (
  `Id` bigint(20) NOT NULL,
  `OwnerUserId` bigint(20) DEFAULT NULL,
  `CreatorUserId` bigint(20) DEFAULT NULL,
  `_Left_` bigint(20) DEFAULT NULL,
  `_Right_` bigint(20) DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `FileId` bigint(20) DEFAULT NULL,
  `ParentId` bigint(20) DEFAULT NULL,
  `Type` int(11) DEFAULT NULL,
  `Size` bigint(20) DEFAULT NULL,
  `Extend` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `Remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ModifyTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CreateTime` timestamp NULL DEFAULT NULL,
  `Description` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `Camera` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Script` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Category_1` int(11) DEFAULT NULL,
  `Category_2` int(11) DEFAULT NULL,
  `Tag` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `BShare` bit(1) NOT NULL,
  `ReferPrice` float NOT NULL,
  `BasePrice` float NOT NULL,
  `SchemePrice` float NOT NULL,
  `ShotPrice` float NOT NULL,
  `ActorPrice` float NOT NULL,
  `MusicPrice` float NOT NULL,
  `AEPrice` float NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `object`
--

INSERT INTO `object` (`Id`, `OwnerUserId`, `CreatorUserId`, `_Left_`, `_Right_`, `Name`, `FileId`, `ParentId`, `Type`, `Size`, `Extend`, `Status`, `Remark`, `ModifyTime`, `CreateTime`, `Description`, `Camera`, `Script`, `Category_1`, `Category_2`, `Tag`, `BShare`, `ReferPrice`, `BasePrice`, `SchemePrice`, `ShotPrice`, `ActorPrice`, `MusicPrice`, `AEPrice`, `Price`) VALUES
(373, 33, 33, 1, 1016, '529450714@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-07-31 07:38:30', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(374, 34, 34, 1, 838, 'erikaq@126.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-07-31 07:38:55', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(375, 33, 33, 906, 911, '新建一', NULL, 373, NULL, NULL, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-07-31 07:51:11', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(377, 33, 33, 920, 1009, 'head.jpg', 70, 373, 1, 76264, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-07-31 07:53:49', '图片', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(378, 35, 35, 1, 954, 'huiteng@139.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-07-31 08:00:20', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(379, 35, 35, 906, 909, '汇腾头像', NULL, 378, NULL, NULL, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-07-31 08:02:03', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(381, 35, 35, 910, 917, '汇腾广告', NULL, 378, NULL, NULL, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-07-31 08:22:32', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(382, 35, 35, 911, 912, '彩页 内页.jpg', 72, 381, 1, 581443, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-07-31 08:22:55', '业务介绍', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(383, 35, 35, 913, 914, '彩页 封面封底.jpg', 73, 381, 1, 399849, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-07-31 08:23:07', '官方制作平台', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(384, 35, 35, 915, 916, 'bg1.jpg', 74, 381, 1, 266377, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-07-31 08:23:15', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(385, 35, 35, 918, 951, '汇腾视频广告', NULL, 378, NULL, NULL, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-07-31 08:24:55', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(387, 34, 34, 804, 805, 'producerLogo.jpg', 76, 374, 1, 519968, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-07-31 08:49:26', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(388, 36, 36, 1, 804, '897245916@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-08-01 01:38:34', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(389, 37, 37, 1, 768, 'rick_zhang@126.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-31 07:23:33', '2015-08-01 01:57:20', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(391, 33, 33, 1012, 1013, 'banner_photography_credits.jpg', 78, 373, 1, 45072, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-08-01 11:40:39', '图片', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(395, 35, 35, 919, 920, 'orange30B', 81, 385, 0, 105427220, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-08-02 15:09:21', '使用鲜艳、明亮的画面展示了重庆柑橘产区的美景和橘子诱人的吸引力。', '', '', 2, 57, '广告片 产品广告 产品广告 浪漫 唯美 梦幻 唯美', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(396, 35, 35, 921, 922, 'ICBC_金融@家', 82, 385, 0, 108931223, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-08-02 15:12:51', '通过温馨的画面，展示了ICBC_金融@家面对不同的需求提供哪些实质的平台服务。', '', '', 2, 56, '宣传片 企业形象 欢乐 传统 朴实 喜庆 ', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(398, 35, 35, 923, 924, '神州行', 83, 385, 0, 78276350, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-08-02 15:18:26', '通过不同人群和欢快的音乐节奏，展示了神州行越变越好的产品服务和不断突破自我的企业理念。', '', '', 2, 56, '广告片 产品广告 欢乐 热闹 朴实 ', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(399, 35, 35, 925, 926, '牛酒篇30秒', 84, 385, 0, 8409594, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-08-02 15:20:07', '通过古今时代穿梭交替，展示了牛栏山酒的极佳品质。', '', '', 2, 56, '广告片 产品广告 平缓 传统 温情 ', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(401, 35, 35, 927, 928, '恒远鑫达水印样片', 86, 385, 0, 1262740, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-08-02 15:20:28', '运用美女对年轻人的吸引力，形象贴切的表达了恒远鑫达控股集团对年轻人理财需求给予切实的帮助。', '', '', 18, 58, '宣传片 企业形象 简洁 时尚 热情 ', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(407, 38, 38, 1, 658, 'huiteng@ht.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-08-04 01:58:21', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(409, 39, 39, 1, 634, '4223665@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-05 00:39:03', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(415, 39, 39, 588, 603, 'scorm1.txt', 92, 409, 2, 43, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-05 02:34:06', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(416, 34, 34, 806, 807, '彩页 内页', 72, 374, 1, 581443, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-08-05 13:08:11', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(417, 34, 34, 808, 809, 'bg1', 74, 374, 1, 266377, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-08-05 13:08:26', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(418, 39, 39, 604, 609, '成果转化', 95, 409, 1, 13694, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-06 02:49:06', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(430, 37, 37, 754, 755, '成果转化', 95, 389, 1, 13694, NULL, NULL, NULL, '2016-12-31 07:23:33', '2015-08-06 03:06:14', '如此如此', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(441, 39, 39, 610, 611, '成果转化(2)', 95, 409, 1, 13694, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-07 07:46:53', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(442, 39, 39, 612, 613, 'python27', 101, 409, 3, 5754439, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-07 07:47:04', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(443, 39, 39, 614, 615, '新建文件夹', NULL, 409, NULL, NULL, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-07 07:53:31', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(444, 35, 35, 929, 930, '中国邮政(15秒B)', 102, 385, 0, 6098844, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-08-07 08:12:34', '通过温馨的故事气氛，贴切的说明了邮政贺卡更真诚的传达了人与人之间的情感。', '', '', 2, 56, '广告片 产品广告 企业形象  简洁  浪漫  温情  ', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(448, 35, 35, 931, 932, '粤国际+', 90, 385, 0, 104508866, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-08-07 08:14:37', '几段精致的应用场景，几个亮丽的使用客户，清晰展示了广东国际商品交易中心能够在须臾之间满足客户的交易需求。', '', '', 18, 58, '宣传片 企业形象 时尚 华丽 唯美 ', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(451, 35, 35, 933, 934, '中国邮政(30A)', 103, 385, 0, 4552977, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-08-07 08:15:44', '通过温馨家庭的画面，展现了中国邮政对人于人之间起到的情感传达的力量。', '', '', 2, 56, '宣传片 企业形象 激情 深沉 喜庆 ', b'1', 50000, 50000, 0, 0, 0, 0, 0, 0),
(459, 39, 39, 616, 617, '新建文件夹(2)', NULL, 409, NULL, NULL, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-07 09:08:05', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(460, 33, 33, 1014, 1015, '新建文件夹', NULL, 373, NULL, NULL, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-08-07 09:08:06', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(461, 41, 41, 1, 588, '20345797@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-08 02:16:46', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(462, 43, 43, 1, 586, '1029743561@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-10 06:07:59', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(463, 44, 44, 1, 610, '499927522@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-13 10:29:03', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(464, 44, 44, 588, 603, '图片', NULL, 463, NULL, NULL, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-13 10:45:24', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(465, 44, 44, 589, 590, 'QQ图片20150813184333', 108, 464, 1, 43345, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-13 10:45:44', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(466, 44, 44, 591, 598, 'QQ图片20150814094138', 109, 464, 1, 404291, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-14 01:42:57', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(467, 44, 44, 599, 600, 'QQ图片20150814094138(2)', 109, 464, 1, 404291, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-14 01:43:12', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(468, 44, 44, 604, 609, '视频', NULL, 463, NULL, NULL, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-14 03:32:02', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(469, 44, 44, 601, 602, '1108161231d5e8919fa1419d48', 110, 464, 1, 462494, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-14 03:41:16', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(471, 44, 44, 605, 606, '美好回忆优美相册展示', 112, 468, 0, 120642356, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-14 04:46:33', '美好回忆', NULL, NULL, 18, 20, '广告片 旅游推荐 唯美 ', b'1', 230, 0, 0, 0, 0, 0, 0, 0),
(472, 44, 44, 607, 608, '超炫动感宣传视频', 113, 468, 0, 70037454, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-14 05:37:35', '炫酷达人', NULL, NULL, 18, 28, '广告片 产品 霸气 华丽 ', b'1', 320, 0, 0, 0, 0, 0, 0, 0),
(473, 34, 34, 810, 811, 'little kiss-1', 75, 374, 0, 2089029, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-08-18 12:16:24', 'test12', '', '', 2, 35, '', b'1', 1, 1, 0, 0, 0, 0, 0, 0),
(475, 45, 45, 1, 598, '313536715@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-20 05:44:46', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(476, 37, 37, 756, 757, 'orange30B', 81, 389, 0, 105427220, NULL, NULL, NULL, '2016-12-31 07:23:33', '2015-08-20 06:07:26', '这是重庆某农业公司的宣传视频。', '', '', NULL, NULL, '', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(479, 39, 39, 618, 619, '11', 116, 409, 0, 3477207, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-20 06:23:11', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(483, 39, 39, 620, 621, 'test6', 120, 409, 0, 1972452, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-20 07:20:18', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(484, 39, 39, 622, 623, 'test5', 121, 409, 0, 1850071, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-20 07:22:48', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(485, 46, 46, 1, 558, '462264505@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-08-22 03:58:32', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(486, 46, 46, 548, 549, 'wKh1mVXWc3yAb-iBAHtXfHgffgE888', 122, 485, 0, 8083356, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-08-22 03:58:46', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(487, 46, 46, 550, 551, 'a', 123, 485, 0, 3987415, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-08-22 04:04:38', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(488, 46, 46, 552, 553, 'b', 124, 485, 0, 5059905, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-08-22 04:08:47', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(490, 46, 46, 554, 555, '真核生物DNA复制', 126, 485, 0, 11070068, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-08-22 04:17:39', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(492, 46, 46, 556, 557, '11', 116, 485, 0, 3477207, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-08-22 05:15:46', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(502, 39, 39, 624, 625, 'testmd5', 133, 409, 0, 1068807, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-24 02:27:13', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(503, 34, 34, 812, 813, 'testmd52', 134, 374, 0, 1295253, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-08-24 02:30:04', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(504, 47, 47, 1, 550, '1048014094@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-08-25 14:37:18', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(505, 39, 39, 626, 627, '真核生物DNA复制.mov', 126, 409, 0, 11070068, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-26 08:41:03', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(506, 39, 39, 628, 629, '真核生物DNA复制(2).mov', 126, 409, 0, 11070068, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-26 08:41:55', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(507, 39, 39, 630, 631, '真核生物DNA复制(3).mov', 126, 409, 0, 11070068, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-26 09:01:16', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(508, 39, 39, 632, 633, '真核生物DNA复制(4).mov', 126, 409, 0, 11070068, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-08-26 09:03:02', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(512, 34, 34, 814, 815, 'little.mp4', 136, 374, 0, 652554, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-08-28 02:55:06', NULL, NULL, NULL, NULL, NULL, NULL, b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(513, 45, 45, 588, 591, '新建文件夹', NULL, 475, NULL, NULL, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-09-01 05:46:45', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(514, 34, 34, 816, 817, '3O51V5Q49Q.jpg', 137, 374, 1, 836810, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-09-01 05:54:50', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(515, 45, 45, 589, 590, '新建文件夹', NULL, 513, NULL, NULL, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-09-01 05:55:38', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(516, 45, 45, 592, 593, 'iphone 6 plus 008.avi', 138, 475, 0, 4615832, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-09-01 06:01:54', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(517, 45, 45, 594, 595, 'iphone 6 plus 014.avi', 139, 475, 0, 5653738, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-09-01 06:02:06', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(518, 45, 45, 596, 597, 'iphone de 6plus 5817.MOV.mov', 140, 475, 0, 13679088, NULL, NULL, NULL, '2016-12-19 14:08:22', '2015-09-01 06:08:56', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(519, 48, 48, 1, 548, 'jiangxuechao@sina.cn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-01 07:06:02', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(524, 48, 48, 194, 195, '002.jpg', 141, 519, 1, 542427, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:43:51', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(525, 48, 48, 196, 197, '004.jpg', 142, 519, 1, 752040, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:43:52', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(526, 48, 48, 198, 199, '005.jpg', 143, 519, 1, 427857, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:43:53', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(527, 48, 48, 200, 201, '006.jpg', 144, 519, 1, 416315, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:43:54', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(528, 48, 48, 202, 203, '007.jpg', 145, 519, 1, 1078950, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:43:57', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(529, 48, 48, 204, 205, '008.jpg', 146, 519, 1, 653277, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:43:58', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(530, 48, 48, 206, 207, '009.jpg', 147, 519, 1, 454328, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:43:59', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(531, 48, 48, 208, 209, '9Q1T0502.JPG.jpg', 148, 519, 1, 326211, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:00', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(532, 48, 48, 210, 211, '9Q1T0503.JPG.jpg', 149, 519, 1, 384439, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:01', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(533, 48, 48, 212, 213, '85公斤级国际健美冠军曹宇带队到我的工作室学习【蒋氏正脊】初级培训.jpg', 150, 519, 1, 140320, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:02', '85公斤级国际健美冠军曹宇带队到我的工作室学习【蒋氏正脊】初级培训', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(534, 48, 48, 214, 215, '2007年成功医治中国文学艺术界联合会副主席丁荫楠和他的爱人姚萍，而得到肯定与支持，并赠我《丁荫楠电影作品研讨会》书三本.JPG.jpg', 151, 519, 1, 524276, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:04', '2007年成功医治中国文学艺术界联合会副主席丁荫楠和他的爱人姚萍，而得到肯定与支持，并赠我《丁荫楠电影作品研讨会》书三本', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(535, 48, 48, 216, 217, '2008年7月1日在清华大学的社区做脊柱健康文化讲座.jpg', 152, 519, 1, 384716, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:05', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(536, 48, 48, 218, 219, '2008年进清华大学社区传播脊柱健康文化.jpg', 153, 519, 1, 699045, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:07', '2008年进清华大学社区传播脊柱健康文化', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(537, 48, 48, 220, 221, '2008年在清华大学的社区做拯救生命的脊梁——脊柱健康文化讲座.JPG.jpg', 154, 519, 1, 790505, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:07', '2008年在清华大学的社区做拯救生命的脊梁——脊柱健康文化讲座', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(538, 48, 48, 222, 223, '2011年4月8日中国报道杂志社的王林强和石红卫采访了我，并入编到中国报道中国共产党成立九十周年纪念特刊珍藏版：正气中国.pdf', 155, 519, 2, 1160001, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:09', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(539, 48, 48, 224, 225, '2012年5月26日参加中国医师协会第四届全国“治未病”发展论坛，发表：《浅析人体亚健康的根源是——脊柱亚健康》学术论文，还与中国医师协会健康产业委员会副会长夏丽交流并合影留念.JPG.jpg', 156, 519, 1, 617232, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:10', '2012年5月26日参加中国医师协会第四届全国“治未病”发展论坛，发表：《浅析人体亚健康的根源是——脊柱亚健康》学术论文，还与中国医师协会健康产业委员会副会长夏丽交流并合影留念', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(540, 48, 48, 226, 227, '2012年医治中国环境新闻工作协会秘书长刘国正，并合影留念.JPG.jpg', 157, 519, 1, 413833, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:11', '2012年医治中国环境新闻工作协会秘书长刘国正，并合影留念', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(541, 48, 48, 228, 229, '2013年医治1950年第一批参加抗美援朝的志愿军何宗光英雄，并合影留念（何宗光英雄还特意为我写了【指尖上的智慧】.JPG.jpg', 158, 519, 1, 448501, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:13', '2013年医治1950年第一批参加抗美援朝的志愿军何宗光英雄，并合影留念（何宗光英雄还特意为我写了【指尖上的智慧】', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(542, 48, 48, 230, 231, '2014年3月在山东泰安参加首届下肢血管病新技术交流会，并在会上发言转播脊柱健康文化新知识.JPG.jpg', 159, 519, 1, 514383, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:14', '2014年3月在山东泰安参加首届下肢血管病新技术交流会，并在会上发言转播脊柱健康文化新知识', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(543, 48, 48, 232, 233, '2014年6月在北京大学国际关系学院C座秋林报告厅学习、交流、传播脊柱健康文化知识.jpg', 160, 519, 1, 61024, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:15', '2014年6月在北京大学', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(544, 48, 48, 234, 235, '2014年6月在北京大学.JPG.jpg', 161, 519, 1, 401553, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:15', '2014年6月在北京大学国际关系学院C座秋林报告厅学习、交流、传播脊柱健康文化知识', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(545, 48, 48, 236, 237, '2014年6月在北京大学国际关系学院C座秋林报告厅与美国谢尔曼脊骨神经医学院院长考迪罗博士相互交流并合影留念.JPG.jpg', 162, 519, 1, 454240, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:17', '2014年6月在北京大学国际关系学院C座秋林报告厅与美国谢尔曼脊骨神经医学院院长考迪罗博士相互交流并合影留念', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(546, 48, 48, 238, 239, '2014年8月医治法国传统中医学院院长兼法国中华传统医学交流学会会长马赛并合影留念.JPG.jpg', 163, 519, 1, 475480, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:18', '2014年8月医治法国传统中医学院院长兼法国中华传统医学交流学会会长马赛并合影留念', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(547, 48, 48, 240, 241, '2014年10月医治少林寺都市禅堂堂主田健弘和中国华侨公益基金会健增蓝天梦想基金管委会主任爱新觉罗·维娜，并合影留念.JPG.jpg', 164, 519, 1, 100981, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:19', '2014年10月医治少林寺都市禅堂堂主田健弘和中国华侨公益基金会健增蓝天梦想基金管委会主任爱新觉罗·维娜，并合影留念', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(548, 48, 48, 242, 243, '2014年12月30日正式入围cctv影响力栏目.jpg', 165, 519, 1, 128963, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:19', '2014年12月30日正式入围cctv影响力栏目', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(549, 48, 48, 244, 245, '2014年11月到日坛饭庄医治索南格西的颈椎病，并赠予我的著作脊柱健康密码——行者的思考，还合影留念.JPG.jpg', 166, 519, 1, 449116, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:20', '2014年11月到日坛饭庄医治索南格西的颈椎病，并赠予我的著作脊柱健康密码——行者的思考，还合影留念', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(550, 48, 48, 246, 247, '2014年受朋友邀请到她的会馆交流脊柱健康文化，给一位德国友人医治颈椎病.JPG.jpg', 167, 519, 1, 94164, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:21', '2014年受朋友邀请到她的会馆交流脊柱健康文化，给一位德国友人医治颈椎病', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(551, 48, 48, 248, 249, '2014年医治中国天台山慈恩寺住持、国际佛法转播中心秘书长智渡法师并合影留念.JPG.jpg', 168, 519, 1, 451606, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:22', '2014年医治中国天台山慈恩寺住持、国际佛法转播中心秘书长智渡法师并合影留念', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(552, 48, 48, 250, 251, '2014年在北京大学和老师董安立（中美脊骨神经医师学会会长董安立博士）交流学习.JPG.jpg', 169, 519, 1, 405238, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:23', '2014年在北京大学和老师董安立（中美脊骨神经医师学会会长董安立博士）交流学习', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(553, 48, 48, 252, 253, '2015年5月3-4日到山东日照以北京汇医堂中医科学研究院客座教授的身份传授简单一点脊柱健康医学.jpg', 170, 519, 1, 257830, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:23', '2015年5月3-4日到山东日照以北京汇医堂中医科学研究院客座教授的身份传授简单一点脊柱健康医学', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(554, 48, 48, 254, 255, '2015年5月15到内蒙古包头去分享：拯救生命的脊梁——脊柱健康知识讲座.jpg', 171, 519, 1, 176735, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:24', '2015年5月15到内蒙古包头去分享：拯救生命的脊梁——脊柱健康知识讲座', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(555, 48, 48, 256, 257, '2015年5月29日宁波市重点学科骨外科学学科带头人，宁波大学附属医院骨科脊柱外科主任到我的工作室相互交流脊柱健康密码的发现与解决方案.jpg', 172, 519, 1, 217584, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:25', '2015年5月29日宁波市重点学科骨外科学学科带头人，宁波大学附属医院骨科脊柱外科主任到我的工作室相互交流脊柱健康密码的发现与解决方案', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(556, 48, 48, 258, 259, '2015年6月29日到扬州泰州医治国中医药的董事长李伟并合影留念.jpg', 173, 519, 1, 627676, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:26', '2015年6月29日到扬州泰州医治国中医药的董事长李伟并合影留念', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(557, 48, 48, 260, 261, '2015年7月与年过古稀的王道长（道医正骨第一人）简单切磋了一下正脊技术.jpg', 174, 519, 1, 196732, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:27', '2015年7月与年过古稀的王道长（道医正骨第一人）简单切磋了一下正脊技术', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(558, 48, 48, 262, 263, 'da_1423543991918.jpg', 175, 519, 1, 103818, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:28', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(559, 48, 48, 264, 265, 'da_1423553136959.jpg', 176, 519, 1, 101588, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:28', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(560, 48, 48, 266, 267, 'da_1423719045965.jpg', 177, 519, 1, 95980, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:29', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(561, 48, 48, 268, 269, 'da_1425903574006.jpg', 178, 519, 1, 95298, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:29', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(562, 48, 48, 270, 271, 'IMG_1640.jpg', 179, 519, 1, 92663, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:30', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(563, 48, 48, 272, 273, 'IMG_3207.JPG.jpg', 180, 519, 1, 92531, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:30', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(564, 48, 48, 274, 275, 'IMG_20150410_080902.jpg', 181, 519, 1, 439413, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:32', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(565, 48, 48, 276, 277, 'IMG_20150410_080936.jpg', 182, 519, 1, 349810, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:32', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(566, 48, 48, 278, 279, 'IMG_20150410_081011.jpg', 183, 519, 1, 452459, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:34', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(567, 48, 48, 280, 281, 'IMG_20150412_122656.jpg', 184, 519, 1, 513530, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:35', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(568, 48, 48, 282, 283, 'IMG_20150412_122713.jpg', 185, 519, 1, 395710, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:36', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(569, 48, 48, 284, 285, 'IMG_20150413_102004.jpg', 186, 519, 1, 376689, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:38', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(570, 48, 48, 286, 287, 'IMG_20150413_102100.jpg', 187, 519, 1, 405553, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:39', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(571, 48, 48, 288, 289, 'IMG_20150507_150347.jpg', 188, 519, 1, 349642, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:40', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(572, 48, 48, 290, 291, 'IMG_20150507_150351.jpg', 189, 519, 1, 405823, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:41', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(573, 48, 48, 292, 293, 'IMG_20150507_153409_1.jpg', 190, 519, 1, 393253, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:42', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(574, 48, 48, 294, 295, 'IMG_20150507_153433_1.jpg', 191, 519, 1, 412175, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:43', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(575, 48, 48, 296, 297, 'IMG_20150510_170110.jpg', 192, 519, 1, 368951, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:44', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(576, 48, 48, 298, 299, 'IMG_20150510_170112.jpg', 193, 519, 1, 401319, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:45', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(577, 48, 48, 300, 301, 'IMG_20150510_170115.jpg', 194, 519, 1, 378224, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:47', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(578, 48, 48, 302, 303, 'IMG_20150511_153418.jpg', 195, 519, 1, 386494, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:47', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(579, 48, 48, 304, 305, 'IMG_20150530_114802.jpg', 196, 519, 1, 349455, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:49', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(580, 48, 48, 306, 307, 'IMG_20150530_114804.jpg', 197, 519, 1, 348993, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:50', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(581, 48, 48, 308, 309, 'IMG_20150609_085921.jpg', 198, 519, 1, 295956, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:51', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(582, 48, 48, 310, 311, 'IMG_20150609_085923.jpg', 199, 519, 1, 324298, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:52', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(583, 48, 48, 312, 313, 'IMG_20150609_113059.jpg', 200, 519, 1, 349572, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:53', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(584, 48, 48, 314, 315, 'IMG_20150609_161516.jpg', 201, 519, 1, 293246, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:53', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(585, 48, 48, 316, 317, 'IMG_20150620_195342.jpg', 202, 519, 1, 412976, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:54', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(586, 48, 48, 318, 319, 'IMG_20150703_104639_2.jpg', 203, 519, 1, 638881, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:56', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(587, 48, 48, 320, 321, 'IMG_20150703_104643_1.jpg', 204, 519, 1, 572389, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:57', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(588, 48, 48, 322, 323, 'mmexport1423639066616.jpg', 205, 519, 1, 204140, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:57', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(589, 48, 48, 324, 325, 'mmexport1423639086788.jpg', 206, 519, 1, 212446, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:58', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(590, 48, 48, 326, 327, 'mmexport1425904883590.jpg', 207, 519, 1, 189141, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:58', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(591, 48, 48, 328, 329, 'mmexport1426065732987.jpg', 208, 519, 1, 209052, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:44:59', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(592, 48, 48, 330, 331, 'mmexport1426065781476.jpg', 209, 519, 1, 198486, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:00', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(593, 48, 48, 332, 333, 'mmexport1426500873357.jpg', 210, 519, 1, 74366, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:01', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(594, 48, 48, 334, 335, 'mmexport1426065891990.jpg', 211, 519, 1, 231210, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:01', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(595, 48, 48, 336, 337, 'mmexport1426500901464.jpg', 212, 519, 1, 75464, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:02', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(596, 48, 48, 338, 339, 'mmexport1426500884413.jpg', 213, 519, 1, 54087, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:02', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(597, 48, 48, 340, 341, 'mmexport1426501354196.jpg', 214, 519, 1, 96818, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:03', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(598, 48, 48, 342, 343, 'mmexport1430281216377.jpg', 215, 519, 1, 132683, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:03', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(599, 48, 48, 344, 345, 'mmexport1430281534560.jpg', 216, 519, 1, 129982, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:04', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(600, 48, 48, 346, 347, 'mmexport1430745517824.jpg', 217, 519, 1, 131977, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:05', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(601, 48, 48, 348, 349, 'mmexport1430745579393.jpg', 218, 519, 1, 186152, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:06', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(602, 48, 48, 350, 351, 'mmexport1430745618133.jpg', 219, 519, 1, 120286, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:06', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(603, 48, 48, 352, 353, 'mmexport1431062843685.jpg', 220, 519, 1, 60302, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:08', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(604, 48, 48, 354, 355, 'P1150106.JPG.jpg', 221, 519, 1, 433825, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:09', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(605, 48, 48, 356, 357, 'P1150113.JPG.jpg', 222, 519, 1, 407575, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:10', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(606, 48, 48, 358, 359, 'P1150123.JPG.jpg', 223, 519, 1, 93066, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:10', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(607, 48, 48, 360, 361, 'S5003476.JPG.jpg', 224, 519, 1, 581041, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:13', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(608, 48, 48, 362, 363, 'S5003488.JPG.jpg', 225, 519, 1, 582579, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:14', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(609, 48, 48, 364, 365, 'S5003491.JPG.jpg', 226, 519, 1, 616157, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:16', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(610, 48, 48, 366, 367, 'S7300107.JPG.jpg', 227, 519, 1, 707219, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:17', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(611, 48, 48, 368, 369, 'S7300109.JPG.jpg', 228, 519, 1, 669232, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:18', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(612, 48, 48, 370, 371, 'SAM_2431.JPG.jpg', 229, 519, 1, 407742, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:20', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(613, 48, 48, 372, 373, 'SAM_2597.JPG.jpg', 230, 519, 1, 428684, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:21', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(614, 48, 48, 374, 375, 'SAM_2611.JPG.jpg', 231, 519, 1, 518574, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:23', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(615, 48, 48, 376, 377, 'SAM_2612.JPG.jpg', 232, 519, 1, 461104, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:24', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(616, 48, 48, 378, 379, 'SAM_2613.JPG.jpg', 233, 519, 1, 484202, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:26', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(617, 48, 48, 380, 381, 'SAM_2682.JPG.jpg', 234, 519, 1, 428541, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:26', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(618, 48, 48, 382, 383, 'SAM_2684.JPG.jpg', 235, 519, 1, 463521, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:29', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(619, 48, 48, 384, 385, 'SAM_2685.JPG.jpg', 236, 519, 1, 430137, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:30', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(620, 48, 48, 386, 387, 'SAM_2686.JPG.jpg', 237, 519, 1, 489929, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:32', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(621, 48, 48, 388, 389, 'SAM_2695.JPG.jpg', 238, 519, 1, 424991, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:33', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(622, 48, 48, 390, 391, 'SAM_2710.JPG.jpg', 239, 519, 1, 622582, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:35', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(623, 48, 48, 392, 393, 'SAM_2712.JPG.jpg', 240, 519, 1, 594330, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:36', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(624, 48, 48, 394, 395, 'SAM_2716.JPG.jpg', 241, 519, 1, 489100, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:37', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(625, 48, 48, 396, 397, 'SAM_2717.JPG.jpg', 242, 519, 1, 440270, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:39', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(626, 48, 48, 398, 399, 'SAM_2735.JPG.jpg', 243, 519, 1, 404594, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:40', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(627, 48, 48, 400, 401, 'SAM_2746.JPG.jpg', 244, 519, 1, 461870, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:42', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(628, 48, 48, 402, 403, 'SAM_2750.JPG.jpg', 245, 519, 1, 485905, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:43', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(629, 48, 48, 404, 405, 'SAM_2783.JPG.jpg', 246, 519, 1, 402681, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:45', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(630, 48, 48, 406, 407, 'SAM_2809.JPG.jpg', 247, 519, 1, 436933, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:47', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(631, 48, 48, 408, 409, 'SAM_2810.JPG.jpg', 248, 519, 1, 410125, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:48', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(632, 48, 48, 410, 411, 'SAM_2838.JPG.jpg', 249, 519, 1, 448325, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:49', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(633, 48, 48, 412, 413, 'SAM_2839.JPG.jpg', 250, 519, 1, 462690, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:51', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(634, 48, 48, 414, 415, 'SAM_2842.JPG.jpg', 251, 519, 1, 447800, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:52', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(635, 48, 48, 416, 417, 'SAM_2843.JPG.jpg', 252, 519, 1, 441220, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:53', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(636, 48, 48, 418, 419, 'SAM_2851.JPG.jpg', 253, 519, 1, 529361, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:54', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(637, 48, 48, 420, 421, 'SAM_2852.JPG.jpg', 254, 519, 1, 512311, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:55', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(638, 48, 48, 422, 423, 'SAM_2854.JPG.jpg', 255, 519, 1, 497894, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:56', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(639, 48, 48, 424, 425, 'SAM_2857.JPG.jpg', 256, 519, 1, 485178, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:57', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(640, 48, 48, 426, 427, 'SAM_2863.JPG.jpg', 257, 519, 1, 509426, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:58', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(641, 48, 48, 428, 429, 'SAM_2867.JPG.jpg', 258, 519, 1, 438503, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:45:59', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(642, 48, 48, 430, 431, 'SAM_2868.JPG.jpg', 259, 519, 1, 548790, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:00', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(643, 48, 48, 432, 433, 'SAM_2869.JPG.jpg', 260, 519, 1, 497582, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:00', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(644, 48, 48, 434, 435, 'SAM_2882.JPG.jpg', 261, 519, 1, 541922, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:02', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(645, 48, 48, 436, 437, 'SAM_2892.JPG.jpg', 262, 519, 1, 477854, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:04', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(646, 48, 48, 438, 439, 'SAM_2902.JPG.jpg', 263, 519, 1, 568016, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:05', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(647, 48, 48, 440, 441, 'SAM_2906.JPG.jpg', 264, 519, 1, 585137, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:06', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(648, 48, 48, 442, 443, 'SAM_2917.JPG.jpg', 265, 519, 1, 483646, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:07', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(649, 48, 48, 444, 445, 'SAM_2918.JPG.jpg', 266, 519, 1, 501024, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:08', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(650, 48, 48, 446, 447, 'SAM_2937.JPG.jpg', 267, 519, 1, 477359, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:09', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(651, 48, 48, 448, 449, 'SAM_2963.JPG.jpg', 268, 519, 1, 521145, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:10', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(652, 48, 48, 450, 451, 'SAM_3083 - 副本.JPG.jpg', 269, 519, 1, 507902, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:11', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(653, 48, 48, 452, 453, 'SAM_3083 - 副本.JPG(2).jpg', 269, 519, 1, 507902, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:11', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(654, 48, 48, 454, 455, 'SAM_3087.JPG.jpg', 270, 519, 1, 531874, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:13', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(655, 48, 48, 456, 457, 'SAM_3091.JPG.jpg', 271, 519, 1, 521465, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:17', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(656, 48, 48, 458, 459, 'SAM_3092.JPG.jpg', 272, 519, 1, 457829, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:18', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(657, 48, 48, 460, 461, 'SAM_3109.JPG.jpg', 273, 519, 1, 464271, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:23', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(658, 48, 48, 462, 463, 'SAM_3111.JPG.jpg', 274, 519, 1, 462868, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:25', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(659, 48, 48, 464, 465, 'SAM_3116.JPG.jpg', 275, 519, 1, 538197, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:26', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(660, 48, 48, 466, 467, 'SAM_3120.JPG.jpg', 276, 519, 1, 502701, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:28', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(661, 48, 48, 468, 469, 'SAM_3141.JPG.jpg', 277, 519, 1, 535329, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:28', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(662, 48, 48, 470, 471, '到河北香河传播脊柱健康文化.jpg', 278, 519, 1, 74305, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:29', '到河北香河传播脊柱健康文化', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(663, 48, 48, 472, 473, '参加央视给你一个亿首期创业训练营真人秀节目，得到樊登老师的指点并合影留念.JPG.jpg', 279, 519, 1, 449334, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:30', '参加央视给你一个亿首期创业训练营真人秀节目，得到樊登老师的指点并合影留念', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(664, 48, 48, 474, 475, '到抗美援朝英雄何宗光家中做客.JPG.jpg', 280, 519, 1, 559036, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:31', '到抗美援朝英雄何宗光家中做客', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(665, 48, 48, 476, 477, '和中国经络研究会会长、世界针灸学会联合会副秘书长一起交流学习.JPG.jpg', 281, 519, 1, 566951, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:32', '和中国经络研究会会长、世界针灸学会联合会副秘书长一起交流学习', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(666, 48, 48, 480, 481, '蒋学超老师.jpg', 282, 519, 1, 926207, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:34', '蒋学超老师', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(667, 48, 48, 478, 479, '矫正患者骨盆.JPG.jpg', 283, 519, 1, 388869, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:34', '矫正患者骨盆', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(668, 48, 48, 482, 483, '为年过古稀的大妈矫正腰椎滑脱（腰椎滑脱小于2度）.JPG.jpg', 284, 519, 1, 513035, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:35', '为年过古稀的大妈矫正腰椎滑脱（腰椎滑脱小于2度）', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(669, 48, 48, 484, 485, '为三岁小孩矫正脊柱治疗其协调能力与平衡能力.jpg', 285, 519, 1, 173328, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:36', '为三岁小孩矫正脊柱治疗其协调能力与平衡能力', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(670, 48, 48, 486, 487, '为学员传授【蒋氏正脊】初级技术.jpg', 286, 519, 1, 82029, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:37', '为学员传授【蒋氏正脊】初级技术', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(671, 48, 48, 488, 489, '为世界杰出华人艺术家赵龙云矫正颈椎关节.jpg', 287, 519, 1, 366745, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:38', '为世界杰出华人艺术家赵龙云矫正颈椎关节', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(672, 48, 48, 490, 491, '为原北京市残疾人联合会主席贾志明医治脊柱病痛——2015年5月11日.jpg', 288, 519, 1, 379458, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:39', '为原北京市残疾人联合会主席贾志明医治脊柱病痛——2015年5月11日', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(673, 48, 48, 492, 493, '为战斗英雄史光柱医治脊柱病痛并合影留念（2015年5月30日）.jpg', 289, 519, 1, 399484, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:39', '为战斗英雄史光柱医治脊柱病痛并合影留念（2015年5月30日）', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(674, 48, 48, 494, 495, '新建文件夹IMG_20150707_124918.jpg', 290, 519, 1, 430041, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:40', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(675, 48, 48, 496, 497, '新建文件夹IMG_20150707_133138.jpg', 291, 519, 1, 434901, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:41', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(676, 48, 48, 500, 501, '新建文件夹mmexport1435927702523.jpg', 292, 519, 1, 184254, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:42', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(677, 48, 48, 498, 499, '新建文件夹IMG_20150731_124554.jpg', 293, 519, 1, 389099, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:42', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(678, 48, 48, 502, 503, '新建文件夹mmexport1435927720377.jpg', 294, 519, 1, 167836, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:42', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(679, 48, 48, 504, 505, '新建文件夹mmexport1436740176210.jpg', 295, 519, 1, 174905, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:43', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(680, 48, 48, 508, 509, '新建文件夹mmexport1436740230555.jpg', 296, 519, 1, 212648, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:43', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(681, 48, 48, 506, 507, '新建文件夹mmexport1437002861688.jpg', 297, 519, 1, 55135, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:43', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(682, 48, 48, 510, 511, '新建文件夹mmexport1438562855010 - 副本.jpg', 298, 519, 1, 167591, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:44', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(683, 48, 48, 512, 513, '新建文件夹mmexport1438562855010.jpg', 299, 519, 1, 167591, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:45', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(684, 48, 48, 514, 515, '新建文件夹mmexport1439336469176.jpg', 300, 519, 1, 122658, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:45', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(685, 48, 48, 516, 517, '新建文件夹mmexport1439336491011.jpg', 301, 519, 1, 128476, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:47', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(686, 48, 48, 518, 519, '医治清华大学出版社领导张励中的脊柱病痛，并合影留念（还为我写了书评：不一样的相遇.JPG.jpg', 302, 519, 1, 440681, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:48', '医治清华大学出版社领导张励中的脊柱病痛，并合影留念（还为我写了书评：不一样的相遇', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(687, 48, 48, 520, 521, '与刚果共和国驻华大使馆佛斯丹、马友马、蓬巴交流脊柱健康文化并合影留念.JPG.jpg', 303, 519, 1, 488579, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:49', '与刚果共和国驻华大使馆佛斯丹、马友马、蓬巴交流脊柱健康文化并合影留念', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(688, 48, 48, 522, 523, '与青海省果洛州州长蔡浩亮交流学习.jpg', 304, 519, 1, 386693, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:50', '与青海省果洛州州长蔡浩亮交流学习', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(689, 48, 48, 524, 525, '赠送我的著作给半月谈杂志社主任，中国形象大使王京忠法学博士，交流脊柱健康文化并合影留念.JPG.jpg', 305, 519, 1, 521874, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:51', '赠送我的著作给半月谈杂志社主任，中国形象大使王京忠法学博士，交流脊柱健康文化并合影留念', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(690, 48, 48, 528, 529, '赠著作给胡国桥大校并亲切交流.jpg', 306, 519, 1, 305827, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:51', '赠著作给胡国桥大校并亲切交流', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `object` (`Id`, `OwnerUserId`, `CreatorUserId`, `_Left_`, `_Right_`, `Name`, `FileId`, `ParentId`, `Type`, `Size`, `Extend`, `Status`, `Remark`, `ModifyTime`, `CreateTime`, `Description`, `Camera`, `Script`, `Category_1`, `Category_2`, `Tag`, `BShare`, `ReferPrice`, `BasePrice`, `SchemePrice`, `ShotPrice`, `ActorPrice`, `MusicPrice`, `AEPrice`, `Price`) VALUES
(691, 48, 48, 526, 527, '赠送我的著作脊柱健康密码——行者的思考给美国纽约华人社团联合会-共同主席乌巴特，交流脊柱健康文化并合影留念.JPG.jpg', 307, 519, 1, 559099, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:52', '赠送我的著作脊柱健康密码——行者的思考给美国纽约华人社团联合会-共同主席乌巴特，交流脊柱健康文化并合影留念', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(692, 48, 48, 530, 531, '赠著作给文化部艺术家书画院理事谭绍清大校并亲切交谈（2015年6月9号）.jpg', 308, 519, 1, 356810, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:53', '赠著作给文化部艺术家书画院理事谭绍清大校并亲切交谈（2015年6月9号）', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(693, 48, 48, 532, 533, '赵云龙赠我《富春山居图》——是赵云龙为十八大献礼作品.jpg', 309, 519, 1, 394815, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:54', '赵云龙赠我《富春山居图》——是赵云龙为十八大献礼作品', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(694, 48, 48, 534, 535, '照片 001.jpg', 310, 519, 1, 55611, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:55', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(695, 48, 48, 536, 537, '照片 002.jpg', 311, 519, 1, 55611, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:55', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(696, 48, 48, 538, 539, '照片 003.jpg', 312, 519, 1, 55611, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:56', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(697, 48, 48, 542, 543, '照片 004.jpg', 313, 519, 1, 55611, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:57', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(698, 48, 48, 540, 541, '照片 005.jpg', 314, 519, 1, 55611, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:57', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(699, 48, 48, 544, 545, '照片.jpg', 315, 519, 1, 55611, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-02 07:46:58', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(701, 47, 47, 546, 547, 'mmexport1441290803345.jpg', 316, 504, 1, 51650, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-04 01:49:36', '清三高花茶饼包装盒形象', NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(702, 47, 47, 548, 549, '新建文件夹', NULL, 504, NULL, NULL, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-04 01:49:40', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(715, 50, 50, 1, 194, ' 93351206@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-07 13:28:55', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(716, 51, 51, 1, 194, '597626879@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-07 13:38:28', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(718, 52, 52, 1, 194, '93351206@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-07 14:27:03', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(720, 53, 53, 1, 162, '156648957@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-19 05:52:34', '2015-09-13 03:20:59', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(749, 53, 53, 148, 149, '中粮可口可乐年会', 333, 720, 0, 40442318, NULL, NULL, NULL, '2016-12-19 13:52:10', '2015-09-17 14:29:18', '通过大气、激昂的开场视频，为人们展示了中粮、可口可乐企业的精神面貌。', '', '', 48, NULL, '动画视频 其他动画视频 华丽 喜庆 传统  热闹 激情 跳跃', b'1', 0, 5000, 10000, 0, 0, 5000, 20000, 0),
(750, 53, 53, 150, 151, '英菲尼迪广州车展Qx50发布.mp4', NULL, 720, 0, 78105886, NULL, NULL, NULL, '2016-12-17 08:57:44', '2015-09-17 14:48:31', '使用忽明忽暗的镜头衔切和激昂动感的背景配乐，不尽余力的展示了英菲尼迪车辆精致外观和优越性能。', '', '', 48, NULL, '动画视频 产品2D动漫 时尚 梦幻 唯美 霸气  激情 跳跃', b'1', 0, 10000, 10000, 0, 0, 10000, 20000, 0),
(763, 34, 34, 825, 826, '大漠三维展示.mp4', 339, 791, 0, 165337842, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-09-22 01:43:37', NULL, 'aa', '', NULL, NULL, '', b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(765, 34, 34, 818, 819, 'AI.flv', 345, 374, 0, 8485025, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-09-22 10:32:55', NULL, NULL, NULL, NULL, NULL, NULL, b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(766, 34, 34, 820, 821, 'little kiss.mp4', 105, 374, 0, 6461989, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-09-22 11:03:27', 'test', '', '', 2, 56, '', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(782, 34, 34, 822, 823, '我的影片.mp4', 358, 374, 0, 350503, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-09-27 03:13:02', NULL, NULL, NULL, NULL, NULL, NULL, b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(784, 57, 57, 1, 148, 'lxq@ht.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-17 08:57:44', '2015-10-16 01:11:20', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(791, 34, 34, 824, 829, '新建文件夹', NULL, 374, NULL, NULL, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-10-26 11:39:24', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(792, 37, 37, 758, 759, '58金融', 87, 389, 0, 4370503, NULL, NULL, NULL, '2016-12-31 07:23:33', '2015-10-27 13:37:06', NULL, '', '', 2, 56, '', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(794, 34, 34, 830, 833, '新建文件夹(2)', NULL, 374, NULL, NULL, NULL, NULL, NULL, '2016-12-31 06:56:28', '2015-11-05 02:46:00', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(796, 37, 37, 760, 761, 'demo', NULL, 389, NULL, NULL, NULL, NULL, NULL, '2016-12-31 07:23:33', '2015-11-05 13:05:31', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(803, 58, 58, 1, 148, 'zhuangw123@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-17 08:57:44', '2015-11-20 05:08:30', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(804, 59, 59, 1, 148, '2395402079@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-17 08:57:44', '2015-11-20 05:23:54', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(805, 60, 60, 1, 148, '406763092@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-17 08:57:44', '2015-12-02 03:50:19', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(813, 62, 62, 1, 138, '535688798@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-17 08:57:44', '2016-01-02 03:45:52', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(814, 63, 63, 1, 148, 'fannashi@126.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-17 08:57:44', '2016-01-04 03:06:11', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(815, 64, 64, 1, 148, 'sifenke@126.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-17 08:57:44', '2016-01-04 03:44:52', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(816, 65, 65, 1, 148, 'changshoufangzhou@163.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-17 08:57:44', '2016-01-04 04:00:41', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(817, 63, 63, 126, 127, '采血机器人演示动画', 364, 814, 0, 36959956, NULL, NULL, NULL, '2016-12-17 08:57:44', '2016-01-07 13:40:19', '未来全新的就诊体验，让科技造福人类！', '', '', 31, 59, ' 明快 时尚', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(818, 63, 63, 128, 129, '采血机器人', 365, 814, 0, 121468726, NULL, NULL, NULL, '2016-12-17 08:57:44', '2016-01-11 05:46:08', '未来全新的就诊体验，让科技造福人类！', '', '', 31, 59, ' 明快 时尚 大众', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(823, 35, 35, 907, 908, '商影Logo 2.jpg', 369, 379, 1, 96149, NULL, NULL, NULL, '2016-12-31 06:56:28', '2016-02-26 08:48:55', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(824, 43, 43, 566, 567, '重庆大桥样片 ', 85, 462, 0, 15803575, NULL, NULL, NULL, '2016-12-19 05:52:34', '2016-03-28 09:50:36', '通过2D动画轻快、活泼的风格方式详细的介绍了重庆大桥的施工建筑的全过程。', '', '', 31, 59, ' 欢乐 简洁 条理 清新 明快', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(825, 43, 43, 568, 569, '房产3D', 107, 462, 0, 30482709, NULL, NULL, NULL, '2016-12-19 05:52:34', '2016-03-28 09:56:42', '通过多个3D动画宣传片的综合展示，表现了联盟动画制作团队3D建筑导览的风格特征与实力水平。', '', '', 31, 60, ' 明快 理性 激情 细节 庄重 传统 清新', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(828, 43, 43, 570, 571, '大漠三维展示', 339, 462, 0, 165337842, NULL, NULL, NULL, '2016-12-19 05:52:34', '2016-03-29 01:15:21', '通过3D动画描绘了一场悲壮的荒漠之战与电光火石的灾难，充分展示了3D的制作水平。', '', '', 31, 60, ' 沉稳 深沉 霸气 激情 跳跃 细节', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(829, 53, 53, 152, 153, '华为活动开场视频', 332, 720, 0, 141447644, NULL, NULL, NULL, '2016-12-19 13:51:53', '2016-03-29 01:16:54', '运用极具动感与时代感的画面，传达华为应对资讯传播极具加速的现在及未来而面临新的需求和挑战。', '', '', 48, NULL, '', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(831, 53, 53, 154, 155, 'freedom实验视频', 69, 720, 0, 3564915, NULL, NULL, NULL, '2016-12-19 13:52:42', '2016-03-29 01:18:36', '画面通过轻快、自由的黑人舞者和干劲十足的摄影师，展示了联盟活动拍摄团队的制作实力和精神风貌。', '', '', 48, NULL, ' 纯真 欢乐 简洁 清新 热情', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(834, 43, 43, 572, 573, '58金融宣传片', 87, 462, 0, 4370503, NULL, NULL, NULL, '2016-12-19 13:48:55', '2016-03-29 09:25:20', '通过极具现代感动画画面，温情轻快的语言，讲述了58金融服务与生活密不可分的联系。', '', '', 31, 59, '', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(835, 43, 43, 574, 575, '采血机器人', 370, 462, 0, 172073897, NULL, NULL, NULL, '2016-12-19 05:52:34', '2016-03-29 09:28:48', '通过3D动画效果，具体、详细的展示了迈纳士采血机器人工作的流程及其强大的医用功能。', '', '', 31, 60, ' 浪漫 欢乐 清新 淡雅', b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(836, 43, 43, 576, 577, '摄影展示.mp4', 346, 462, 0, 183324300, NULL, NULL, NULL, '2016-12-19 05:52:34', '2016-03-30 01:50:52', '使用虚实结合的手法，充分展示了联盟制作团队的拍摄、建筑3D的实力水平。', NULL, NULL, NULL, NULL, NULL, b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(837, 34, 34, 831, 832, '摄影展示.mp4', 346, 794, 0, 183324300, NULL, NULL, NULL, '2016-12-31 06:56:28', '2016-03-30 13:21:26', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(838, 34, 34, 834, 835, '2C87E2E91D32296FA756EC5A1D709DEA.png', 371, 374, 1, 18113, NULL, NULL, NULL, '2016-12-31 06:56:28', '2016-03-30 13:59:01', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(839, 43, 43, 578, 579, '正脊和堂.mov', 359, 462, 0, 326795177, NULL, NULL, NULL, '2016-12-19 05:52:34', '2016-04-01 02:58:03', '通过2D动画方式风趣、幽默的讲述了蒋氏正脊手法如何科学、有效的治疗脊椎病和保护脊椎健康。', '', '', 31, 59, ' 欢乐 简洁 时尚 条理', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(841, 34, 34, 836, 837, '9_150215085540_1.jpg', 372, 374, 1, 123139, NULL, NULL, NULL, '2016-12-31 06:56:28', '2016-04-03 05:21:56', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(842, 34, 34, 827, 828, '11111.mp4', 373, 791, 0, 564837, NULL, NULL, NULL, '2016-12-31 06:56:28', '2016-04-03 05:25:38', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(843, 66, 66, 1, 16, 'lijingjie_51@163.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-14 01:33:59', '2016-04-10 03:38:04', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(846, 67, 67, 1, 108, 'lijingjiehe@163.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-17 08:57:44', '2016-04-10 07:18:31', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(847, 68, 68, 1, 124, '470429699@QQ.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-17 08:57:44', '2016-04-11 16:51:33', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(892, 66, 66, 2, 3, '123.mp4', 376, 843, 0, 102369403, NULL, NULL, NULL, '2016-04-28 10:26:28', '2016-04-28 10:26:28', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(893, 66, 66, 6, 7, '123(2).mp4', 385, 843, 0, 102369403, NULL, NULL, NULL, '2016-10-12 09:21:18', '2016-05-04 10:11:58', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(895, 69, 69, 1, 2, 'test1@ht.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-05-07 15:08:10', '2016-05-07 15:08:10', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(900, 35, 35, 939, 940, '汉能宣传片', 386, 385, 0, 177650792, NULL, NULL, NULL, '2016-12-31 06:56:28', '2016-05-17 11:23:29', NULL, NULL, NULL, NULL, NULL, NULL, b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(901, 35, 35, 941, 942, '万科宣传片', 387, 385, 0, 147214517, NULL, NULL, NULL, '2016-12-31 06:56:28', '2016-05-17 13:09:10', NULL, NULL, NULL, NULL, NULL, NULL, b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(902, 35, 35, 943, 944, '威海房地产宣传片', 388, 385, 0, 127750925, NULL, NULL, NULL, '2016-12-31 06:56:28', '2016-05-17 13:46:28', '这是一片全球候鸟的栖息地，也是一方亲密恋人梦想中的归宿。', '', '', 2, 56, ' 华丽 时尚 浪漫 梦幻 唯美', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(903, 35, 35, 945, 946, '威海房地产宣传片情节版.mov', 389, 385, 0, 75311201, NULL, NULL, NULL, '2016-12-31 06:56:28', '2016-05-17 23:49:52', NULL, '', '', 18, 58, ' 浪漫 唯美 梦幻', b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(904, 38, 38, 652, 653, '《威海地产》微电影', 389, 407, 0, 75311201, NULL, NULL, NULL, '2016-12-21 11:35:53', '2016-05-18 00:08:35', '一段刻骨铭心的爱情经历，一段难舍难分的别离...', '', '', 18, 58, ' 简洁 时尚 浪漫 梦幻 唯美', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(905, 38, 38, 654, 655, '《生长》微电影', 390, 407, 0, 324585442, NULL, NULL, NULL, '2016-12-21 11:34:06', '2016-05-18 01:10:36', '讲述了马驹桥镇中心小学一个小学生从害羞内向到落落大方不断学习成长的故事。', '', '', 18, 58, ' 欢乐 清新 唯美 细节', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(909, 53, 53, 156, 157, '2016“推一把”互联网营销大会', 394, 720, 0, 57060736, NULL, NULL, NULL, '2016-12-19 13:52:24', '2016-05-23 10:16:40', '针对不同活动需求给予客户多种拍摄制作方案,记录会议盛况,留住感动瞬间.', '', '', 48, NULL, '', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(919, 75, 75, 1, 10, 'test2@ht.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-14 01:33:59', '2016-07-10 02:03:22', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(931, 62, 62, 130, 131, '493a84556a4fce59ccfad.gif', 396, 813, 1, 16368, NULL, NULL, NULL, '2016-12-17 08:57:44', '2016-08-11 05:35:44', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(933, 62, 62, 132, 133, 'hSrcColor.bmp', 397, 813, 1, 4147254, NULL, NULL, NULL, '2016-12-17 08:57:44', '2016-08-11 07:15:38', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(934, 62, 62, 134, 135, 'hDstColor.bmp', 398, 813, 1, 2073654, NULL, NULL, NULL, '2016-12-17 08:57:44', '2016-08-11 07:37:38', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(935, 89, 89, 1, 2, '3249568058@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-08-11 07:51:06', '2016-08-11 07:51:06', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(936, 62, 62, 136, 137, '测试q.png', 399, 813, 1, 53611, NULL, NULL, NULL, '2016-12-17 08:57:44', '2016-08-11 09:43:14', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(937, 90, 90, 1, 2, 'zhangbo@sobey.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-09-13 02:25:06', '2016-09-13 02:25:06', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(939, 91, 91, 1, 4, '461654008@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-10-25 08:02:18', '2016-10-11 09:14:29', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(941, 91, 91, 2, 3, '威海房地产宣传片情节版.mov', 389, 939, 0, 75311201, NULL, NULL, NULL, '2016-10-12 09:50:51', '2016-10-12 09:21:18', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(942, 92, 92, 1, 2, 'majvqiao@filmunion.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-24 07:41:23', '2016-11-24 07:41:23', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(943, 93, 93, 1, 2, 'huawei@filmunion.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-24 07:54:16', '2016-11-24 07:54:16', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(944, 94, 94, 1, 2, 'gongshang@filmunion.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-24 07:59:11', '2016-11-24 07:59:11', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(945, 95, 95, 1, 2, 'zhongliang@filmunion.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-24 08:05:56', '2016-11-24 08:05:56', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(946, 96, 96, 1, 2, '58@filmunion.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-24 08:12:22', '2016-11-24 08:12:22', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(947, 97, 97, 1, 2, 'niulanshan@filmunion.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-24 08:23:16', '2016-11-24 08:23:16', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(948, 98, 98, 1, 2, '1848945126@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-25 08:30:47', '2016-11-25 08:30:47', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(951, 75, 75, 2, 3, '新建文件夹', NULL, 919, NULL, NULL, NULL, NULL, NULL, '2016-12-13 09:09:52', '2016-12-13 09:09:52', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(952, 75, 75, 4, 5, '新建文件夹(2)', NULL, 919, NULL, NULL, NULL, NULL, NULL, '2016-12-13 09:30:11', '2016-12-13 09:30:11', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(953, 75, 75, 6, 7, '新建文件夹(3)', NULL, 919, NULL, NULL, NULL, NULL, NULL, '2016-12-13 09:30:36', '2016-12-13 09:30:36', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(957, 75, 75, 8, 9, '2.png', 402, 919, 1, 22012, NULL, NULL, NULL, '2016-12-14 01:33:59', '2016-12-14 01:33:59', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(958, 37, 37, 762, 763, '泰克西', 403, 389, 0, 75291990, NULL, NULL, NULL, '2016-12-31 07:23:33', '2016-12-14 01:40:10', NULL, NULL, NULL, NULL, NULL, NULL, b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(959, 37, 37, 764, 765, 'INFINITY发布会', 404, 389, 0, 78105886, NULL, NULL, NULL, '2016-12-31 07:23:33', '2016-12-14 02:16:48', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(962, 67, 67, 100, 101, '公交车.jpg', 406, 846, 1, 60594, NULL, NULL, NULL, '2016-12-14 12:35:01', '2016-12-14 12:35:01', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(963, 67, 67, 102, 103, 'VID_20160517_112751.mp4', 407, 846, 0, 18138135, NULL, NULL, NULL, '2016-12-14 12:39:23', '2016-12-14 12:39:23', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(967, 67, 67, 104, 105, 'Wildlife.wmv', 409, 846, 0, 26246026, NULL, NULL, NULL, '2016-12-17 08:52:15', '2016-12-17 08:52:15', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(968, 67, 67, 106, 107, 'VID_20160118_193228.mp4', 410, 846, 0, 20760453, NULL, NULL, NULL, '2016-12-17 08:57:44', '2016-12-17 08:57:44', NULL, NULL, NULL, NULL, NULL, NULL, b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(969, 53, 53, 158, 159, 'INFINITY发布会视频', 404, 720, 0, 78105886, NULL, NULL, NULL, '2016-12-19 13:11:14', '2016-12-18 12:45:55', '通过光与影的变换，将INFINITY的特质表现得淋漓尽致。', '', '', 48, NULL, ' 时尚 唯美 激情', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(970, 53, 53, 160, 161, '中联重科全息展示', 411, 720, 0, 155747866, NULL, NULL, NULL, '2016-12-22 00:27:36', '2016-12-19 05:52:34', '柱状全息设计，将中联重科的发展历程和未来使命进行了一次清晰而震撼的展现。', '', '', 48, NULL, ' 华丽 梦幻', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(971, 35, 35, 947, 948, '自在曲江旅游宣传片', 412, 385, 0, 8037624, NULL, NULL, NULL, '2016-12-31 06:56:28', '2016-12-19 13:32:18', '曲江的点点滴滴尽在唯美的画卷里。', '', '', 18, 58, ' 华丽 梦幻 唯美 温情', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(972, 43, 43, 580, 581, '联想DOLAB宣传片', 413, 462, 0, 32067450, NULL, NULL, NULL, '2016-12-19 14:22:19', '2016-12-19 14:02:17', '一段风格化动画形象的描述了联想DOLAB的特点。', '', '', 31, 59, '', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(973, 43, 43, 582, 583, '3G走进新农村', 414, 462, 0, 7317490, NULL, NULL, NULL, '2016-12-19 14:35:05', '2016-12-19 14:04:35', NULL, '', '', 31, 59, '', b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(974, 43, 43, 584, 585, '飞吧TAXI', 403, 462, 0, 75291990, NULL, NULL, NULL, '2016-12-19 14:28:04', '2016-12-19 14:08:22', '一个儿童在出租车上的奇妙幻想', '', '', 31, 59, '', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(975, 35, 35, 949, 950, '延庆学习型建设宣传片', 415, 385, 0, 409984265, NULL, NULL, NULL, '2016-12-31 06:56:28', '2016-12-20 10:30:03', '从各个层面和各个视角，清晰、生动的展示了延庆区在学习型城区方面所取得的巨大成就。', '', '', 2, 56, ' 庄重 沉稳 温情', b'1', 0, 0, 0, 0, 0, 0, 0, 0),
(976, 37, 37, 766, 767, '新唐山宣传片.mov', 416, 389, 0, 114342975, NULL, NULL, NULL, '2016-12-31 07:23:33', '2016-12-27 04:02:54', NULL, '', '', 31, 60, ' 庄重 热情', b'0', 0, 0, 0, 0, 0, 0, 0, 0),
(978, 38, 38, 656, 657, '《生长》微电影足球篇', 417, 407, 0, 455135326, NULL, NULL, NULL, '2016-12-31 07:20:24', '2016-12-31 06:56:28', '由于更换了足球教练，一个小学生不愿意学习足球了，由此引发的小故事。', '', '', 18, 58, ' 温情', b'0', 0, 0, 0, 0, 0, 0, 0, 0);

--
-- 触发器 `object`
--
DELIMITER $$
CREATE TRIGGER `updateTime` BEFORE INSERT ON `object` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
	set new.ModifyTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `order`
--

CREATE TABLE `order` (
  `Id` bigint(20) NOT NULL,
  `SerialNumber` varchar(255) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Amount` float NOT NULL,
  `UseAccount` float NOT NULL,
  `State` int(11) NOT NULL,
  `PayUserId` bigint(20) NOT NULL,
  `ReceiverId` bigint(20) NOT NULL,
  `CreateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `order`
--

INSERT INTO `order` (`Id`, `SerialNumber`, `Subject`, `Description`, `Amount`, `UseAccount`, `State`, `PayUserId`, `ReceiverId`, `CreateTime`) VALUES
(52, '0aea1d89-b703-467e-9ef2-e573357b6886', '增值服务', '使用平台余额:0', 3100, 0, 1, 35, 0, '2015-07-31 08:19:46'),
(53, '6d7a889b-20d3-4180-bb96-f8e1496cb34e', '充值', '充值:100000', 100000, 0, 0, 35, 0, '2015-08-10 14:52:34'),
(54, '164764a4-39e7-4539-ba81-b39b826d4757', '合同押金', '合同押金支付，开启视频制作项目', 400, 0, 1, 34, 35, '2015-07-31 09:12:45'),
(55, '55bee0cd-6f2b-462e-9608-3c2eb46c3e27', '合同押金', '合同押金支付，开启视频制作项目', 0.05, 0, 0, 37, 35, '2015-11-01 05:18:18'),
(56, '20a29c77-9c5b-4739-8fa9-286a9291c62b', '合同尾款', '合同尾款支付', 0.05, 0, 0, 37, 35, '2015-11-01 06:50:17'),
(57, '310cefeb-e3ee-42a5-a59d-f05469e3918b', '增值服务', '使用平台余额:0', 37200, 0, 0, 37, 0, '2015-08-02 08:26:54'),
(58, '4a6e55ec-fa43-4654-b365-dea9c3b18c90', '增值服务', '使用平台余额:0', 3720, 0, 0, 37, 0, '2015-08-02 08:27:36'),
(59, 'bf8fb65a-2182-41f4-bd22-4deb89019cc8', '充值', '充值:120', 120, 0, 0, 37, 0, '2015-08-02 08:29:14'),
(60, '4bbac386-1680-4076-bb15-a92a384022df', '合同押金', '合同押金支付，开启视频制作项目', 1.02, 0, 0, 37, 35, '2015-08-03 11:11:19'),
(61, 'b6d6305d-1a85-4b20-a797-6b83fbc2cf41', '合同押金', '合同押金支付，开启视频制作项目', 0.05, 0, 0, 37, 38, '2015-11-03 04:42:17'),
(62, 'a4470af0-5d76-4638-aa56-60e1f93c39b9', '合同尾款', '合同尾款支付', 0.05, 0, 0, 37, 38, '2015-11-03 05:56:17'),
(63, 'ff2e1b9f-c4af-4da4-8a06-79e32b562b2b', '合同押金', '合同押金支付，开启视频制作项目', 400, 0, 0, 37, 35, '2015-08-06 07:59:24'),
(64, '0f5d7ff2-50fd-4e37-952a-b7560bd557a1', '合同押金', '合同押金支付，开启视频制作项目', 0.05, 0, 0, 37, 38, '2015-08-06 08:01:34'),
(65, '20012bfb-595c-4f1f-aebe-51a4a0921758', '合同押金', '合同押金支付，开启视频制作项目', 0.05, 0, 0, 37, 38, '2015-11-05 08:07:17'),
(66, 'b102f069-0ce6-4a1b-95c9-f6aca196283d', '合同尾款', '合同尾款支付', 0.05, 0, 0, 37, 38, '2015-11-05 08:14:17'),
(67, 'bd5c268e-4c0b-43ef-85cf-041101fbb78a', '合同押金', '合同押金支付，开启视频制作项目', 0.05, 0, 0, 37, 38, '2015-11-05 11:49:17'),
(68, '2ab5f10a-aa5c-4d5d-b993-2299b780ec78', '合同押金', '合同押金支付，开启视频制作项目', 0.05, 0, 0, 37, 38, '2015-11-09 03:51:17'),
(69, 'aca71446-d71f-47f7-9211-d1f0db56e773', '合同尾款', '合同尾款支付', 0.05, 0, 0, 37, 38, '2015-11-09 04:00:17'),
(70, 'de2a35ce-5c27-4b9d-ac0d-b17cf6d59a6b', '合同押金', '合同押金支付，开启视频制作项目', 0.05, 0, 0, 37, 35, '2015-11-14 04:39:17'),
(71, '05c9fdad-0f81-419d-a943-d109e70ee0eb', '合同尾款', '合同尾款支付', 0.05, 0, 0, 37, 35, '2015-11-14 04:45:17'),
(72, 'f790e7c1-f32d-40a2-8cc5-36bdbd7b1ef0', '合同押金', '合同押金支付，开启视频制作项目', 25000, 0, 0, 37, 38, '2015-08-18 07:07:27'),
(73, '0e5fd08f-2a82-4592-837e-6944c7165e37', '合同押金', '合同押金支付，开启视频制作项目', 5, 5, 1, 33, 35, '2015-08-18 11:07:57'),
(74, '4570a2a5-a426-4aa2-88a2-571b2195a334', '合同尾款', '合同尾款支付', 5, 5, 1, 33, 35, '2015-08-18 11:10:31'),
(75, '2fb4f20b-98c1-4590-a6eb-96b98f92f003', '合同押金', '合同押金支付，开启视频制作项目', 0.1, 0, 0, 37, 35, '2015-11-18 08:01:17'),
(76, '96e39115-f9ac-4994-8367-679179fd5320', '合同押金', '合同押金支付，开启视频制作项目', 25000, 0, 0, 37, 35, '2015-08-20 08:10:47'),
(77, '2c7c79ff-2616-4de3-b984-5a35e96a31fd', '合同押金', '合同押金支付，开启视频制作项目', 5.5, 0, 1, 34, 38, '2015-08-29 03:01:31'),
(78, 'cd67f141-6c4d-444e-8420-1f6b3974623f', '合同尾款', '合同尾款支付', 5.5, 0, 0, 34, 38, '2015-08-31 14:45:55'),
(79, '49be7eb1-8d75-438e-8b65-43c8782c5c99', '合同押金', '合同押金支付，开启视频制作项目', 0, 0, 1, 37, 38, '2015-10-29 09:46:47'),
(80, '2541c509-f001-4d97-9e6e-a4199bcbb9a5', '合同押金', '合同押金支付，开启视频制作项目', 1500, 0, 0, 49, 43, '2015-12-09 13:23:35'),
(82, '1fa67d9f-e976-4a15-86ed-017b301fe0a8', '合同押金', '合同押金支付，开启视频制作项目', 0.1, 0, 0, 37, 38, '2016-01-20 02:58:31'),
(87, 'ff0a4177-2c4a-49b0-b349-8667349184fa', '合同尾款', '合同尾款支付', 0.1, 0, 0, 37, 38, '2016-01-20 03:14:31'),
(88, '8e4b3857-b442-4af0-a77f-562758bdecad', '合同尾款', '合同尾款支付', 1500, 0, 0, 49, 43, '2016-01-25 03:33:34'),
(92, 'd2c66431-54af-4c68-b7e1-0adec5879ec4', '合同押金', '合同押金支付，开启视频制作项目', 0.1, 0, 0, 37, 35, '2016-01-25 12:51:40'),
(94, 'ac9a049c-760b-4090-be30-412e287687d0', '合同尾款', '合同尾款支付', 0.1, 0, 0, 37, 35, '2016-01-25 13:12:40'),
(95, '9467a736-bf53-4561-992a-ff37b67b71de', '合同押金', '合同押金支付，开启视频制作项目', 0.1, 0, 0, 37, 35, '2016-01-26 13:07:40'),
(96, '36be298c-69e4-4ff0-bd83-41b60a2cef13', '合同尾款', '合同尾款支付', 0.05, 0, 0, 37, 35, '2016-01-26 13:36:40'),
(97, '6b1e3cd1-fd5e-43dd-a8cd-2c26418abb49', '合同尾款', '合同尾款支付', 0, 0, 1, 37, 38, '2015-10-29 09:50:57'),
(98, 'c18f0968-c71d-446d-86b2-f59724ef4628', '合同押金', '合同押金支付，开启视频制作项目', 0.05, 0, 0, 37, 38, '2016-01-28 10:47:40'),
(99, 'ce636fa5-3403-4d04-b727-93bce358b66b', '充值', '充值:1000', 1000, 0, 0, 35, 0, '2015-12-19 03:04:13'),
(101, 'e7343709-2c33-4028-90bf-127f8ec6ca0e', '合同押金', '合同押金支付，开启视频制作项目', 0, 0, 1, 37, 35, '2016-03-09 03:36:35'),
(102, '56825f7b-0a61-4d12-a311-8afb2d106c2c', '合同尾款', '合同尾款支付', 0, 0, 1, 37, 35, '2016-03-09 03:50:54'),
(103, 'db25bd0e-98c9-42d9-b17c-ff2d0e1c5245', '合同押金', '合同押金支付，开启视频制作项目', 0, 0, 1, 37, 35, '2016-03-14 03:39:25'),
(119, 'ed0eab91-a975-40e1-9fe4-461f4792b2f3', '充值', '充值:0', 0, 0, 1, 37, 0, '2016-03-16 08:30:26'),
(120, '1376ad93-1e7d-4dbb-9cb1-203e568889c8', '充值', '充值:0.0', 0, 0, 1, 37, 0, '2016-03-16 08:30:51'),
(121, 'd7813335-ba35-4371-907d-f8b385fbf710', '充值', '充值:0.1', 0.1, 0, 0, 37, 0, '2016-03-16 08:31:12'),
(124, 'fcc9167d-d826-4b5e-acbb-c0fa3d87ab1c', '合同押金', '合同押金支付，开启视频制作项目', 0.05, 0, 0, 75, 38, '2016-07-10 05:40:31'),
(125, '87f586f2-224e-493f-a603-0c6ea420a529', '合同尾款', '合同尾款支付', 0.05, 0, 0, 75, 38, '2016-07-10 05:49:23'),
(126, 'b34ee571-f202-4914-8deb-f42c942db2a0', '合同押金', '合同押金支付，开启视频制作项目', 0, 0, 0, 75, 38, '2016-09-05 07:22:13'),
(127, 'd4874f40-c9ee-423d-a1db-22c0174e12c0', '合同押金', '合同押金支付，开启视频制作项目', 0.5, 0, 0, 75, 38, '2016-09-05 07:30:00'),
(129, 'f2814871-6b08-48dd-9f7b-2aaa0d3dd450', '合同押金', '合同押金支付，开启视频制作项目', 0.01, 0, 0, 91, 38, '2017-01-11 09:07:43'),
(130, '99ae6e0b-3bc4-408c-b7a0-e5ed47336bed', '合同尾款', '合同尾款支付', 0.01, 0, 0, 91, 38, '2017-01-11 09:20:45'),
(131, 'a3bbb676-7b00-4e6b-a4cc-34b7d17c671c', '增值服务', '使用平台余额:0.0', 5.99, 0, 0, 67, 0, '2016-11-27 05:05:43');

--
-- 触发器 `order`
--
DELIMITER $$
CREATE TRIGGER `order_updateItme` BEFORE INSERT ON `order` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `order_log`
--

CREATE TABLE `order_log` (
  `Id` bigint(20) NOT NULL,
  `OrderId` bigint(20) NOT NULL,
  `OrderType` varchar(100) NOT NULL,
  `Log` varchar(255) NOT NULL,
  `Action` varchar(100) NOT NULL,
  `CreateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `order_log`
--

INSERT INTO `order_log` (`Id`, `OrderId`, `OrderType`, `Log`, `Action`, `CreateTime`) VALUES
(26, 52, '购买存储空间', '用户\'剪片子官方自营制作商\'选择购买额外的存储空间，购买订单已建立', '订单建立', '2015-07-31 16:19:16'),
(27, 52, '购买存储空间', '用户\'剪片子官方自营制作商\'购买额外存储空间的订单完成支付，空间已扩展', '订单支付完成', '2015-07-31 16:19:46'),
(28, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'选择为平台账号充值，充值订单已建立', '订单建立', '2015-07-31 16:20:10'),
(29, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单完成支付，账号已充值', '订单支付完成', '2015-07-31 16:20:28'),
(30, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单完成支付，账号已充值', '订单支付完成', '2015-07-31 16:57:09'),
(31, 54, '合同押金', '需求方\'erikaq@126.com\',制作商\'剪片子官方自营制作商\'的合同：\'第一个需求\'进入支付押金阶段，押金订单已建立', '订单建立', '2015-07-31 17:11:45'),
(32, 54, '合同押金', '需求方\'erikaq@126.com\',制作商\'剪片子官方自营制作商\'的合同(第一个需求),合同押金支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-07-31 17:12:46'),
(33, 55, '合同押金', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同：\'demo4\'进入支付押金阶段，押金订单已建立', '订单建立', '2015-08-02 12:53:10'),
(34, 55, '合同押金', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(demo4),合同押金支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-02 13:18:03'),
(35, 55, '合同押金', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(demo4),合同押金支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-02 13:22:35'),
(36, 55, '合同押金', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(demo4),合同押金支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-02 13:32:14'),
(37, 55, '合同押金', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(demo4),合同押金支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-02 13:42:15'),
(38, 55, '合同押金', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(demo4),合同押金支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-02 14:42:02'),
(39, 56, '合同尾款', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同：\'demo4\'进入支付尾款阶段，尾款订单已建立', '订单建立', '2015-08-02 14:48:44'),
(40, 56, '合同尾款', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(demo4),合同尾款支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-02 14:50:14'),
(41, 56, '合同尾款', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(demo4),合同尾款支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-02 14:54:58'),
(42, 56, '合同尾款', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(demo4),合同尾款支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-02 15:04:21'),
(43, 56, '合同尾款', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(demo4),合同尾款支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-02 15:14:04'),
(44, 56, '合同尾款', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(demo4),合同尾款支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-02 16:15:00'),
(45, 56, '合同尾款', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(demo4),合同尾款支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-02 16:15:22'),
(46, 57, '购买存储空间', '用户\'zhanghong\'选择购买额外的存储空间，购买订单已建立', '订单建立', '2015-08-02 16:26:54'),
(47, 58, '购买存储空间', '用户\'zhanghong\'选择购买额外的存储空间，购买订单已建立', '订单建立', '2015-08-02 16:27:36'),
(48, 59, '平台账号充值', '用户\'zhanghong\'选择为平台账号充值，充值订单已建立', '订单建立', '2015-08-02 16:29:14'),
(49, 55, '合同押金', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(demo4),合同押金支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-02 16:42:39'),
(50, 55, '合同押金', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(demo4),合同押金支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-02 22:42:56'),
(51, 56, '合同尾款', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(demo4),合同尾款支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-03 00:14:39'),
(52, 55, '合同押金', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(demo4),合同押金支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-03 13:42:15'),
(53, 56, '合同尾款', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(demo4),合同尾款支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-03 15:14:34'),
(54, 60, '合同押金', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同：\'demo1\'进入支付押金阶段，押金订单已建立', '订单建立', '2015-08-03 19:11:19'),
(55, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单完成支付，账号已充值', '订单支付完成', '2015-08-03 22:48:54'),
(56, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单完成支付，账号已充值', '订单支付完成', '2015-08-03 22:48:58'),
(57, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单完成支付，账号已充值', '订单支付完成', '2015-08-03 22:49:00'),
(58, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS((.\'))).][', '订单支付失败', '2015-08-03 22:49:01'),
(59, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-03 22:49:14'),
(60, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL#', '订单支付失败', '2015-08-03 22:49:15'),
(61, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-03 22:49:16'),
(62, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL#', '订单支付失败', '2015-08-03 22:49:17'),
(63, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL#', '订单支付失败', '2015-08-03 22:49:18'),
(64, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-03 22:49:20'),
(65, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL#', '订单支付失败', '2015-08-03 22:49:21'),
(66, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL#', '订单支付失败', '2015-08-03 22:49:22'),
(67, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL#', '订单支付失败', '2015-08-03 22:49:23'),
(68, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-03 22:49:24'),
(69, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL#', '订单支付失败', '2015-08-03 22:49:25'),
(70, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL#', '订单支付失败', '2015-08-03 22:49:26'),
(71, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL#', '订单支付失败', '2015-08-03 22:49:27'),
(72, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL#', '订单支付失败', '2015-08-03 22:49:28'),
(73, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-03 22:49:29'),
(74, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS AND SLEEP(5)', '订单支付失败', '2015-08-03 22:49:30'),
(75, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS; SELECT PG_SLEEP(5)--', '订单支付失败', '2015-08-03 22:49:31'),
(76, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS; SELECT SLEEP(5)-- ', '订单支付失败', '2015-08-03 22:49:32'),
(77, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\'; SELECT SLEEP(5)-- ', '订单支付失败', '2015-08-03 22:49:33'),
(78, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS WAITFOR DELAY \'0:0:5\'--', '订单支付失败', '2015-08-03 22:49:34'),
(79, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单完成支付，账号已充值', '订单支付完成', '2015-08-03 22:53:25'),
(80, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：http://120.26.55.211/s.txt', '订单支付失败', '2015-08-03 22:53:28'),
(81, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：http://120.26.55.211/s.txt', '订单支付失败', '2015-08-03 22:53:31'),
(82, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：a_long_name_file_not_exist', '订单支付失败', '2015-08-03 22:53:35'),
(83, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单完成支付，账号已充值', '订单支付完成', '2015-08-03 22:53:37'),
(84, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单完成支付，账号已充值', '订单支付完成', '2015-08-03 22:54:50'),
(85, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：${@print(md5(this_is_a_test_string))}', '订单支付失败', '2015-08-03 22:56:06'),
(86, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：${@print(md5(this_is_a_test_string))}\\', '订单支付失败', '2015-08-03 22:56:09'),
(87, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：print(md5(this_is_a_test_string));die();/*', '订单支付失败', '2015-08-03 22:56:12'),
(88, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：\'\"><scRipt>alert(98733)</sCript>', '订单支付失败', '2015-08-03 22:56:36'),
(89, 61, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同：\'demo8\'进入支付押金阶段，押金订单已建立', '订单建立', '2015-08-04 12:39:43'),
(90, 61, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(demo8),合同押金支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-04 12:41:18'),
(91, 61, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(demo8),合同押金支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-04 12:45:30'),
(92, 61, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(demo8),合同押金支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-04 12:55:05'),
(93, 61, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(demo8),合同押金支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-04 13:05:29'),
(94, 62, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同：\'demo8\'进入支付尾款阶段，尾款订单已建立', '订单建立', '2015-08-04 13:55:12'),
(95, 62, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(demo8),合同尾款支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-04 13:56:10'),
(96, 62, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(demo8),合同尾款支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-04 14:00:35'),
(97, 61, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(demo8),合同押金支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-04 14:05:55'),
(98, 62, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(demo8),合同尾款支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-04 14:10:18'),
(99, 62, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(demo8),合同尾款支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-04 14:20:22'),
(100, 62, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(demo8),合同尾款支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-04 15:20:22'),
(101, 61, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(demo8),合同押金支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-04 16:05:15'),
(102, 62, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(demo8),合同尾款支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-04 17:20:09'),
(103, 61, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(demo8),合同押金支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-04 22:05:29'),
(104, 62, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(demo8),合同尾款支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-04 23:20:17'),
(105, 61, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(demo8),合同押金支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-05 13:05:08'),
(106, 62, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(demo8),合同尾款支付完成，金额已打入制作商的平台账号', '订单支付完成', '2015-08-05 14:20:52'),
(107, 63, '合同押金', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同：\'联想宣传片\'进入支付押金阶段，押金订单已建立', '订单建立', '2015-08-06 15:59:24'),
(108, 64, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同：\'vision\'进入支付押金阶段，押金订单已建立', '订单建立', '2015-08-06 16:01:34'),
(109, 65, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同：\'vision\'进入支付押金阶段，押金订单已建立', '订单建立', '2015-08-06 16:01:34'),
(110, 65, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(vision),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-06 16:06:31'),
(111, 65, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(vision),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-06 16:10:14'),
(112, 66, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同：\'vision\'进入支付尾款阶段，尾款订单已建立', '订单建立', '2015-08-06 16:12:53'),
(113, 66, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(vision),合同尾款支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-06 16:13:51'),
(114, 66, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(vision),合同尾款支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-06 16:17:23'),
(115, 65, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(vision),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-06 16:20:43'),
(116, 66, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(vision),合同尾款支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-06 16:27:59'),
(117, 65, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(vision),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-06 16:30:53'),
(118, 66, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(vision),合同尾款支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-06 16:37:05'),
(119, 65, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(vision),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-06 17:30:59'),
(120, 66, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(vision),合同尾款支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-06 17:37:48'),
(121, 65, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(vision),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-06 19:30:16'),
(122, 66, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(vision),合同尾款支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-06 19:37:32'),
(123, 67, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同：\'新建需求123\'进入支付押金阶段，押金订单已建立', '订单建立', '2015-08-06 19:48:01'),
(124, 67, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(新建需求123),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-06 19:48:48'),
(125, 67, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(新建需求123),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-06 19:52:40'),
(126, 67, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(新建需求123),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-06 20:02:30'),
(127, 67, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(新建需求123),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-06 20:12:59'),
(128, 67, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(新建需求123),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-06 21:12:58'),
(129, 67, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(新建需求123),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-06 23:12:29'),
(130, 65, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(vision),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-07 01:30:20'),
(131, 66, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(vision),合同尾款支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-07 01:37:17'),
(132, 67, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(新建需求123),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-07 05:12:04'),
(133, 65, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(vision),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-07 16:30:13'),
(134, 66, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(vision),合同尾款支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-07 16:37:21'),
(135, 67, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(新建需求123),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-07 20:12:36'),
(136, 68, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同：\'2015-8-10\'进入支付押金阶段，押金订单已建立', '订单建立', '2015-08-10 11:49:59'),
(137, 68, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(2015-8-10),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-10 11:51:17'),
(138, 68, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(2015-8-10),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-10 11:55:02'),
(139, 69, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同：\'2015-8-10\'进入支付尾款阶段，尾款订单已建立', '订单建立', '2015-08-10 11:58:04'),
(140, 69, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(2015-8-10),合同尾款支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-10 11:59:20'),
(141, 69, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(2015-8-10),合同尾款支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-10 12:03:01'),
(142, 68, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(2015-8-10),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-10 12:05:31'),
(143, 69, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(2015-8-10),合同尾款支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-10 12:13:45'),
(144, 68, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(2015-8-10),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-10 12:15:19'),
(145, 69, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(2015-8-10),合同尾款支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-10 12:23:25'),
(146, 68, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(2015-8-10),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-10 13:15:06'),
(147, 69, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(2015-8-10),合同尾款支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-10 13:23:13'),
(148, 68, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(2015-8-10),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-10 15:15:54'),
(149, 69, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(2015-8-10),合同尾款支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-10 15:23:30'),
(150, 68, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(2015-8-10),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-10 21:15:10'),
(151, 69, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(2015-8-10),合同尾款支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-10 21:23:10'),
(152, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单完成支付，账号已充值', '订单支付完成', '2015-08-10 22:45:59'),
(153, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单完成支付，账号已充值', '订单支付完成', '2015-08-10 22:46:04'),
(154, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单完成支付，账号已充值', '订单支付完成', '2015-08-10 22:46:05'),
(155, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS,)\"\"\'..,\"[', '订单支付失败', '2015-08-10 22:46:07'),
(156, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-10 22:46:20'),
(157, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL#', '订单支付失败', '2015-08-10 22:46:22'),
(158, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-10 22:46:23'),
(159, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL#', '订单支付失败', '2015-08-10 22:46:24'),
(160, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL#', '订单支付失败', '2015-08-10 22:46:25'),
(161, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-10 22:46:26'),
(162, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL#', '订单支付失败', '2015-08-10 22:46:27'),
(163, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL#', '订单支付失败', '2015-08-10 22:46:28'),
(164, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL#', '订单支付失败', '2015-08-10 22:46:29'),
(165, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-10 22:46:31'),
(166, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL#', '订单支付失败', '2015-08-10 22:46:32'),
(167, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL#', '订单支付失败', '2015-08-10 22:46:33'),
(168, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL#', '订单支付失败', '2015-08-10 22:46:34'),
(169, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL#', '订单支付失败', '2015-08-10 22:46:35'),
(170, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-10 22:46:36'),
(171, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS AND SLEEP(5)', '订单支付失败', '2015-08-10 22:46:37'),
(172, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS; SELECT PG_SLEEP(5)--', '订单支付失败', '2015-08-10 22:46:38'),
(173, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS; SELECT SLEEP(5)-- ', '订单支付失败', '2015-08-10 22:46:39'),
(174, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS\'; SELECT SLEEP(5)-- ', '订单支付失败', '2015-08-10 22:46:40'),
(175, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：TRADE_SUCCESS WAITFOR DELAY \'0:0:5\'--', '订单支付失败', '2015-08-10 22:46:41'),
(176, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单完成支付，账号已充值', '订单支付完成', '2015-08-10 22:49:53'),
(177, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：http://120.26.55.211/s.txt', '订单支付失败', '2015-08-10 22:49:57'),
(178, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：http://120.26.55.211/s.txt', '订单支付失败', '2015-08-10 22:50:02'),
(179, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：a_long_name_file_not_exist', '订单支付失败', '2015-08-10 22:50:04'),
(180, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单完成支付，账号已充值', '订单支付完成', '2015-08-10 22:50:06'),
(181, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单完成支付，账号已充值', '订单支付完成', '2015-08-10 22:51:13'),
(182, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：${@print(md5(this_is_a_test_string))}', '订单支付失败', '2015-08-10 22:52:34'),
(183, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：${@print(md5(this_is_a_test_string))}\\', '订单支付失败', '2015-08-10 22:52:36'),
(184, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：print(md5(this_is_a_test_string));die();/*', '订单支付失败', '2015-08-10 22:52:39'),
(185, 53, '平台账号充值', '用户\'剪片子官方自营制作商\'为平台账号充值的订单支付失败，支付宝回复的状态码为：\'\"><scRipt>alert(98733)</sCript>', '订单支付失败', '2015-08-10 22:53:01'),
(186, 68, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(2015-8-10),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-11 12:15:07'),
(187, 69, '合同尾款', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同(2015-8-10),合同尾款支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-11 12:23:19'),
(188, 70, '合同押金', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同：\'黑豹宣传片\'进入支付押金阶段，押金订单已建立', '订单建立', '2015-08-15 12:37:23'),
(189, 70, '合同押金', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(黑豹宣传片),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-15 12:38:36'),
(190, 70, '合同押金', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(黑豹宣传片),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-15 12:42:49'),
(191, 71, '合同尾款', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同：\'黑豹宣传片\'进入支付尾款阶段，尾款订单已建立', '订单建立', '2015-08-15 12:43:57'),
(192, 71, '合同尾款', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(黑豹宣传片),合同尾款支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-15 12:45:02'),
(193, 71, '合同尾款', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(黑豹宣传片),合同尾款支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-15 12:49:45'),
(194, 70, '合同押金', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(黑豹宣传片),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-15 12:52:41'),
(195, 71, '合同尾款', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(黑豹宣传片),合同尾款支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-15 12:59:11'),
(196, 70, '合同押金', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(黑豹宣传片),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-15 13:02:40'),
(197, 71, '合同尾款', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(黑豹宣传片),合同尾款支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-15 13:09:36'),
(198, 70, '合同押金', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(黑豹宣传片),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-15 14:02:15'),
(199, 71, '合同尾款', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(黑豹宣传片),合同尾款支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-15 14:09:31'),
(200, 70, '合同押金', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(黑豹宣传片),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-15 16:02:50'),
(201, 71, '合同尾款', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(黑豹宣传片),合同尾款支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-15 16:09:33'),
(202, 70, '合同押金', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(黑豹宣传片),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-15 22:02:18'),
(203, 71, '合同尾款', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(黑豹宣传片),合同尾款支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-15 22:09:51'),
(204, 70, '合同押金', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(黑豹宣传片),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-16 13:02:12'),
(205, 71, '合同尾款', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(黑豹宣传片),合同尾款支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-16 13:09:07'),
(206, 72, '合同押金', '需求方\'zhanghong\',制作商\'汇腾视频制作公司\'的合同：\'汇腾的宣传片\'进入支付押金阶段，押金订单已建立', '订单建立', '2015-08-18 15:07:27'),
(207, 73, '合同押金', '需求方\'529450714@qq.com\',制作商\'剪片子官方自营制作商\'的合同：\'新需求测试\'进入支付押金阶段，押金订单已建立', '订单建立', '2015-08-18 19:07:49'),
(208, 73, '合同押金', '需求方\'529450714@qq.com\',制作商\'剪片子官方自营制作商\'的合同(新需求测试),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-18 19:07:58'),
(209, 74, '合同尾款', '需求方\'529450714@qq.com\',制作商\'剪片子官方自营制作商\'的合同：\'新需求测试\'进入支付尾款阶段，尾款订单已建立', '订单建立', '2015-08-18 19:10:23'),
(210, 74, '合同尾款', '需求方\'529450714@qq.com\',制作商\'剪片子官方自营制作商\'的合同(新需求测试),合同尾款支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-18 19:10:32'),
(211, 75, '合同押金', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同：\'汇腾宣传片\'进入支付押金阶段，押金订单已建立', '订单建立', '2015-08-19 15:57:41'),
(212, 75, '合同押金', '需求方\'zhanghong\',制作商\'剪片子官方自营制作商\'的合同(汇腾宣传片),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-19 16:00:38'),
(213, 76, '合同押金', '需求方\'张洪家\',制作商\'剪片子官方自营制作商\'的合同：\'超级蜂巢宣传片\'进入支付押金阶段，押金订单已建立', '订单建立', '2015-08-20 16:10:47'),
(214, 77, '合同押金', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同：\'测试-1\'进入支付押金阶段，押金订单已建立', '订单建立', '2015-08-29 11:00:54'),
(215, 77, '合同押金', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同押金支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-29 11:01:32'),
(216, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同：\'测试-1\'进入支付尾款阶段，尾款订单已建立', '订单建立', '2015-08-29 11:02:10'),
(217, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付完成，金额已打入剪片子的平台账号', '订单支付完成', '2015-08-29 11:02:34'),
(218, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS](\"\'[.[(,\"', '订单支付失败', '2015-08-31 22:45:56'),
(219, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:47:19'),
(220, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:47:20'),
(221, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL#', '订单支付失败', '2015-08-31 22:47:22'),
(222, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:47:24'),
(223, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:47:25'),
(224, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:47:27'),
(225, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL#', '订单支付失败', '2015-08-31 22:47:29'),
(226, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL#', '订单支付失败', '2015-08-31 22:47:30'),
(227, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:47:32'),
(228, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:47:34'),
(229, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:47:35'),
(230, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:47:37'),
(231, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:47:38'),
(232, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL#', '订单支付失败', '2015-08-31 22:47:40'),
(233, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL#', '订单支付失败', '2015-08-31 22:47:41'),
(234, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:47:43'),
(235, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:47:45'),
(236, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:47:46'),
(237, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:47:48'),
(238, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:47:49'),
(239, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:47:51'),
(240, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:47:52'),
(241, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL#', '订单支付失败', '2015-08-31 22:47:54'),
(242, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL#', '订单支付失败', '2015-08-31 22:47:55'),
(243, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:47:57'),
(244, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:47:58'),
(245, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:48:00'),
(246, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:48:01'),
(247, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:48:03'),
(248, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:48:05'),
(249, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:48:06'),
(250, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:48:08'),
(251, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:48:09'),
(252, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL#', '订单支付失败', '2015-08-31 22:48:11'),
(253, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL#', '订单支付失败', '2015-08-31 22:48:12'),
(254, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:48:14'),
(255, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:48:15'),
(256, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:48:17'),
(257, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:48:18'),
(258, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:48:20'),
(259, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:48:22'),
(260, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:48:23'),
(261, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:48:25'),
(262, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:48:26'),
(263, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:48:28'),
(264, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:48:29'),
(265, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL#', '订单支付失败', '2015-08-31 22:48:31'),
(266, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL#', '订单支付失败', '2015-08-31 22:48:32'),
(267, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:48:34'),
(268, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:48:36'),
(269, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:48:37'),
(270, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:48:39'),
(271, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:48:40'),
(272, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:48:42'),
(273, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:48:43'),
(274, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:48:45'),
(275, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:48:47'),
(276, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:48:48'),
(277, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:48:50'),
(278, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:48:51'),
(279, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:48:53'),
(280, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL#', '订单支付失败', '2015-08-31 22:48:54'),
(281, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL#', '订单支付失败', '2015-08-31 22:48:56'),
(282, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:48:57'),
(283, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:48:59'),
(284, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:49:00'),
(285, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:49:02'),
(286, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:49:03'),
(287, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:49:05'),
(288, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:49:06'),
(289, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:49:08'),
(290, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:49:09'),
(291, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:49:11'),
(292, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:49:12'),
(293, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:49:14'),
(294, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:49:16'),
(295, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:49:17'),
(296, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:49:19'),
(297, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL#', '订单支付失败', '2015-08-31 22:49:20'),
(298, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL#', '订单支付失败', '2015-08-31 22:49:22'),
(299, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:49:24'),
(300, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:49:25'),
(301, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:49:27'),
(302, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:49:28'),
(303, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:49:30'),
(304, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:49:31'),
(305, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:49:33'),
(306, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:49:34'),
(307, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:49:36'),
(308, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:49:37'),
(309, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:49:39'),
(310, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:49:41'),
(311, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:49:42'),
(312, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:49:44'),
(313, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:49:45'),
(314, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:49:47'),
(315, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL#', '订单支付失败', '2015-08-31 22:49:49'),
(316, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL#', '订单支付失败', '2015-08-31 22:49:50'),
(317, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL#', '订单支付失败', '2015-08-31 22:49:51');
INSERT INTO `order_log` (`Id`, `OrderId`, `OrderType`, `Log`, `Action`, `CreateTime`) VALUES
(318, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:49:53'),
(319, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:49:54'),
(320, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:49:55'),
(321, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:49:57'),
(322, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:49:58'),
(323, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:50:00'),
(324, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:50:01'),
(325, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:50:03'),
(326, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:50:04'),
(327, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:50:05'),
(328, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-08-31 22:50:07'),
(329, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS AND SLEEP(5)', '订单支付失败', '2015-08-31 22:50:08'),
(330, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS AND SLEEP(5) #', '订单支付失败', '2015-08-31 22:50:09'),
(331, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS; SELECT PG_SLEEP(5)--', '订单支付失败', '2015-08-31 22:50:11'),
(332, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS; SELECT SLEEP(5)-- ', '订单支付失败', '2015-08-31 22:50:12'),
(333, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\'; SELECT SLEEP(5)-- ', '订单支付失败', '2015-08-31 22:50:14'),
(334, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS) AND SLEEP(5) #', '订单支付失败', '2015-08-31 22:50:15'),
(335, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS WAITFOR DELAY \'0:0:5\'--', '订单支付失败', '2015-08-31 22:50:16'),
(336, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：http://120.26.55.211/s.txt', '订单支付失败', '2015-08-31 22:51:00'),
(337, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：http://120.26.55.211/s.txt', '订单支付失败', '2015-08-31 22:51:05'),
(338, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：a_long_name_file_not_exist', '订单支付失败', '2015-08-31 22:51:08'),
(339, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：${@print(md5(this_is_a_test_string))}', '订单支付失败', '2015-08-31 22:53:14'),
(340, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：${@print(md5(this_is_a_test_string))}\\', '订单支付失败', '2015-08-31 22:53:18'),
(341, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：print(md5(this_is_a_test_string));die();/*', '订单支付失败', '2015-08-31 22:53:21'),
(342, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：\'\"><scRipt>alert(98733)</sCript>', '订单支付失败', '2015-08-31 22:53:38'),
(343, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：http://120.26.55.211/s.txt', '订单支付失败', '2015-08-31 22:58:56'),
(344, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：http://120.26.55.211/s.txt', '订单支付失败', '2015-08-31 22:59:00'),
(345, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：a_long_name_file_not_exist', '订单支付失败', '2015-08-31 22:59:02'),
(346, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：${@print(md5(this_is_a_test_string))}', '订单支付失败', '2015-08-31 23:01:39'),
(347, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：${@print(md5(this_is_a_test_string))}\\', '订单支付失败', '2015-08-31 23:01:42'),
(348, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：print(md5(this_is_a_test_string));die();/*', '订单支付失败', '2015-08-31 23:01:45'),
(349, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：\'\"><scRipt>alert(98733)</sCript>', '订单支付失败', '2015-08-31 23:02:02'),
(350, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS).][,.\"[\"\'', '订单支付失败', '2015-09-07 22:45:59'),
(351, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:47:23'),
(352, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:47:25'),
(353, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL#', '订单支付失败', '2015-09-07 22:47:27'),
(354, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:47:28'),
(355, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:47:30'),
(356, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:47:31'),
(357, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL#', '订单支付失败', '2015-09-07 22:47:33'),
(358, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL#', '订单支付失败', '2015-09-07 22:47:34'),
(359, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:47:36'),
(360, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:47:38'),
(361, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:47:39'),
(362, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:47:41'),
(363, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:47:42'),
(364, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL#', '订单支付失败', '2015-09-07 22:47:44'),
(365, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL#', '订单支付失败', '2015-09-07 22:47:45'),
(366, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:47:47'),
(367, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:47:49'),
(368, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:47:50'),
(369, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:47:52'),
(370, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:47:54'),
(371, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:47:55'),
(372, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:47:57'),
(373, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL#', '订单支付失败', '2015-09-07 22:47:59'),
(374, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：${@print(md5(this_is_a_test_string))}', '订单支付失败', '2015-09-07 22:47:59'),
(375, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL#', '订单支付失败', '2015-09-07 22:48:00'),
(376, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:48:02'),
(377, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：${@print(md5(this_is_a_test_string))}\\', '订单支付失败', '2015-09-07 22:48:03'),
(378, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:48:04'),
(379, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:48:06'),
(380, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:48:07'),
(381, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:48:09'),
(382, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：print(md5(this_is_a_test_string));die();/*', '订单支付失败', '2015-09-07 22:48:10'),
(383, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:48:11'),
(384, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:48:12'),
(385, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:48:14'),
(386, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:48:16'),
(387, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL#', '订单支付失败', '2015-09-07 22:48:17'),
(388, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL#', '订单支付失败', '2015-09-07 22:48:19'),
(389, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:48:20'),
(390, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:48:22'),
(391, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:48:24'),
(392, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:48:25'),
(393, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:48:27'),
(394, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:48:28'),
(395, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:48:30'),
(396, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:48:31'),
(397, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:48:33'),
(398, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:48:34'),
(399, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:48:36'),
(400, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL#', '订单支付失败', '2015-09-07 22:48:38'),
(401, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL#', '订单支付失败', '2015-09-07 22:48:39'),
(402, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:48:41'),
(403, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:48:43'),
(404, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:48:44'),
(405, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:48:45'),
(406, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:48:47'),
(407, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:48:49'),
(408, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:48:50'),
(409, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:48:52'),
(410, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:48:53'),
(411, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:48:55'),
(412, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:48:56'),
(413, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:48:58'),
(414, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:49:00'),
(415, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL#', '订单支付失败', '2015-09-07 22:49:01'),
(416, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL#', '订单支付失败', '2015-09-07 22:49:03'),
(417, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:49:05'),
(418, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:49:06'),
(419, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:49:08'),
(420, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:49:09'),
(421, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:49:10'),
(422, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:49:12'),
(423, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:49:13'),
(424, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:49:14'),
(425, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：\'\"><scRipt>alert(98733)</sCript>', '订单支付失败', '2015-09-07 22:49:16'),
(426, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:49:16'),
(427, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:49:18'),
(428, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:49:19'),
(429, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:49:21'),
(430, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:49:22'),
(431, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:49:23'),
(432, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:49:25'),
(433, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL#', '订单支付失败', '2015-09-07 22:49:26'),
(434, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL#', '订单支付失败', '2015-09-07 22:49:27'),
(435, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:49:29'),
(436, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:49:30'),
(437, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:49:31'),
(438, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:49:33'),
(439, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:49:34'),
(440, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:49:36'),
(441, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:49:37'),
(442, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:49:38'),
(443, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:49:40'),
(444, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:49:41'),
(445, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:49:42'),
(446, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:49:44'),
(447, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:49:46'),
(448, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:49:47'),
(449, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:49:48'),
(450, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:49:50'),
(451, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL,NULL#', '订单支付失败', '2015-09-07 22:49:51'),
(452, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL,NULL#', '订单支付失败', '2015-09-07 22:49:52'),
(453, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71),NULL#', '订单支付失败', '2015-09-07 22:49:54'),
(454, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\' UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:49:55'),
(455, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:49:56'),
(456, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:49:58'),
(457, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:49:59'),
(458, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:50:00'),
(459, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:50:02'),
(460, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:50:03'),
(461, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:50:04'),
(462, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:50:06'),
(463, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:50:07'),
(464, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\') UNION ALL SELECT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CONCAT(0x716b756a71,0x4b5163596666574b5461,0x7170656b71)#', '订单支付失败', '2015-09-07 22:50:09'),
(465, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS AND SLEEP(5)', '订单支付失败', '2015-09-07 22:50:10'),
(466, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS AND SLEEP(5) #', '订单支付失败', '2015-09-07 22:50:11'),
(467, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS; SELECT PG_SLEEP(5)--', '订单支付失败', '2015-09-07 22:50:13'),
(468, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS; SELECT SLEEP(5)-- ', '订单支付失败', '2015-09-07 22:50:14'),
(469, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS\'; SELECT SLEEP(5)-- ', '订单支付失败', '2015-09-07 22:50:15'),
(470, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS) AND SLEEP(5) #', '订单支付失败', '2015-09-07 22:50:17'),
(471, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：TRADE_SUCCESS WAITFOR DELAY \'0:0:5\'--', '订单支付失败', '2015-09-07 22:50:18'),
(472, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：http://120.26.55.211/s.txt', '订单支付失败', '2015-09-07 22:51:00'),
(473, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：http://120.26.55.211/s.txt', '订单支付失败', '2015-09-07 22:51:04'),
(474, 78, '合同尾款', '需求方\'erikaq@126.com\',制作商\'汇腾视频制作公司\'的合同(测试-1),合同尾款支付失败，支付宝回复的状态码为：a_long_name_file_not_exist', '订单支付失败', '2015-09-07 22:51:08'),
(475, 79, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾视频制作公司\'的合同：\'北京市宣传片\'进入支付押金阶段，押金订单已建立', '订单建立', '2015-09-09 20:29:10'),
(476, 80, '合同押金', '需求方\'正脊和堂\',制作商\'visual rage\'的合同：\'宣传片\'进入支付押金阶段，押金订单已建立', '订单建立', '2015-09-09 20:34:57'),
(477, 80, '合同押金', '需求方\'正脊和堂\',制作商\'visual rage\'的合同(宣传片),合同押金支付完成，金额已打入剪片网的平台账号', '订单支付完成', '2015-09-09 21:22:57'),
(479, 82, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾视频制作公司\'的合同：\'2015-10-21 DEMO\'进入支付押金阶段，押金订单已建立', '订单建立', '2015-10-21 10:41:40'),
(480, 82, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾视频制作公司\'的合同(2015-10-21 DEMO),合同押金支付完成，金额已打入剪片网的平台账号', '订单支付完成', '2015-10-21 10:57:32'),
(485, 87, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾视频制作公司\'的合同：\'2015-10-21 DEMO\'进入支付尾款阶段，尾款订单已建立', '订单建立', '2015-10-21 11:12:12'),
(486, 87, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾视频制作公司\'的合同(2015-10-21 DEMO),合同尾款支付完成，金额已打入剪片网的平台账号', '订单支付完成', '2015-10-21 11:14:30'),
(487, 88, '合同尾款', '需求方\'正脊和堂\',制作商\'visual rage\'的合同：\'宣传片\'进入支付尾款阶段，尾款订单已建立', '订单建立', '2015-10-26 11:31:58'),
(488, 88, '合同尾款', '需求方\'正脊和堂\',制作商\'visual rage\'的合同(宣传片),合同尾款支付完成，金额已打入剪片网的平台账号', '订单支付完成', '2015-10-26 11:33:24'),
(492, 92, '合同押金', '需求方\'拼搏中的制片人\',制作商\'剪片网官方自营制作商\'的合同：\'DEMO10-26\'进入支付押金阶段，押金订单已建立', '订单建立', '2015-10-26 20:48:44'),
(493, 92, '合同押金', '需求方\'拼搏中的制片人\',制作商\'剪片网官方自营制作商\'的合同(DEMO10-26),合同押金支付完成，金额已打入剪片网的平台账号', '订单支付完成', '2015-10-26 20:50:57'),
(494, 93, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'剪片网官方自营制作商\'的合同：\'DEMO10-26\'进入支付尾款阶段，尾款订单已建立', '订单建立', '2015-10-26 21:06:33'),
(495, 93, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'剪片网官方自营制作商\'的合同：\'DEMO10-26\'，用户反悔支付尾款，环节回退到审片环节', '用户反悔', '2015-10-26 21:06:41'),
(496, 94, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'剪片网官方自营制作商\'的合同：\'DEMO10-26\'进入支付尾款阶段，尾款订单已建立', '订单建立', '2015-10-26 21:08:20'),
(497, 94, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'剪片网官方自营制作商\'的合同(DEMO10-26),合同尾款支付完成，金额已打入剪片网的平台账号', '订单支付完成', '2015-10-26 21:12:11'),
(498, 95, '合同押金', '需求方\'拼搏中的制片人\',制作商\'剪片网官方自营制作商\'的合同：\'中国好餐饮-发布会\'进入支付押金阶段，押金订单已建立', '订单建立', '2015-10-27 21:04:36'),
(499, 95, '合同押金', '需求方\'拼搏中的制片人\',制作商\'剪片网官方自营制作商\'的合同(中国好餐饮-发布会),合同押金支付完成，金额已打入剪片网的平台账号', '订单支付完成', '2015-10-27 21:06:42'),
(500, 96, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'剪片网官方自营制作商\'的合同：\'中国好餐饮-发布会\'进入支付尾款阶段，尾款订单已建立', '订单建立', '2015-10-27 21:33:03'),
(501, 96, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'剪片网官方自营制作商\'的合同(中国好餐饮-发布会),合同尾款支付完成，金额已打入剪片网的平台账号', '订单支付完成', '2015-10-27 21:35:58'),
(502, 79, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾视频制作公司\'的合同(北京市宣传片),合同押金支付完成，金额已打入剪片网的平台账号', '订单支付完成', '2015-10-29 17:46:48'),
(503, 97, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾视频制作公司\'的合同：\'北京市宣传片\'进入支付尾款阶段，尾款订单已建立', '订单建立', '2015-10-29 17:50:47'),
(504, 97, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾视频制作公司\'的合同(北京市宣传片),合同尾款支付完成，金额已打入剪片网的平台账号', '订单支付完成', '2015-10-29 17:50:58'),
(505, 98, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾视频制作公司\'的合同：\'demo-27\'进入支付押金阶段，押金订单已建立', '订单建立', '2015-10-29 18:44:53'),
(506, 98, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾视频制作公司\'的合同(demo-27),合同押金支付完成，金额已打入剪片网的平台账号', '订单支付完成', '2015-10-29 18:46:41'),
(507, 75, '合同押金', '需求方\'拼搏中的制片人\',制作商\'剪片网官方自营制作商\'的合同(汇腾宣传片),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2015-11-18 16:01:18'),
(508, 75, '合同押金', '需求方\'拼搏中的制片人\',制作商\'剪片网官方自营制作商\'的合同(汇腾宣传片),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2015-11-18 16:05:32'),
(509, 75, '合同押金', '需求方\'拼搏中的制片人\',制作商\'剪片网官方自营制作商\'的合同(汇腾宣传片),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2015-11-18 16:15:44'),
(510, 75, '合同押金', '需求方\'拼搏中的制片人\',制作商\'剪片网官方自营制作商\'的合同(汇腾宣传片),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2015-11-18 16:25:29'),
(511, 75, '合同押金', '需求方\'拼搏中的制片人\',制作商\'剪片网官方自营制作商\'的合同(汇腾宣传片),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2015-11-18 17:25:48'),
(512, 75, '合同押金', '需求方\'拼搏中的制片人\',制作商\'剪片网官方自营制作商\'的合同(汇腾宣传片),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2015-11-18 19:25:25'),
(513, 75, '合同押金', '需求方\'拼搏中的制片人\',制作商\'剪片网官方自营制作商\'的合同(汇腾宣传片),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2015-11-19 01:25:06'),
(514, 75, '合同押金', '需求方\'拼搏中的制片人\',制作商\'剪片网官方自营制作商\'的合同(汇腾宣传片),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2015-11-19 16:25:39'),
(515, 80, '合同押金', '需求方\'正脊和堂\',制作商\'visual rage\'的合同(宣传片),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2015-12-09 21:23:35'),
(516, 80, '合同押金', '需求方\'正脊和堂\',制作商\'visual rage\'的合同(宣传片),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2015-12-09 21:27:43'),
(517, 80, '合同押金', '需求方\'正脊和堂\',制作商\'visual rage\'的合同(宣传片),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2015-12-09 21:37:19'),
(518, 80, '合同押金', '需求方\'正脊和堂\',制作商\'visual rage\'的合同(宣传片),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2015-12-09 21:47:17'),
(519, 80, '合同押金', '需求方\'正脊和堂\',制作商\'visual rage\'的合同(宣传片),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2015-12-09 22:47:24'),
(520, 80, '合同押金', '需求方\'正脊和堂\',制作商\'visual rage\'的合同(宣传片),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2015-12-10 00:47:08'),
(521, 80, '合同押金', '需求方\'正脊和堂\',制作商\'visual rage\'的合同(宣传片),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2015-12-10 06:47:18'),
(522, 80, '合同押金', '需求方\'正脊和堂\',制作商\'visual rage\'的合同(宣传片),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2015-12-10 21:47:26'),
(523, 99, '平台账号充值', '用户\'剪片网官方自营制作商\'选择为平台账号充值，充值订单已建立', '订单建立', '2015-12-19 11:04:13'),
(524, 82, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾视频制作公司\'的合同(2015-10-21 DEMO),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-20 10:58:31'),
(525, 82, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾视频制作公司\'的合同(2015-10-21 DEMO),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-20 11:02:35'),
(526, 82, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾视频制作公司\'的合同(2015-10-21 DEMO),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-20 11:12:20'),
(527, 87, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾视频制作公司\'的合同(2015-10-21 DEMO),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-20 11:14:31'),
(528, 87, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾视频制作公司\'的合同(2015-10-21 DEMO),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-20 11:18:07'),
(529, 82, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾视频制作公司\'的合同(2015-10-21 DEMO),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-20 11:22:18'),
(530, 87, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾视频制作公司\'的合同(2015-10-21 DEMO),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-20 11:28:30'),
(531, 87, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾视频制作公司\'的合同(2015-10-21 DEMO),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-20 11:38:26'),
(532, 82, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾视频制作公司\'的合同(2015-10-21 DEMO),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-20 12:22:03'),
(533, 87, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾视频制作公司\'的合同(2015-10-21 DEMO),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-20 12:38:20'),
(534, 82, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾视频制作公司\'的合同(2015-10-21 DEMO),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-20 14:22:03'),
(535, 87, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾视频制作公司\'的合同(2015-10-21 DEMO),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-20 14:38:13'),
(536, 82, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾视频制作公司\'的合同(2015-10-21 DEMO),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-20 20:22:08'),
(537, 87, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾视频制作公司\'的合同(2015-10-21 DEMO),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-20 20:38:33'),
(538, 82, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾视频制作公司\'的合同(2015-10-21 DEMO),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-21 11:22:27'),
(539, 87, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾视频制作公司\'的合同(2015-10-21 DEMO),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-21 11:38:19'),
(540, 88, '合同尾款', '需求方\'正脊和堂\',制作商\'visual rage\'的合同(宣传片),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-25 11:33:35'),
(541, 88, '合同尾款', '需求方\'正脊和堂\',制作商\'visual rage\'的合同(宣传片),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-25 11:37:33'),
(542, 88, '合同尾款', '需求方\'正脊和堂\',制作商\'visual rage\'的合同(宣传片),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-25 11:47:22'),
(543, 88, '合同尾款', '需求方\'正脊和堂\',制作商\'visual rage\'的合同(宣传片),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-25 11:57:08'),
(544, 88, '合同尾款', '需求方\'正脊和堂\',制作商\'visual rage\'的合同(宣传片),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-25 12:57:48'),
(545, 88, '合同尾款', '需求方\'正脊和堂\',制作商\'visual rage\'的合同(宣传片),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-25 14:57:41'),
(546, 92, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(DEMO10-26),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-25 20:51:41'),
(547, 92, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(DEMO10-26),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-25 20:55:31'),
(548, 88, '合同尾款', '需求方\'正脊和堂\',制作商\'visual rage\'的合同(宣传片),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-25 20:57:20'),
(549, 92, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(DEMO10-26),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-25 21:05:16'),
(550, 94, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(DEMO10-26),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-25 21:12:41'),
(551, 92, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(DEMO10-26),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-25 21:15:40'),
(552, 94, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(DEMO10-26),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-25 21:16:24'),
(553, 94, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(DEMO10-26),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-25 21:26:21'),
(554, 94, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(DEMO10-26),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-25 21:36:21'),
(555, 92, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(DEMO10-26),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-25 22:15:11'),
(556, 94, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(DEMO10-26),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-25 22:36:14'),
(557, 92, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(DEMO10-26),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-26 00:15:17'),
(558, 94, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(DEMO10-26),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-26 00:36:21'),
(559, 92, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(DEMO10-26),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-26 06:15:29'),
(560, 94, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(DEMO10-26),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-26 06:36:03'),
(561, 88, '合同尾款', '需求方\'正脊和堂\',制作商\'visual rage\'的合同(宣传片),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-26 11:57:40'),
(562, 95, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(中国好餐饮-发布会),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-26 21:07:41'),
(563, 95, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(中国好餐饮-发布会),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-26 21:11:49'),
(564, 92, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(DEMO10-26),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-26 21:15:04'),
(565, 95, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(中国好餐饮-发布会),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-26 21:21:18'),
(566, 95, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(中国好餐饮-发布会),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-26 21:31:32'),
(567, 96, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(中国好餐饮-发布会),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-26 21:36:41'),
(568, 94, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(DEMO10-26),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-26 21:36:41'),
(569, 96, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(中国好餐饮-发布会),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-26 21:40:07'),
(570, 96, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(中国好餐饮-发布会),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-26 21:50:06'),
(571, 96, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(中国好餐饮-发布会),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-26 22:00:21'),
(572, 95, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(中国好餐饮-发布会),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-26 22:31:44'),
(573, 96, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(中国好餐饮-发布会),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-26 23:00:14'),
(574, 95, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(中国好餐饮-发布会),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-27 00:31:18'),
(575, 96, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(中国好餐饮-发布会),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-27 01:00:40'),
(576, 95, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(中国好餐饮-发布会),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-27 06:31:18'),
(577, 96, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(中国好餐饮-发布会),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-27 07:00:47'),
(578, 95, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(中国好餐饮-发布会),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-27 21:31:17'),
(579, 96, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(中国好餐饮-发布会),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-27 22:00:46'),
(580, 98, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾微电影制作团队\'的合同(demo-27),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-28 18:47:41'),
(581, 98, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾微电影制作团队\'的合同(demo-27),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-28 18:51:35'),
(582, 98, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾微电影制作团队\'的合同(demo-27),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-28 19:01:39'),
(583, 98, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾微电影制作团队\'的合同(demo-27),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-28 19:11:01'),
(584, 98, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾微电影制作团队\'的合同(demo-27),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-28 20:11:28'),
(585, 98, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾微电影制作团队\'的合同(demo-27),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-28 22:11:16'),
(586, 98, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾微电影制作团队\'的合同(demo-27),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-29 04:11:35'),
(587, 98, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾微电影制作团队\'的合同(demo-27),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-01-29 19:11:08');
INSERT INTO `order_log` (`Id`, `OrderId`, `OrderType`, `Log`, `Action`, `CreateTime`) VALUES
(589, 101, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同：\'我要做三d动画\'进入支付押金阶段，押金订单已建立', '订单建立', '2016-03-09 11:36:24'),
(590, 101, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(我要做三d动画),合同押金支付完成，金额已打入商影联盟的平台账号', '订单支付完成', '2016-03-09 11:36:36'),
(591, 102, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同：\'我要做三d动画\'进入支付尾款阶段，尾款订单已建立', '订单建立', '2016-03-09 11:50:48'),
(592, 102, '合同尾款', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(我要做三d动画),合同尾款支付完成，金额已打入商影联盟的平台账号', '订单支付完成', '2016-03-09 11:50:55'),
(593, 103, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同：\'11\'进入支付押金阶段，押金订单已建立', '订单建立', '2016-03-14 11:38:38'),
(594, 103, '合同押金', '需求方\'拼搏中的制片人\',制作商\'汇腾宣传片制作团队\'的合同(11),合同押金支付完成，金额已打入商影联盟的平台账号', '订单支付完成', '2016-03-14 11:39:26'),
(610, 119, '平台账号充值', '用户\'拼搏中的制片人\'选择为平台账号充值，充值订单已建立', '订单建立', '2016-03-16 16:30:26'),
(611, 119, '平台账号充值', '用户\'拼搏中的制片人\'为平台账号充值的订单完成支付，账号已充值', '订单支付完成', '2016-03-16 16:30:26'),
(612, 120, '平台账号充值', '用户\'拼搏中的制片人\'选择为平台账号充值，充值订单已建立', '订单建立', '2016-03-16 16:30:51'),
(613, 120, '平台账号充值', '用户\'拼搏中的制片人\'为平台账号充值的订单完成支付，账号已充值', '订单支付完成', '2016-03-16 16:30:51'),
(614, 121, '平台账号充值', '用户\'拼搏中的制片人\'选择为平台账号充值，充值订单已建立', '订单建立', '2016-03-16 16:31:12'),
(617, 124, '合同押金', '需求方\'test2@ht.com\',制作商\'联盟微电影制作团队\'的合同：\'test3\'进入支付押金阶段，押金订单已建立', '订单建立', '2016-07-10 13:40:31'),
(618, 125, '合同尾款', '需求方\'test2@ht.com\',制作商\'联盟微电影制作团队\'的合同：\'test3\'进入支付尾款阶段，尾款订单已建立', '订单建立', '2016-07-10 13:49:23'),
(619, 126, '合同押金', '需求方\'test2@ht.com\',制作商\'联盟微电影制作团队\'的合同：\'需求测试20\'进入支付押金阶段，押金订单已建立', '订单建立', '2016-09-05 15:22:13'),
(620, 127, '合同押金', '需求方\'test2@ht.com\',制作商\'联盟微电影制作团队\'的合同：\'test723a\'进入支付押金阶段，押金订单已建立', '订单建立', '2016-09-05 15:30:00'),
(621, 124, '合同押金', '需求方\'test2@ht.com\',制作商\'联盟微电影制作团队\'的合同(test3),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-10-09 13:41:42'),
(622, 124, '合同押金', '需求方\'test2@ht.com\',制作商\'联盟微电影制作团队\'的合同(test3),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-10-09 13:45:46'),
(623, 124, '合同押金', '需求方\'test2@ht.com\',制作商\'联盟微电影制作团队\'的合同(test3),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-10-09 13:55:43'),
(624, 124, '合同押金', '需求方\'test2@ht.com\',制作商\'联盟微电影制作团队\'的合同(test3),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-10-09 14:05:31'),
(625, 124, '合同押金', '需求方\'test2@ht.com\',制作商\'联盟微电影制作团队\'的合同(test3),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-10-09 15:05:04'),
(626, 124, '合同押金', '需求方\'test2@ht.com\',制作商\'联盟微电影制作团队\'的合同(test3),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-10-09 17:05:27'),
(627, 124, '合同押金', '需求方\'test2@ht.com\',制作商\'联盟微电影制作团队\'的合同(test3),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-10-09 23:05:40'),
(628, 124, '合同押金', '需求方\'test2@ht.com\',制作商\'联盟微电影制作团队\'的合同(test3),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2016-10-10 14:05:06'),
(630, 129, '合同押金', '需求方\'461654008@qq.com\',制作商\'联盟微电影制作团队\'的合同：\'企业产品推广片\'进入支付押金阶段，押金订单已建立', '订单建立', '2016-10-12 17:03:49'),
(631, 129, '合同押金', '需求方\'461654008@qq.com\',制作商\'联盟微电影制作团队\'的合同(企业产品推广片),合同押金支付完成，金额已打入汇腾传媒的平台账号', '订单支付完成', '2016-10-12 17:06:54'),
(632, 130, '合同尾款', '需求方\'461654008@qq.com\',制作商\'联盟微电影制作团队\'的合同：\'企业产品推广片\'进入支付尾款阶段，尾款订单已建立', '订单建立', '2016-10-12 17:18:21'),
(633, 130, '合同尾款', '需求方\'461654008@qq.com\',制作商\'联盟微电影制作团队\'的合同(企业产品推广片),合同尾款支付完成，金额已打入汇腾传媒的平台账号', '订单支付完成', '2016-10-12 17:20:08'),
(634, 131, '购买存储空间', '用户\'lijingjiehe@163.com\'选择购买额外的存储空间，购买订单已建立', '订单建立', '2016-11-27 13:05:43'),
(635, 129, '合同押金', '需求方\'461654008@qq.com\',制作商\'微电影制作组\'的合同(企业产品推广片),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2017-01-11 17:07:44'),
(636, 129, '合同押金', '需求方\'461654008@qq.com\',制作商\'微电影制作组\'的合同(企业产品推广片),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2017-01-11 17:20:12'),
(637, 130, '合同尾款', '需求方\'461654008@qq.com\',制作商\'微电影制作组\'的合同(企业产品推广片),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2017-01-11 17:20:46'),
(638, 129, '合同押金', '需求方\'461654008@qq.com\',制作商\'微电影制作组\'的合同(企业产品推广片),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2017-01-11 17:21:49'),
(639, 129, '合同押金', '需求方\'461654008@qq.com\',制作商\'微电影制作组\'的合同(企业产品推广片),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2017-01-11 17:31:39'),
(640, 130, '合同尾款', '需求方\'461654008@qq.com\',制作商\'微电影制作组\'的合同(企业产品推广片),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2017-01-11 17:33:43'),
(641, 130, '合同尾款', '需求方\'461654008@qq.com\',制作商\'微电影制作组\'的合同(企业产品推广片),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2017-01-11 17:34:12'),
(642, 130, '合同尾款', '需求方\'461654008@qq.com\',制作商\'微电影制作组\'的合同(企业产品推广片),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2017-01-11 17:44:46'),
(643, 129, '合同押金', '需求方\'461654008@qq.com\',制作商\'微电影制作组\'的合同(企业产品推广片),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2017-01-11 18:37:46'),
(644, 130, '合同尾款', '需求方\'461654008@qq.com\',制作商\'微电影制作组\'的合同(企业产品推广片),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2017-01-11 18:50:45'),
(645, 129, '合同押金', '需求方\'461654008@qq.com\',制作商\'微电影制作组\'的合同(企业产品推广片),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2017-01-11 20:38:09'),
(646, 130, '合同尾款', '需求方\'461654008@qq.com\',制作商\'微电影制作组\'的合同(企业产品推广片),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2017-01-11 20:51:46'),
(647, 129, '合同押金', '需求方\'461654008@qq.com\',制作商\'微电影制作组\'的合同(企业产品推广片),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2017-01-12 02:40:20'),
(648, 130, '合同尾款', '需求方\'461654008@qq.com\',制作商\'微电影制作组\'的合同(企业产品推广片),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2017-01-12 02:53:44'),
(649, 129, '合同押金', '需求方\'461654008@qq.com\',制作商\'微电影制作组\'的合同(企业产品推广片),合同押金支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2017-01-12 17:31:32'),
(650, 130, '合同尾款', '需求方\'461654008@qq.com\',制作商\'微电影制作组\'的合同(企业产品推广片),合同尾款支付失败，支付宝回复的状态码为：TRADE_FINISHED', '订单支付失败', '2017-01-12 17:44:39');

--
-- 触发器 `order_log`
--
DELIMITER $$
CREATE TRIGGER `ol_updatetime` BEFORE INSERT ON `order_log` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `platformSetting`
--

CREATE TABLE `platformSetting` (
  `Id` bigint(20) NOT NULL,
  `StorageSize` bigint(20) NOT NULL,
  `MemberShipTax` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `platformSetting`
--

INSERT INTO `platformSetting` (`Id`, `StorageSize`, `MemberShipTax`) VALUES
(1, 107374182400, 100);

-- --------------------------------------------------------

--
-- 表的结构 `platform_msg`
--

CREATE TABLE `platform_msg` (
  `Id` bigint(20) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Msg` varchar(255) NOT NULL,
  `SrcUserId` bigint(20) NOT NULL,
  `DestUserId` bigint(20) NOT NULL,
  `ResourceId` bigint(20) NOT NULL,
  `ResourceType` varchar(100) NOT NULL,
  `MsgType` varchar(100) NOT NULL,
  `IsReaded` bit(1) NOT NULL,
  `IsAdopted` bit(1) NOT NULL,
  `CreateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `platform_msg`
--

INSERT INTO `platform_msg` (`Id`, `Title`, `Msg`, `SrcUserId`, `DestUserId`, `ResourceId`, `ResourceType`, `MsgType`, `IsReaded`, `IsAdopted`, `CreateTime`) VALUES
(189, '申请', '制作商\"剪片网官方自营制作商\"申请了您发布的制作需求\"正脊和堂宣传片\"', 35, 48, 80, 'requirement', 'focus', b'0', b'1', '2015-09-02 17:25:00'),
(197, '取消申请', '用户\"剪片网官方自营制作商\"取消了您对他制作需求\"demo\"的申请', 37, 35, 77, 'requirement', 'cancelFocus', b'1', b'1', '2015-09-09 20:42:43'),
(214, '环节申请', '制作商\"visual rage\"发起了针对合同\"宣传片\"的审核申请确认', 43, 49, 83, 'contract', 'action', b'0', b'1', '2015-10-26 10:34:48'),
(215, '环节通过', '用户\"xgq\"通过了您针对合同\"宣传片\"的申请确认行为，备注信息：\"环节通过\"', 49, 43, 83, 'contract', 'action', b'1', b'1', '2015-10-26 11:31:58'),
(216, '取消申请', '用户\"visual rage\"取消了您对他制作需求\"张家界的宣传片\"的申请', 37, 43, 84, 'requirement', 'cancelFocus', b'1', b'1', '2015-10-26 18:05:11'),
(237, '环节通过', '用户\"rick_zhang@126.com\"通过了您针对合同\"DEMO10-26\"的申请确认行为，备注信息：\"环节通过\"', 37, 35, 87, 'contract', 'action', b'1', b'1', '2015-10-26 21:06:33'),
(238, '环节回退', '用户\"rick_zhang@126.com\"反悔了\"DEMO10-26\"的支付尾款要求，项目回退到审片环节', 37, 35, 87, 'contract', 'action', b'1', b'1', '2015-10-26 21:06:41'),
(240, '环节通过', '用户\"rick_zhang@126.com\"通过了您针对合同\"DEMO10-26\"的申请确认行为，备注信息：\"环节通过\"', 37, 35, 87, 'contract', 'action', b'1', b'1', '2015-10-26 21:08:20'),
(258, '环节通过', '用户\"rick_zhang@126.com\"通过了您针对合同\"中国好餐饮-发布会\"的申请确认行为，备注信息：\"环节通过\"', 37, 35, 85, 'contract', 'action', b'1', b'1', '2015-10-27 21:33:03'),
(269, '申请提现', '申请提现成功，请及时查看个人账号', 38, 43, 0, 'platform', 'applyMoney', b'1', b'1', '2015-11-01 10:31:36'),
(278, '环节驳回', '用户\"rick_zhang@126.com\"驳回了您针对合同\"汇腾宣传片\"的申请确认行为，理由为：\"环节驳回\"', 37, 35, 66, 'contract', 'action', b'1', b'1', '2015-11-05 20:47:21'),
(281, '需求方案审核未通过', '客户拒绝了您对需求\"学校宣传片\"的方案申请，请注意查看', 37, 35, 90, 'requirement', 'apply', b'1', b'1', '2015-12-28 22:30:42'),
(282, '申请', '制作商\"剪片网官方自营制作商\"申请了您发布的制作需求\"酒类广告\"', 35, 59, 89, 'requirement', 'focus', b'0', b'0', '2015-12-31 17:36:07'),
(296, '环节通过', '用户\"rick_zhang@126.com\"通过了您针对合同\"我要做三d动画\"的申请确认行为，备注信息：\"环节通过\"', 37, 35, 91, 'contract', 'action', b'1', b'1', '2016-03-09 11:50:48'),
(297, '方案确认申请', '制作商\"汇腾宣传片制作团队\"申请方案确认，请注意查看', 35, 47, 78, 'requirement', 'apply', b'0', b'1', '2016-03-12 15:44:17'),
(301, '环节驳回', '用户\"rick_zhang@126.com\"驳回了您针对合同\"11\"的申请确认行为，理由为：\"环节驳回\"', 37, 35, 92, 'contract', 'action', b'1', b'1', '2016-03-14 17:38:19'),
(302, '申请', '制作商\"联盟微电影制作团队\"申请了您发布的制作需求\"test123\"', 38, 74, 110, 'requirement', 'focus', b'0', b'1', '2016-07-10 13:04:03'),
(315, '环节申请', '制作商\"联盟微电影制作团队\"发起了针对合同\"test3\"的审核申请确认', 38, 75, 112, 'contract', 'action', b'1', b'1', '2016-07-10 13:48:31'),
(324, '修改制作方案', '制作商\"联盟微电影制作团队\"修改了需求\"test123\"的制作方案', 38, 74, 110, 'requirement', 'modifyScheme', b'0', b'1', '2016-08-03 15:01:29'),
(391, '环节申请', '制作商\"联盟微电影制作团队\"发起了针对合同\"需求测试20\"的审核申请确认', 38, 75, 140, 'contract', 'action', b'1', b'1', '2016-10-12 14:03:34'),
(419, '申请', '制作商\"联盟微电影制作团队\"申请了您发布的制作需求\"酒类广告\"', 38, 59, 89, 'requirement', 'focus', b'0', b'0', '2016-10-12 17:49:36'),
(422, '申请', '制作商\"联盟微电影制作团队\"申请了您发布的制作需求\"xinqqq\"', 38, 75, 152, 'requirement', 'focus', b'0', b'1', '2016-10-16 16:23:42'),
(425, '申请', '制作商\"联盟微电影制作团队\"申请了您发布的制作需求\"xina\"', 38, 75, 151, 'requirement', 'focus', b'0', b'1', '2016-10-20 13:58:48'),
(426, '申请', '制作商\"联盟微电影制作团队\"申请了您发布的制作需求\"xina\"', 38, 75, 151, 'requirement', 'focus', b'0', b'1', '2016-10-20 13:59:53'),
(427, '修改制作方案', '制作商\"联盟微电影制作团队\"修改了需求\"xina\"的制作方案', 38, 75, 151, 'requirement', 'modifyScheme', b'0', b'1', '2016-10-20 14:00:44'),
(428, '方案确认申请', '制作商\"联盟微电影制作团队\"申请方案确认，请注意查看', 38, 75, 151, 'requirement', 'apply', b'0', b'1', '2016-10-20 14:01:04'),
(429, '申请', '制作商\"联盟微电影制作团队\"申请了您发布的制作需求\"test2需求测试\"', 38, 75, 150, 'requirement', 'focus', b'0', b'1', '2016-10-20 14:02:07'),
(430, '修改制作方案', '制作商\"联盟微电影制作团队\"修改了需求\"test2需求测试\"的制作方案', 38, 75, 150, 'requirement', 'modifyScheme', b'0', b'1', '2016-10-20 14:02:11'),
(431, '方案确认申请', '制作商\"联盟微电影制作团队\"申请方案确认，请注意查看', 38, 75, 150, 'requirement', 'apply', b'0', b'1', '2016-10-20 14:02:14'),
(432, '修改制作方案', '制作商\"联盟微电影制作团队\"修改了需求\"test2需求测试\"的制作方案', 38, 75, 150, 'requirement', 'modifyScheme', b'0', b'1', '2016-10-20 14:02:18'),
(433, '申请', '制作商\"联盟微电影制作团队\"申请了您发布的制作需求\"test2需求测试\"', 38, 75, 150, 'requirement', 'focus', b'0', b'1', '2016-10-20 14:02:22'),
(434, '修改制作方案', '制作商\"联盟微电影制作团队\"修改了需求\"test2需求测试\"的制作方案', 38, 75, 150, 'requirement', 'modifyScheme', b'0', b'1', '2016-10-20 14:02:29'),
(435, '方案确认申请', '制作商\"联盟微电影制作团队\"申请方案确认，请注意查看', 38, 75, 150, 'requirement', 'apply', b'0', b'1', '2016-10-20 14:02:30'),
(436, '申请', '制作商\"联盟微电影制作团队\"申请了您发布的制作需求\"xinqqq\"', 38, 75, 153, 'requirement', 'focus', b'0', b'1', '2016-10-20 14:03:55'),
(438, '申请', '制作商\"联盟微电影制作团队\"申请了您发布的制作需求\"需求测试907\"', 38, 75, 141, 'requirement', 'focus', b'0', b'1', '2016-10-20 14:18:57'),
(439, '申请', '制作商\"联盟微电影制作团队\"申请了您发布的制作需求\"需求测试907\"', 38, 75, 141, 'requirement', 'focus', b'0', b'1', '2016-10-20 14:19:02'),
(440, '申请', '制作商\"联盟微电影制作团队\"申请了您发布的制作需求\"需求测试907\"', 38, 75, 141, 'requirement', 'focus', b'0', b'1', '2016-10-20 14:19:03'),
(450, '申请', '制作商\"联盟微电影制作团队\"申请了您发布的制作需求\"需求测试907\"', 38, 75, 141, 'requirement', 'focus', b'0', b'1', '2016-10-20 17:13:55'),
(479, '需求方案审核未通过', '客户拒绝了您对需求\"333\"的方案申请，请注意查看', 91, 38, 161, 'requirement', 'apply', b'0', b'1', '2016-10-25 12:59:38'),
(487, '环节驳回', '用户\"rick_zhang@126.com\"驳回了您针对合同\"11\"的申请确认行为，理由为：\"环节驳回\"', 37, 35, 92, 'contract', 'action', b'0', b'1', '2016-11-17 11:51:32');

--
-- 触发器 `platform_msg`
--
DELIMITER $$
CREATE TRIGGER `pm_updateTime` BEFORE INSERT ON `platform_msg` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `project`
--

CREATE TABLE `project` (
  `Id` bigint(20) NOT NULL,
  `PrincipalUserId` bigint(20) NOT NULL,
  `ContractId` bigint(20) DEFAULT NULL,
  `RequirementId` bigint(20) DEFAULT NULL,
  `Title` varchar(255) NOT NULL,
  `Detail` text NOT NULL,
  `CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `projecteventlog`
--

CREATE TABLE `projecteventlog` (
  `Id` bigint(20) NOT NULL,
  `ProjectId` bigint(20) NOT NULL,
  `UserId` bigint(20) NOT NULL,
  `Action` bigint(20) DEFAULT NULL,
  `Segment` bigint(20) DEFAULT NULL,
  `Detail` text NOT NULL,
  `CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `projectsegment`
--

CREATE TABLE `projectsegment` (
  `Id` bigint(20) NOT NULL,
  `ProjectId` bigint(20) NOT NULL,
  `PrincipalUserId` bigint(20) DEFAULT NULL,
  `ContractSegmentId` bigint(20) DEFAULT '0',
  `Segment` bigint(20) NOT NULL,
  `Deadline` datetime NOT NULL,
  `Remark` varchar(2000) DEFAULT NULL,
  `ApplyUserId` bigint(20) DEFAULT NULL,
  `ApplyTime` datetime DEFAULT NULL,
  `ApplyRemark` varchar(2000) DEFAULT NULL,
  `ConfirmUserId` bigint(20) DEFAULT NULL,
  `ConfirmTime` datetime DEFAULT NULL,
  `ConfirmRemark` varchar(2000) DEFAULT NULL,
  `Status` bigint(20) DEFAULT NULL,
  `CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `rechargeAccount_order`
--

CREATE TABLE `rechargeAccount_order` (
  `Id` bigint(20) NOT NULL,
  `Amount` bigint(20) NOT NULL,
  `OrderId` bigint(20) NOT NULL,
  `CreateTime` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `rechargeAccount_order`
--

INSERT INTO `rechargeAccount_order` (`Id`, `Amount`, `OrderId`, `CreateTime`) VALUES
(4, 100000, 53, '2015-07-31 08:20:10'),
(5, 120, 59, '2015-08-02 08:29:14'),
(6, 1000, 99, '2015-12-19 03:04:13'),
(7, 0, 119, '2016-03-16 08:30:26'),
(8, 0, 120, '2016-03-16 08:30:51'),
(9, 0, 121, '2016-03-16 08:31:12');

--
-- 触发器 `rechargeAccount_order`
--
DELIMITER $$
CREATE TRIGGER `rechargeA_updateTime` BEFORE INSERT ON `rechargeAccount_order` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `registeridentity`
--

CREATE TABLE `registeridentity` (
  `Id` bigint(20) NOT NULL,
  `IdentityCode` varchar(20) NOT NULL,
  `CreateTime` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `registeridentity`
--

INSERT INTO `registeridentity` (`Id`, `IdentityCode`, `CreateTime`, `Email`) VALUES
(3, '724501', '2015-08-17 09:23:17', '1029743561@qq.com'),
(7, '344913', '2015-09-01 06:28:21', 'jiangxuechao@sins.cn'),
(8, '763077', '2015-09-01 06:54:03', 'Jiangxuevhao@sina.cn'),
(12, '688732', '2015-09-07 13:53:42', '597626879@qq.com'),
(14, '556112', '2015-10-03 03:26:33', '1368612643@qq.com'),
(15, '389325', '2015-10-08 03:35:52', '897245916@qq.com'),
(16, '561827', '2015-10-15 09:10:23', 'xdmiao@msn.com'),
(23, '396654', '2016-01-04 03:43:11', 'sifengke@126.com'),
(25, '853297', '2016-01-04 04:00:01', 'changshoufangzhou@126.com'),
(30, '976367', '2016-04-26 09:57:16', '281922308@qq.com'),
(31, '239038', '2016-04-26 09:57:29', '281922308@qq.com'),
(33, '743140', '2016-05-17 07:53:47', 'andyhli@yahoo.com.au'),
(34, '839064', '2016-05-17 07:54:14', 'andyhli@yahoo.com.au'),
(43, '749390', '2016-08-11 07:51:14', '3249568058@qq.com'),
(46, '942436', '2016-10-11 09:14:59', '461654008@qq.com'),
(47, '872174', '2016-10-16 02:30:48', 'huiteng@ht.com'),
(48, '138512', '2016-11-24 06:42:10', 'majuqiao@filmuoion.net'),
(49, '283784', '2016-11-24 07:35:27', 'majuqiao@filmunion.net'),
(51, '502347', '2016-11-24 07:53:01', 'huiawei@filmunion.net'),
(57, '475789', '2016-11-25 03:33:40', 'huawei@filmunion.net'),
(59, '422104', '2016-12-13 08:41:06', 'test2@ht.com'),
(60, '463289', '2017-08-14 03:58:13', '619677632@qq.com');

--
-- 触发器 `registeridentity`
--
DELIMITER $$
CREATE TRIGGER `registeridentity_updateTIme` BEFORE INSERT ON `registeridentity` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `requirement`
--

CREATE TABLE `requirement` (
  `Id` bigint(20) NOT NULL,
  `ServiceUserId` bigint(20) DEFAULT NULL,
  `PublisherId` bigint(20) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Detail` text NOT NULL,
  `Amount` float NOT NULL,
  `CreateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` bigint(255) NOT NULL,
  `Deadline` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Long` varchar(255) DEFAULT NULL,
  `Format` varchar(255) DEFAULT NULL,
  `Voice` varchar(255) DEFAULT NULL,
  `Gbm` varchar(255) DEFAULT NULL,
  `Place` varchar(255) DEFAULT NULL,
  `Refer` varchar(255) DEFAULT NULL,
  `ReferName` varchar(255) DEFAULT NULL,
  `Symbol` varchar(255) DEFAULT NULL,
  `Subtitle` varchar(255) DEFAULT NULL,
  `Category_1` int(11) DEFAULT NULL,
  `Category_2` int(11) DEFAULT NULL,
  `Scheme` text,
  `ContractId` bigint(20) DEFAULT NULL,
  `DepositPercent` float DEFAULT NULL,
  `Remark` text,
  `ApplyStatus` int(11) DEFAULT NULL,
  `Star` int(11) DEFAULT NULL,
  `Comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `requirement`
--

INSERT INTO `requirement` (`Id`, `ServiceUserId`, `PublisherId`, `Title`, `Detail`, `Amount`, `CreateTime`, `Status`, `Deadline`, `Type`, `Long`, `Format`, `Voice`, `Gbm`, `Place`, `Refer`, `ReferName`, `Symbol`, `Subtitle`, `Category_1`, `Category_2`, `Scheme`, `ContractId`, `DepositPercent`, `Remark`, `ApplyStatus`, `Star`, `Comment`) VALUES
(64, 35, 33, '新需求测试', '你在南方的艳阳里大雪纷飞我在北方的寒夜里四季如春如果天黑之前来得及我要忘了你的眼睛穷极一生做不完一场梦他不再和谁谈论相逢的孤岛因为心里早已荒芜人烟他的心里再装不下一个家做一个只对自己说谎的哑巴他说你任何为人称道的美丽不及他第一次遇见你时光苟延残喘无可奈何\n如果所有土地连在一起\n走上一生只为拥抱你\n喝醉了他的梦，晚安\n\n他听见有人唱着古老的歌唱着今天还在远方发生的\n像在她眼睛里看到的孤岛\n没有悲伤但也没有花朵\n你在南方的艳阳里大雪纷飞\n我在北方的寒夜里四季如春\n如果天黑之前来得及\n我要忘了你的眼睛\n穷极一生做不完一场梦\n你在南方的艳阳里大雪纷飞我在北方的寒夜里四季如春\n如果天黑之前来得及\n我要忘了你的眼睛\n穷极一生做不完一场梦\n大梦初醒荒唐了一生\n南山南，北秋悲南山有谷堆\n南风喃，北海北\n北海有墓碑\n南山南，北秋悲\n南山有谷堆\n南风喃，北海北北海有墓碑\n北海有墓碑', 10, '2015-08-18 11:02:21', 8, '08/31/2015', NULL, '11', '4k', '你在南方的艳阳里大雪纷飞我在北方的寒夜里四季如春如果天黑之前来得及我要忘了你的眼睛穷极一生做不完一场梦他不再和谁谈论相逢的孤岛因为心里早已荒芜人烟他的心里再装不下一个家做一个只对自己说谎的哑巴他说你任何为人称道的美丽不及他第一次遇见你时光苟延残喘无可奈何\n如果所有土地连在一起\n走上一生只为拥抱你\n喝醉了他的梦，晚安', '你在南方的艳阳里大雪纷飞我在北方的寒夜里四季如春如果天黑之前来得及我要忘了你的眼睛穷极一生做不完一场梦他不再和谁谈论相逢的孤岛因为心里早已荒芜人烟他的心里再装不下一个家做一个只对自己说谎的哑巴他说你任何为人称道的美丽不及他第一次遇见你时光苟延残喘无可奈何\n如果所有土地连在一起\n走上一生只为拥抱你\n喝醉了他的梦，晚安', NULL, 'http://jianpianzi.com/player/402', NULL, NULL, '你在南方的艳阳里大雪纷飞我在北方的寒夜里四季如春如果天黑之前来得及我要忘了你的眼睛穷极一生做不完一场梦他不再和谁谈论相逢的孤岛因为心里早已荒芜人烟他的心里再装不下一个家做一个只对自己说谎的哑巴他说你任何为人称道的美丽不及他第一次遇见你时光苟延残喘无可奈何\n如果所有土地连在一起\n走上一生只为拥抱你\n喝醉了他的梦，晚安', 2, 35, NULL, 89, 50, NULL, 0, 5, '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉'),
(65, 38, 37, '北京市宣传片', '如此', 0, '2015-08-18 12:15:03', 8, '08/31/2015', NULL, '', '', '', '', NULL, 'http://www.jianpianzi.com/player/395', NULL, NULL, '', 2, 35, NULL, 93, 50, NULL, 0, NULL, NULL),
(66, 35, 37, '汇腾宣传片', '如此如此', 0.1, '2015-08-19 07:52:35', 5, '08/28/2015', NULL, '5', '4K', '123', '123', NULL, 'http://www.jianpianzi.com/player/448', NULL, NULL, '123', 2, 35, NULL, 90, 50, NULL, 0, NULL, NULL),
(72, 35, 37, '超级蜂巢宣传片', '标签：宣传片 企业形象 庄重 时尚 唯美 ', 50000, '2015-08-20 08:07:15', 4, '08/31/2015', NULL, '60秒', '高清', '如此', '如此', NULL, 'http://www.jianpianzi.com/player/402', NULL, NULL, '如此', 2, 35, NULL, 91, 50, NULL, 0, NULL, NULL),
(73, NULL, 37, '牛栏山', '标签：广告片 产品 华丽 热闹 传统 霸气 ', 10000, '2015-08-21 08:36:52', 2, '08/28/2015', NULL, '10分钟', NULL, NULL, NULL, NULL, 'http://www.jianpianzi.com/player/399', NULL, NULL, NULL, 18, 28, NULL, NULL, 50, NULL, 0, NULL, NULL),
(74, NULL, 37, '2015-08-22', '标签：广告片 产品 产品  华丽  欢乐  唯美  传统  ', 10000, '2015-08-22 14:24:28', 1, '08/28/2015', NULL, '10分钟', NULL, NULL, NULL, NULL, 'http://www.jianpianzi.com/player/395', 'orange30B', NULL, NULL, 18, 28, NULL, NULL, 50, NULL, 0, NULL, NULL),
(75, 38, 37, '来个苹果', '标签：广告片 产品 欢乐 热闹 传统 朴实 ', 100000, '2015-08-23 03:07:27', 3, '08/28/2015', NULL, '10分钟', NULL, NULL, NULL, NULL, 'http://www.jianpianzi.com/player/398', '神州行', NULL, NULL, 18, 28, NULL, NULL, 50, NULL, 0, NULL, NULL),
(76, NULL, 37, 'demo', '标签：广告片 产品 平缓 传统 朴实 温情 ', 1000, '2015-08-24 03:48:16', 1, '11/08/2016', NULL, '10分钟', NULL, NULL, NULL, NULL, 'http://www.jianpianzi.com/player/396', 'ICBC_金融@家', NULL, NULL, 0, 0, NULL, NULL, 50, NULL, 0, NULL, NULL),
(77, NULL, 37, 'demo', '如此。', 0.1, '2015-08-24 05:47:46', 2, '03/30/2016', NULL, '10分钟', NULL, NULL, NULL, NULL, 'http://www.jianpianzi.com/player/395', 'orange30B', NULL, NULL, 0, 0, NULL, NULL, 50, NULL, 0, NULL, NULL),
(78, NULL, 47, '国内首创的食养功效“清三高花茶饼”OEM贴牌代加工招商视频', '标签：国内首创、新品种、食养功效、部分药食同源食材科学搭配、空白市场、无竞争对手、不打价格战、高利润、近3亿人口市场需求，OEM帖牌代加工起订量不限、进超市手续正规齐全、央视节目主持人方琼代言、近20年历史工厂制造。生意难做什么办？打价格战无利润什么办？产品不好卖什么？赚不到钱什么？做什么无竞争对手又不打价格战，利润又高？他、她、他们都在做的好项目。', 3500, '2015-08-25 15:57:51', 2, '09/30/2015', NULL, '3-5分钟', NULL, NULL, NULL, NULL, 'http://www.jianpianzi.com/player/395', 'orange30B', NULL, NULL, 18, 28, NULL, NULL, 50, NULL, 0, NULL, NULL),
(79, 38, 34, '测试-1', '标签：3D动画 建筑动画 华丽 时尚 唯美 ', 11, '2015-08-29 02:58:50', 8, '08/31/2015', NULL, '10', 'test', 'test', 'test', NULL, 'http://jianpianzi.com/player/457', '房产3D', NULL, 'test', 31, 32, NULL, 92, 50, NULL, 0, NULL, NULL),
(80, NULL, 48, '正脊和堂宣传片', '1.\n2.\n3.\n4.', 3000, '2015-09-02 09:22:57', 1, '09/07/2015', NULL, '2分钟', NULL, NULL, NULL, NULL, '', '', NULL, NULL, 2, 35, NULL, NULL, 50, NULL, 0, NULL, NULL),
(82, NULL, 34, '测试－3', 'test', 100, '2015-09-05 02:56:02', 2, '09/30/2015', NULL, '12', NULL, NULL, NULL, NULL, 'http://jianpianzi.com/player/457', '', NULL, NULL, 2, 35, NULL, NULL, 50, NULL, 0, NULL, NULL),
(83, 43, 49, '宣传片', '体现出蒋氏正脊产生的背景、由来和特色', 3000, '2015-09-09 12:19:36', 8, '09/12/2015', NULL, '', '', '', '', NULL, '', '', NULL, '', 2, 35, NULL, 94, 50, NULL, 0, 4, '2D画面做得非常不错！'),
(84, NULL, 37, '张家界的宣传片', '1、画面要漂亮；\n2、需要演员', 100000, '2015-09-27 08:17:58', 2, '12/29/2015', NULL, '10分钟左右', NULL, NULL, NULL, NULL, '', '', NULL, NULL, 2, 56, NULL, NULL, 50, NULL, 0, NULL, NULL),
(85, 35, 37, '中国好餐饮-发布会', '1.\n2.\n3.', 0.1, '2015-10-10 03:34:06', 8, '10/29/2015', NULL, '6', '高清', '', '', NULL, 'http://www.jianpianzi.com/player/453', 'CCTV7农业节目', NULL, '', 18, 28, NULL, 101, 50, NULL, 0, NULL, NULL),
(86, 38, 37, '2015-10-21 DEMO', '描述如此。', 66, '2015-10-21 01:54:23', 8, '10/23/2015', NULL, '11', 'test', '', '', NULL, 'http://www.jianpianzi.com/player/453', 'CCTV7农业节目', NULL, '', 2, 35, NULL, 96, 50, NULL, 0, 4, '系统非常好用!'),
(87, 35, 37, 'DEMO10-26', '1.如此；\n2.如此；\n3.如此。', 0.2, '2015-10-26 10:06:34', 8, '10/28/2015', NULL, '10', '高清', '', '', NULL, 'http://www.jianpianzi.com/player/453', 'CCTV7农业节目', NULL, '', 2, 35, NULL, 100, 50, NULL, 0, 4, '片子做得不错！'),
(88, 38, 37, 'demo-27', '如此。', 0.1, '2015-10-27 09:40:07', 5, '10/30/2015', NULL, '5', '高清', '', '', NULL, 'http://www.jianpianzi.com/player/453', 'CCTV7农业节目', NULL, '', 2, 35, NULL, 102, 50, NULL, 0, NULL, NULL),
(89, NULL, 59, '酒类广告', '高大上', 2, '2015-11-20 05:25:53', 2, '01/06/2016', NULL, '99秒', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, 0, NULL, NULL),
(90, NULL, 37, '学校宣传片', '1.。。。\n2。。。\n3。。。', 10000, '2015-12-02 13:17:17', 3, '03/30/2016', NULL, '3', NULL, NULL, NULL, NULL, '', '', NULL, NULL, 0, 0, NULL, NULL, 50, NULL, 0, NULL, NULL),
(91, 35, 37, '我要做三d动画', '恩，两分钟吧，关于游戏的广告，', 0, '2016-03-09 03:16:24', 8, '03/10/2016', NULL, '', '', '', '', NULL, '', '', NULL, '', 0, 0, NULL, 104, 50, NULL, 0, NULL, NULL),
(92, 35, 37, '11', '1', 0, '2016-03-10 09:25:08', 5, '03/11/2016', NULL, '', '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, 105, 50, NULL, 0, NULL, NULL),
(112, 38, 75, 'test3', '新色彩', 0.1, '2016-07-10 02:05:56', 8, '07/31/2016', NULL, '10', 'dg', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, 108, 50, NULL, 0, NULL, NULL),
(114, 38, 75, 'test723a', 'fgshgshg', 1, '2016-07-23 01:49:35', 4, '07/31/2016', NULL, '10', '视频测试', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, 110, 50, NULL, 0, NULL, NULL),
(137, NULL, 38, '123', '123', 123, '2016-08-12 07:24:09', 1, '08/31/2016', NULL, '123', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, 0, NULL, NULL),
(138, 38, 37, '测试需求2', 'jdhdkk', 1, '2016-08-12 23:55:57', 3, '08/31/2016', NULL, '1', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, 0, NULL, NULL),
(139, NULL, 37, '123', '123', 12, '2016-08-13 15:24:09', 3, '08/30/2016', NULL, '10', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, 0, NULL, NULL),
(140, 38, 75, '需求测试20', '最好的视频', 0, '2016-09-01 10:08:20', 5, '09/30/2016', NULL, '', '2ddonghua', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, 109, 50, NULL, 1, NULL, NULL),
(141, 38, 75, '需求测试907', 'momomom', 1000, '2016-09-07 07:52:17', 3, '09/30/2016', NULL, '1', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, 0, NULL, NULL),
(142, NULL, 91, 'text企业宣传片', '123', 10, '2016-10-11 09:25:58', 3, '10/31/2016', NULL, '10min', NULL, NULL, NULL, NULL, 'http://www.zuopianzi.com/player/395', 'orange30B', NULL, NULL, 0, 0, NULL, NULL, 50, NULL, 0, NULL, NULL),
(143, 38, 91, '企业产品推广片', '推广企业产品，扩大知名度，', 0.02, '2016-10-12 02:47:59', 8, '10/20/2016', NULL, '10分钟', '3d动画', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, 112, 50, NULL, 0, 5, 'nice'),
(144, NULL, 91, 'text广告', '节日气氛浓', 10, '2016-10-12 06:05:08', 3, '10/20/2016', NULL, '2分钟', NULL, NULL, NULL, NULL, '', '', NULL, NULL, 0, 0, NULL, NULL, 50, NULL, 0, NULL, NULL),
(145, NULL, 91, 'text动画', '456', 2, '2016-10-12 09:56:07', 3, '10/21/2016', NULL, '5', NULL, NULL, NULL, NULL, '', '', NULL, NULL, 0, 0, NULL, NULL, 50, NULL, 0, NULL, NULL),
(146, 38, 91, 'text活动现场拍摄', '789', 5, '2016-10-12 09:56:47', 1, '10/20/2016', NULL, '5', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, 0, NULL, NULL),
(147, 38, 91, 'text宣传片', '321', 5, '2016-10-12 09:57:24', 1, '10/20/2016', NULL, '5', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, 0, NULL, NULL),
(148, 38, 91, 'text-1广告', '654', 5, '2016-10-12 09:58:36', 1, '10/20/2016', NULL, '5', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, 0, NULL, NULL),
(149, NULL, 91, 'textooo', '666', 6, '2016-10-14 08:20:45', 2, '10/20/2016', NULL, '6', NULL, NULL, NULL, NULL, '', '', NULL, NULL, 0, 0, NULL, NULL, 50, NULL, 0, NULL, NULL),
(150, NULL, 75, 'test2需求测试', 'yyy\nssss\nsdddf', 1, '2016-10-16 03:09:30', 3, '10/31/2016', NULL, '1', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, 0, NULL, NULL),
(151, NULL, 75, 'xina', 'add', 1, '2016-10-16 05:46:39', 3, '10/28/2016', NULL, '1', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, 0, NULL, NULL),
(152, NULL, 75, 'xinqqq', 'dsf', 1, '2016-10-16 05:56:39', 3, '10/27/2016', NULL, '1', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, 0, NULL, NULL),
(153, NULL, 75, 'xinqqq', 'dsf', 1, '2016-10-16 05:56:49', 3, '10/27/2016', NULL, '1', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, 0, NULL, NULL),
(154, NULL, 75, 'xinquqiuaa', 'qqqq\ndfsf', 1, '2016-10-16 08:51:54', 3, '10/31/2016', NULL, '1', NULL, NULL, NULL, NULL, '', '', NULL, NULL, 0, 0, NULL, NULL, 50, NULL, 0, NULL, NULL),
(158, 38, 91, '666', '666', 666, '2016-10-21 08:42:21', 3, '10/26/2016', NULL, '666', NULL, NULL, NULL, NULL, '', '', NULL, NULL, 0, 0, NULL, NULL, 50, NULL, 0, NULL, NULL),
(159, 38, 91, '888', '888', 8, '2016-10-24 09:11:39', 3, '10/26/2016', NULL, '8', NULL, NULL, NULL, NULL, '', '', NULL, NULL, 0, 0, NULL, NULL, 50, NULL, 0, NULL, NULL),
(160, 38, 91, '999', '999', 0.02, '2016-10-25 03:48:33', 3, '10/27/2016', NULL, '9', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, 0, NULL, NULL),
(161, 38, 91, '333', '3', 3, '2016-10-25 04:43:40', 3, '10/27/2016', NULL, '3', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, 0, NULL, NULL),
(162, NULL, 91, '…', '…', 2, '2016-10-25 08:05:31', 3, '10/28/2016', NULL, '…', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, 0, NULL, NULL),
(163, 38, 91, '动画', '3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画3d动画', 0.02, '2016-10-25 08:36:41', 3, '10/28/2016', NULL, '5', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, 0, NULL, NULL),
(164, 35, 37, 'new110402', 'love', 1000, '2016-11-04 14:13:14', 3, '11/05/2016', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, 0, NULL, NULL),
(165, NULL, 75, '1108', '123', 1000, '2016-11-07 03:28:38', 2, '11/08/2016', NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:5000/mobile/share/824', '重庆大桥样片 ', NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, 0, NULL, NULL),
(166, NULL, 75, '20161121', '28', 123, '2016-11-21 06:06:14', 1, '11/22/2016', NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:5000/mobile/share/824', '重庆大桥样片 ', NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, 0, NULL, NULL);

--
-- 触发器 `requirement`
--
DELIMITER $$
CREATE TRIGGER `req_updateTime` BEFORE INSERT ON `requirement` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `requirementattachment`
--

CREATE TABLE `requirementattachment` (
  `Id` bigint(20) NOT NULL,
  `RequirementId` bigint(20) NOT NULL,
  `OperateUserId` bigint(20) NOT NULL,
  `ObjectId` bigint(20) NOT NULL,
  `CreateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `requirementattachment`
--

INSERT INTO `requirementattachment` (`Id`, `RequirementId`, `OperateUserId`, `ObjectId`, `CreateTime`, `Description`) VALUES
(11, 64, 33, 377, '2015-08-18 11:06:47', ''),
(13, 74, 37, 476, '2015-08-22 14:25:08', ''),
(14, 65, 37, 476, '2015-08-28 12:48:38', ''),
(15, 77, 37, 476, '2015-09-10 10:45:43', ''),
(17, 88, 37, 476, '2015-10-29 09:39:38', ''),
(18, 76, 37, 476, '2016-10-27 14:28:09', '');

--
-- 触发器 `requirementattachment`
--
DELIMITER $$
CREATE TRIGGER `ra_updateTime` BEFORE INSERT ON `requirementattachment` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `requirementreply`
--

CREATE TABLE `requirementreply` (
  `Id` bigint(20) NOT NULL,
  `ParentId` bigint(20) DEFAULT NULL,
  `RequirementId` bigint(20) NOT NULL,
  `PublisherId` bigint(20) NOT NULL,
  `CompanyId` bigint(20) DEFAULT NULL,
  `Reply` text NOT NULL,
  `CreateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` bigint(20) NOT NULL,
  `DestUserId` bigint(20) DEFAULT NULL,
  `ReplyGroup` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `requirementreply`
--

INSERT INTO `requirementreply` (`Id`, `ParentId`, `RequirementId`, `PublisherId`, `CompanyId`, `Reply`, `CreateTime`, `Status`, `DestUserId`, `ReplyGroup`) VALUES
(78, NULL, 65, 37, NULL, '20元的价格太高了', '2015-08-30 06:06:50', 0, NULL, 26),
(79, NULL, 65, 37, NULL, '配音能否请中央台的播音员', '2015-08-30 06:07:49', 0, NULL, 26),
(80, NULL, 85, 37, NULL, '方案有些地方需要修改。', '2015-10-10 03:39:37', 0, NULL, 27),
(81, NULL, 86, 37, NULL, '我要看你的方案', '2015-10-21 02:03:33', 0, NULL, 28),
(82, NULL, 86, 38, NULL, 'gaile', '2015-10-21 02:06:21', 0, NULL, 28),
(83, NULL, 86, 37, NULL, 'OK', '2015-10-21 02:22:22', 0, NULL, 28),
(84, NULL, 84, 43, NULL, '', '2015-10-22 09:06:16', 0, NULL, 29),
(85, NULL, 87, 35, NULL, '123', '2015-10-26 12:29:05', 0, NULL, 30),
(86, NULL, 87, 37, NULL, '可以', '2015-10-26 12:33:12', 0, NULL, 30),
(87, NULL, 87, 37, NULL, '1', '2015-10-26 12:33:19', 0, NULL, 30),
(88, NULL, 87, 37, NULL, '2', '2015-10-26 12:33:21', 0, NULL, 30),
(89, NULL, 87, 37, NULL, '3', '2015-10-26 12:33:25', 0, NULL, 30),
(90, NULL, 87, 37, NULL, '4', '2015-10-26 12:33:33', 0, NULL, 30),
(91, NULL, 82, 35, NULL, '123', '2015-10-27 12:34:35', 0, NULL, 31),
(92, NULL, 85, 37, NULL, '可以', '2015-10-27 12:44:46', 0, NULL, 27),
(93, NULL, 85, 37, NULL, '123', '2015-10-27 13:01:22', 0, NULL, 27),
(94, NULL, 88, 38, NULL, '你好！', '2015-10-29 10:40:56', 0, NULL, 32),
(95, NULL, 88, 37, NULL, '你好！', '2015-10-29 10:42:02', 0, NULL, 32),
(96, NULL, 88, 38, NULL, '方案写好了', '2015-10-29 10:43:50', 0, NULL, 32),
(97, NULL, 77, 37, NULL, '你好！', '2015-11-03 12:40:10', 0, NULL, 33),
(98, NULL, 77, 38, NULL, '您好！', '2015-11-03 13:03:54', 0, NULL, 33),
(99, NULL, 77, 38, NULL, '可以选择我们吗？', '2015-11-03 13:04:25', 0, NULL, 33),
(100, NULL, 91, 53, NULL, ' 没意见。', '2016-03-09 03:20:59', 0, NULL, 34),
(101, NULL, 91, 37, NULL, '麻痹，泥塑天价吗', '2016-03-09 03:22:31', 0, NULL, 34),
(102, NULL, 91, 37, NULL, '', '2016-03-09 03:22:32', 0, NULL, 34),
(103, NULL, 91, 37, NULL, '', '2016-03-09 03:22:32', 0, NULL, 34),
(104, NULL, 91, 53, NULL, '爱干不干，不干拉倒', '2016-03-09 03:25:03', 0, NULL, 34),
(105, NULL, 84, 35, NULL, 'hello!', '2016-03-27 06:11:57', 0, NULL, 35),
(106, NULL, 84, 37, NULL, '你好！', '2016-03-27 06:20:45', 0, NULL, 35),
(107, NULL, 112, 75, NULL, 'haod', '2016-07-10 05:09:21', 0, NULL, 36),
(108, NULL, 112, 38, NULL, 'zhizuoshang', '2016-07-10 05:12:10', 0, NULL, 36),
(109, NULL, 114, 38, NULL, 'tetsq', '2016-07-23 02:39:36', 0, NULL, 37),
(110, NULL, 114, 75, NULL, 'fs', '2016-07-23 02:41:36', 0, NULL, 37),
(111, NULL, 141, 38, NULL, 'zheshigeceshi ', '2016-09-10 04:12:07', 0, NULL, 38),
(112, NULL, 141, 38, NULL, 'ceshi222', '2016-09-10 04:12:36', 0, NULL, 39),
(113, NULL, 141, 38, NULL, 'huifu74', '2016-09-10 07:52:51', 0, NULL, 38),
(114, NULL, 143, 91, NULL, '1231321', '2016-10-12 05:34:28', 0, NULL, 40),
(115, NULL, 158, 91, NULL, '23', '2016-10-24 09:02:41', 0, NULL, 41),
(116, NULL, 158, 38, NULL, 'haibucuo', '2016-10-24 09:03:08', 0, NULL, 41);

--
-- 触发器 `requirementreply`
--
DELIMITER $$
CREATE TRIGGER `rr_updateTime` BEFORE INSERT ON `requirementreply` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `requirement_follower`
--

CREATE TABLE `requirement_follower` (
  `Id` bigint(20) NOT NULL,
  `RequirementId` bigint(20) NOT NULL,
  `FollowerProducerId` bigint(20) NOT NULL,
  `Scheme` text,
  `Script` text,
  `CreateTime` timestamp NULL DEFAULT NULL,
  `FollowerDomainId` bigint(20) NOT NULL,
  `IsDeny` bit(1) DEFAULT NULL,
  `Long` varchar(100) NOT NULL,
  `Format` varchar(100) NOT NULL,
  `Subtitle` varchar(2048) NOT NULL,
  `Voice` varchar(2048) NOT NULL,
  `Gbm` varchar(2048) NOT NULL,
  `Amount` float NOT NULL,
  `DepositPercent` float NOT NULL,
  `Remark` text NOT NULL,
  `Status` int(11) NOT NULL COMMENT '0:为提交方案；1:方案申请确认中',
  `BasePrice` float NOT NULL,
  `SchemePrice` float NOT NULL,
  `ShotPrice` float NOT NULL,
  `ActorPrice` float NOT NULL,
  `MusicPrice` float NOT NULL,
  `AEPrice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `requirement_follower`
--

INSERT INTO `requirement_follower` (`Id`, `RequirementId`, `FollowerProducerId`, `Scheme`, `Script`, `CreateTime`, `FollowerDomainId`, `IsDeny`, `Long`, `Format`, `Subtitle`, `Voice`, `Gbm`, `Amount`, `DepositPercent`, `Remark`, `Status`, `BasePrice`, `SchemePrice`, `ShotPrice`, `ActorPrice`, `MusicPrice`, `AEPrice`) VALUES
(37, 64, 35, NULL, '你在南方的艳阳里大雪纷飞我在北方的寒夜里四季如春如果天黑之前来得及我要忘了你的眼睛穷极一生做不完一场梦他不再和谁谈论相逢的孤岛因为心里早已荒芜人烟他的心里再装不下一个家做一个只对自己说谎的哑巴他说你任何为人称道的美丽不及他第一次遇见你时光苟延残喘无可奈何\n如果所有土地连在一起\n走上一生只为拥抱你\n喝醉了他的梦，晚安', '2015-08-18 11:07:09', 18, b'0', '11', '4k', '你在南方的艳阳里大雪纷飞我在北方的寒夜里四季如春如果天黑之前来得及我要忘了你的眼睛穷极一生做不完一场梦他不再和谁谈论相逢的孤岛因为心里早已荒芜人烟他的心里再装不下一个家做一个只对自己说谎的哑巴他说你任何为人称道的美丽不及他第一次遇见你时光苟延残喘无可奈何\n如果所有土地连在一起\n走上一生只为拥抱你\n喝醉了他的梦，晚安', '你在南方的艳阳里大雪纷飞我在北方的寒夜里四季如春如果天黑之前来得及我要忘了你的眼睛穷极一生做不完一场梦他不再和谁谈论相逢的孤岛因为心里早已荒芜人烟他的心里再装不下一个家做一个只对自己说谎的哑巴他说你任何为人称道的美丽不及他第一次遇见你时光苟延残喘无可奈何\n如果所有土地连在一起\n走上一生只为拥抱你\n喝醉了他的梦，晚安', '你在南方的艳阳里大雪纷飞我在北方的寒夜里四季如春如果天黑之前来得及我要忘了你的眼睛穷极一生做不完一场梦他不再和谁谈论相逢的孤岛因为心里早已荒芜人烟他的心里再装不下一个家做一个只对自己说谎的哑巴他说你任何为人称道的美丽不及他第一次遇见你时光苟延残喘无可奈何\n如果所有土地连在一起\n走上一生只为拥抱你\n喝醉了他的梦，晚安', 10, 50, '你在南方的艳阳里大雪纷飞我在北方的寒夜里四季如春如果天黑之前来得及我要忘了你的眼睛穷极一生做不完一场梦他不再和谁谈论相逢的孤岛因为心里早已荒芜人烟他的心里再装不下一个家做一个只对自己说谎的哑巴他说你任何为人称道的美丽不及他第一次遇见你时光苟延残喘无可奈何\n如果所有土地连在一起\n走上一生只为拥抱你\n喝醉了他的梦，晚安', 0, 0, 0, 0, 0, 0, 0),
(38, 66, 35, NULL, '123', '2015-08-19 07:55:09', 18, b'0', '5', '4K', '123', '123', '123', 0.1, 50, '123', 0, 0, 0, 0, 0, 0, 0),
(40, 72, 35, NULL, '如此', '2015-08-20 08:08:24', 18, b'0', '60秒', '高清', '如此', '如此', '如此', 50000, 50, '', 0, 0, 0, 0, 0, 0, 0),
(42, 78, 35, NULL, '1、国内首创：茶饼实物画面\n2、药食搭配：药材和食材画面\n3、抑制三高：茶饼实物画面\n4、空白市场，近3亿人口市场需求：超市画面\n5、清三高花茶饼：包装盒画面，落幅标题字、logo', '2015-08-26 12:04:49', 18, b'0', '15秒', '实物拍摄+包装', '装饰性小字幕：国内首创、药食搭配、抑制三高、空白市场、近3亿人口市场需求、5、落幅字幕：清三高花茶饼', '国内首创、药食搭配、抑制三高、空白市场、近3亿人口市场需求、清三高花茶饼。男生配音，语气祥和稳健。', '清新、祥和风格', 0, 50, '', 1, 0, 0, 0, 0, 0, 0),
(44, 79, 38, NULL, 'test', '2015-08-29 03:00:01', 21, b'0', '10', 'test', 'test', 'test', 'test', 11, 50, 'test', 1, 0, 0, 0, 0, 0, 0),
(48, 65, 38, NULL, '· 策划方案\n· 脚本镜头方案\n· 字幕方案\n· 配音配乐方案', '2015-09-09 12:22:38', 21, b'0', '', '', '', '', '', 0, 50, '', 1, 0, 0, 0, 0, 0, 0),
(50, 82, 38, NULL, '· 策划方案\n· 脚本镜头方案\n· 字幕方案\n· 配音配乐方案', '2015-09-09 12:40:31', 21, b'0', '', '', '', '', '', 5, 50, '', 0, 5, 0, 0, 0, 0, 0),
(52, 85, 35, NULL, '如何实现的步骤。\n还需如此如此。', '2015-10-10 03:35:21', 18, b'0', '6', '高清', '', '', '', 0.1, 50, '', 1, 0.1, 0, 0, 0, 0, 0),
(53, 86, 38, NULL, 'test', '2015-10-21 01:57:12', 21, b'0', '11', 'test', '', '', '', 66, 50, '', 1, 11, 11, 11, 11, 11, 11),
(55, 83, 43, NULL, ' ', '2015-10-24 06:33:26', 24, NULL, ' ', ' ', ' ', ' ', ' ', 3000, 50, ' ', 0, 0, 0, 0, 0, 0, 0),
(56, 87, 35, NULL, '如此如此。', '2015-10-26 12:21:39', 18, b'0', '10', '高清', '', '', '', 0.2, 50, '', 1, 0.2, 0, 0, 0, 0, 0),
(57, 82, 35, NULL, '', '2015-10-27 12:34:14', 18, b'0', '', '', '', '', '', 0, 50, '', 0, 0, 0, 0, 0, 0, 0),
(58, 88, 38, NULL, '如此，如此。', '2015-10-29 10:40:19', 21, b'0', '5', '高清', '', '', '', 0.1, 50, '', 1, 0.1, 0, 0, 0, 0, 0),
(62, 91, 53, NULL, '不做', '2016-03-09 03:19:50', 33, b'0', '10', 'zhhidao l ', '', '', '', 1000000, 50, '', 1, 1000000, 0, 0, 0, 0, 0),
(63, 91, 35, NULL, '', '2016-03-09 03:33:26', 18, b'0', '', '', '', '', '', 0, 50, '', 1, 0, 0, 0, 0, 0, 0),
(64, 92, 35, NULL, '', '2016-03-14 02:22:47', 18, b'0', '', '', '', '', '', 0, 50, '', 1, 0, 0, 0, 0, 0, 0),
(67, 112, 38, NULL, '提交新风格', '2016-07-10 05:06:39', 21, b'0', '10', 'dg', '', '', '', 0.1, 50, '', 1, 0.1, 0, 0, 0, 0, 0),
(69, 114, 38, NULL, 'dfdg\nadga\n风格', '2016-07-23 07:00:44', 21, b'0', '10', '视频测试', '', '', '', 1, 50, '', 1, 1, 0, 0, 0, 0, 0),
(71, 138, 38, NULL, '方案1', '2016-08-22 07:07:15', 21, b'0', '1', '动画1', '', '', '', 0, 50, '', 0, 0, 0, 0, 0, 0, 0),
(72, 140, 38, NULL, '', '2016-09-02 06:34:10', 21, b'0', '', '2ddonghua', '', '', '', 0, 50, '', 1, 0, 0, 0, 0, 0, 0),
(74, 141, 38, NULL, '方案1\n方案2\ndfasdf', '2016-09-08 08:48:34', 21, b'0', '1', '3d动画aa', '', '', '', 10, 50, '', 0, 10, 0, 0, 0, 0, 0),
(88, 143, 38, NULL, '策划方案', '2016-10-12 07:47:16', 21, b'0', '10分钟', '3d动画', '', '', '', 0.02, 50, '', 1, 0.02, 0, 0, 0, 0, 0),
(90, 142, 38, NULL, '', '2016-10-12 09:43:44', 21, b'0', '', '', '', '', '', 0, 50, '', 0, 0, 0, 0, 0, 0, 0),
(92, 89, 38, NULL, '', '2016-10-12 09:49:36', 21, b'0', '', '', '', '', '', 0, 50, '', 0, 0, 0, 0, 0, 0, 0),
(93, 144, 38, NULL, '', '2016-10-16 03:17:55', 21, b'0', '', '', '', '', '', 0, 50, '', 0, 0, 0, 0, 0, 0, 0),
(94, 153, 38, NULL, '', '2016-10-16 06:50:34', 21, b'0', '', '', '', '', '', 0, 50, '', 0, 0, 0, 0, 0, 0, 0),
(98, 151, 38, NULL, '', '2016-10-20 05:58:48', 21, b'0', '', '', '', '', '', 0, 50, '', 1, 0, 0, 0, 0, 0, 0),
(99, 151, 38, NULL, '', '2016-10-20 05:59:53', 21, b'0', '', '', '', '', '', 0, 50, '', 0, 0, 0, 0, 0, 0, 0),
(101, 150, 38, NULL, '', '2016-10-20 06:02:22', 21, b'0', '', '', '', '', '', 0, 50, '', 1, 0, 0, 0, 0, 0, 0),
(102, 153, 38, NULL, '', '2016-10-20 06:03:55', 21, b'0', '', '', '', '', '', 0, 50, '', 0, 0, 0, 0, 0, 0, 0),
(103, 145, 38, NULL, '', '2016-10-20 06:04:33', 21, b'0', '', '', '', '', '', 0, 50, '', 0, 0, 0, 0, 0, 0, 0),
(115, 139, 38, NULL, '', '2016-10-20 06:21:04', 21, b'0', '', '', '', '', '', 0, 50, '', 0, 0, 0, 0, 0, 0, 0),
(116, 141, 38, NULL, '', '2016-10-20 09:13:55', 21, b'0', '', '', '', '', '', 0, 50, '', 0, 0, 0, 0, 0, 0, 0),
(127, 158, 38, NULL, '6', '2016-10-24 09:50:06', 21, b'0', '6', '6', '', '', '', 0, 50, '', 0, 0, 0, 0, 0, 0, 0),
(128, 159, 38, NULL, '454545454', '2016-10-24 09:52:34', 21, b'0', '4545', '4545454', '', '', '', 0, 50, '', 0, 0, 0, 0, 0, 0, 0),
(129, 160, 38, NULL, '', '2016-10-25 03:52:57', 21, b'0', '', '', '', '', '', 0, 50, '', 0, 0, 0, 0, 0, 0, 0),
(130, 159, 38, NULL, '', '2016-10-25 04:34:42', 21, b'0', '', '', '', '', '', 0, 50, '', 0, 0, 0, 0, 0, 0, 0),
(131, 161, 38, NULL, '', '2016-10-25 04:44:01', 21, b'0', '', '', '', '', '', 0, 50, '', 0, 0, 0, 0, 0, 0, 0),
(132, 163, 38, NULL, '策划方案 脚本  剧本 手绘动画动画策划方案 脚本  剧本 手绘动画动画策划方案 脚本  剧本 手绘动画动画策划方案 脚本  剧本 手绘动画动画策划方案 脚本  剧本 手绘动画动画策划方案 脚本  剧本 手绘动画动画策划方案 脚本  剧本 手绘动画动画策划方案 脚本  剧本 手绘动画动画策划方案 脚本  剧本 手绘动画动画策划方案 脚本  剧本 手绘动画动画策划方案 脚本  剧本 手绘动画动画策划方案 脚本  剧本 手绘动画动画策划方案 脚本  剧本 手绘动画动画策划方案 脚本  剧本 手绘动画动画', '2016-10-25 08:37:17', 21, b'0', '5', '动画动画', '', '', '', 33, 50, '', 1, 5, 4, 5, 2, 8, 9),
(133, 164, 35, NULL, '如此如此。', '2016-11-18 13:58:07', 18, b'0', '', '动画', '', '', '', 65000, 50, '', 1, 10000, 20000, 10000, 0, 5000, 20000);

--
-- 触发器 `requirement_follower`
--
DELIMITER $$
CREATE TRIGGER `reqFollower` BEFORE INSERT ON `requirement_follower` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `requirement_reply_group`
--

CREATE TABLE `requirement_reply_group` (
  `Id` bigint(20) NOT NULL,
  `RequirementId` bigint(20) NOT NULL,
  `ServiceDomainId` bigint(20) NOT NULL,
  `FollowerId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `requirement_reply_group`
--

INSERT INTO `requirement_reply_group` (`Id`, `RequirementId`, `ServiceDomainId`, `FollowerId`) VALUES
(26, 65, 18, 0),
(27, 85, 18, 0),
(28, 86, 21, 0),
(29, 84, 24, 0),
(30, 87, 18, 0),
(31, 82, 18, 0),
(32, 88, 21, 0),
(33, 77, 21, 0),
(34, 91, 33, 0),
(35, 84, 18, 0),
(36, 112, 21, 0),
(37, 114, 21, 0),
(38, 141, 21, 74),
(39, 141, 21, 75),
(40, 143, 21, 80),
(41, 158, 21, 126);

-- --------------------------------------------------------

--
-- 表的结构 `requirement_segment`
--

CREATE TABLE `requirement_segment` (
  `Id` bigint(20) NOT NULL,
  `RequirementId` bigint(20) NOT NULL,
  `SegmentId` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `requirement_segment`
--

INSERT INTO `requirement_segment` (`Id`, `RequirementId`, `SegmentId`) VALUES
(61, 64, 3),
(62, 64, 4),
(63, 64, 5),
(64, 64, 6),
(65, 64, 7),
(66, 66, 3),
(67, 66, 4),
(68, 66, 5),
(69, 66, 6),
(70, 66, 7),
(71, 72, 3),
(72, 72, 4),
(73, 72, 5),
(74, 72, 6),
(75, 72, 7),
(76, 79, 3),
(77, 79, 4),
(78, 79, 5),
(79, 79, 6),
(80, 79, 7),
(81, 65, 3),
(82, 65, 4),
(83, 65, 5),
(84, 65, 6),
(85, 65, 7),
(86, 83, 3),
(87, 83, 4),
(88, 83, 5),
(89, 83, 6),
(90, 83, 7),
(96, 86, 3),
(97, 86, 4),
(98, 86, 5),
(99, 86, 6),
(100, 86, 7),
(116, 87, 3),
(117, 87, 4),
(118, 87, 5),
(119, 87, 6),
(120, 87, 7),
(121, 85, 3),
(122, 85, 4),
(123, 85, 5),
(124, 85, 6),
(125, 85, 7),
(126, 88, 3),
(127, 88, 4),
(128, 88, 5),
(129, 88, 6),
(130, 88, 7),
(136, 91, 3),
(137, 91, 4),
(138, 91, 5),
(139, 91, 6),
(140, 91, 7),
(141, 92, 3),
(142, 92, 4),
(143, 92, 5),
(144, 92, 6),
(145, 92, 7),
(156, 112, 3),
(157, 112, 4),
(158, 112, 5),
(159, 112, 6),
(160, 112, 7),
(161, 140, 3),
(162, 140, 4),
(163, 140, 5),
(164, 140, 6),
(165, 140, 7),
(166, 114, 3),
(167, 114, 4),
(168, 114, 5),
(169, 114, 6),
(170, 114, 7),
(176, 143, 3),
(177, 143, 4),
(178, 143, 5),
(179, 143, 6),
(180, 143, 7),
(181, 151, 3),
(182, 151, 4),
(183, 151, 5),
(184, 151, 6),
(185, 151, 7),
(186, 152, 2),
(187, 152, 3),
(188, 152, 4),
(189, 152, 5),
(190, 152, 6),
(191, 152, 7),
(192, 153, 2),
(193, 153, 3),
(194, 153, 4),
(195, 153, 5),
(196, 153, 6),
(197, 153, 7),
(198, 154, 2),
(199, 154, 3),
(200, 154, 4),
(201, 154, 5),
(202, 154, 6),
(203, 154, 7),
(222, 158, 2),
(223, 158, 3),
(224, 158, 4),
(225, 158, 5),
(226, 158, 6),
(227, 158, 7),
(228, 159, 2),
(229, 159, 3),
(230, 159, 4),
(231, 159, 5),
(232, 159, 6),
(233, 159, 7),
(234, 160, 2),
(235, 160, 3),
(236, 160, 4),
(237, 160, 5),
(238, 160, 6),
(239, 160, 7),
(240, 161, 2),
(241, 161, 3),
(242, 161, 4),
(243, 161, 5),
(244, 161, 6),
(245, 161, 7),
(246, 162, 2),
(247, 162, 3),
(248, 162, 4),
(249, 162, 5),
(250, 162, 6),
(251, 162, 7),
(252, 163, 2),
(253, 163, 3),
(254, 163, 4),
(255, 163, 5),
(256, 163, 6),
(257, 163, 7),
(258, 164, 2),
(259, 164, 3),
(260, 164, 4),
(261, 164, 5),
(262, 164, 6),
(263, 164, 7),
(264, 165, 2),
(265, 165, 3),
(266, 165, 4),
(267, 165, 5),
(268, 165, 6),
(269, 165, 7),
(270, 166, 2),
(271, 166, 3),
(272, 166, 4),
(273, 166, 5),
(274, 166, 6),
(275, 166, 7);

-- --------------------------------------------------------

--
-- 表的结构 `requirement_template`
--

CREATE TABLE `requirement_template` (
  `Id` bigint(20) NOT NULL,
  `Category_1` int(11) NOT NULL,
  `Category_2` int(11) NOT NULL,
  `Detail` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `resourceshare`
--

CREATE TABLE `resourceshare` (
  `Id` bigint(20) NOT NULL,
  `ResourceId` bigint(20) NOT NULL,
  `ResourceType` varchar(10) NOT NULL,
  `ShareDomainId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `resourceshare`
--

INSERT INTO `resourceshare` (`Id`, `ResourceId`, `ResourceType`, `ShareDomainId`) VALUES
(187, 63, 'r', 0),
(189, 64, 'r', 0),
(191, 66, 'r', 0),
(193, 67, 'r', 35),
(194, 68, 'r', 35),
(195, 69, 'r', 18),
(196, 70, 'r', 18),
(199, 72, 'r', 18),
(207, 78, 'r', 18),
(209, 71, 'r', 0),
(212, 79, 'r', 21),
(215, 65, 'r', 0),
(218, 80, 'r', 18),
(221, 83, 'r', 24),
(226, 82, 'r', 18),
(230, 86, 'r', 18),
(231, 86, 'r', 21),
(234, 87, 'r', 18),
(236, 85, 'r', 18),
(240, 88, 'r', 18),
(241, 88, 'r', 21),
(249, 89, 'r', 0),
(254, 91, 'r', 0),
(265, 92, 'r', 0),
(285, 93, 'r', 0),
(286, 94, 'r', 0),
(287, 95, 'r', 0),
(288, 96, 'r', 0),
(289, 97, 'r', 0),
(290, 98, 'r', 0),
(291, 99, 'r', 0),
(292, 100, 'r', 0),
(293, 101, 'r', 0),
(294, 102, 'r', 0),
(295, 103, 'r', 0),
(296, 104, 'r', 0),
(297, 105, 'r', 0),
(298, 106, 'r', 0),
(299, 107, 'r', 0),
(300, 108, 'r', 0),
(301, 109, 'r', 0),
(302, 110, 'r', 0),
(303, 111, 'r', 0),
(304, 112, 'r', 0),
(305, 113, 'r', 0),
(309, 114, 'r', 0),
(310, 115, 'r', 0),
(311, 116, 'r', 0),
(312, 117, 'r', 0),
(313, 118, 'r', 0),
(314, 119, 'r', 0),
(315, 120, 'r', 0),
(316, 121, 'r', 0),
(317, 122, 'r', 0),
(318, 123, 'r', 0),
(319, 124, 'r', 0),
(320, 125, 'r', 0),
(321, 126, 'r', 0),
(322, 127, 'r', 0),
(323, 128, 'r', 0),
(324, 129, 'r', 0),
(325, 130, 'r', 0),
(326, 131, 'r', 0),
(327, 132, 'r', 0),
(328, 133, 'r', 0),
(329, 134, 'r', 0),
(330, 135, 'r', 0),
(331, 136, 'r', 0),
(332, 137, 'r', 0),
(333, 138, 'r', 0),
(334, 139, 'r', 0),
(335, 140, 'r', 0),
(336, 141, 'r', 0),
(338, 143, 'r', 0),
(341, 144, 'r', 0),
(342, 142, 'r', 0),
(344, 146, 'r', 0),
(345, 147, 'r', 0),
(346, 148, 'r', 0),
(348, 149, 'r', 0),
(349, 150, 'r', 0),
(350, 151, 'r', 0),
(351, 152, 'r', 0),
(352, 153, 'r', 0),
(355, 154, 'r', 0),
(360, 145, 'r', 0),
(367, 158, 'r', 0),
(372, 159, 'r', 0),
(373, 160, 'r', 0),
(374, 161, 'r', 0),
(375, 162, 'r', 0),
(376, 163, 'r', 0),
(386, 74, 'r', 0),
(387, 73, 'r', 0),
(396, 84, 'r', 0),
(397, 75, 'r', 0),
(398, 90, 'r', 0),
(399, 77, 'r', 0),
(401, 164, 'r', 0),
(402, 76, 'r', 0),
(403, 165, 'r', 24),
(404, 166, 'r', 0);

-- --------------------------------------------------------

--
-- 表的结构 `reviewvideo`
--

CREATE TABLE `reviewvideo` (
  `Id` bigint(20) NOT NULL,
  `Version` bigint(20) NOT NULL,
  `ContractId` bigint(20) NOT NULL,
  `Detail` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `reviewvideohistory`
--

CREATE TABLE `reviewvideohistory` (
  `Id` bigint(20) NOT NULL,
  `ContractId` bigint(20) NOT NULL,
  `ReviewVideoId` bigint(20) NOT NULL,
  `Version` bigint(20) NOT NULL,
  `Detail` text,
  `RejectReason` varchar(1024) DEFAULT NULL,
  `RejectTime` datetime DEFAULT NULL,
  `ApplyRemark` varchar(1024) DEFAULT NULL,
  `ApplyTime` datetime DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 触发器 `reviewvideohistory`
--
DELIMITER $$
CREATE TRIGGER `rvh_updateTime` BEFORE INSERT ON `reviewvideohistory` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `right`
--

CREATE TABLE `right` (
  `Id` bigint(20) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Identity` varchar(255) DEFAULT NULL,
  `Description` varchar(1024) DEFAULT NULL,
  `CreateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `ParentId` bigint(20) DEFAULT NULL,
  `Level` int(11) DEFAULT NULL,
  `Leaf` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `right`
--

INSERT INTO `right` (`Id`, `Title`, `Identity`, `Description`, `CreateTime`, `ParentId`, `Level`, `Leaf`) VALUES
(1, '媒体库', 'Storage', '此项表示用户具备访问媒体库的权限', '2015-02-08 14:00:34', NULL, 0, 0),
(2, '交易平台', 'TradePlatform', '此项表示用户具备访问交易平台的权限', '2015-02-08 14:00:35', NULL, 0, 0),
(3, '信息中心', 'Setting', '此项表示用户具备访问信息中心的权限', '2015-02-08 14:00:36', NULL, 0, 0),
(4, '只读', 'Sto_ReadOnly', '此项允许用户浏览媒体库内容', '2015-02-08 14:00:38', 1, 1, 1),
(5, '可写', 'Sto_Write', '此项允许用户修改媒体库内容', '2015-02-08 14:00:39', 1, 1, 1),
(6, '下载', 'Sto_Download', '此项允许用户下载媒体库内容', '2015-02-08 14:00:43', 1, 1, 1),
(7, '共享', 'Sto_Share', '此项允许用户分享媒体库内容', '2015-02-08 14:00:40', 1, 1, 1),
(8, '删除', 'Sto_Delete', '此项允许用户删除媒体库内容', '2015-02-08 14:00:40', 1, 1, 1),
(9, '需求', 'Tra_Requirement', '此项表示用户具备访问需求平台的权限', '2015-02-08 14:00:45', 2, 1, 0),
(10, '合同', 'Tra_Contract', '此项表示用户具备访问合同平台的权限', '2015-02-08 14:00:46', 2, 1, 0),
(11, '只读', 'Req_ReadOnly', '此项允许用户浏览需求内容', '2015-03-28 08:00:00', 9, 2, 1),
(12, '新建', 'Req_New', '此项允许用户新建需求', '2015-03-28 07:59:59', 9, 2, 1),
(13, '可写', 'Req_Write', '此项允许用户修改需求内容', '2015-02-08 14:00:48', 9, 2, 1),
(14, '申请', 'Req_Apply', '此项允许用户申请需求', '2015-02-08 14:00:48', 9, 2, 1),
(15, '审核', 'Req_Confirm', '此项允许用户审核需求', '2015-02-08 14:00:51', 9, 2, 1),
(16, '留言', 'Req_Message', '此项允许用户使用需求留言板', '2015-02-08 14:00:50', 9, 2, 1),
(17, '只读', 'Con_ReadOnly', '此项允许用户浏览合同内容', '2015-02-08 14:00:52', 10, 2, 1),
(18, '可写', 'Con_Write', '此项允许用户修改合同内容', '2015-02-08 14:00:53', 10, 2, 1),
(19, '留言', 'Con_Message', '此项允许用户使用合同留言板', '2015-02-08 14:00:54', 10, 2, 1),
(20, '分享附件', 'Con_Attachment', '此项允许用户使用合同中的交换空间', '2015-02-08 14:00:54', 10, 2, 1),
(21, '日志', 'Con_Log', '此项允许用户查看合同日志', '2015-02-08 14:00:55', 10, 2, 1),
(22, '申请', 'Con_Apply', '此项允许用户在合同环节中申请确认', '2015-02-08 14:00:56', 10, 2, 1),
(23, '审核', 'Con_Confirm', '此项允许用户在合同环节中审核内容', '2015-02-08 14:00:56', 10, 2, 1),
(24, '支付', 'Con_Pay', '此项允许用户执行合同中的支付环节', '2015-02-08 14:00:57', 10, 2, 1),
(25, '管理组', 'Set_Manage', '此项表示用户具备访问家庭组的权限', '2015-02-08 14:00:59', 3, 1, 0),
(26, '个人信息', 'Set_Personal', '此项表示用户具备访问个人信息的权限', '2015-02-08 14:01:00', 3, 1, 0),
(27, '只读', 'Man_ReadOnly', '此项允许用户浏览管理组信息', '2015-02-08 14:01:01', 25, 2, 1),
(28, '可写', 'Man_Write', '此项允许用户修改管理组内容', '2015-02-08 14:01:01', 25, 2, 1),
(29, '只读', 'Per_ReadOnly', '此项允许用户浏览个人信息', '2015-02-08 14:01:02', 26, 2, 1),
(30, '可写', 'Per_Write', '此项允许用户修改个人信息', '2015-02-08 14:01:02', 26, 2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `role`
--

CREATE TABLE `role` (
  `Id` bigint(20) NOT NULL,
  `CreatorId` bigint(20) NOT NULL,
  `DomainId` bigint(20) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `DomainAdmin` bit(1) NOT NULL DEFAULT b'0',
  `CreateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `role`
--

INSERT INTO `role` (`Id`, `CreatorId`, `DomainId`, `Name`, `DomainAdmin`, `CreateTime`) VALUES
(11, 33, 16, '超级管理员', b'1', '2015-07-31 07:38:30'),
(12, 34, 17, '超级管理员', b'1', '2015-07-31 07:38:55'),
(13, 35, 18, '超级管理员', b'1', '2015-07-31 08:00:20'),
(14, 36, 19, '超级管理员', b'1', '2015-08-01 01:38:34'),
(15, 37, 20, '超级管理员', b'1', '2015-08-01 01:57:20'),
(16, 38, 21, '超级管理员', b'1', '2015-08-04 01:58:21'),
(17, 35, 18, '导演', b'0', '2015-08-04 02:02:33'),
(18, 39, 22, '超级管理员', b'1', '2015-08-05 00:39:03'),
(19, 41, 23, '超级管理员', b'1', '2015-08-08 02:16:46'),
(20, 43, 24, '超级管理员', b'1', '2015-08-10 06:07:59'),
(21, 44, 25, '超级管理员', b'1', '2015-08-13 10:29:03'),
(22, 45, 26, '超级管理员', b'1', '2015-08-20 05:44:46'),
(23, 46, 27, '超级管理员', b'1', '2015-08-22 03:58:32'),
(24, 47, 28, '超级管理员', b'1', '2015-08-25 14:37:18'),
(25, 48, 29, '超级管理员', b'1', '2015-09-01 07:06:02'),
(27, 51, 31, '超级管理员', b'1', '2015-09-07 13:38:28'),
(28, 52, 32, '超级管理员', b'1', '2015-09-07 14:27:03'),
(29, 53, 33, '超级管理员', b'1', '2015-09-13 03:20:59'),
(33, 57, 37, '超级管理员', b'1', '2015-10-16 01:11:20'),
(34, 58, 38, '超级管理员', b'1', '2015-11-20 05:08:30'),
(35, 59, 39, '超级管理员', b'1', '2015-11-20 05:23:54'),
(36, 60, 40, '超级管理员', b'1', '2015-12-02 03:50:19'),
(37, 35, 18, '普通职员', b'0', '2015-12-19 02:47:21'),
(38, 62, 41, '超级管理员', b'1', '2016-01-02 03:45:51'),
(39, 63, 42, '超级管理员', b'1', '2016-01-04 03:06:11'),
(40, 64, 43, '超级管理员', b'1', '2016-01-04 03:44:52'),
(41, 65, 44, '超级管理员', b'1', '2016-01-04 04:00:41'),
(42, 66, 45, '超级管理员', b'1', '2016-04-10 03:38:04'),
(43, 67, 46, '超级管理员', b'1', '2016-04-10 07:18:31'),
(44, 68, 47, '超级管理员', b'1', '2016-04-11 16:51:33'),
(45, 69, 48, '超级管理员', b'1', '2016-05-07 15:05:14'),
(51, 75, 54, '超级管理员', b'1', '2016-07-10 02:03:22'),
(64, 89, 67, '超级管理员', b'1', '2016-08-11 07:51:06'),
(65, 90, 68, '超级管理员', b'1', '2016-09-13 02:25:06'),
(66, 91, 69, '超级管理员', b'1', '2016-10-11 09:14:29'),
(67, 92, 70, '超级管理员', b'1', '2016-11-24 07:41:23'),
(68, 93, 71, '超级管理员', b'1', '2016-11-24 07:54:16'),
(69, 94, 72, '超级管理员', b'1', '2016-11-24 07:59:11'),
(70, 95, 73, '超级管理员', b'1', '2016-11-24 08:05:56'),
(71, 96, 74, '超级管理员', b'1', '2016-11-24 08:12:22'),
(72, 97, 75, '超级管理员', b'1', '2016-11-24 08:23:16'),
(73, 98, 76, '超级管理员', b'1', '2016-11-25 08:30:47');

--
-- 触发器 `role`
--
DELIMITER $$
CREATE TRIGGER `role_updateTime` BEFORE INSERT ON `role` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `roleright`
--

CREATE TABLE `roleright` (
  `Id` bigint(20) NOT NULL,
  `RightId` bigint(20) NOT NULL,
  `RoleId` bigint(20) NOT NULL,
  `Checked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `roleright`
--

INSERT INTO `roleright` (`Id`, `RightId`, `RoleId`, `Checked`) VALUES
(231, 4, 11, 1),
(232, 5, 11, 1),
(233, 6, 11, 1),
(234, 7, 11, 1),
(235, 8, 11, 1),
(236, 11, 11, 1),
(237, 12, 11, 1),
(238, 13, 11, 1),
(239, 14, 11, 1),
(240, 15, 11, 1),
(241, 16, 11, 1),
(242, 17, 11, 1),
(243, 18, 11, 1),
(244, 19, 11, 1),
(245, 20, 11, 1),
(246, 21, 11, 1),
(247, 22, 11, 1),
(248, 23, 11, 1),
(249, 24, 11, 1),
(250, 27, 11, 1),
(251, 28, 11, 1),
(252, 29, 11, 1),
(253, 30, 11, 1),
(254, 4, 12, 1),
(255, 5, 12, 1),
(256, 6, 12, 1),
(257, 7, 12, 1),
(258, 8, 12, 1),
(259, 11, 12, 1),
(260, 12, 12, 1),
(261, 13, 12, 1),
(262, 14, 12, 1),
(263, 15, 12, 1),
(264, 16, 12, 1),
(265, 17, 12, 1),
(266, 18, 12, 1),
(267, 19, 12, 1),
(268, 20, 12, 1),
(269, 21, 12, 1),
(270, 22, 12, 1),
(271, 23, 12, 1),
(272, 24, 12, 1),
(273, 27, 12, 1),
(274, 28, 12, 1),
(275, 29, 12, 1),
(276, 30, 12, 1),
(277, 4, 13, 1),
(278, 5, 13, 1),
(279, 6, 13, 1),
(280, 7, 13, 1),
(281, 8, 13, 1),
(282, 11, 13, 1),
(283, 12, 13, 1),
(284, 13, 13, 1),
(285, 14, 13, 1),
(286, 15, 13, 1),
(287, 16, 13, 1),
(288, 17, 13, 1),
(289, 18, 13, 1),
(290, 19, 13, 1),
(291, 20, 13, 1),
(292, 21, 13, 1),
(293, 22, 13, 1),
(294, 23, 13, 1),
(295, 24, 13, 1),
(296, 27, 13, 1),
(297, 28, 13, 1),
(298, 29, 13, 1),
(299, 30, 13, 1),
(300, 4, 14, 1),
(301, 5, 14, 1),
(302, 6, 14, 1),
(303, 7, 14, 1),
(304, 8, 14, 1),
(305, 11, 14, 1),
(306, 12, 14, 1),
(307, 13, 14, 1),
(308, 14, 14, 1),
(309, 15, 14, 1),
(310, 16, 14, 1),
(311, 17, 14, 1),
(312, 18, 14, 1),
(313, 19, 14, 1),
(314, 20, 14, 1),
(315, 21, 14, 1),
(316, 22, 14, 1),
(317, 23, 14, 1),
(318, 24, 14, 1),
(319, 27, 14, 1),
(320, 28, 14, 1),
(321, 29, 14, 1),
(322, 30, 14, 1),
(323, 4, 15, 1),
(324, 5, 15, 1),
(325, 6, 15, 1),
(326, 7, 15, 1),
(327, 8, 15, 1),
(328, 11, 15, 1),
(329, 12, 15, 1),
(330, 13, 15, 1),
(331, 14, 15, 1),
(332, 15, 15, 1),
(333, 16, 15, 1),
(334, 17, 15, 1),
(335, 18, 15, 1),
(336, 19, 15, 1),
(337, 20, 15, 1),
(338, 21, 15, 1),
(339, 22, 15, 1),
(340, 23, 15, 1),
(341, 24, 15, 1),
(342, 27, 15, 1),
(343, 28, 15, 1),
(344, 29, 15, 1),
(345, 30, 15, 1),
(346, 4, 16, 1),
(347, 5, 16, 1),
(348, 6, 16, 1),
(349, 7, 16, 1),
(350, 8, 16, 1),
(351, 11, 16, 1),
(352, 12, 16, 1),
(353, 13, 16, 1),
(354, 14, 16, 1),
(355, 15, 16, 1),
(356, 16, 16, 1),
(357, 17, 16, 1),
(358, 18, 16, 1),
(359, 19, 16, 1),
(360, 20, 16, 1),
(361, 21, 16, 1),
(362, 22, 16, 1),
(363, 23, 16, 1),
(364, 24, 16, 1),
(365, 27, 16, 1),
(366, 28, 16, 1),
(367, 29, 16, 1),
(368, 30, 16, 1),
(369, 4, 17, 1),
(370, 5, 17, 0),
(371, 6, 17, 1),
(372, 7, 17, 0),
(373, 8, 17, 1),
(374, 11, 17, 1),
(375, 12, 17, 0),
(376, 13, 17, 1),
(377, 14, 17, 1),
(378, 15, 17, 1),
(379, 16, 17, 1),
(380, 17, 17, 1),
(381, 18, 17, 1),
(382, 19, 17, 1),
(383, 20, 17, 1),
(384, 21, 17, 1),
(385, 22, 17, 1),
(386, 23, 17, 1),
(387, 24, 17, 0),
(388, 27, 17, 0),
(389, 28, 17, 0),
(390, 29, 17, 1),
(391, 30, 17, 1),
(392, 4, 18, 1),
(393, 5, 18, 1),
(394, 6, 18, 1),
(395, 7, 18, 1),
(396, 8, 18, 1),
(397, 11, 18, 1),
(398, 12, 18, 1),
(399, 13, 18, 1),
(400, 14, 18, 1),
(401, 15, 18, 1),
(402, 16, 18, 1),
(403, 17, 18, 1),
(404, 18, 18, 1),
(405, 19, 18, 1),
(406, 20, 18, 1),
(407, 21, 18, 1),
(408, 22, 18, 1),
(409, 23, 18, 1),
(410, 24, 18, 1),
(411, 27, 18, 1),
(412, 28, 18, 1),
(413, 29, 18, 1),
(414, 30, 18, 1),
(415, 4, 19, 1),
(416, 5, 19, 1),
(417, 6, 19, 1),
(418, 7, 19, 1),
(419, 8, 19, 1),
(420, 11, 19, 1),
(421, 12, 19, 1),
(422, 13, 19, 1),
(423, 14, 19, 1),
(424, 15, 19, 1),
(425, 16, 19, 1),
(426, 17, 19, 1),
(427, 18, 19, 1),
(428, 19, 19, 1),
(429, 20, 19, 1),
(430, 21, 19, 1),
(431, 22, 19, 1),
(432, 23, 19, 1),
(433, 24, 19, 1),
(434, 27, 19, 1),
(435, 28, 19, 1),
(436, 29, 19, 1),
(437, 30, 19, 1),
(438, 4, 20, 1),
(439, 5, 20, 1),
(440, 6, 20, 1),
(441, 7, 20, 1),
(442, 8, 20, 1),
(443, 11, 20, 1),
(444, 12, 20, 1),
(445, 13, 20, 1),
(446, 14, 20, 1),
(447, 15, 20, 1),
(448, 16, 20, 1),
(449, 17, 20, 1),
(450, 18, 20, 1),
(451, 19, 20, 1),
(452, 20, 20, 1),
(453, 21, 20, 1),
(454, 22, 20, 1),
(455, 23, 20, 1),
(456, 24, 20, 1),
(457, 27, 20, 1),
(458, 28, 20, 1),
(459, 29, 20, 1),
(460, 30, 20, 1),
(461, 4, 21, 1),
(462, 5, 21, 1),
(463, 6, 21, 1),
(464, 7, 21, 1),
(465, 8, 21, 1),
(466, 11, 21, 1),
(467, 12, 21, 1),
(468, 13, 21, 1),
(469, 14, 21, 1),
(470, 15, 21, 1),
(471, 16, 21, 1),
(472, 17, 21, 1),
(473, 18, 21, 1),
(474, 19, 21, 1),
(475, 20, 21, 1),
(476, 21, 21, 1),
(477, 22, 21, 1),
(478, 23, 21, 1),
(479, 24, 21, 1),
(480, 27, 21, 1),
(481, 28, 21, 1),
(482, 29, 21, 1),
(483, 30, 21, 1),
(484, 4, 22, 1),
(485, 5, 22, 1),
(486, 6, 22, 1),
(487, 7, 22, 1),
(488, 8, 22, 1),
(489, 11, 22, 1),
(490, 12, 22, 1),
(491, 13, 22, 1),
(492, 14, 22, 1),
(493, 15, 22, 1),
(494, 16, 22, 1),
(495, 17, 22, 1),
(496, 18, 22, 1),
(497, 19, 22, 1),
(498, 20, 22, 1),
(499, 21, 22, 1),
(500, 22, 22, 1),
(501, 23, 22, 1),
(502, 24, 22, 1),
(503, 27, 22, 1),
(504, 28, 22, 1),
(505, 29, 22, 1),
(506, 30, 22, 1),
(507, 4, 23, 1),
(508, 5, 23, 1),
(509, 6, 23, 1),
(510, 7, 23, 1),
(511, 8, 23, 1),
(512, 11, 23, 1),
(513, 12, 23, 1),
(514, 13, 23, 1),
(515, 14, 23, 1),
(516, 15, 23, 1),
(517, 16, 23, 1),
(518, 17, 23, 1),
(519, 18, 23, 1),
(520, 19, 23, 1),
(521, 20, 23, 1),
(522, 21, 23, 1),
(523, 22, 23, 1),
(524, 23, 23, 1),
(525, 24, 23, 1),
(526, 27, 23, 1),
(527, 28, 23, 1),
(528, 29, 23, 1),
(529, 30, 23, 1),
(530, 4, 24, 1),
(531, 5, 24, 1),
(532, 6, 24, 1),
(533, 7, 24, 1),
(534, 8, 24, 1),
(535, 11, 24, 1),
(536, 12, 24, 1),
(537, 13, 24, 1),
(538, 14, 24, 1),
(539, 15, 24, 1),
(540, 16, 24, 1),
(541, 17, 24, 1),
(542, 18, 24, 1),
(543, 19, 24, 1),
(544, 20, 24, 1),
(545, 21, 24, 1),
(546, 22, 24, 1),
(547, 23, 24, 1),
(548, 24, 24, 1),
(549, 27, 24, 1),
(550, 28, 24, 1),
(551, 29, 24, 1),
(552, 30, 24, 1),
(553, 4, 25, 1),
(554, 5, 25, 1),
(555, 6, 25, 1),
(556, 7, 25, 1),
(557, 8, 25, 1),
(558, 11, 25, 1),
(559, 12, 25, 1),
(560, 13, 25, 1),
(561, 14, 25, 1),
(562, 15, 25, 1),
(563, 16, 25, 1),
(564, 17, 25, 1),
(565, 18, 25, 1),
(566, 19, 25, 1),
(567, 20, 25, 1),
(568, 21, 25, 1),
(569, 22, 25, 1),
(570, 23, 25, 1),
(571, 24, 25, 1),
(572, 27, 25, 1),
(573, 28, 25, 1),
(574, 29, 25, 1),
(575, 30, 25, 1),
(576, 4, 26, 1),
(577, 5, 26, 1),
(578, 6, 26, 1),
(579, 7, 26, 1),
(580, 8, 26, 1),
(581, 11, 26, 1),
(582, 12, 26, 1),
(583, 13, 26, 1),
(584, 14, 26, 1),
(585, 15, 26, 1),
(586, 16, 26, 1),
(587, 17, 26, 1),
(588, 18, 26, 1),
(589, 19, 26, 1),
(590, 20, 26, 1),
(591, 21, 26, 1),
(592, 22, 26, 1),
(593, 23, 26, 1),
(594, 24, 26, 1),
(595, 27, 26, 1),
(596, 28, 26, 1),
(597, 29, 26, 1),
(598, 30, 26, 1),
(599, 4, 27, 1),
(600, 5, 27, 1),
(601, 6, 27, 1),
(602, 7, 27, 1),
(603, 8, 27, 1),
(604, 11, 27, 1),
(605, 12, 27, 1),
(606, 13, 27, 1),
(607, 14, 27, 1),
(608, 15, 27, 1),
(609, 16, 27, 1),
(610, 17, 27, 1),
(611, 18, 27, 1),
(612, 19, 27, 1),
(613, 20, 27, 1),
(614, 21, 27, 1),
(615, 22, 27, 1),
(616, 23, 27, 1),
(617, 24, 27, 1),
(618, 27, 27, 1),
(619, 28, 27, 1),
(620, 29, 27, 1),
(621, 30, 27, 1),
(622, 4, 28, 1),
(623, 5, 28, 1),
(624, 6, 28, 1),
(625, 7, 28, 1),
(626, 8, 28, 1),
(627, 11, 28, 1),
(628, 12, 28, 1),
(629, 13, 28, 1),
(630, 14, 28, 1),
(631, 15, 28, 1),
(632, 16, 28, 1),
(633, 17, 28, 1),
(634, 18, 28, 1),
(635, 19, 28, 1),
(636, 20, 28, 1),
(637, 21, 28, 1),
(638, 22, 28, 1),
(639, 23, 28, 1),
(640, 24, 28, 1),
(641, 27, 28, 1),
(642, 28, 28, 1),
(643, 29, 28, 1),
(644, 30, 28, 1),
(645, 4, 29, 1),
(646, 5, 29, 1),
(647, 6, 29, 1),
(648, 7, 29, 1),
(649, 8, 29, 1),
(650, 11, 29, 1),
(651, 12, 29, 1),
(652, 13, 29, 1),
(653, 14, 29, 1),
(654, 15, 29, 1),
(655, 16, 29, 1),
(656, 17, 29, 1),
(657, 18, 29, 1),
(658, 19, 29, 1),
(659, 20, 29, 1),
(660, 21, 29, 1),
(661, 22, 29, 1),
(662, 23, 29, 1),
(663, 24, 29, 1),
(664, 27, 29, 1),
(665, 28, 29, 1),
(666, 29, 29, 1),
(667, 30, 29, 1),
(691, 4, 33, 1),
(692, 5, 33, 1),
(693, 6, 33, 1),
(694, 7, 33, 1),
(695, 8, 33, 1),
(696, 11, 33, 1),
(697, 12, 33, 1),
(698, 13, 33, 1),
(699, 14, 33, 1),
(700, 15, 33, 1),
(701, 16, 33, 1),
(702, 17, 33, 1),
(703, 18, 33, 1),
(704, 19, 33, 1),
(705, 20, 33, 1),
(706, 21, 33, 1),
(707, 22, 33, 1),
(708, 23, 33, 1),
(709, 24, 33, 1),
(710, 27, 33, 1),
(711, 28, 33, 1),
(712, 29, 33, 1),
(713, 30, 33, 1),
(714, 4, 34, 1),
(715, 5, 34, 1),
(716, 6, 34, 1),
(717, 7, 34, 1),
(718, 8, 34, 1),
(719, 11, 34, 1),
(720, 12, 34, 1),
(721, 13, 34, 1),
(722, 14, 34, 1),
(723, 15, 34, 1),
(724, 16, 34, 1),
(725, 17, 34, 1),
(726, 18, 34, 1),
(727, 19, 34, 1),
(728, 20, 34, 1),
(729, 21, 34, 1),
(730, 22, 34, 1),
(731, 23, 34, 1),
(732, 24, 34, 1),
(733, 27, 34, 1),
(734, 28, 34, 1),
(735, 29, 34, 1),
(736, 30, 34, 1),
(737, 4, 35, 1),
(738, 5, 35, 1),
(739, 6, 35, 1),
(740, 7, 35, 1),
(741, 8, 35, 1),
(742, 11, 35, 1),
(743, 12, 35, 1),
(744, 13, 35, 1),
(745, 14, 35, 1),
(746, 15, 35, 1),
(747, 16, 35, 1),
(748, 17, 35, 1),
(749, 18, 35, 1),
(750, 19, 35, 1),
(751, 20, 35, 1),
(752, 21, 35, 1),
(753, 22, 35, 1),
(754, 23, 35, 1),
(755, 24, 35, 1),
(756, 27, 35, 1),
(757, 28, 35, 1),
(758, 29, 35, 1),
(759, 30, 35, 1),
(760, 4, 36, 1),
(761, 5, 36, 1),
(762, 6, 36, 1),
(763, 7, 36, 1),
(764, 8, 36, 1),
(765, 11, 36, 1),
(766, 12, 36, 1),
(767, 13, 36, 1),
(768, 14, 36, 1),
(769, 15, 36, 1),
(770, 16, 36, 1),
(771, 17, 36, 1),
(772, 18, 36, 1),
(773, 19, 36, 1),
(774, 20, 36, 1),
(775, 21, 36, 1),
(776, 22, 36, 1),
(777, 23, 36, 1),
(778, 24, 36, 1),
(779, 27, 36, 1),
(780, 28, 36, 1),
(781, 29, 36, 1),
(782, 30, 36, 1),
(783, 4, 37, 1),
(784, 5, 37, 1),
(785, 6, 37, 1),
(786, 7, 37, 1),
(787, 8, 37, 1),
(788, 11, 37, 0),
(789, 12, 37, 0),
(790, 13, 37, 0),
(791, 14, 37, 0),
(792, 15, 37, 0),
(793, 16, 37, 0),
(794, 17, 37, 0),
(795, 18, 37, 0),
(796, 19, 37, 0),
(797, 20, 37, 0),
(798, 21, 37, 0),
(799, 22, 37, 0),
(800, 23, 37, 0),
(801, 24, 37, 0),
(802, 27, 37, 0),
(803, 28, 37, 0),
(804, 29, 37, 0),
(805, 30, 37, 0),
(806, 4, 38, 1),
(807, 5, 38, 1),
(808, 6, 38, 1),
(809, 7, 38, 1),
(810, 8, 38, 1),
(811, 11, 38, 1),
(812, 12, 38, 1),
(813, 13, 38, 1),
(814, 14, 38, 1),
(815, 15, 38, 1),
(816, 16, 38, 1),
(817, 17, 38, 1),
(818, 18, 38, 1),
(819, 19, 38, 1),
(820, 20, 38, 1),
(821, 21, 38, 1),
(822, 22, 38, 1),
(823, 23, 38, 1),
(824, 24, 38, 1),
(825, 27, 38, 1),
(826, 28, 38, 1),
(827, 29, 38, 1),
(828, 30, 38, 1),
(829, 4, 39, 1),
(830, 5, 39, 1),
(831, 6, 39, 1),
(832, 7, 39, 1),
(833, 8, 39, 1),
(834, 11, 39, 1),
(835, 12, 39, 1),
(836, 13, 39, 1),
(837, 14, 39, 1),
(838, 15, 39, 1),
(839, 16, 39, 1),
(840, 17, 39, 1),
(841, 18, 39, 1),
(842, 19, 39, 1),
(843, 20, 39, 1),
(844, 21, 39, 1),
(845, 22, 39, 1),
(846, 23, 39, 1),
(847, 24, 39, 1),
(848, 27, 39, 1),
(849, 28, 39, 1),
(850, 29, 39, 1),
(851, 30, 39, 1),
(852, 4, 40, 1),
(853, 5, 40, 1),
(854, 6, 40, 1),
(855, 7, 40, 1),
(856, 8, 40, 1),
(857, 11, 40, 1),
(858, 12, 40, 1),
(859, 13, 40, 1),
(860, 14, 40, 1),
(861, 15, 40, 1),
(862, 16, 40, 1),
(863, 17, 40, 1),
(864, 18, 40, 1),
(865, 19, 40, 1),
(866, 20, 40, 1),
(867, 21, 40, 1),
(868, 22, 40, 1),
(869, 23, 40, 1),
(870, 24, 40, 1),
(871, 27, 40, 1),
(872, 28, 40, 1),
(873, 29, 40, 1),
(874, 30, 40, 1),
(875, 4, 41, 1),
(876, 5, 41, 1),
(877, 6, 41, 1),
(878, 7, 41, 1),
(879, 8, 41, 1),
(880, 11, 41, 1),
(881, 12, 41, 1),
(882, 13, 41, 1),
(883, 14, 41, 1),
(884, 15, 41, 1),
(885, 16, 41, 1),
(886, 17, 41, 1),
(887, 18, 41, 1),
(888, 19, 41, 1),
(889, 20, 41, 1),
(890, 21, 41, 1),
(891, 22, 41, 1),
(892, 23, 41, 1),
(893, 24, 41, 1),
(894, 27, 41, 1),
(895, 28, 41, 1),
(896, 29, 41, 1),
(897, 30, 41, 1),
(898, 4, 42, 1),
(899, 5, 42, 1),
(900, 6, 42, 1),
(901, 7, 42, 1),
(902, 8, 42, 1),
(903, 11, 42, 1),
(904, 12, 42, 1),
(905, 13, 42, 1),
(906, 14, 42, 1),
(907, 15, 42, 1),
(908, 16, 42, 1),
(909, 17, 42, 1),
(910, 18, 42, 1),
(911, 19, 42, 1),
(912, 20, 42, 1),
(913, 21, 42, 1),
(914, 22, 42, 1),
(915, 23, 42, 1),
(916, 24, 42, 1),
(917, 27, 42, 1),
(918, 28, 42, 1),
(919, 29, 42, 1),
(920, 30, 42, 1),
(921, 4, 43, 1),
(922, 5, 43, 1),
(923, 6, 43, 1),
(924, 7, 43, 1),
(925, 8, 43, 1),
(926, 11, 43, 1),
(927, 12, 43, 1),
(928, 13, 43, 1),
(929, 14, 43, 1),
(930, 15, 43, 1),
(931, 16, 43, 1),
(932, 17, 43, 1),
(933, 18, 43, 1),
(934, 19, 43, 1),
(935, 20, 43, 1),
(936, 21, 43, 1),
(937, 22, 43, 1),
(938, 23, 43, 1),
(939, 24, 43, 1),
(940, 27, 43, 1),
(941, 28, 43, 1),
(942, 29, 43, 1),
(943, 30, 43, 1),
(944, 4, 44, 1),
(945, 5, 44, 1),
(946, 6, 44, 1),
(947, 7, 44, 1),
(948, 8, 44, 1),
(949, 11, 44, 1),
(950, 12, 44, 1),
(951, 13, 44, 1),
(952, 14, 44, 1),
(953, 15, 44, 1),
(954, 16, 44, 1),
(955, 17, 44, 1),
(956, 18, 44, 1),
(957, 19, 44, 1),
(958, 20, 44, 1),
(959, 21, 44, 1),
(960, 22, 44, 1),
(961, 23, 44, 1),
(962, 24, 44, 1),
(963, 27, 44, 1),
(964, 28, 44, 1),
(965, 29, 44, 1),
(966, 30, 44, 1),
(967, 4, 45, 1),
(968, 5, 45, 1),
(969, 6, 45, 1),
(970, 7, 45, 1),
(971, 8, 45, 1),
(972, 11, 45, 1),
(973, 12, 45, 1),
(974, 13, 45, 1),
(975, 14, 45, 1),
(976, 15, 45, 1),
(977, 16, 45, 1),
(978, 17, 45, 1),
(979, 18, 45, 1),
(980, 19, 45, 1),
(981, 20, 45, 1),
(982, 21, 45, 1),
(983, 22, 45, 1),
(984, 23, 45, 1),
(985, 24, 45, 1),
(986, 27, 45, 1),
(987, 28, 45, 1),
(988, 29, 45, 1),
(989, 30, 45, 1),
(990, 4, 46, 1),
(991, 5, 46, 1),
(992, 6, 46, 1),
(993, 7, 46, 1),
(994, 8, 46, 1),
(995, 11, 46, 1),
(996, 12, 46, 1),
(997, 13, 46, 1),
(998, 14, 46, 1),
(999, 15, 46, 1),
(1000, 16, 46, 1),
(1001, 17, 46, 1),
(1002, 18, 46, 1),
(1003, 19, 46, 1),
(1004, 20, 46, 1),
(1005, 21, 46, 1),
(1006, 22, 46, 1),
(1007, 23, 46, 1),
(1008, 24, 46, 1),
(1009, 27, 46, 1),
(1010, 28, 46, 1),
(1011, 29, 46, 1),
(1012, 30, 46, 1),
(1013, 4, 47, 1),
(1014, 5, 47, 1),
(1015, 6, 47, 1),
(1016, 7, 47, 1),
(1017, 8, 47, 1),
(1018, 11, 47, 1),
(1019, 12, 47, 1),
(1020, 13, 47, 1),
(1021, 14, 47, 1),
(1022, 15, 47, 1),
(1023, 16, 47, 1),
(1024, 17, 47, 1),
(1025, 18, 47, 1),
(1026, 19, 47, 1),
(1027, 20, 47, 1),
(1028, 21, 47, 1),
(1029, 22, 47, 1),
(1030, 23, 47, 1),
(1031, 24, 47, 1),
(1032, 27, 47, 1),
(1033, 28, 47, 1),
(1034, 29, 47, 1),
(1035, 30, 47, 1),
(1036, 4, 48, 1),
(1037, 5, 48, 1),
(1038, 6, 48, 1),
(1039, 7, 48, 1),
(1040, 8, 48, 1),
(1041, 11, 48, 1),
(1042, 12, 48, 1),
(1043, 13, 48, 1),
(1044, 14, 48, 1),
(1045, 15, 48, 1),
(1046, 16, 48, 1),
(1047, 17, 48, 1),
(1048, 18, 48, 1),
(1049, 19, 48, 1),
(1050, 20, 48, 1),
(1051, 21, 48, 1),
(1052, 22, 48, 1),
(1053, 23, 48, 1),
(1054, 24, 48, 1),
(1055, 27, 48, 1),
(1056, 28, 48, 1),
(1057, 29, 48, 1),
(1058, 30, 48, 1),
(1059, 4, 49, 1),
(1060, 5, 49, 1),
(1061, 6, 49, 1),
(1062, 7, 49, 1),
(1063, 8, 49, 1),
(1064, 11, 49, 1),
(1065, 12, 49, 1),
(1066, 13, 49, 1),
(1067, 14, 49, 1),
(1068, 15, 49, 1),
(1069, 16, 49, 1),
(1070, 17, 49, 1),
(1071, 18, 49, 1),
(1072, 19, 49, 1),
(1073, 20, 49, 1),
(1074, 21, 49, 1),
(1075, 22, 49, 1),
(1076, 23, 49, 1),
(1077, 24, 49, 1),
(1078, 27, 49, 1),
(1079, 28, 49, 1),
(1080, 29, 49, 1),
(1081, 30, 49, 1),
(1082, 4, 50, 1),
(1083, 5, 50, 1),
(1084, 6, 50, 1),
(1085, 7, 50, 1),
(1086, 8, 50, 1),
(1087, 11, 50, 1),
(1088, 12, 50, 1),
(1089, 13, 50, 1),
(1090, 14, 50, 1),
(1091, 15, 50, 1),
(1092, 16, 50, 1),
(1093, 17, 50, 1),
(1094, 18, 50, 1),
(1095, 19, 50, 1),
(1096, 20, 50, 1),
(1097, 21, 50, 1),
(1098, 22, 50, 1),
(1099, 23, 50, 1),
(1100, 24, 50, 1),
(1101, 27, 50, 1),
(1102, 28, 50, 1),
(1103, 29, 50, 1),
(1104, 30, 50, 1),
(1105, 4, 51, 1),
(1106, 5, 51, 1),
(1107, 6, 51, 1),
(1108, 7, 51, 1),
(1109, 8, 51, 1),
(1110, 11, 51, 1),
(1111, 12, 51, 1),
(1112, 13, 51, 1),
(1113, 14, 51, 1),
(1114, 15, 51, 1),
(1115, 16, 51, 1),
(1116, 17, 51, 1),
(1117, 18, 51, 1),
(1118, 19, 51, 1),
(1119, 20, 51, 1),
(1120, 21, 51, 1),
(1121, 22, 51, 1),
(1122, 23, 51, 1),
(1123, 24, 51, 1),
(1124, 27, 51, 1),
(1125, 28, 51, 1),
(1126, 29, 51, 1),
(1127, 30, 51, 1),
(1128, 4, 52, 1),
(1129, 5, 52, 1),
(1130, 6, 52, 1),
(1131, 7, 52, 1),
(1132, 8, 52, 1),
(1133, 11, 52, 1),
(1134, 12, 52, 1),
(1135, 13, 52, 1),
(1136, 14, 52, 1),
(1137, 15, 52, 1),
(1138, 16, 52, 1),
(1139, 17, 52, 1),
(1140, 18, 52, 1),
(1141, 19, 52, 1),
(1142, 20, 52, 1),
(1143, 21, 52, 1),
(1144, 22, 52, 1),
(1145, 23, 52, 1),
(1146, 24, 52, 1),
(1147, 27, 52, 1),
(1148, 28, 52, 1),
(1149, 29, 52, 1),
(1150, 30, 52, 1),
(1243, 4, 58, 1),
(1244, 5, 58, 1),
(1245, 6, 58, 1),
(1246, 7, 58, 1),
(1247, 8, 58, 1),
(1248, 11, 58, 1),
(1249, 12, 58, 1),
(1250, 13, 58, 1),
(1251, 14, 58, 1),
(1252, 15, 58, 1),
(1253, 16, 58, 1),
(1254, 17, 58, 1),
(1255, 18, 58, 1),
(1256, 19, 58, 1),
(1257, 20, 58, 1),
(1258, 21, 58, 1),
(1259, 22, 58, 1),
(1260, 23, 58, 1),
(1261, 24, 58, 1),
(1262, 27, 58, 1),
(1263, 28, 58, 1),
(1264, 29, 58, 1),
(1265, 30, 58, 1),
(1266, 4, 59, 1),
(1267, 5, 59, 1),
(1268, 6, 59, 1),
(1269, 7, 59, 1),
(1270, 8, 59, 1),
(1271, 11, 59, 1),
(1272, 12, 59, 1),
(1273, 13, 59, 1),
(1274, 14, 59, 1),
(1275, 15, 59, 1),
(1276, 16, 59, 1),
(1277, 17, 59, 1),
(1278, 18, 59, 1),
(1279, 19, 59, 1),
(1280, 20, 59, 1),
(1281, 21, 59, 1),
(1282, 22, 59, 1),
(1283, 23, 59, 1),
(1284, 24, 59, 1),
(1285, 27, 59, 1),
(1286, 28, 59, 1),
(1287, 29, 59, 1),
(1288, 30, 59, 1),
(1289, 4, 60, 1),
(1290, 5, 60, 1),
(1291, 6, 60, 1),
(1292, 7, 60, 1),
(1293, 8, 60, 1),
(1294, 11, 60, 1),
(1295, 12, 60, 1),
(1296, 13, 60, 1),
(1297, 14, 60, 1),
(1298, 15, 60, 1),
(1299, 16, 60, 1),
(1300, 17, 60, 1),
(1301, 18, 60, 1),
(1302, 19, 60, 1),
(1303, 20, 60, 1),
(1304, 21, 60, 1),
(1305, 22, 60, 1),
(1306, 23, 60, 1),
(1307, 24, 60, 1),
(1308, 27, 60, 1),
(1309, 28, 60, 1),
(1310, 29, 60, 1),
(1311, 30, 60, 1),
(1312, 4, 61, 1),
(1313, 5, 61, 1),
(1314, 6, 61, 1),
(1315, 7, 61, 1),
(1316, 8, 61, 1),
(1317, 11, 61, 1),
(1318, 12, 61, 1),
(1319, 13, 61, 1),
(1320, 14, 61, 1),
(1321, 15, 61, 1),
(1322, 16, 61, 1),
(1323, 17, 61, 1),
(1324, 18, 61, 1),
(1325, 19, 61, 1),
(1326, 20, 61, 1),
(1327, 21, 61, 1),
(1328, 22, 61, 1),
(1329, 23, 61, 1),
(1330, 24, 61, 1),
(1331, 27, 61, 1),
(1332, 28, 61, 1),
(1333, 29, 61, 1),
(1334, 30, 61, 1),
(1335, 4, 62, 1),
(1336, 5, 62, 1),
(1337, 6, 62, 1),
(1338, 7, 62, 1),
(1339, 8, 62, 1),
(1340, 11, 62, 1),
(1341, 12, 62, 1),
(1342, 13, 62, 1),
(1343, 14, 62, 1),
(1344, 15, 62, 1),
(1345, 16, 62, 1),
(1346, 17, 62, 1),
(1347, 18, 62, 1),
(1348, 19, 62, 1),
(1349, 20, 62, 1),
(1350, 21, 62, 1),
(1351, 22, 62, 1),
(1352, 23, 62, 1),
(1353, 24, 62, 1),
(1354, 27, 62, 1),
(1355, 28, 62, 1),
(1356, 29, 62, 1),
(1357, 30, 62, 1),
(1358, 4, 63, 1),
(1359, 5, 63, 1),
(1360, 6, 63, 1),
(1361, 7, 63, 1),
(1362, 8, 63, 1),
(1363, 11, 63, 1),
(1364, 12, 63, 1),
(1365, 13, 63, 1),
(1366, 14, 63, 1),
(1367, 15, 63, 1),
(1368, 16, 63, 1),
(1369, 17, 63, 1),
(1370, 18, 63, 1),
(1371, 19, 63, 1),
(1372, 20, 63, 1),
(1373, 21, 63, 1),
(1374, 22, 63, 1),
(1375, 23, 63, 1),
(1376, 24, 63, 1),
(1377, 27, 63, 1),
(1378, 28, 63, 1),
(1379, 29, 63, 1),
(1380, 30, 63, 1),
(1381, 4, 64, 1),
(1382, 5, 64, 1),
(1383, 6, 64, 1),
(1384, 7, 64, 1),
(1385, 8, 64, 1),
(1386, 11, 64, 1),
(1387, 12, 64, 1),
(1388, 13, 64, 1),
(1389, 14, 64, 1),
(1390, 15, 64, 1),
(1391, 16, 64, 1),
(1392, 17, 64, 1),
(1393, 18, 64, 1),
(1394, 19, 64, 1),
(1395, 20, 64, 1),
(1396, 21, 64, 1),
(1397, 22, 64, 1),
(1398, 23, 64, 1),
(1399, 24, 64, 1),
(1400, 27, 64, 1),
(1401, 28, 64, 1),
(1402, 29, 64, 1),
(1403, 30, 64, 1),
(1404, 4, 65, 1),
(1405, 5, 65, 1),
(1406, 6, 65, 1),
(1407, 7, 65, 1),
(1408, 8, 65, 1),
(1409, 11, 65, 1),
(1410, 12, 65, 1),
(1411, 13, 65, 1),
(1412, 14, 65, 1),
(1413, 15, 65, 1),
(1414, 16, 65, 1),
(1415, 17, 65, 1),
(1416, 18, 65, 1),
(1417, 19, 65, 1),
(1418, 20, 65, 1),
(1419, 21, 65, 1),
(1420, 22, 65, 1),
(1421, 23, 65, 1),
(1422, 24, 65, 1),
(1423, 27, 65, 1),
(1424, 28, 65, 1),
(1425, 29, 65, 1),
(1426, 30, 65, 1),
(1427, 4, 66, 1),
(1428, 5, 66, 1),
(1429, 6, 66, 1),
(1430, 7, 66, 1),
(1431, 8, 66, 1),
(1432, 11, 66, 1),
(1433, 12, 66, 1),
(1434, 13, 66, 1),
(1435, 14, 66, 1),
(1436, 15, 66, 1),
(1437, 16, 66, 1),
(1438, 17, 66, 1),
(1439, 18, 66, 1),
(1440, 19, 66, 1),
(1441, 20, 66, 1),
(1442, 21, 66, 1),
(1443, 22, 66, 1),
(1444, 23, 66, 1),
(1445, 24, 66, 1),
(1446, 27, 66, 1),
(1447, 28, 66, 1),
(1448, 29, 66, 1),
(1449, 30, 66, 1),
(1450, 4, 67, 1),
(1451, 5, 67, 1),
(1452, 6, 67, 1),
(1453, 7, 67, 1),
(1454, 8, 67, 1),
(1455, 11, 67, 1),
(1456, 12, 67, 1),
(1457, 13, 67, 1),
(1458, 14, 67, 1),
(1459, 15, 67, 1),
(1460, 16, 67, 1),
(1461, 17, 67, 1),
(1462, 18, 67, 1),
(1463, 19, 67, 1),
(1464, 20, 67, 1),
(1465, 21, 67, 1),
(1466, 22, 67, 1),
(1467, 23, 67, 1),
(1468, 24, 67, 1),
(1469, 27, 67, 1),
(1470, 28, 67, 1),
(1471, 29, 67, 1),
(1472, 30, 67, 1),
(1473, 4, 68, 1),
(1474, 5, 68, 1),
(1475, 6, 68, 1),
(1476, 7, 68, 1),
(1477, 8, 68, 1),
(1478, 11, 68, 1),
(1479, 12, 68, 1),
(1480, 13, 68, 1),
(1481, 14, 68, 1),
(1482, 15, 68, 1),
(1483, 16, 68, 1),
(1484, 17, 68, 1),
(1485, 18, 68, 1),
(1486, 19, 68, 1),
(1487, 20, 68, 1),
(1488, 21, 68, 1),
(1489, 22, 68, 1),
(1490, 23, 68, 1),
(1491, 24, 68, 1),
(1492, 27, 68, 1),
(1493, 28, 68, 1),
(1494, 29, 68, 1),
(1495, 30, 68, 1),
(1496, 4, 69, 1),
(1497, 5, 69, 1),
(1498, 6, 69, 1),
(1499, 7, 69, 1),
(1500, 8, 69, 1),
(1501, 11, 69, 1),
(1502, 12, 69, 1),
(1503, 13, 69, 1),
(1504, 14, 69, 1),
(1505, 15, 69, 1),
(1506, 16, 69, 1),
(1507, 17, 69, 1),
(1508, 18, 69, 1),
(1509, 19, 69, 1),
(1510, 20, 69, 1),
(1511, 21, 69, 1),
(1512, 22, 69, 1),
(1513, 23, 69, 1),
(1514, 24, 69, 1),
(1515, 27, 69, 1),
(1516, 28, 69, 1),
(1517, 29, 69, 1),
(1518, 30, 69, 1),
(1519, 4, 70, 1),
(1520, 5, 70, 1),
(1521, 6, 70, 1),
(1522, 7, 70, 1),
(1523, 8, 70, 1),
(1524, 11, 70, 1),
(1525, 12, 70, 1),
(1526, 13, 70, 1),
(1527, 14, 70, 1),
(1528, 15, 70, 1),
(1529, 16, 70, 1),
(1530, 17, 70, 1),
(1531, 18, 70, 1),
(1532, 19, 70, 1),
(1533, 20, 70, 1),
(1534, 21, 70, 1),
(1535, 22, 70, 1),
(1536, 23, 70, 1),
(1537, 24, 70, 1),
(1538, 27, 70, 1),
(1539, 28, 70, 1),
(1540, 29, 70, 1),
(1541, 30, 70, 1),
(1542, 4, 71, 1),
(1543, 5, 71, 1),
(1544, 6, 71, 1),
(1545, 7, 71, 1),
(1546, 8, 71, 1),
(1547, 11, 71, 1),
(1548, 12, 71, 1),
(1549, 13, 71, 1),
(1550, 14, 71, 1),
(1551, 15, 71, 1),
(1552, 16, 71, 1),
(1553, 17, 71, 1),
(1554, 18, 71, 1),
(1555, 19, 71, 1),
(1556, 20, 71, 1),
(1557, 21, 71, 1),
(1558, 22, 71, 1),
(1559, 23, 71, 1),
(1560, 24, 71, 1),
(1561, 27, 71, 1),
(1562, 28, 71, 1),
(1563, 29, 71, 1),
(1564, 30, 71, 1),
(1565, 4, 72, 1),
(1566, 5, 72, 1),
(1567, 6, 72, 1),
(1568, 7, 72, 1),
(1569, 8, 72, 1),
(1570, 11, 72, 1),
(1571, 12, 72, 1),
(1572, 13, 72, 1),
(1573, 14, 72, 1),
(1574, 15, 72, 1),
(1575, 16, 72, 1),
(1576, 17, 72, 1),
(1577, 18, 72, 1),
(1578, 19, 72, 1),
(1579, 20, 72, 1),
(1580, 21, 72, 1),
(1581, 22, 72, 1),
(1582, 23, 72, 1),
(1583, 24, 72, 1),
(1584, 27, 72, 1),
(1585, 28, 72, 1),
(1586, 29, 72, 1),
(1587, 30, 72, 1),
(1588, 4, 73, 1),
(1589, 5, 73, 1),
(1590, 6, 73, 1),
(1591, 7, 73, 1),
(1592, 8, 73, 1),
(1593, 11, 73, 1),
(1594, 12, 73, 1),
(1595, 13, 73, 1),
(1596, 14, 73, 1),
(1597, 15, 73, 1),
(1598, 16, 73, 1),
(1599, 17, 73, 1),
(1600, 18, 73, 1),
(1601, 19, 73, 1),
(1602, 20, 73, 1),
(1603, 21, 73, 1),
(1604, 22, 73, 1),
(1605, 23, 73, 1),
(1606, 24, 73, 1),
(1607, 27, 73, 1),
(1608, 28, 73, 1),
(1609, 29, 73, 1),
(1610, 30, 73, 1);

-- --------------------------------------------------------

--
-- 表的结构 `scheme`
--

CREATE TABLE `scheme` (
  `Id` bigint(20) NOT NULL,
  `Version` bigint(20) NOT NULL,
  `Detail` text,
  `ContractId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `schemehistory`
--

CREATE TABLE `schemehistory` (
  `Id` bigint(20) NOT NULL,
  `ContractId` bigint(20) NOT NULL,
  `Detail` text,
  `Version` bigint(20) NOT NULL,
  `RejectReason` varchar(1024) DEFAULT NULL,
  `RejectTime` datetime DEFAULT NULL,
  `ApplyRemark` varchar(1024) DEFAULT NULL,
  `ApplyTime` datetime DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `SchemeId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 触发器 `schemehistory`
--
DELIMITER $$
CREATE TRIGGER `schemeh_updateTime` BEFORE INSERT ON `schemehistory` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `script`
--

CREATE TABLE `script` (
  `Id` bigint(20) NOT NULL,
  `Version` bigint(20) NOT NULL,
  `ContractId` bigint(20) NOT NULL,
  `Detail` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `scripthistory`
--

CREATE TABLE `scripthistory` (
  `Id` bigint(20) NOT NULL,
  `ContractId` bigint(20) NOT NULL,
  `ScriptId` bigint(20) NOT NULL,
  `Version` bigint(20) NOT NULL,
  `Detail` text,
  `RejectReason` varchar(1024) DEFAULT NULL,
  `RejectTime` datetime DEFAULT NULL,
  `ApplyRemark` varchar(1024) DEFAULT NULL,
  `ApplyTime` datetime DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 触发器 `scripthistory`
--
DELIMITER $$
CREATE TRIGGER `scripth_updateTime` BEFORE INSERT ON `scripthistory` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `segment`
--

CREATE TABLE `segment` (
  `Id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Identity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `segment`
--

INSERT INTO `segment` (`Id`, `Name`, `Identity`) VALUES
(1, '编辑需求', 'draft'),
(2, '提交需求', 'publish'),
(3, '商定合同', 'establish'),
(4, '支付押金', 'payDeposit'),
(5, '审片', 'review'),
(6, '支付尾款', 'payAll'),
(7, '交付', 'ratainage'),
(8, '完成', 'finish');

-- --------------------------------------------------------

--
-- 表的结构 `settings`
--

CREATE TABLE `settings` (
  `Item` varchar(255) CHARACTER SET ascii NOT NULL,
  `Value` varchar(255) CHARACTER SET ascii DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `settings`
--

INSERT INTO `settings` (`Item`, `Value`) VALUES
('isProducerVisable', 'hide'),
('LoginImage', '/fileFolders/loginImage/b25d8624-8259-46ec-9382-ba28700c6211');

-- --------------------------------------------------------

--
-- 表的结构 `setting_channel`
--

CREATE TABLE `setting_channel` (
  `Id` bigint(20) NOT NULL,
  `CategoryId` bigint(20) NOT NULL,
  `Position` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `ParentId` bigint(20) DEFAULT NULL,
  `BackupName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `setting_channel`
--

INSERT INTO `setting_channel` (`Id`, `CategoryId`, `Position`, `Name`, `ParentId`, `BackupName`) VALUES
(57, 18, 2, '微电影', NULL, '微电影拍摄与制作'),
(58, 2, 1, '宣传片', NULL, '宣传片拍摄与制作'),
(61, 48, 4, '活动视频', NULL, '活动拍摄与制作'),
(62, 31, 3, '动画视频', NULL, '动画制作');

-- --------------------------------------------------------

--
-- 表的结构 `setting_classical`
--

CREATE TABLE `setting_classical` (
  `ZoneItemId` bigint(20) NOT NULL,
  `Position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `setting_classical`
--

INSERT INTO `setting_classical` (`ZoneItemId`, `Position`) VALUES
(73, 2);

-- --------------------------------------------------------

--
-- 表的结构 `setting_producer`
--

CREATE TABLE `setting_producer` (
  `DomainId` bigint(20) NOT NULL,
  `Position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `setting_producer`
--

INSERT INTO `setting_producer` (`DomainId`, `Position`) VALUES
(21, 3),
(24, 6),
(25, 4),
(33, 5);

-- --------------------------------------------------------

--
-- 表的结构 `share`
--

CREATE TABLE `share` (
  `Id` bigint(20) NOT NULL,
  `ObjectId` bigint(20) DEFAULT NULL,
  `CreatorUserId` bigint(20) DEFAULT NULL,
  `Name` varchar(255) NOT NULL,
  `CreateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `share`
--

INSERT INTO `share` (`Id`, `ObjectId`, `CreatorUserId`, `Name`, `CreateTime`) VALUES
(19, 387, 34, 'producerLogo.jpg', '2015-07-31 09:08:53'),
(20, 386, 35, 'little kiss-1.mp4', '2015-07-31 09:13:07'),
(21, 390, 37, '笔记本.jpg', '2015-08-01 07:26:13'),
(22, 406, 37, 'Note.txt', '2015-08-04 03:52:20'),
(24, 408, 38, '粤国际 ', '2015-08-06 11:13:38'),
(25, 395, 35, 'orange30B', '2015-08-15 04:38:59'),
(26, 448, 35, '粤国际+', '2015-08-15 04:42:42');

--
-- 触发器 `share`
--
DELIMITER $$
CREATE TRIGGER `share_updateTime` BEFORE INSERT ON `share` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `sharedomain`
--

CREATE TABLE `sharedomain` (
  `Id` bigint(20) NOT NULL,
  `DomainId` bigint(20) DEFAULT NULL,
  `Type` int(11) DEFAULT NULL,
  `UserRead` bit(1) DEFAULT NULL,
  `UserWrite` bit(1) DEFAULT NULL,
  `UserCreate` bit(1) DEFAULT NULL,
  `UserDelete` bit(1) DEFAULT NULL,
  `UserDownload` bit(1) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 触发器 `sharedomain`
--
DELIMITER $$
CREATE TRIGGER `shared_updateTime` BEFORE INSERT ON `sharedomain` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `sharetypeuser`
--

CREATE TABLE `sharetypeuser` (
  `Id` bigint(20) NOT NULL,
  `ShareObjectId` bigint(20) DEFAULT NULL,
  `Type` int(11) DEFAULT NULL,
  `UserRead` bit(1) DEFAULT NULL,
  `UserWrite` bit(1) DEFAULT NULL,
  `UserCreate` bit(1) DEFAULT NULL,
  `UserDelete` bit(1) DEFAULT NULL,
  `UserDownload` bit(1) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 触发器 `sharetypeuser`
--
DELIMITER $$
CREATE TRIGGER `sharetu_updateTime` BEFORE INSERT ON `sharetypeuser` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `shareuser`
--

CREATE TABLE `shareuser` (
  `Id` bigint(20) NOT NULL,
  `ShareObjectId` bigint(20) DEFAULT NULL,
  `UserId` bigint(20) DEFAULT NULL COMMENT '用户Id为0时，为共享给全部用户',
  `UserRead` bit(1) DEFAULT NULL,
  `UserWrite` bit(1) DEFAULT NULL,
  `UserCreate` bit(1) DEFAULT NULL,
  `UserDelete` bit(1) DEFAULT NULL,
  `UserDownload` bit(1) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `shareuser`
--

INSERT INTO `shareuser` (`Id`, `ShareObjectId`, `UserId`, `UserRead`, `UserWrite`, `UserCreate`, `UserDelete`, `UserDownload`, `CreateTime`) VALUES
(14, 21, 0, b'1', b'0', b'0', b'0', b'0', '2015-08-01 07:26:13'),
(15, 22, 0, b'1', b'0', b'0', b'0', b'0', '2015-08-04 03:52:20');

--
-- 触发器 `shareuser`
--
DELIMITER $$
CREATE TRIGGER `shareUser_updateTime` BEFORE INSERT ON `shareuser` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `shareusercache`
--

CREATE TABLE `shareusercache` (
  `Id` bigint(20) NOT NULL,
  `ShareObjectId` bigint(20) DEFAULT NULL,
  `UserId` bigint(20) DEFAULT NULL,
  `UserRead` bit(1) DEFAULT NULL,
  `UserWrite` bit(1) DEFAULT NULL,
  `UserCreate` bit(1) DEFAULT NULL,
  `UserDelete` bit(1) DEFAULT NULL,
  `UserDownload` bit(1) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用于保存 组和共享用户的计算结果';

--
-- 转存表中的数据 `shareusercache`
--

INSERT INTO `shareusercache` (`Id`, `ShareObjectId`, `UserId`, `UserRead`, `UserWrite`, `UserCreate`, `UserDelete`, `UserDownload`, `CreateTime`) VALUES
(467, 19, 35, b'1', b'0', b'0', b'0', b'0', '2015-07-31 09:09:21'),
(468, 19, 34, b'1', b'0', b'0', b'0', b'0', '2015-07-31 09:09:21'),
(494, 20, 35, b'1', b'0', b'0', b'0', b'0', '2015-08-03 04:13:13'),
(495, 20, 34, b'1', b'0', b'0', b'0', b'0', '2015-08-03 04:13:14'),
(496, 20, 37, b'1', b'0', b'0', b'0', b'0', '2015-08-03 04:13:14'),
(516, 21, 0, b'1', b'0', b'0', b'0', b'0', '2015-08-06 07:53:44'),
(517, 21, 35, b'1', b'0', b'0', b'0', b'0', '2015-08-06 07:53:44'),
(518, 21, 37, b'1', b'0', b'0', b'0', b'0', '2015-08-06 07:53:44'),
(519, 21, 38, b'1', b'0', b'0', b'0', b'0', '2015-08-06 07:53:45'),
(522, 23, 38, b'1', b'0', b'0', b'0', b'0', '2015-08-06 08:11:09'),
(523, 23, 37, b'1', b'0', b'0', b'0', b'0', '2015-08-06 08:11:09'),
(528, 24, 38, b'1', b'0', b'0', b'0', b'0', '2015-08-10 03:57:18'),
(529, 24, 37, b'1', b'0', b'0', b'0', b'0', '2015-08-10 03:57:18'),
(540, 25, 35, b'1', b'0', b'0', b'0', b'0', '2015-08-15 04:39:00'),
(541, 25, 37, b'1', b'0', b'0', b'0', b'0', '2015-08-15 04:39:00'),
(542, 26, 35, b'1', b'0', b'0', b'0', b'0', '2015-08-15 04:42:42'),
(543, 26, 37, b'1', b'0', b'0', b'0', b'0', '2015-08-15 04:42:42'),
(548, 22, 0, b'1', b'0', b'0', b'0', b'0', '2015-08-18 07:05:02'),
(549, 22, 38, b'1', b'0', b'0', b'0', b'0', '2015-08-18 07:05:02'),
(550, 22, 37, b'1', b'0', b'0', b'0', b'0', '2015-08-18 07:05:02'),
(551, 22, 35, b'1', b'0', b'0', b'0', b'0', '2015-08-18 07:05:02');

--
-- 触发器 `shareusercache`
--
DELIMITER $$
CREATE TRIGGER `suc_updateTime` BEFORE INSERT ON `shareusercache` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `storage_share`
--

CREATE TABLE `storage_share` (
  `Id` bigint(20) NOT NULL,
  `ObjectId` bigint(20) NOT NULL,
  `DomainId` bigint(20) NOT NULL,
  `DownloadPermission` bit(1) NOT NULL,
  `WritePermission` bit(1) NOT NULL,
  `ObjectOwnerDomainId` bigint(20) NOT NULL,
  `CreateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 触发器 `storage_share`
--
DELIMITER $$
CREATE TRIGGER `storageShare_updateTime` BEFORE INSERT ON `storage_share` FOR EACH ROW BEGIN
	set new.CreateTime = NOW();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `tag`
--

CREATE TABLE `tag` (
  `Id` bigint(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `UserId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tag`
--

INSERT INTO `tag` (`Id`, `Name`, `UserId`) VALUES
(1, '欢乐', NULL),
(4, '简洁', NULL),
(5, '华丽', NULL),
(6, '平缓', NULL),
(7, '明快', NULL),
(8, '严肃', NULL),
(9, '诙谐', NULL),
(10, '安静', NULL),
(11, '热闹', NULL),
(12, '传统', NULL),
(13, '时尚', NULL),
(14, '浪漫', NULL),
(15, '沉稳', NULL),
(16, '清新', NULL),
(17, '梦幻', NULL),
(18, '纯真', NULL),
(19, '深沉', NULL),
(20, '理性', NULL),
(21, '激情', NULL),
(22, '庄重', NULL),
(23, '妩媚', NULL),
(24, '朴实', NULL),
(25, '霸气', NULL),
(26, '大众', NULL),
(27, '唯美', NULL),
(28, '温情', NULL),
(29, '热情', NULL),
(30, '淡雅', NULL),
(31, '喜庆', NULL),
(32, '细节', NULL),
(33, '梗概', NULL),
(34, '条理', NULL),
(35, '跳跃', NULL),
(36, '震撼', NULL),
(37, '大气', NULL),
(38, '3D动画', 38),
(39, '建筑动画', 38),
(40, '宣传片', 38),
(41, '企业形象', 38),
(42, '活动视频', 38),
(43, '其他活动视频', 38),
(44, '产品广告', 35),
(45, '产品宣传', 33);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `Id` bigint(20) NOT NULL,
  `NipUserId` bigint(20) DEFAULT NULL,
  `DomainId` bigint(20) DEFAULT NULL,
  `DomainName` varchar(100) DEFAULT NULL,
  `Password` char(32) DEFAULT NULL,
  `SessionId` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `NickName` varchar(100) DEFAULT NULL,
  `Type` int(11) DEFAULT NULL,
  `CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DomainPermissionInvalidate` bit(1) NOT NULL,
  `RealName` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `Status` int(10) DEFAULT NULL COMMENT '账号状态，是否开通',
  `Identity` varchar(100) DEFAULT NULL,
  `CellPhone` varchar(100) DEFAULT NULL,
  `LeastTime` datetime DEFAULT NULL,
  `Level` int(11) NOT NULL DEFAULT '1',
  `LastLoginTime` datetime DEFAULT NULL,
  `WeiXinOpenId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`Id`, `NipUserId`, `DomainId`, `DomainName`, `Password`, `SessionId`, `Email`, `NickName`, `Type`, `CreateTime`, `DomainPermissionInvalidate`, `RealName`, `Status`, `Identity`, `CellPhone`, `LeastTime`, `Level`, `LastLoginTime`, `WeiXinOpenId`) VALUES
(33, NULL, 16, '529450714@qq.com', '202cb962ac59075b964b07152d234b70', 'a40fb645-11a4-4551-b477-b9e3222db982', '529450714@qq.com', 'lqs469', 0, '2015-07-31 07:38:31', b'0', '李芩硕', 1, NULL, '18811437396', '2015-09-05 17:05:49', 1, '2015-12-30 10:49:33', NULL),
(34, NULL, 17, 'erikaq@126.com', '202cb962ac59075b964b07152d234b70', '22eba8c0-9af1-495b-b500-180f9229170f', 'erikaq@126.com', 'erikaq@126.com1', 0, '2015-07-31 07:38:55', b'0', '', 1, NULL, '', '2015-12-14 21:34:22', 1, '2016-09-29 22:23:28', 'o70ABwff15El_r8_kQx1xGm68Gf8'),
(35, NULL, 18, '剪片子官方自营制作商', '891e89830d05cc0fe7be9f2d607c2b58', 'e11bdfb4-5303-41ae-831d-27466bf1424d', 'huiteng@139.com', 'huiteng', 0, '2015-07-31 08:00:21', b'0', '汇腾管理员', 1, 'admin', '010-85388138', '2016-12-27 17:31:00', 3, '2016-12-27 17:08:16', NULL),
(36, NULL, 19, '897245916@qq.com', 'e807f1fcf82d132f9bb018ca6738a19f', '15404909-d0be-4a14-ac15-44d4c4e96245', '897245916@qq.com', '897245916@qq.com', 0, '2015-08-01 01:38:35', b'0', NULL, 1, NULL, NULL, NULL, 1, '2015-10-08 11:24:35', NULL),
(37, NULL, 20, 'rick_zhang@126.com', 'fa06b31e974f7829f8e7baee0bd68004', 'bca82514-8ed1-4d26-b455-439a6709f101', 'rick_zhang@126.com', 'Rick', 0, '2015-08-01 01:57:21', b'0', '张洪', 1, NULL, '13121605896', '2016-12-18 21:38:43', 2, '2017-01-08 22:32:21', 'opW19wWbghHEclmiY7CsGpj53hYE'),
(38, NULL, 21, '汇腾视频制作公司', '891e89830d05cc0fe7be9f2d607c2b58', 'bc6f6677-15bc-4cd1-aeb4-a34a20373664', 'huiteng@ht.com', '汇腾管理员', 0, '2015-08-04 01:58:21', b'0', '', 1, 'admin', '85385138', '2016-12-21 20:07:14', 3, '2017-01-03 06:05:33', ''),
(39, NULL, 22, '4223665@qq.com', '698d51a19d8a121ce581499d7b701668', 'd68aee4b-14d8-4334-bb73-06517b2808aa', '4223665@qq.com', '4223665@qq.com', 0, '2015-08-05 00:39:04', b'0', NULL, 1, NULL, NULL, NULL, 1, '2015-09-01 16:14:30', NULL),
(40, NULL, 20, 'zxll', '006f52e9102a8d3be2fe5614f42ba989', NULL, NULL, 'zxl', NULL, '2015-08-06 11:35:00', b'1', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(41, NULL, 23, '20345797@qq.com', 'e10adc3949ba59abbe56e057f20f883e', 'c7a093ab-7f46-451e-a6d6-63992ab48a50', '20345797@qq.com', '20345797@qq.com', 0, '2015-08-08 02:16:46', b'0', NULL, 1, NULL, NULL, '2015-08-08 10:18:23', 1, '2015-08-08 10:16:46', NULL),
(43, NULL, 24, 'visual rage', '891e89830d05cc0fe7be9f2d607c2b58', '190e0c31-46c2-41df-8871-1b9e59a5ed58', '1029743561@qq.com', '1029743561@qq.com', 0, '2015-08-10 06:07:59', b'0', NULL, 1, NULL, '18910688677', '2016-12-19 21:50:09', 3, '2016-12-19 22:00:16', NULL),
(44, NULL, 25, '梦心缘工作室', 'f8974bb44b04d9cd8e01b720803b045d', '2042960f-b739-4674-ab43-f56e9e03a357', '499927522@qq.com', '499927522@qq.com', 1, '2015-08-13 10:29:03', b'0', NULL, 1, NULL, '12345678', NULL, 1, '2015-08-14 12:09:14', NULL),
(45, NULL, 26, '313536715@qq.com', '006f52e9102a8d3be2fe5614f42ba989', '33c63983-ca61-4f24-8ae5-a4a728dbc678', '313536715@qq.com', 'Helios', 0, '2015-08-20 05:44:46', b'0', 'Helios', 1, NULL, '186117458**', '2015-08-20 13:57:08', 1, '2015-09-01 14:01:25', NULL),
(46, NULL, 27, '462264505@qq.com', '698d51a19d8a121ce581499d7b701668', '99b287e3-56b3-4179-9d0d-223e8066cc94', '462264505@qq.com', '462264505@qq.com', 0, '2015-08-22 03:58:33', b'0', NULL, 1, NULL, NULL, NULL, 1, '2015-08-22 11:58:33', NULL),
(47, NULL, 28, '1048014094@qq.com', '891e89830d05cc0fe7be9f2d607c2b58', '1bb256b7-7301-4061-8a60-386a9c74c3d4', '1048014094@qq.com', 'zhujianhua', 1, '2015-08-25 14:37:18', b'0', '诸建华', 1, NULL, '13758650615', '2016-11-25 13:59:36', 3, '2016-11-25 13:59:23', NULL),
(48, NULL, 29, 'jiangxuechao@sina.cn', '891e89830d05cc0fe7be9f2d607c2b58', '802f566e-8a8f-4454-b702-fa796eb6c83a', 'jiangxuechao@sina.cn', 'jiangxuechao', 1, '2015-09-01 07:06:03', b'0', '蒋学超', 1, NULL, '13261890741', '2016-11-25 13:57:02', 3, '2016-11-25 13:53:34', NULL),
(49, NULL, 29, 'xgq', '006f52e9102a8d3be2fe5614f42ba989', 'e757684a-7541-458c-9867-8a4422876050', NULL, 'xgq', NULL, '2015-09-02 09:06:14', b'1', NULL, NULL, NULL, NULL, '2015-09-02 17:08:00', 0, '2015-10-26 11:30:53', NULL),
(51, NULL, 31, '597626879@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '55aa3bdf-8620-4ade-a7de-00a666f0733e', '597626879@qq.com', '597626879@qq.com', 0, '2015-09-07 13:38:28', b'0', NULL, 1, NULL, NULL, NULL, 1, '2015-09-08 10:44:56', NULL),
(52, NULL, 32, '93351206@qq.com', '891e89830d05cc0fe7be9f2d607c2b58', '34e9fcd2-720a-4315-9581-65fa944eab2b', '93351206@qq.com', 'liuchengyu', 1, '2015-09-07 14:27:04', b'0', '刘承禹', 1, NULL, '18601220822', '2016-11-25 13:53:06', 3, '2016-11-25 13:52:52', NULL),
(53, NULL, 33, '新影', '891e89830d05cc0fe7be9f2d607c2b58', '59050826-9469-41db-899f-bddb8ee9803a', '156648957@qq.com', 'liuyang', 0, '2015-09-13 03:20:59', b'0', '刘洋', 1, NULL, '13911161996', '2016-12-22 08:27:47', 3, '2016-12-22 08:26:34', NULL),
(57, NULL, 37, 'lxq@ht.com', '202cb962ac59075b964b07152d234b70', 'ab74e2f3-54aa-4c13-a24d-7f1a6f586c43', 'lxq@ht.com', 'lxq@ht.com', 0, '2015-10-16 01:11:20', b'0', NULL, 1, NULL, NULL, '2015-12-05 11:10:14', 1, '2015-12-05 11:09:54', ''),
(58, NULL, 38, 'zhuangw123@qq.com', 'dcc62e31c8030d9488969c5da73d2f16', 'd77cd2ab-b23d-4132-9c7c-13d8e02d3ef7', 'zhuangw123@qq.com', 'zhuangw123@qq.com', 0, '2015-11-20 05:08:30', b'0', NULL, 1, NULL, NULL, '2015-11-20 13:15:44', 2, '2015-11-20 13:08:30', ''),
(59, NULL, 39, '2395402079@qq.com', 'dcc62e31c8030d9488969c5da73d2f16', 'dc7e8acc-22a9-4ffe-82f9-b6b0b45e754a', '2395402079@qq.com', '2395402079@qq.com', 0, '2015-11-20 05:23:54', b'0', NULL, 1, NULL, NULL, NULL, 2, '2015-11-20 13:23:54', ''),
(60, NULL, 40, '406763092@qq.com', 'ec8a0ac533a84cfd96b68d98b2e36410', 'e43e4474-e8f0-4d1c-8838-7967be4d2f97', '406763092@qq.com', '406763092@qq.com', 0, '2015-12-02 03:50:19', b'0', NULL, 1, NULL, NULL, NULL, 1, '2015-12-02 11:50:19', ''),
(61, NULL, 18, 'yanglan', 'b978f605896b76c4b7429647737b9c8c', NULL, 'yanglan@ht.com', 'yanglan', NULL, '2015-12-19 02:46:30', b'1', NULL, NULL, NULL, NULL, NULL, 0, NULL, ''),
(62, NULL, 41, '3408225816@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '33417943-449e-483c-815d-1e34f4f914cc', '3408225816@qq.com', '3408225816@qq.com', 0, '2016-01-02 03:45:52', b'0', NULL, 1, NULL, NULL, '2016-05-03 20:54:55', 1, '2016-08-11 11:28:50', ''),
(63, NULL, 42, 'fannashi@126.com', '891e89830d05cc0fe7be9f2d607c2b58', '2542a003-107a-44c3-9cf3-738cc1af2166', 'fannashi@126.com', '迈纳士管理员', 0, '2016-01-04 03:06:12', b'0', '', 1, NULL, '', '2016-11-25 13:52:25', 3, '2016-11-25 13:52:10', ''),
(64, NULL, 43, 'sifenke@126.com', '891e89830d05cc0fe7be9f2d607c2b58', '09a7cfc8-a85b-40f5-bf0e-fe0511bdd819', 'sifenke@126.com', '斯芬克管理员', 0, '2016-01-04 03:44:52', b'0', '', 1, NULL, '', '2016-11-25 13:58:23', 3, '2016-11-25 13:58:11', ''),
(65, NULL, 44, 'changshoufangzhou@163.com', '891e89830d05cc0fe7be9f2d607c2b58', '3ef28f78-7ca3-40c9-9fe9-a6a751653801', 'changshoufangzhou@163.com', '长寿方舟管理员', 0, '2016-01-04 04:00:42', b'0', '', 1, NULL, '', '2016-11-25 13:51:53', 3, '2016-11-25 13:51:25', ''),
(66, NULL, 45, 'lijingjie_51@163.com', '86b438ffda229ef98bbecbe285d17fb1', 'ee887aa7-7bf6-4244-9c19-acc5ca2f1d61', 'lijingjie_51@163.com', 'lijingjie_51@163.com', 0, '2016-04-10 03:38:05', b'0', NULL, 1, NULL, NULL, '2016-05-23 09:03:05', 2, '2016-05-23 09:02:49', ''),
(67, NULL, 46, 'lijingjiehe@163.com', '86b438ffda229ef98bbecbe285d17fb1', '37bba4e6-8fd0-48fb-a055-1f160f8a9e1b', 'lijingjiehe@163.com', 'lijingjiehe@163.com', 0, '2016-04-10 07:18:32', b'0', NULL, 1, NULL, NULL, NULL, 2, '2017-04-20 15:39:24', ''),
(68, NULL, 47, '470429699@QQ.com', 'a3a2af51a7f6c3f627ae73edf4a18e37', '446e78be-dea2-4fd3-aad4-ff4a4b3e1855', '470429699@QQ.com', '470429699@QQ.com', 0, '2016-04-11 16:51:34', b'0', NULL, 1, NULL, NULL, NULL, 2, '2016-04-12 00:51:34', ''),
(69, NULL, 48, 'test1@ht.com', '81dc9bdb52d04dc20036dbd8313ed055', '8ccbe19d-6008-4bb9-adeb-784b9be04a7a', 'test1@ht.com', 'test1@ht.com', 0, '2016-05-07 15:03:28', b'0', NULL, 1, NULL, NULL, NULL, 1, '2016-05-31 22:48:37', ''),
(75, NULL, 54, 'test2@ht.com', '7cec85c75537840dad40251576e5b757', 'a65d3ec8-246e-47bd-990d-4523a0f76c93', 'test2@ht.com', 'test2@ht.com', 0, '2016-07-10 02:03:23', b'0', NULL, 1, NULL, NULL, '2016-12-14 09:35:33', 1, '2016-12-23 09:10:22', 'opW19wcyauZNbaQOoKMOSwN_tfYw'),
(89, NULL, 67, '3249568058@qq.com', 'b865d77fcc83745a06a315f6a7fbff9e', '207372db-0dbd-4196-8369-6142d15b87dd', '3249568058@qq.com', '3249568058@qq.com', 0, '2016-08-11 07:51:06', b'0', NULL, 1, NULL, NULL, NULL, 2, '2016-08-11 15:51:06', ''),
(90, NULL, 68, 'zhangbo@sobey.com', '6d071901727aec1ba6d8e2497ef5b709', 'e820cb0c-d085-4f0e-80f5-21fdadfb5b6c', 'zhangbo@sobey.com', 'zhangbo@sobey.com', 0, '2016-09-13 02:25:07', b'0', NULL, 1, NULL, NULL, NULL, 1, '2016-09-14 12:46:09', ''),
(91, NULL, 69, '461654008@qq.com', '2495eab9972f6d4bcb8a87a9bf581bec', '2037ae4a-3ac1-46f1-9912-c9f7cdd5cfa5', '461654008@qq.com', '461654008@qq.com', 0, '2016-10-11 09:14:29', b'0', NULL, 1, NULL, NULL, '2016-11-25 10:44:11', 2, '2017-02-23 15:42:45', 'opW19wbvrIwrHXTYlLwZ81tC5tRI'),
(92, NULL, 70, 'majvqiao@filmunion.net', '55675e0d609020e5e5ae7a6f79cd7776', 'bee5a425-0979-4605-a240-23c1f658e5b7', 'majvqiao@filmunion.net', '马驹桥中心小学', 0, '2016-11-24 07:41:23', b'0', '', 1, NULL, '', '2016-11-25 10:37:24', 3, '2016-11-25 13:44:38', ''),
(93, NULL, 71, 'huawei@filmunion.net', '55675e0d609020e5e5ae7a6f79cd7776', '65413239-b63f-42ad-a13a-ee3ec6812dab', 'huawei@filmunion.net', '华为', 0, '2016-11-24 07:54:16', b'0', '', 1, NULL, '', '2016-11-25 13:38:08', 3, '2016-11-25 13:43:41', ''),
(94, NULL, 72, 'gongshang@filmunion.net', '55675e0d609020e5e5ae7a6f79cd7776', '6bd9c5f2-1444-4c1e-bd6e-d0a4a13e53bb', 'gongshang@filmunion.net', '工商', 0, '2016-11-24 07:59:11', b'0', '', 1, NULL, '', '2016-11-25 13:43:25', 3, '2016-11-25 13:43:12', ''),
(95, NULL, 73, 'zhongliang@filmunion.net', '55675e0d609020e5e5ae7a6f79cd7776', '824f6827-f5a2-4e8a-9408-9e3b6ec71f25', 'zhongliang@filmunion.net', '中粮集团', 0, '2016-11-24 08:05:56', b'0', '', 1, NULL, '', '2016-11-25 13:42:57', 3, '2016-11-25 13:42:45', ''),
(96, NULL, 74, '58@filmunion.net', '55675e0d609020e5e5ae7a6f79cd7776', '6154fa19-5810-4da4-abcb-55ba608bb702', '58@filmunion.net', '58同城', 0, '2016-11-24 08:12:23', b'0', '', 1, NULL, '', '2016-11-25 13:42:34', 3, '2016-11-25 13:42:11', ''),
(97, NULL, 75, 'niulanshan@filmunion.net', '55675e0d609020e5e5ae7a6f79cd7776', '3ad49bae-0ad0-4d8d-86ca-a42f3f262414', 'niulanshan@filmunion.net', '牛栏山', 0, '2016-11-24 08:23:17', b'0', '', 1, NULL, '', '2016-11-25 13:41:52', 3, '2016-11-25 13:41:00', ''),
(98, NULL, 76, '1848945126@qq.com', '35e3533488b2c09c0e0b09b252a7de41', 'e74c662e-d4a6-44ca-b13f-c56447080de8', '1848945126@qq.com', '1848945126@qq.com', 0, '2016-11-25 08:30:47', b'0', NULL, 1, NULL, NULL, NULL, 2, '2016-11-25 16:30:47', '');

-- --------------------------------------------------------

--
-- 表的结构 `userrole`
--

CREATE TABLE `userrole` (
  `Id` bigint(20) NOT NULL,
  `UserId` bigint(20) DEFAULT NULL,
  `RoleId` bigint(20) DEFAULT NULL,
  `CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `userrole`
--

INSERT INTO `userrole` (`Id`, `UserId`, `RoleId`, `CreateTime`) VALUES
(14, 33, 11, '2015-07-31 07:38:30'),
(15, 34, 12, '2015-07-31 07:38:55'),
(16, 35, 13, '2015-07-31 08:00:20'),
(17, 36, 14, '2015-08-01 01:38:34'),
(18, 37, 15, '2015-08-01 01:57:20'),
(19, 38, 16, '2015-08-04 01:58:21'),
(20, 39, 18, '2015-08-05 00:39:03'),
(21, 40, 15, '2015-08-06 11:34:59'),
(22, 41, 19, '2015-08-08 02:16:46'),
(23, 43, 20, '2015-08-10 06:07:59'),
(24, 44, 21, '2015-08-13 10:29:03'),
(25, 45, 22, '2015-08-20 05:44:46'),
(26, 46, 23, '2015-08-22 03:58:32'),
(27, 47, 24, '2015-08-25 14:37:18'),
(28, 48, 25, '2015-09-01 07:06:02'),
(29, 49, 25, '2015-09-02 09:06:13'),
(31, 51, 27, '2015-09-07 13:38:28'),
(32, 52, 28, '2015-09-07 14:27:03'),
(33, 53, 29, '2015-09-13 03:20:59'),
(37, 57, 33, '2015-10-16 01:11:20'),
(38, 58, 34, '2015-11-20 05:08:30'),
(39, 59, 35, '2015-11-20 05:23:54'),
(40, 60, 36, '2015-12-02 03:50:19'),
(41, 61, 17, '2015-12-19 02:46:30'),
(42, 62, 38, '2016-01-02 03:45:52'),
(43, 63, 39, '2016-01-04 03:06:11'),
(44, 64, 40, '2016-01-04 03:44:52'),
(45, 65, 41, '2016-01-04 04:00:41'),
(46, 66, 42, '2016-04-10 03:38:04'),
(47, 67, 43, '2016-04-10 07:18:31'),
(48, 68, 44, '2016-04-11 16:51:33'),
(49, 69, 45, '2016-05-07 15:05:28'),
(50, 70, 46, '2016-05-09 14:34:20'),
(51, 71, 47, '2016-05-10 16:01:09'),
(52, 72, 48, '2016-05-10 16:13:52'),
(53, 73, 49, '2016-05-10 22:43:17'),
(54, 74, 50, '2016-06-26 02:59:31'),
(55, 75, 51, '2016-07-10 02:03:22'),
(56, 76, 52, '2016-08-07 23:11:44'),
(62, 83, 58, '2016-08-08 09:15:20'),
(63, 84, 59, '2016-08-10 06:03:27'),
(64, 85, 60, '2016-08-10 06:07:48'),
(65, 86, 61, '2016-08-10 07:04:15'),
(66, 87, 62, '2016-08-10 07:36:20'),
(67, 88, 63, '2016-08-10 08:21:23'),
(68, 89, 64, '2016-08-11 07:51:06'),
(69, 90, 65, '2016-09-13 02:25:06'),
(70, 91, 66, '2016-10-11 09:14:29'),
(71, 92, 67, '2016-11-24 07:41:23'),
(72, 93, 68, '2016-11-24 07:54:16'),
(73, 94, 69, '2016-11-24 07:59:11'),
(74, 95, 70, '2016-11-24 08:05:56'),
(75, 96, 71, '2016-11-24 08:12:22'),
(76, 97, 72, '2016-11-24 08:23:16'),
(77, 98, 73, '2016-11-25 08:30:47');

-- --------------------------------------------------------

--
-- 表的结构 `video`
--

CREATE TABLE `video` (
  `fileID` int(11) NOT NULL COMMENT '文件id',
  `fileOriginUrl` char(255) NOT NULL COMMENT '原始问价地址',
  `fileTranscodedUrl` char(255) NOT NULL COMMENT '转码后的地址',
  `fileThumbUrl` char(255) NOT NULL COMMENT '缩略图',
  `fileOwnerID` int(11) NOT NULL COMMENT '文件拥有者ID',
  `fileParent` int(11) NOT NULL COMMENT '父目录',
  `CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `FileSize` int(11) NOT NULL DEFAULT '0' COMMENT '文件大小',
  `FileType` int(11) NOT NULL DEFAULT '0' COMMENT '0 视频文件 1 图片 2 文档 3 未知其他'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `wall`
--

CREATE TABLE `wall` (
  `Id` int(11) NOT NULL,
  `Fileid` int(11) NOT NULL,
  `Userid` int(11) NOT NULL,
  `Filename` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `wallsort`
--

CREATE TABLE `wallsort` (
  `ID` int(11) NOT NULL,
  `Wallid` int(11) DEFAULT NULL,
  `Sort` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `weixin_js_ticket`
--

CREATE TABLE `weixin_js_ticket` (
  `Id` int(11) NOT NULL,
  `JsapiTicket` varchar(1024) NOT NULL,
  `CreateTime` timestamp NULL DEFAULT NULL,
  `Expires_in` int(11) DEFAULT NULL,
  `NonceStr` varchar(255) DEFAULT NULL,
  `Timestamp` varchar(255) DEFAULT NULL,
  `Signature` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_js_ticket`
--

INSERT INTO `weixin_js_ticket` (`Id`, `JsapiTicket`, `CreateTime`, `Expires_in`, `NonceStr`, `Timestamp`, `Signature`) VALUES
(2, 'kgt8ON7yVITDhtdwci0qeX5KndakJdzs1o2cKolJPemNy_LsF_rkLk92HDbRiMUXvZjK4rVxEyk_pb-5bSgoqw', '2017-06-12 21:14:19', 7200, 'LzvJfHy37hF8Wsj', '1482559793', '52de104d36a17dba056d46d9f84818a20e7c484f');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_token`
--

CREATE TABLE `weixin_token` (
  `Id` int(11) NOT NULL,
  `AccessToken` varchar(1024) NOT NULL,
  `CreateTime` timestamp NULL DEFAULT NULL,
  `Expires_in` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_token`
--

INSERT INTO `weixin_token` (`Id`, `AccessToken`, `CreateTime`, `Expires_in`) VALUES
(3, 'WEHQgTXI1mc-Bx4fwQxL4C-X7wh2gSGpxSxfjELufigfCHiCjDupbJkN4-8gI4uejulyHmeIUYb97uNO0rj91m1YuQmYlfalUb_UDzCUbg0bRBqbIOZC4C9_FDkQY73YXGBiAEADMH', '2017-06-12 21:14:19', 7200);

-- --------------------------------------------------------

--
-- 表的结构 `zone_item`
--

CREATE TABLE `zone_item` (
  `Id` bigint(20) NOT NULL,
  `DomainId` bigint(20) NOT NULL,
  `ObjectId` bigint(20) NOT NULL,
  `Intro` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Weight` float DEFAULT NULL,
  `Type` int(11) DEFAULT NULL,
  `Classical` int(11) NOT NULL DEFAULT '0' COMMENT '0:没申请 1:申请中 2:申请成功',
  `Favorite` int(11) DEFAULT NULL,
  `Portrait` varchar(255) DEFAULT NULL,
  `ReferPrice` float DEFAULT NULL,
  `BasePrice` float DEFAULT NULL,
  `SchemePrice` float DEFAULT NULL,
  `ShotPrice` float DEFAULT NULL,
  `ActorPrice` float DEFAULT NULL,
  `MusicPrice` float DEFAULT NULL,
  `AEPrice` float DEFAULT NULL,
  `ClassicalWeight` float DEFAULT NULL,
  `ViewCount` int(11) NOT NULL DEFAULT '0',
  `Boutique` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zone_item`
--

INSERT INTO `zone_item` (`Id`, `DomainId`, `ObjectId`, `Intro`, `Price`, `Weight`, `Type`, `Classical`, `Favorite`, `Portrait`, `ReferPrice`, `BasePrice`, `SchemePrice`, `ShotPrice`, `ActorPrice`, `MusicPrice`, `AEPrice`, `ClassicalWeight`, `ViewCount`, `Boutique`) VALUES
(32, 16, 377, '图片', 0, 0, 0, 0, 0, 'http://123.57.157.64:8080/tmpfiles/31162315308.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 6, b'0'),
(33, 18, 382, '业务介绍', 0, 0, 0, 0, 0, 'http://123.57.157.64:8080/tmpfiles/31162315308.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 693, b'0'),
(34, 18, 383, '官方制作平台', 0, 0, 0, 0, 0, 'http://123.57.157.64:8080/tmpfiles/31162315308.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 693, b'0'),
(38, 16, 391, '图片', 0, 0, 0, 0, 0, 'http://123.57.157.64:8080/tmpfiles/31162315308.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 2, b'0'),
(71, 18, 451, '通过温馨家庭的画面，展现了中国邮政对人于人之间起到的情感传达的力量。', 0.01, 0, 1, 2, 0, '/fileFolders/zonePic/15-12/6397fc31-dc49-46e2-aba4-dba45e550e37.png', 50000, 50000, 0, 0, 0, 0, 0, 1, 1036, b'1'),
(76, 25, 471, '美好回忆', 230, 0, 1, 3, 0, 'http://123.57.157.64:8080/files/2015-08/img/xpdy4e00a94er0e9_1.jpg', 230, 0, 0, 0, 0, 0, 0, 0, 313, b'0'),
(77, 25, 472, '炫酷达人', 0, 0, 1, 0, 0, 'http://123.57.157.64:8080/files/2015-08/img/4tkxrtk845y14z6s_1.jpg', 320, 0, 0, 0, 0, 0, 0, 0, 294, b'0'),
(78, 29, 533, '85公斤级国际健美冠军曹宇带队到我的工作室学习【蒋氏正脊】初级培训', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 15, b'0'),
(79, 29, 534, '2007年成功医治中国文学艺术界联合会副主席丁荫楠和他的爱人姚萍，而得到肯定与支持，并赠我《丁荫楠电影作品研讨会》书三本', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 2, b'0'),
(81, 29, 536, '2008年进清华大学社区传播脊柱健康文化', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 5, b'0'),
(82, 29, 537, '2008年在清华大学的社区做拯救生命的脊梁——脊柱健康文化讲座', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 6, b'0'),
(84, 29, 539, '2012年5月26日参加中国医师协会第四届全国“治未病”发展论坛，发表：《浅析人体亚健康的根源是——脊柱亚健康》学术论文，还与中国医师协会健康产业委员会副会长夏丽交流并合影留念', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 3, b'0'),
(85, 29, 540, '2012年医治中国环境新闻工作协会秘书长刘国正，并合影留念', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 4, b'0'),
(86, 29, 541, '2013年医治1950年第一批参加抗美援朝的志愿军何宗光英雄，并合影留念（何宗光英雄还特意为我写了【指尖上的智慧】', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 55, b'0'),
(87, 29, 542, '2014年3月在山东泰安参加首届下肢血管病新技术交流会，并在会上发言转播脊柱健康文化新知识', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 7, b'0'),
(88, 29, 543, '2014年6月在北京大学', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 7, b'0'),
(89, 29, 544, '2014年6月在北京大学国际关系学院C座秋林报告厅学习、交流、传播脊柱健康文化知识', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 4, b'0'),
(90, 29, 545, '2014年6月在北京大学国际关系学院C座秋林报告厅与美国谢尔曼脊骨神经医学院院长考迪罗博士相互交流并合影留念', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 5, b'0'),
(91, 29, 546, '2014年8月医治法国传统中医学院院长兼法国中华传统医学交流学会会长马赛并合影留念', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 6, b'0'),
(92, 29, 547, '2014年10月医治少林寺都市禅堂堂主田健弘和中国华侨公益基金会健增蓝天梦想基金管委会主任爱新觉罗·维娜，并合影留念', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 6, b'0'),
(93, 29, 548, '2014年12月30日正式入围cctv影响力栏目', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 4, b'0'),
(94, 29, 549, '2014年11月到日坛饭庄医治索南格西的颈椎病，并赠予我的著作脊柱健康密码——行者的思考，还合影留念', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 3, b'0'),
(95, 29, 550, '2014年受朋友邀请到她的会馆交流脊柱健康文化，给一位德国友人医治颈椎病', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 2, b'0'),
(96, 29, 551, '2014年医治中国天台山慈恩寺住持、国际佛法转播中心秘书长智渡法师并合影留念', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 4, b'0'),
(97, 29, 552, '2014年在北京大学和老师董安立（中美脊骨神经医师学会会长董安立博士）交流学习', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 26, b'0'),
(98, 29, 553, '2015年5月3-4日到山东日照以北京汇医堂中医科学研究院客座教授的身份传授简单一点脊柱健康医学', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 20, b'0'),
(99, 29, 555, '2015年5月29日宁波市重点学科骨外科学学科带头人，宁波大学附属医院骨科脊柱外科主任到我的工作室相互交流脊柱健康密码的发现与解决方案', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 2, b'0'),
(100, 29, 556, '2015年6月29日到扬州泰州医治国中医药的董事长李伟并合影留念', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 2, b'0'),
(101, 29, 554, '2015年5月15到内蒙古包头去分享：拯救生命的脊梁——脊柱健康知识讲座', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 3, b'0'),
(102, 29, 557, '2015年7月与年过古稀的王道长（道医正骨第一人）简单切磋了一下正脊技术', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 7, b'0'),
(103, 29, 662, '到河北香河传播脊柱健康文化', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 6, b'0'),
(104, 29, 663, '参加央视给你一个亿首期创业训练营真人秀节目，得到樊登老师的指点并合影留念', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 5, b'0'),
(105, 29, 664, '到抗美援朝英雄何宗光家中做客', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 53, b'0'),
(106, 29, 665, '和中国经络研究会会长、世界针灸学会联合会副秘书长一起交流学习', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 5, b'0'),
(107, 29, 666, '蒋学超老师', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 6, b'0'),
(108, 29, 667, '矫正患者骨盆', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 4, b'0'),
(109, 29, 668, '为年过古稀的大妈矫正腰椎滑脱（腰椎滑脱小于2度）', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 4, b'0'),
(110, 29, 669, '为三岁小孩矫正脊柱治疗其协调能力与平衡能力', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 4, b'0'),
(111, 29, 670, '为学员传授【蒋氏正脊】初级技术', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 4, b'0'),
(112, 29, 671, '为世界杰出华人艺术家赵龙云矫正颈椎关节', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 3, b'0'),
(113, 29, 672, '为原北京市残疾人联合会主席贾志明医治脊柱病痛——2015年5月11日', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 5, b'0'),
(114, 29, 673, '为战斗英雄史光柱医治脊柱病痛并合影留念（2015年5月30日）', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 4, b'0'),
(115, 29, 686, '医治清华大学出版社领导张励中的脊柱病痛，并合影留念（还为我写了书评：不一样的相遇', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 4, b'0'),
(116, 29, 687, '与刚果共和国驻华大使馆佛斯丹、马友马、蓬巴交流脊柱健康文化并合影留念', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 7, b'0'),
(117, 29, 688, '与青海省果洛州州长蔡浩亮交流学习', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 22, b'0'),
(118, 29, 689, '赠送我的著作给半月谈杂志社主任，中国形象大使王京忠法学博士，交流脊柱健康文化并合影留念', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 4, b'0'),
(119, 29, 690, '赠著作给胡国桥大校并亲切交流', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 8, b'0'),
(120, 29, 691, '赠送我的著作脊柱健康密码——行者的思考给美国纽约华人社团联合会-共同主席乌巴特，交流脊柱健康文化并合影留念', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 5, b'0'),
(121, 29, 693, '赵云龙赠我《富春山居图》——是赵云龙为十八大献礼作品', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 4, b'0'),
(122, 29, 692, '赠著作给文化部艺术家书画院理事谭绍清大校并亲切交谈（2015年6月9号）', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 12, b'0'),
(123, 28, 701, '清三高花茶饼包装盒形象', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 7, b'0'),
(129, 33, 749, '通过大气、激昂的开场视频，为人们展示了中粮、可口可乐企业的精神面貌。', 0, 0, 1, 2, 0, '/fileFolders/zonePic/15-12/536855c7-2bb3-489d-bd6d-a26ae0d44ad7.png', 0, 5000, 10000, 0, 0, 5000, 20000, 1, 974, b'0'),
(130, 33, 750, '使用忽明忽暗的镜头衔切和激昂动感的背景配乐，不尽余力的展示了英菲尼迪车辆精致外观和优越性能。', 0, 0, 1, 2, 0, '/fileFolders/zonePic/16-03/63f22afb-c53e-4148-8175-20ee9f9d75dc.png', 0, 10000, 10000, 0, 0, 10000, 20000, 0, 1031, b'0'),
(136, 18, 444, '通过温馨的故事气氛，贴切的说明了邮政贺卡更真诚的传达了人与人之间的情感。', 0, 0, 1, 0, 0, '/fileFolders/zonePic/15-12/de4b86c5-29f4-46f9-a8e7-c722caba46ef.png', 0, 0, 0, 0, 0, 0, 0, 1, 958, b'1'),
(140, 18, 448, '几段精致的应用场景，几个亮丽的使用客户，清晰展示了广东国际商品交易中心能够在须臾之间满足客户的交易需求。', 0, 0, 1, 2, 1, '/fileFolders/zonePic/15-12/04940593-c574-4ad6-bf13-548ae6afc20e.png', 0, 0, 0, 0, 0, 0, 0, 3, 1087, b'1'),
(141, 18, 396, '通过温馨的画面，展示了ICBC_金融@家面对不同的需求提供哪些实质的平台服务。', 0, 0, 1, 2, 1, '/fileFolders/zonePic/15-12/9a51bb2c-dca0-49b0-b7a3-a6d2956f16c1.png', 0, 0, 0, 0, 0, 0, 0, 3, 1188, b'1'),
(142, 18, 401, '运用美女对年轻人的吸引力，形象贴切的表达了恒远鑫达控股集团对年轻人理财需求给予切实的帮助。', 0, 0, 1, 0, 0, '/fileFolders/zonePic/15-12/26509f60-afbb-43fc-bd94-0a5903d5a3a9.png', 0, 0, 0, 0, 0, 0, 0, 0, 910, b'0'),
(146, 18, 399, '通过古今时代穿梭交替，展示了牛栏山酒的极佳品质。', 0, 0, 1, 2, 1, '/fileFolders/zonePic/15-12/ebc20700-94c0-41da-b233-72094e9cf7be.png', 0, 0, 0, 0, 0, 0, 0, 3, 1119, b'1'),
(147, 18, 398, '通过不同人群和欢快的音乐节奏，展示了神州行越变越好的产品服务和不断突破自我的企业理念。', 0, 0, 1, 1, 0, '/fileFolders/zonePic/15-12/0b4b88c1-3bde-4c02-b9ea-9264a29426e2.png', 0, 0, 0, 0, 0, 0, 0, 1, 885, b'1'),
(151, 18, 453, '农业频道节目片头', 0, 0, 1, 2, 0, '/fileFolders/zonePic/15-12/a9867fb4-d01e-4a69-ab36-159ab1e3da12.png', 0, 0, 0, 0, 0, 0, 0, 3, 185, b'0'),
(152, 18, 395, '使用鲜艳、明亮的画面展示了重庆柑橘产区的美景和橘子诱人的吸引力。', 0, 0, 1, 2, 1, '/fileFolders/zonePic/15-12/a53df709-61e4-462f-bee3-ce0b190d5e02.png', 0, 0, 0, 0, 0, 0, 0, 3, 1049, b'1'),
(155, 20, 476, '这是重庆某农业公司的宣传视频。', 0, 0, 1, 0, 1, '/fileFolders/zonePic/15-10/682b2b35-decc-467a-80ed-8fb86247c4d1.png.png', 0, 0, 0, 0, 0, 0, 0, 0, 589, b'0'),
(158, 17, 512, NULL, 0, 0, 1, 0, 0, 'http://123.57.157.64:8080/files/2015-08/img/sds6zwubwchp8iwm_1.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 595, b'0'),
(161, 17, 473, 'test12', 0, 0, 1, 0, 1, 'http://123.57.157.64:8080/files/2015-07/img/wd144k00f5xv58kw_1.jpg', 1, 1, 0, 0, 0, 0, 0, 1, 440, b'0'),
(162, 17, 765, NULL, 0, 0, 1, 0, 0, 'http://123.57.157.64:8080/files/2015-09/img/yy7ua7nc4ch8k6la_1.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 565, b'0'),
(165, 20, 430, '如此如此', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, b'0'),
(166, 20, 792, NULL, 0, 0, 1, 0, 1, '/fileFolders/zonePic/15-09/b26a1331-2a20-48b9-b670-2a632139477c.png', 0, 0, 0, 0, 0, 0, 0, 3, 600, b'0'),
(167, 17, 782, NULL, 0, 0, 1, 0, 0, 'http://123.57.157.64:8080/files/2015-09/img/sgcwas7m0mjun65d_1.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 604, b'0'),
(168, 42, 817, '未来全新的就诊体验，让科技造福人类！', 0, 0, 1, 0, 2, '/fileFolders/zonePic/16-01/80967dcf-4636-4d30-94cc-657223b40543.png', 0, 0, 0, 0, 0, 0, 0, 0, 542, b'0'),
(171, 42, 818, '未来全新的就诊体验，让科技造福人类！', 0, 0, 1, 0, 1, '/fileFolders/zonePic/16-01/c58fc414-788a-4e48-ac7c-ebb007c2ef9a.png', 0, 0, 0, 0, 0, 0, 0, 0, 732, b'0'),
(177, 33, 831, '画面通过轻快、自由的黑人舞者和干劲十足的摄影师，展示了联盟活动拍摄团队的制作实力和精神风貌。', 0, 0, 1, 0, 0, '/fileFolders/zonePic/16-03/27a5314c-f92f-4b27-a5f7-add99fc02a04.png', 0, 0, 0, 0, 0, 0, 0, 0, 769, b'0'),
(178, 33, 829, '运用极具动感与时代感的画面，传达华为应对资讯传播极具加速的现在及未来而面临新的需求和挑战。', 0, 0, 1, 0, 1, '/fileFolders/zonePic/16-03/5bd47dd1-2d7f-4157-932c-79e17b2dc2bc.png', 0, 0, 0, 0, 0, 0, 0, 4, 813, b'1'),
(180, 24, 834, '通过极具现代感动画画面，温情轻快的语言，讲述了58金融服务与生活密不可分的联系。', 0, 0, 1, 0, 0, '/fileFolders/zonePic/16-03/7d7119e9-e758-42b9-9be3-08b46f626bff.png', 0, 0, 0, 0, 0, 0, 0, 6, 681, b'1'),
(181, 24, 828, '通过3D动画描绘了一场悲壮的荒漠之战与电光火石的灾难，充分展示了3D的制作水平。', 0, 0, 1, 0, 0, '/fileFolders/zonePic/15-12/c3c7d469-d237-4f6e-a147-b95036e5b51d.png', 0, 0, 0, 0, 0, 0, 0, 0, 570, b'0'),
(182, 24, 824, '通过2D动画轻快、活泼的风格方式详细的介绍了重庆大桥的施工建筑的全过程。', 0, 0, 1, 0, 1, '/fileFolders/zonePic/15-12/ff77dfca-7b8d-4d51-9d93-7b4469948672.png', 0, 0, 0, 0, 0, 0, 0, 1, 880, b'0'),
(183, 24, 836, '使用虚实结合的手法，充分展示了联盟制作团队的拍摄、建筑3D的实力水平。', 0, 0, 1, 0, 0, '/fileFolders/zonePic/15-12/0348985f-e8e1-40f7-9f42-10063659125c.png', 0, 0, 0, 0, 0, 0, 0, 0, 747, b'0'),
(184, 24, 825, '通过多个3D动画宣传片的综合展示，表现了联盟动画制作团队3D建筑导览的风格特征与实力水平。', 0, 0, 1, 0, 1, '/fileFolders/zonePic/15-12/b5895f44-740d-4830-8075-5da9cc6aaf54.png', 0, 0, 0, 0, 0, 0, 0, 0, 606, b'0'),
(185, 24, 839, '通过2D动画方式风趣、幽默的讲述了蒋氏正脊手法如何科学、有效的治疗脊椎病和保护脊椎健康。', 0, 0, 1, 0, 0, '/fileFolders/zonePic/15-12/716ea5b4-eec1-4033-b2b2-27b2afd696a1.png', 0, 0, 0, 0, 0, 0, 0, 0, 479, b'0'),
(186, 18, 900, NULL, 0, 0, 1, 0, 0, 'http://123.57.157.64:8080/files/2016-05/img/oqun0ices41g5sb1_1.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 643, b'0'),
(187, 18, 901, NULL, 0, 0, 1, 0, 0, 'http://123.57.157.64:8080/files/2016-05/img/nxqhvjx1671xwsug_1.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 638, b'0'),
(188, 18, 902, '这是一片全球候鸟的栖息地，也是一方亲密恋人梦想中的归宿。', 0, 0, 1, 0, 1, '/fileFolders/zonePic/16-12/1a22225f-0bfc-4112-bad8-286e576c2399.png', 0, 0, 0, 0, 0, 0, 0, 0, 739, b'1'),
(191, 21, 905, '讲述了马驹桥镇中心小学一个小学生从害羞内向到落落大方不断学习成长的故事。', 0, 0, 1, 0, 1, '/fileFolders/zonePic/16-05/56c8531f-dbb3-4eee-bc9b-1e86ebfe638f.png', 0, 0, 0, 0, 0, 0, 0, 4, 625, b'1'),
(195, 33, 909, '针对不同活动需求给予客户多种拍摄制作方案,记录会议盛况,留住感动瞬间.', 0, 0, 1, 0, 0, '/fileFolders/zonePic/16-05/1efb660e-d49b-48bb-bd18-10990921610a.png', 0, 0, 0, 0, 0, 0, 0, 0, 660, b'0'),
(196, 17, 766, 'test', 0, 0, 1, 0, 0, 'http://123.57.157.64:8080/files/2015-07/img/8pkge3jg3zgl7tb4_1.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 203, b'0'),
(198, 21, 904, '一段刻骨铭心的爱情经历，一段难舍难分的别离...', 0, 0, 1, 0, 1, '/fileFolders/zonePic/16-05/7b1c5f4d-dcaa-47a4-ae2b-820ff69db0f0.png', 0, 0, 0, 0, 0, 0, 0, 2, 409, b'1'),
(199, 69, 941, '2016-11-25 10:38:49.296819', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, b'0'),
(200, 33, 969, '通过光与影的变换，将INFINITY的特质表现得淋漓尽致。', 0, 0, 1, 0, 1, '/fileFolders/zonePic/16-12/4ccf9021-6109-4242-bf1d-38dc1859ca1d.png', 0, 0, 0, 0, 0, 0, 0, 3, 413, b'1'),
(201, 33, 970, '柱状全息设计，将中联重科的发展历程和未来使命进行了一次清晰而震撼的展现。', 0, 0, 1, 0, 1, '/fileFolders/zonePic/16-12/a73220a1-e21b-4437-8776-9de7389e77a1.png', 0, 0, 0, 0, 0, 0, 0, 1, 561, b'1'),
(202, 18, 971, '曲江的点点滴滴尽在唯美的画卷里。', 0, 0, 1, 0, 1, '/fileFolders/zonePic/16-12/e1b099c2-e300-4c73-9c88-aa07c87b5957.png', 0, 0, 0, 0, 0, 0, 0, 1, 389, b'1'),
(203, 24, 972, '一段风格化动画形象的描述了联想DOLAB的特点。', 0, 0, 1, 0, 0, '/fileFolders/zonePic/16-12/bf4e7803-171e-4e62-975f-8373653b3765.png', 0, 0, 0, 0, 0, 0, 0, 5, 316, b'1'),
(204, 24, 974, '一个儿童在出租车上的奇妙幻想', 0, 0, 1, 0, 1, '/fileFolders/zonePic/16-12/92c0d807-a90a-436e-b1fb-5b171a6814a5.png', 0, 0, 0, 0, 0, 0, 0, 3, 263, b'1'),
(205, 18, 975, '从各个层面和各个视角，清晰、生动的展示了延庆区在学习型城区方面所取得的巨大成就。', 0, 0, 1, 0, 1, '/fileFolders/zonePic/16-12/85329a1b-3451-47fe-8cb6-5b1082c24193.png', 0, 0, 0, 0, 0, 0, 0, 0, 518, b'1'),
(206, 20, 958, NULL, 0, 0, 1, 0, 0, '/fileFolders/zonePic/16-12/92c0d807-a90a-436e-b1fb-5b171a6814a5.png', 0, 0, 0, 0, 0, 0, 0, 0, 174, b'0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apply_money`
--
ALTER TABLE `apply_money`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `attachment_protect`
--
ALTER TABLE `attachment_protect`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `collection_producer`
--
ALTER TABLE `collection_producer`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `collection_video`
--
ALTER TABLE `collection_video`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `comment_video`
--
ALTER TABLE `comment_video`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `contractattachment`
--
ALTER TABLE `contractattachment`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `contractclips`
--
ALTER TABLE `contractclips`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `contractclipshistory`
--
ALTER TABLE `contractclipshistory`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `contracteventlog`
--
ALTER TABLE `contracteventlog`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `contracthistory`
--
ALTER TABLE `contracthistory`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `contractreply`
--
ALTER TABLE `contractreply`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `contractsegment`
--
ALTER TABLE `contractsegment`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `contractSegmentLog`
--
ALTER TABLE `contractSegmentLog`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `contractusergroup`
--
ALTER TABLE `contractusergroup`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `contract_log_notify`
--
ALTER TABLE `contract_log_notify`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `contract_order`
--
ALTER TABLE `contract_order`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `domain`
--
ALTER TABLE `domain`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `extendStorage_order`
--
ALTER TABLE `extendStorage_order`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `filecache`
--
ALTER TABLE `filecache`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `finalvideo`
--
ALTER TABLE `finalvideo`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `finalvideohistory`
--
ALTER TABLE `finalvideohistory`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `focus`
--
ALTER TABLE `focus`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `followerattachment`
--
ALTER TABLE `followerattachment`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `groupuser`
--
ALTER TABLE `groupuser`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `indexbanner`
--
ALTER TABLE `indexbanner`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `leave_msg`
--
ALTER TABLE `leave_msg`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `manage_storage`
--
ALTER TABLE `manage_storage`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `manage_trade`
--
ALTER TABLE `manage_trade`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `manage_user`
--
ALTER TABLE `manage_user`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `markpoint`
--
ALTER TABLE `markpoint`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `membershiptax_order`
--
ALTER TABLE `membershiptax_order`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `object`
--
ALTER TABLE `object`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `order_log`
--
ALTER TABLE `order_log`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `platformSetting`
--
ALTER TABLE `platformSetting`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `platform_msg`
--
ALTER TABLE `platform_msg`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `projecteventlog`
--
ALTER TABLE `projecteventlog`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `projectsegment`
--
ALTER TABLE `projectsegment`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `rechargeAccount_order`
--
ALTER TABLE `rechargeAccount_order`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `registeridentity`
--
ALTER TABLE `registeridentity`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `requirement`
--
ALTER TABLE `requirement`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `requirementattachment`
--
ALTER TABLE `requirementattachment`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `requirementreply`
--
ALTER TABLE `requirementreply`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk` (`ReplyGroup`);

--
-- Indexes for table `requirement_follower`
--
ALTER TABLE `requirement_follower`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `requirement_reply_group`
--
ALTER TABLE `requirement_reply_group`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk1` (`RequirementId`);

--
-- Indexes for table `requirement_segment`
--
ALTER TABLE `requirement_segment`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `requirement_template`
--
ALTER TABLE `requirement_template`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `resourceshare`
--
ALTER TABLE `resourceshare`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk2` (`ShareDomainId`);

--
-- Indexes for table `reviewvideo`
--
ALTER TABLE `reviewvideo`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `reviewvideohistory`
--
ALTER TABLE `reviewvideohistory`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `right`
--
ALTER TABLE `right`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `roleright`
--
ALTER TABLE `roleright`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `scheme`
--
ALTER TABLE `scheme`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `schemehistory`
--
ALTER TABLE `schemehistory`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `script`
--
ALTER TABLE `script`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `scripthistory`
--
ALTER TABLE `scripthistory`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `segment`
--
ALTER TABLE `segment`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`Item`);

--
-- Indexes for table `setting_channel`
--
ALTER TABLE `setting_channel`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `setting_classical`
--
ALTER TABLE `setting_classical`
  ADD PRIMARY KEY (`ZoneItemId`);

--
-- Indexes for table `setting_producer`
--
ALTER TABLE `setting_producer`
  ADD PRIMARY KEY (`DomainId`);

--
-- Indexes for table `share`
--
ALTER TABLE `share`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `sharedomain`
--
ALTER TABLE `sharedomain`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `sharetypeuser`
--
ALTER TABLE `sharetypeuser`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `shareuser`
--
ALTER TABLE `shareuser`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `shareusercache`
--
ALTER TABLE `shareusercache`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `storage_share`
--
ALTER TABLE `storage_share`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `userrole`
--
ALTER TABLE `userrole`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`fileID`);

--
-- Indexes for table `wall`
--
ALTER TABLE `wall`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `wallsort`
--
ALTER TABLE `wallsort`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `weixin_js_ticket`
--
ALTER TABLE `weixin_js_ticket`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `weixin_token`
--
ALTER TABLE `weixin_token`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `zone_item`
--
ALTER TABLE `zone_item`
  ADD PRIMARY KEY (`Id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `apply_money`
--
ALTER TABLE `apply_money`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `attachment_protect`
--
ALTER TABLE `attachment_protect`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- 使用表AUTO_INCREMENT `category`
--
ALTER TABLE `category`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- 使用表AUTO_INCREMENT `collection_producer`
--
ALTER TABLE `collection_producer`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- 使用表AUTO_INCREMENT `collection_video`
--
ALTER TABLE `collection_video`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `comment_video`
--
ALTER TABLE `comment_video`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- 使用表AUTO_INCREMENT `contract`
--
ALTER TABLE `contract`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- 使用表AUTO_INCREMENT `contractattachment`
--
ALTER TABLE `contractattachment`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
--
-- 使用表AUTO_INCREMENT `contractclips`
--
ALTER TABLE `contractclips`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `contractclipshistory`
--
ALTER TABLE `contractclipshistory`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `contracteventlog`
--
ALTER TABLE `contracteventlog`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=508;
--
-- 使用表AUTO_INCREMENT `contracthistory`
--
ALTER TABLE `contracthistory`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `contractreply`
--
ALTER TABLE `contractreply`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `contractsegment`
--
ALTER TABLE `contractsegment`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `contractSegmentLog`
--
ALTER TABLE `contractSegmentLog`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `contractusergroup`
--
ALTER TABLE `contractusergroup`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;
--
-- 使用表AUTO_INCREMENT `contract_log_notify`
--
ALTER TABLE `contract_log_notify`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `contract_order`
--
ALTER TABLE `contract_order`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- 使用表AUTO_INCREMENT `domain`
--
ALTER TABLE `domain`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- 使用表AUTO_INCREMENT `extendStorage_order`
--
ALTER TABLE `extendStorage_order`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- 使用表AUTO_INCREMENT `favorite`
--
ALTER TABLE `favorite`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- 使用表AUTO_INCREMENT `filecache`
--
ALTER TABLE `filecache`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `finalvideo`
--
ALTER TABLE `finalvideo`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `finalvideohistory`
--
ALTER TABLE `finalvideohistory`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `focus`
--
ALTER TABLE `focus`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `followerattachment`
--
ALTER TABLE `followerattachment`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `group`
--
ALTER TABLE `group`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `groupuser`
--
ALTER TABLE `groupuser`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `indexbanner`
--
ALTER TABLE `indexbanner`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;
--
-- 使用表AUTO_INCREMENT `leave_msg`
--
ALTER TABLE `leave_msg`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- 使用表AUTO_INCREMENT `manage_storage`
--
ALTER TABLE `manage_storage`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;
--
-- 使用表AUTO_INCREMENT `manage_trade`
--
ALTER TABLE `manage_trade`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;
--
-- 使用表AUTO_INCREMENT `manage_user`
--
ALTER TABLE `manage_user`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;
--
-- 使用表AUTO_INCREMENT `markpoint`
--
ALTER TABLE `markpoint`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- 使用表AUTO_INCREMENT `membershiptax_order`
--
ALTER TABLE `membershiptax_order`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `object`
--
ALTER TABLE `object`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=979;
--
-- 使用表AUTO_INCREMENT `order`
--
ALTER TABLE `order`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- 使用表AUTO_INCREMENT `order_log`
--
ALTER TABLE `order_log`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=651;
--
-- 使用表AUTO_INCREMENT `platformSetting`
--
ALTER TABLE `platformSetting`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `platform_msg`
--
ALTER TABLE `platform_msg`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=488;
--
-- 使用表AUTO_INCREMENT `project`
--
ALTER TABLE `project`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `projecteventlog`
--
ALTER TABLE `projecteventlog`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `projectsegment`
--
ALTER TABLE `projectsegment`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `rechargeAccount_order`
--
ALTER TABLE `rechargeAccount_order`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `registeridentity`
--
ALTER TABLE `registeridentity`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- 使用表AUTO_INCREMENT `requirement`
--
ALTER TABLE `requirement`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;
--
-- 使用表AUTO_INCREMENT `requirementattachment`
--
ALTER TABLE `requirementattachment`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- 使用表AUTO_INCREMENT `requirementreply`
--
ALTER TABLE `requirementreply`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
--
-- 使用表AUTO_INCREMENT `requirement_follower`
--
ALTER TABLE `requirement_follower`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
--
-- 使用表AUTO_INCREMENT `requirement_reply_group`
--
ALTER TABLE `requirement_reply_group`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- 使用表AUTO_INCREMENT `requirement_segment`
--
ALTER TABLE `requirement_segment`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;
--
-- 使用表AUTO_INCREMENT `requirement_template`
--
ALTER TABLE `requirement_template`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `resourceshare`
--
ALTER TABLE `resourceshare`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=405;
--
-- 使用表AUTO_INCREMENT `reviewvideo`
--
ALTER TABLE `reviewvideo`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `reviewvideohistory`
--
ALTER TABLE `reviewvideohistory`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `right`
--
ALTER TABLE `right`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- 使用表AUTO_INCREMENT `role`
--
ALTER TABLE `role`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- 使用表AUTO_INCREMENT `roleright`
--
ALTER TABLE `roleright`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1611;
--
-- 使用表AUTO_INCREMENT `scheme`
--
ALTER TABLE `scheme`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `schemehistory`
--
ALTER TABLE `schemehistory`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `script`
--
ALTER TABLE `script`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `scripthistory`
--
ALTER TABLE `scripthistory`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `segment`
--
ALTER TABLE `segment`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `setting_channel`
--
ALTER TABLE `setting_channel`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- 使用表AUTO_INCREMENT `share`
--
ALTER TABLE `share`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- 使用表AUTO_INCREMENT `sharedomain`
--
ALTER TABLE `sharedomain`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `sharetypeuser`
--
ALTER TABLE `sharetypeuser`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `shareuser`
--
ALTER TABLE `shareuser`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- 使用表AUTO_INCREMENT `shareusercache`
--
ALTER TABLE `shareusercache`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=552;
--
-- 使用表AUTO_INCREMENT `storage_share`
--
ALTER TABLE `storage_share`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `tag`
--
ALTER TABLE `tag`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- 使用表AUTO_INCREMENT `userrole`
--
ALTER TABLE `userrole`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- 使用表AUTO_INCREMENT `video`
--
ALTER TABLE `video`
  MODIFY `fileID` int(11) NOT NULL AUTO_INCREMENT COMMENT '文件id';
--
-- 使用表AUTO_INCREMENT `wall`
--
ALTER TABLE `wall`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `wallsort`
--
ALTER TABLE `wallsort`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `weixin_js_ticket`
--
ALTER TABLE `weixin_js_ticket`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `weixin_token`
--
ALTER TABLE `weixin_token`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `zone_item`
--
ALTER TABLE `zone_item`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;
--
-- 限制导出的表
--

--
-- 限制表 `requirement_reply_group`
--
ALTER TABLE `requirement_reply_group`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`RequirementId`) REFERENCES `requirement` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
