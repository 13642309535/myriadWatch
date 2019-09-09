-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2019 年 09 月 06 日 12:49
-- 服务器版本: 5.5.20
-- PHP 版本: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `myriadwatch`
--

-- --------------------------------------------------------

--
-- 表的结构 `administration`
--

CREATE TABLE IF NOT EXISTS `administration` (
  `phone` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `administration`
--

INSERT INTO `administration` (`phone`, `password`, `time`) VALUES
('13642309535', '1234567', '2019,9,6');

-- --------------------------------------------------------

--
-- 表的结构 `detailpage`
--

CREATE TABLE IF NOT EXISTS `detailpage` (
  `data_goodid` int(100) NOT NULL,
  `img` varchar(10000) NOT NULL,
  `s_goods_name` varchar(200) NOT NULL,
  `fenqi_price` double NOT NULL,
  `s_price` double NOT NULL,
  `market_price` double NOT NULL,
  `s_shop` varchar(100) NOT NULL,
  `storeNumber` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `detailpage`
--

INSERT INTO `detailpage` (`data_goodid`, `img`, `s_goods_name`, `fenqi_price`, `s_price`, `market_price`, `s_shop`, `storeNumber`) VALUES
(385, 'https://image8.wbiao.co/shop/c7b1285ee380485f9b9743f3495c07c7.jpg?x-oss-process=image/resize,m_pad,w_1000,h_1000,color_ffffff/watermark,image_c2hvcC9sb2dvLWljb24ucG5n,t_100,g_center&https://image8.wbiao.co/shop/201705_23_T006_407_11_033_00_24423.jpg?x-oss-process=image/resize,m_pad,w_1000,h_1000,color_ffffff/watermark,image_c2hvcC9sb2dvLWljb24ucG5n,t_100,g_center&https://image8.wbiao.co/shop/201705_23_T006_407_11_033_00_23574.jpg?x-oss-process=image/resize,m_pad,w_1000,h_1000,color_ffffff/watermark,image_c2hvcC9sb2dvLWljb24ucG5n,t_100,g_center&https://image8.wbiao.co/shop/201705_23_T006_407_11_033_00_19199.jpg?x-oss-process=image/resize,m_pad,w_1000,h_1000,color_ffffff/watermark,image_c2hvcC9sb2dvLWljb24ucG5n,t_100,g_center&https://image8.wbiao.co/shop/201705_23_T006_407_11_033_00_79114.jpg?x-oss-process=image/resize,m_pad,w_1000,h_1000,color_ffffff/watermark,image_c2hvcC9sb2dvLWljb24ucG5n,t_100,g_center&https://image8.wbiao.co/shop/2ad2efd2ec22463b95ea69bb3d637f7a.png?x-oss-process=image/resize,m_pad,w_1000,h_1000,color_ffffff/watermark,image_c2hvcC9sb2dvLWljb24ucG5n,t_100,g_center', '【天梭原装正品，全球联保两年】天梭TISSOT-力洛克系列T006.407.11.033.00 自动机械男表', 306.7, 3680, 4600, '天梭TISSOT', 100),
(386, 'https://image8.wbiao.co/shop/8200ea5366d647acb3b4559694d4fbcd.jpg?x-oss-process=image/resize,m_pad,w_1000,h_1000,color_ffffff&https://image8.wbiao.co/shop/c06bd7cb301c4d91ad8ed01b94d43e80.jpg?x-oss-process=image/resize,m_pad,w_1000,h_1000,color_ffffff&https://image8.wbiao.co/shop/c0fa22c052a2420da5715fd89fb1d273.jpg?x-oss-process=image/resize,m_pad,w_1000,h_1000,color_ffffff&https://image8.wbiao.co/shop/1e5b36b80bfe4a308aaff4554bf717d6.jpg?x-oss-process=image/resize,m_pad,w_1000,h_1000,color_ffffff&https://image8.wbiao.co/shop/201411_10_3390_152_20_16_25_34159.jpg?x-oss-process=image/resize,m_pad,w_1000,h_1000,color_ffffff&https://image8.wbiao.co/shop/201411_10_3390_152_20_16_25_26610.jpg?x-oss-process=image/resize,m_pad,w_1000,h_1000,color_ffffff&https://image8.wbiao.co/shop/201411_10_3390_152_20_16_25_33782.jpg?x-oss-process=image/resize,m_pad,w_1000,h_1000,color_ffffff', '瑞士艺术制表大师爱宝时（EPOS）-Emotion情感系列 罗马假期-水蓝版 3390.152.20.16.25 机械男表', 480.8, 5770, 9300, '瑞士爱宝时官方旗舰店', 200),
(387, 'https://image8.wbiao.co/shop/23ba86255c5245dc88d3cc116b127c2c.jpg?x-oss-process=image/resize,m_pad,w_1000,h_1000,color_ffffff&https://image8.wbiao.co/shop/9dd934293ba34302a7d6d65021d11ada.jpg?x-oss-process=image/resize,m_pad,w_1000,h_1000,color_ffffff&https://image8.wbiao.co/shop/8c832ead2c414945b4db786a4d235b9a.jpg?x-oss-process=image/resize,m_pad,w_1000,h_1000,color_ffffff&https://image8.wbiao.co/shop/9dd934293ba34302a7d6d65021d11ada.jpg?x-oss-process=image/resize,m_pad,w_1000,h_1000,color_ffffff&https://image8.wbiao.co/shop/22e5371465a2456e9eda8039b7cd136e.jpg?x-oss-process=image/resize,m_pad,w_1000,h_1000,color_ffffff', '瑞士艺术制表大师爱宝时（EPOS）-Emotion情感系列 罗马假期-雪白版 3390.152.20.10.30 机械男表', 511.7, 6140, 9300, '瑞士爱宝时官方旗舰店', 300);

-- --------------------------------------------------------

--
-- 表的结构 `listpage`
--

CREATE TABLE IF NOT EXISTS `listpage` (
  `imgGood` varchar(200) NOT NULL,
  `schoolOpenImg` varchar(200) NOT NULL,
  `schoolOpenPrice` double NOT NULL,
  `fenqi_price` double NOT NULL,
  `s_price` double NOT NULL,
  `s_goods_name` varchar(200) NOT NULL,
  `goods_sale1` varchar(200) NOT NULL,
  `goods_sale2` double NOT NULL,
  `s_shop` varchar(200) NOT NULL,
  `goodsID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`goodsID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=673 ;

--
-- 转存表中的数据 `listpage`
--

INSERT INTO `listpage` (`imgGood`, `schoolOpenImg`, `schoolOpenPrice`, `fenqi_price`, `s_price`, `s_goods_name`, `goods_sale1`, `goods_sale2`, `s_shop`, `goodsID`) VALUES
('//image8.wbiao.co/shop/c7b1285ee380485f9b9743f3495c07c7.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 3496, 306.7, 3680, '【天梭原装正品，全球联保两年】天梭TISSOT-力洛克系列T006.407.11.033.00 自动机械男表', '80小时动储', 6626, '天梭TISSOT', 385),
('//image8.wbiao.co/shop/28cc3cbbf68a49afb3186dc8bef4c345.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 4970, 480.8, 5770, '瑞士艺术制表大师爱宝时（EPOS）-Emotion情感系列 罗马假期-水蓝版 3390.152.20.16.25 机械男表', '水蓝版', 5375, '瑞士爱宝时官方旗舰店', 386),
('//image8.wbiao.co/shop/d5f66e5fef0247f099b76840941958e1.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 5240, 511.7, 6140, '瑞士艺术制表大师爱宝时（EPOS）-Emotion情感系列 罗马假期-雪白版 3390.152.20.10.30 机械男表', '雪白版', 4808, '瑞士爱宝时官方旗舰店', 387),
('//image8.wbiao.co/shop/23ba86255c5245dc88d3cc116b127c2c.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 4660, 455, 5460, '【绿蛟龙】纯正瑞士品牌 迪沃斯DAVOSA-Diving 潜水系列 Ternos 特诺斯潜行者 墨玉绿 16155570 自', '', 3548, '瑞士迪沃斯官方旗舰店', 388),
('//image8.wbiao.co/shop/6a49448ba5704a6184156eb876b1b4e6.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 4660, 455, 5460, '【黑蛟龙】纯正瑞士品牌 迪沃斯DAVOSA-Diving 潜水系列 Ternos 特诺斯潜行者 深空黑 16155550 自', '黑蛟龙', 2785, '瑞士迪沃斯官方旗舰店', 389),
('//image8.wbiao.co/shop/00027ee065b1490abbabb2d21642afe5.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 3496, 306.7, 3680, '【天梭原装正品，全球联保两年】 天梭TISSOT-力洛克系列 T006.407.11.053.00 机械男表', '80小时动储', 3617, '天梭TISSOT', 390),
('//image8.wbiao.co/shop/110556385610467c8180e0a9e52a8147.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 583.3, 6999, '德国高级独立制表品牌：格拉苏蒂·莫勒Muehle·Glashuette-Sporty  运动系列 M1-25-21-LB 29er 商务机', '商务休闲随心搭配', 2558, '德国莫勒官方旗舰店', 391),
('//image8.wbiao.co/shop/fc0cd7f2a9e2452cbd83a13d4338bea0.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 1900, 175, 2100, '法国国民腕表品牌：Michel Herbelin赫柏林  Classiques经典系列  永恒绅士  12443/S01  男士石英表', '', 2217, '法国赫柏林官方旗舰店', 392),
('//image8.wbiao.co/shop/824dd16ad6444e9f8b124c04a563f30a.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 4496, 408, 4896, '爆款！纯正瑞士品牌 迪沃斯DAVOSA-Heritage传统系列 Classic 经典机械 绅士蓝影 16145615 自动机械', '儒雅绅士', 723, '瑞士迪沃斯官方旗舰店', 393),
('//image8.wbiao.co/shop/b1276261f397498f83c1d64904cd1e09.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 22990, 2016.7, 24200, '[瑞士原装正品，全球联保]欧米茄Omega-碟飞系列 424.10.37.20.02.001 机械男表', '', 2722, '欧米茄OMEGA', 394),
('//image8.wbiao.co/shop/2725bd17baa74ff3beebcfdaf8c978bd.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 18400, 1766.7, 21200, '库尔沃火焰纹款 拥有拉丁血统的瑞士腕表品牌：瑞士库尔沃CYS-Historiador 历史学家系列 古董', '古董手绘火焰纹', 575, '瑞士库尔沃官方旗舰店', 395),
('//image8.wbiao.co/shop/d8198583a6f74aeea543f3befea5db44.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 32500, 3066.7, 36800, '库尔沃宝玑逆跳款：瑞士库尔沃CYS-Historiador 历史学家系列 Retrogrado 3194.1A(黑色表带) 机械男', '宝玑逆跳 买即送豪礼', 558, '瑞士库尔沃官方旗舰店', 396),
('//image8.wbiao.co/shop/5b2918fac97e4b6181297ace2d332a23.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 371.3, 4455, '法国国民腕表品牌：Michel Herbelin赫柏林  Metropole大都会系列  诺曼底公爵  1643/08   男士机械', '咨询客服送钢带', 1414, '法国赫柏林官方旗舰店', 397),
('//image8.wbiao.co/shop/be30c4da13c8488a98a38bf901358578.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 16450, 1579.2, 18950, '【德国海军定制款】德国高级独立制表品牌：格拉苏蒂莫勒Muehle·Glashuette Nautical Wristwatches ', '运动爱好者必备', 487, '德国莫勒官方旗舰店', 398),
('//image8.wbiao.co/shop/2405f3390e564a8f80cdcc941899e27b.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 6700, 666.7, 8000, '瑞士艺术制表大师爱宝时（EPOS）-Emotion情感系列 日夜无间 3390.302.20.38.25 机械男表', '日夜无间', 1268, '瑞士爱宝时官方旗舰店', 399),
('//image8.wbiao.co/shop/8a033d3eb6504297b0c8cca50c10af61.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 2850, 245.8, 2950, '【魏大勋同款】西铁城Citizen-光动能男表系列 BX1001-89L 万年历男表', '万年历/世界时', 114, '西铁城官方旗舰店', 400),
('//image8.wbiao.co/shop/4f3abdf707cd4390beabd94c0e46a156.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/3f1f3b1ddbe74d64baa00d8317e44a11.png', 12050, 1062.5, 12750, '浪琴longines-名匠系列 L2.628.4.78.3 机械男表', '', 2183, '浪琴LONGINES', 401),
('//image8.wbiao.co/shop/d63aec1aadcc427ea3d414e6f4fb943b.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/3f1f3b1ddbe74d64baa00d8317e44a11.png', 8900, 858.3, 10300, '【原名帝玛】拓天马TUTIMA-Flieger飞行员系列 沙漠猛禽 6105-03 自动机械男表', '', 14, '德国拓天马官方旗舰店', 402),
('//image8.wbiao.co/shop/c30ca9c868604b87aaca29bfea874794.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 12760, 1113.3, 13360, '泰格豪雅(TAG HEUER)-竞潜AQUARACER系列 WAY2010.BA0927  机械男表', '', 289, '泰格豪雅TAG HEUER', 403),
('//image8.wbiao.co/shop/6ce15441c50a4aa5aac744d10208a546.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 15240, 1320, 15840, '泰格豪雅(TAG HEUER)-竞潜AQUARACER系列 WAY201B.BA0927  机械男表', '', 363, '泰格豪雅TAG HEUER', 404),
('//image8.wbiao.co/shop/e6c996cd741d41b58dff349448327657.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 8110, 792.5, 9510, '【爆款】德国高级独立制表品牌：格拉苏蒂Muehle·Glashuette-Sporty  运动系列 M1-37-47-MB 机械男', '', 127, '德国莫勒官方旗舰店', 405),
('//image8.wbiao.co/shop/bc4b69ded08c43b9a14b3ab1167eba36.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 12920, 1235, 14820, '源自星空的浪漫！瑞士艺术制表大师爱宝时（EPOS）-Emotion情感系列 浪漫星月3391.832.20.16.30 ', '浪漫星月', 1594, '瑞士爱宝时官方旗舰店', 406),
('//image8.wbiao.co/shop/8d6b77825a0844d7a3e37038a90e9e2c.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/3f1f3b1ddbe74d64baa00d8317e44a11.png', 10500, 1008.3, 12100, '【原名帝玛】拓天马TUTIMA-M2运动 Coastline海岸线系列 假日海岸 6150-02 自动机械男表', '', 19, '德国拓天马官方旗舰店', 407),
('//image8.wbiao.co/shop/6a1909c0f6154d229ec33cc709f65dec.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 12020, 1110, 13320, '豪利时Oris- 潜水AQUIS系列 733-7730-4157M 日历机械腕表 2018新品', '', 37, '瑞士豪利时官方旗舰店', 408),
('//image8.wbiao.co/shop/f250fc8634cd4bad998f8d772eafbd4c.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 14695, 1341.7, 16100, '帝舵（TUDOR）-骏珏系列星期日历型 56000-68060银色 自动机械男表', '', 486, '帝舵TUDOR', 409),
('//image8.wbiao.co/shop/a2a92409d7f24677bcb745d7a03606d4.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 6500, 566.7, 6800, '梅花Titoni-Air Master空霸系列 83909 S-063 机械男表', '', 739, '梅花旗舰店', 410),
('//image8.wbiao.co/shop/4ed6a66fc1e5492b81c06377331cce2e.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 1900, 175, 2100, '法国国民腕表品牌：Michel Herbelin赫柏林  City都市系列  蓝色星空  19515/15  男士石英表', '', 1589, '法国赫柏林官方旗舰店', 411),
('//image8.wbiao.co/shop/dcc9a32d470b47cda4f7436635e2899c.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 6090, 532.5, 6390, '梅花Titoni-Air Master空霸系列 83909 S-354 机械男表', '', 704, '梅花旗舰店', 412),
('//image8.wbiao.co/shop/1a846b59a21a4ebba413c6b19dccd97d.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 5166.7, 62000, '瑞士柏高Paul Picot -Atelier 美学家系列  “迦南美地” P0482.SG.1022.2001 世界时机械男表（限量300', '', 41, '瑞士柏高官方旗舰店', 413),
('//image8.wbiao.co/shop/f11e52f51a7a4a27a54eb254343a032b.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 2400, 28800, '万国IWC-柏涛菲诺系列 IW356501 机械男表', '', 216, '万国IWC', 414),
('//image8.wbiao.co/shop/b786c00fe3794f11b82d8e27c15af7a6.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 2450, 29400, '帝舵（TUDOR）-骏珏系列星期日历型 56003-68063香槟色10钻 自动机械男表', '', 364, '帝舵TUDOR', 415),
('//image8.wbiao.co/shop/6f16ce22b2c047dca584b907239f63ca.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/3f1f3b1ddbe74d64baa00d8317e44a11.png', 12390, 1090.8, 13090, '浪琴Longines-名匠系列 L2.628.4.78.6 机械男表', '', 1566, '浪琴LONGINES', 416),
('//image8.wbiao.co/shop/398b104f76eb4a18bc1caa08e50436b3.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 130, 1560, '纯正瑞士品牌 迪沃斯DAVOSA-Heritage传统系列 Amaranto 阿马兰托极简版 16248015 男士商务休闲石英', '', 2667, '瑞士迪沃斯官方旗舰店', 417),
('//image8.wbiao.co/shop/4819fb165fb447a3a41c134068e6e7e5.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 10780, 990, 11880, '豪利时Oris- 潜水AQUIS系列 733-7730-4157R 日历机械腕表 2018新品 ', '', 45, '瑞士豪利时官方旗舰店', 418),
('//image8.wbiao.co/shop/9a50feb1cf1847728844804bf88c7dc9.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/3f1f3b1ddbe74d64baa00d8317e44a11.png', 10500, 1008.3, 12100, '【原名帝玛】拓天马TUTIMA-M2运动 Coastline海岸线系列 深灰天幕 6150-04 自动机械男表', '', 15, '德国拓天马官方旗舰店', 419),
('//image8.wbiao.co/shop/c85485b6382641fbb0289653f6b0f92a.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 934.2, 11210, '【2018年新品】豪度CODEX-极臻系列 1101.26.0311.L01 自动机械男表（青铜表壳）', '', 8, '商务品牌店', 420),
('//image8.wbiao.co/shop/e795856767f846b99a6d3a5ec48c95e4.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/3f1f3b1ddbe74d64baa00d8317e44a11.png', 27200, 2391.7, 28700, '万国IWC-飞行员系列 IW327002 男士自动机械表（新型号IW327012）', '', 29, '万国IWC', 421),
('//image8.wbiao.co/shop/b68b8bf65811426ca53588ce7bdc18a6.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/3f1f3b1ddbe74d64baa00d8317e44a11.png', 7030, 644.2, 7730, '浪琴Longines-瑰丽系列 L4.821.4.11.6 机械男表', '', 781, '浪琴LONGINES', 422),
('//image8.wbiao.co/shop/dc1d4f10f3584c6889cbd2ae86e0128d.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 22135, 1941.7, 23300, '[瑞士原装正品，全球联保]欧米茄Omega-碟飞系列 424.13.40.20.02.001 机械男表', '', 705, '欧米茄OMEGA', 423),
('//image8.wbiao.co/shop/8f24d57f12264415ac3d580c4df6fee8.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 580, 6960, '梅花Titoni-Air Master空霸系列 83909 SY-063 机械男表', '', 745, '梅花旗舰店', 424),
('//image8.wbiao.co/shop/d941218b4954480eab45ae62ce453896.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 463.3, 5560, '汉米尔顿Hamilton-爵士系列  开心 H32565555 机械男表', '', 614, '汉米尔顿HAMILTON', 425),
('//image8.wbiao.co/shop/f3b3345c66e94d6ca7a81c16bf11e834.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 12840, 1228.3, 14740, '【销量冠军】德国高级独立制表品牌：格拉苏蒂莫勒Muehle·Glashuette Classical 经典系列-日耳曼', '双日历', 544, '德国莫勒官方旗舰店', 426),
('//image8.wbiao.co/shop/bed605e03147469f82befeec36587ab7.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 1532, 136, 1632, '阿玛尼-时尚男表 AR2411 石英男表', '', 775, '阿玛尼ARMANI', 427),
('//image8.wbiao.co/shop/d81ca8cca9734c218ace8aa02c9d9dbc.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 22135, 1941.7, 23300, '[瑞士原装正品，全球联保]欧米茄OMEGA-碟飞系列 424.13.40.20.03.001 机械男表', '', 477, '欧米茄OMEGA', 428),
('//image8.wbiao.co/shop/3762630083f74e6e89bb5731eea5e246.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 640, 7680, '美度MIDO-指挥官 COMMANDER系列 M021.431.11.041.00 机械男表', '', 500, '美度MIDO', 429),
('//image8.wbiao.co/shop/815a6ff6caa4495c92fe9131e51bf14c.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 215, 2580, '恒圆EONE-哥斯拉限量款BR-GO 经典酷黑 创意触感极简时尚腕表', '', 19, '时尚品牌店', 430),
('//image8.wbiao.co/shop/45850207631b46cda4de6514a65a4eb2.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 140, 1680, '精工SEIKO-Seiko 5系列 SRP605J2 自动机械男表', '', 455, '精工官方旗舰店', 431),
('//image8.wbiao.co/shop/5b9fcfce2a4043008cdcf4100c20a35c.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 22135, 1941.7, 23300, '[瑞士原装正品，全球联保]欧米茄Omega-碟飞系列 424.13.40.20.01.001 机械男表', '', 384, '欧米茄OMEGA', 432),
('//image8.wbiao.co/shop/22a4b2ed384b446a8e8eaee5ccc93e1d.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 3050, 262.5, 3150, '西铁城CITIZEN-光动能系列  AT2140-55L 男士光动能表', '', 344, '西铁城官方旗舰店', 433),
('//image8.wbiao.co/shop/238d16b5ec8541c4bad05e300ba5465c.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 3050, 262.5, 3150, '西铁城CITIZEN-光动能系列 AT2140-55E 男士光动能表', '', 704, '西铁城官方旗舰店', 434),
('//image8.wbiao.co/shop/ac183b65e767415a92bb33b5be4eb964.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/b52e071b486844e4a04ad78416ac0e09.png', 8300, 825, 9900, '瑞士独立制表品牌艾美达（Armand Nicolet）-当代经典M02-4系列日期显示大三针 A840AAA-AG-M9742 商', '', 15, '瑞士艾美达官方旗舰店', 435),
('//image8.wbiao.co/shop/5884a11b322f452fa43461e4c217854d.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 2024, 177, 2124, '阿玛尼Armani-时尚男表系列 AR2477 石英男表', '', 389, '阿玛尼ARMANI', 436),
('//image8.wbiao.co/shop/6d6630029b694ef98472730d95b3a6a9.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 116.7, 1400, '精工SEIKO- Chronograph系列 SNDC31J1  男士石英表', '', 325, '精工官方旗舰店', 437),
('//image8.wbiao.co/shop/5f86e714b668410dbacf2cfe00b77c91.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 669.7, 8036, '康斯登Frederique Constant 百年典雅系列  FC-303MC4P6 儒雅商务机械男表', '', 293, '瑞士康斯登官方旗舰店', 438),
('//image8.wbiao.co/shop/2d9b5398fb7d4e0c812a44acbc89c5f9.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 2583.3, 31000, '欧米茄Omega-碟飞系列 424.13.40.21.01.001 机械男表', '', 257, '欧米茄OMEGA', 439),
('//image8.wbiao.co/shop/c7fe11add1b24475b1d582b053687469.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 2024, 177, 2124, '阿玛尼-LUIGI系列 AR1970 石英男表', '', 287, '阿玛尼ARMANI', 440),
('//image8.wbiao.co/shop/0951976f55fd428fb709e5b39d1eebd7.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 10780, 1040, 12480, '【商务精英优选】瑞士柏高Paul Picot -梦想家系列 P2061.SG.4000.7601 商务休闲 机械男表', '商务休闲随心切换', 529, '瑞士柏高官方旗舰店', 441),
('//image8.wbiao.co/shop/f79aefdd264544bba862b9b54f455669.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/3f1f3b1ddbe74d64baa00d8317e44a11.png', 19500, 1841.7, 22100, '【原名帝玛】拓天马TUTIMA-Saxon One都市系列 灰色堡垒 6120-01 自动机械男表', '', 6, '德国拓天马官方旗舰店', 442),
('//image8.wbiao.co/shop/041dd55dcb144b01883daa73187f7b77.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 4655, 408.3, 4900, '天梭TISSOT-杜鲁尔系列 T099.407.11.048.00 黄晓明同款自动机械男表', '80小时动储', 238, '天梭TISSOT', 443),
('//image8.wbiao.co/shop/81584497e919486f81a28fee027e751c.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 753.3, 9040, '依波路ErnestBorel-皇室系列 GS6155-2590 机械男表', '', 518, '经典品牌店', 444),
('//image8.wbiao.co/shop/1f53dfef9ff043e0b4271e9569792c68.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 563.1, 6757, '汉米尔顿Hamilton-卡其-海军系列 先锋 H78465553 机械男表', '', 479, '汉米尔顿HAMILTON', 445),
('//image8.wbiao.co/shop/929f01c9dcf74b89baa5e25709e39e0e.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 1240, 14880, '【商务简约款】瑞士库尔沃CYS-Historiador 历史学家系列 pequenos segundos 3195.1CS.AR 机械男表', '', 260, '瑞士库尔沃官方旗舰店', 446),
('//image8.wbiao.co/shop/7a3443cd0b0e42a68e8aa622d56676e5.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 546.7, 6560, '康斯登Frederique Constant 瑞士传统智能腕表系列  FC-285S5B6 蓝牙石英男表', '', 249, '瑞士康斯登官方旗舰店', 447),
('//image8.wbiao.co/shop/ba2ae2e4862f4285b998d6855f579dea.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 22135, 1941.7, 23300, '[瑞士原装正品，全球联保]欧米茄OMEGA-碟飞系列 424.13.40.20.02.002  机械男表', '', 208, '欧米茄OMEGA', 448),
('//image8.wbiao.co/shop/8b3e3b8f1cda456088a1d1ffdad0cc68.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 29450, 2583.3, 31000, '[瑞士原装正品，全球联保]欧米茄Omega-碟飞系列 424.13.40.21.02.001 机械男表', '', 207, '欧米茄OMEGA', 449),
('//image8.wbiao.co/shop/b551f17016174c7c818fe346ff4b9ea9.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 400, 4800, '美度MIDO-贝伦赛丽系列 M8600.4.18.1 机械男表', '都市绅士致尚之选', 1248, '美度MIDO', 450),
('//image8.wbiao.co/shop/acb7b84f542140c79ecc0c3509bf5c7e.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 220, 2640, '摩纹Marvin-ORIGIN系列 M025.13.42.13 男士石英表', '', 436, '经典品牌店', 451),
('//image8.wbiao.co/shop/db88f0e4e5914833a30b86b283652d3b.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 231.7, 2780, '阿玛尼Armani-RENATO系列 AR2448 石英男表', '', 340, '阿玛尼ARMANI', 452),
('//image8.wbiao.co/shop/530a2b99a3db40d9bfd2237b3e5c5c2d.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 6420, 618.3, 7420, '瑞士艺术制表大师爱宝时（EPOS）-Sportive运动系列海兽克拉肯3441.131.99.52.52 机械男表', '', 176, '瑞士爱宝时官方旗舰店', 453),
('//image8.wbiao.co/shop/cd1440d444934a09bdb3c4064b3a92d7.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 381.7, 4580, '意大利品牌：天铭（Timing）-源动系列 2077SX（玫瑰金壳玫瑰金机芯 ）机械男表', '', 234, '天铭官方旗舰店', 454),
('//image8.wbiao.co/shop/46a84301a383483e8cc166848b5ebac7.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/3f1f3b1ddbe74d64baa00d8317e44a11.png', 28900, 2533.3, 30400, '万国IWC-柏涛菲诺系列 IW356502 机械男表 ', '', 193, '万国IWC', 455),
('//image8.wbiao.co/shop/572610bf35674336a4e50709204d9ff9.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 275, 3300, '法国复古时尚腕表品牌：雍加毕索Yonger& Bresson-Beaumesnil 凡尔赛宫系列 YBH 8341-02 M 机械男表', '', 221, '法国雍加毕索官方旗舰店', 456),
('//image8.wbiao.co/shop/c22c440771f241b28bb5e95b1e9be002.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 1110, 13320, '豪利时Oris-潜水系列 733-7730-4135M 机械男表', '', 42, '瑞士豪利时官方旗舰店', 457),
('//image8.wbiao.co/shop/f59b7d27184e4b64a4230423cf843754.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 2583.3, 31000, '欧米茄Omega-碟飞系列 424.13.40.21.03.001 机械男表', '', 135, '欧米茄OMEGA', 458),
('//image8.wbiao.co/shop/9839f98dd4d1483a9e5cd7a8a7908180.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 29450, 2583.3, 31000, '欧米茄OMEGA-碟飞系列  424.13.40.21.02.002 机械男表', '', 130, '欧米茄OMEGA', 459),
('//image8.wbiao.co/shop/e1d98648664146f0a7dd69d427e9bef9.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 2999, 249.9, 2999, '精工SEIKO-Presage 鸡尾酒系列 Espresso Martini SSA345J1 自动机械男表', '', 184, '精工官方旗舰店', 460),
('//image8.wbiao.co/shop/6e8879f27e064088a0bc905ec0c6a350.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 363.3, 4360, '全新升级！！！天梭TISSOT-力洛克系列 T006.407.22.033.00 机械男表', '80小时动储', 112, '天梭TISSOT', 461),
('//image8.wbiao.co/shop/85680e26b56449e8b581ddc92c773985.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 576.7, 6920, '汉米尔顿Hamilton-爵士系列  H42555751 自动机械男表', '', 105, '汉米尔顿HAMILTON', 462),
('//image8.wbiao.co/shop/7ad25e4ef55d49189ad98362e848d9fd.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 12760, 1113.3, 13360, '泰格豪雅(TAG HEUER)-竞潜AQUARACER系列 WAY2012.BA0927  机械男表', '', 100, '泰格豪雅TAG HEUER', 463),
('//image8.wbiao.co/shop/3064125a84ab43c184026e1e7dea63a1.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 24668, 2139, 25668, '卡地亚cartier-RONDE SOLO DE CARTIER系列 W6701011 机械男表', '', 162, '卡地亚CARTIER', 464),
('//image8.wbiao.co/shop/2ad12211e9e54647978960f184a01548.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 15200, 1266.7, 15200, '泰格豪雅(TAG HEUER)-AQUARACER竞潜系列 WAY211A.BA0928 机械男表  ', '', 122, '泰格豪雅TAG HEUER', 465),
('//image8.wbiao.co/shop/fc39f85f8ec447998374bc396c7d18a9.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 8840, 786.7, 9440, '泰格豪雅(TAG HEUER)-FORMULA 1（F1系列）  WAZ2113.FT8023  机械男表 ', '', 215, '泰格豪雅TAG HEUER', 466),
('//image8.wbiao.co/shop/9086bffa8bb045168971a9928ce1509e.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 2016.7, 24200, '欧米茄OMEGA-碟飞系列 424.10.40.20.02.002 机械男表', '', 88, '欧米茄OMEGA', 467),
('//image8.wbiao.co/shop/17ed2ed8c4fd4548a713521c94ff7da2.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 22400, 2133.3, 25600, '库尔沃双时区款 拥有拉丁血统的瑞士腕表品牌：瑞士库尔沃CYS-Historiador 历史学家系列GMT格', '', 243, '瑞士库尔沃官方旗舰店', 468),
('//image8.wbiao.co/shop/249504aaf3be49e4830a89c63013a6f3.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 2016.7, 24200, '欧米茄OMEGA-碟飞系列 424.10.40.20.02.001 机械男表', '', 84, '欧米茄OMEGA', 469),
('//image8.wbiao.co/shop/6e6d1f4a87004ae8a81ca04c96b0da95.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 792.5, 9510, '瑞士艺术制表大师爱宝时（EPOS）-Passion激情系列 3434.183.24.34.25 收藏家（新品）机械男表 限', '全球限量999枚', 115, '瑞士爱宝时官方旗舰店', 470),
('//image8.wbiao.co/shop/201708_24_SRPB41J1_32518.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 206.7, 2480, '精工SEIKO-Presage 鸡尾酒系列 Bluemoon SRPB41J1 自动机械男表', '', 145, '精工官方旗舰店', 471),
('//image8.wbiao.co/shop/d382234c833546ba8f27136e511ec776.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 18400, 1766.7, 21200, '包豪斯工艺美学款 拥有拉丁血统的瑞士腕表品牌：瑞士库尔沃CYS-Historiador 历史学家系列 包', '', 232, '瑞士库尔沃官方旗舰店', 472),
('//image8.wbiao.co/shop/11b68ad7cf0e4c6e83384983c77479df.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 373.3, 4480, '天梭TISSOT-杜鲁尔系列 T099.407.16.447.00 机械男表', '', 138, '天梭TISSOT', 473),
('//image8.wbiao.co/shop/3c3dcf1e2e0d408d8634318b2698a0ca.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 350, 4200, '汉米尔顿Hamilton-美国经典系列  勇者 H39515154 机械男表', '', 325, '汉米尔顿HAMILTON', 474),
('//image8.wbiao.co/shop/6784eaab20f344f9aeb0eb83d79299a9.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 2016.7, 24200, '欧米茄OMEGA-碟飞系列 424.10.40.20.02.003 机械男表', '', 74, '欧米茄OMEGA', 475),
('//image8.wbiao.co/shop/92c472ad1e954fda8e709f5851382ca7.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 93.3, 1120, '精工SEIKO-Seiko 5系列 SNKL47J1 机械男表', '', 129, '精工官方旗舰店', 476),
('//image8.wbiao.co/shop/5f35e9a4c3e446e881cff1b409c0fb5a.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 2760, 230, 2760, '精工SEIKO- PROSPEX系列  SRPB99J1  机械男表', '', 64, '精工官方旗舰店', 477),
('//image8.wbiao.co/shop/d21ca90cf54842ceb637be1fbe878609.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 690, 8280, '雷达RADO-晶萃系列 R30939103 机械男表', '', 312, '经典品牌店', 478),
('//image8.wbiao.co/shop/17ae06a8facf4b4994252d3abf49c267.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 463.3, 5560, '汉米尔顿Hamilton-爵士系列 开心 H32565595 机械男表', '', 81, '汉米尔顿HAMILTON', 479),
('//image8.wbiao.co/shop/44c422741ddc47debe1bb9110d17383f.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 2016.7, 24200, '欧米茄OMEGA-碟飞系列 424.10.37.20.02.002 机械男表', '', 28, '欧米茄OMEGA', 480),
('//image8.wbiao.co/shop/7c689b4087cb46be91be587dde51157b.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 1316.7, 15800, '【赠送定制表带】雷米格Romago-跑车系列  RM077-0523ST-SV 自动机械男表（绝版）', '', 21, '瑞士雷米格官方旗舰店', 481),
('//image8.wbiao.co/shop/42fd45fb652e4f2a8482d228c4513c6c.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 3550, 42600, '真力时-飞行员系列 29.2430.679/21.c753  机械男表', '', 51, '商务品牌店', 482),
('//image8.wbiao.co/shop/d5150648512f49129d0ca723d1df3f1b.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 6116.7, 73400, '真力时Zenith-ELPRIMERO系列 95.9000.9004/78.R582  男士自动机械表', '', 19, '商务品牌店', 483),
('//image8.wbiao.co/shop/22272fb318e84d429825e77cfd32d74d.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 8.3, 99, '迪士尼（Disney）-时尚运动手表 MK-15015L 少年活力学生 大盘 石英男表', '', 46, '迪士尼手表官方旗舰店', 484),
('//image8.wbiao.co/shop/a94af2b00e60436c8f328e79f5e9fe90.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 22400, 2133.3, 25600, '拥有拉丁血统的瑞士腕表品牌：瑞士库尔沃-历史学家系列 GMT格林尼治时间款 3196.1C 机械男', '', 316, '瑞士库尔沃官方旗舰店', 485),
('//image8.wbiao.co/shop/ca5cf94b5ac0445eb8d905a6ed7710b3.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 2043.2, 24518, '康斯登Frederique Constant  自家机芯系列FC-705S4S6 自动机械男表（刘青云同款月相表)', '', 34, '瑞士康斯登官方旗舰店', 486),
('//image8.wbiao.co/shop/156532e0cc114537aa9cb51df02ccf16.png?x-oss-process=image/resize,m_pad,h_350', '', 0, 500, 6000, '【红魔  魏大勋同款】西铁城Citizen-光动能卫星对时系列 CC3079-11E 万年历男士腕表', '', 2, '西铁城官方旗舰店', 487),
('//image8.wbiao.co/shop/4a8d8b1cd43543faa6c584dac851a0f2.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 67.4, 809, ' CIGA Design-玺佳全镂空机械男表 Z011-SISI-13 德国红点奖作品', '', 33, '时尚品牌店', 488),
('//image8.wbiao.co/shop/a368ff3a7ecc4221bd430a1413c37003.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 5045.3, 60544, '沛纳海Panerai-历史经典系列 PAM00423 机械男表', '', 27, '沛纳海PANERAI', 489),
('//image8.wbiao.co/shop/ca6ac6167fb04d919ffad246a45dcf72.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 12530, 1202.5, 14430, '瑞士柏高Paul Picot -FIRSHIRE 梦想家系列 造王者 P3710.SG.1021.1106 正装休闲  机械男表', '', 393, '瑞士柏高官方旗舰店', 490),
('//image8.wbiao.co/shop/5c6a0c3343fd4b978f997aa20852a4a2.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 949.8, 11398, '瑞士康斯登 Frederique Constant 百年典雅系列 天方自动 FC-310MC4S34 机械男表', '', 17, '瑞士康斯登官方旗舰店', 491),
('//image8.wbiao.co/shop/3dadc3cefd244fe689fbafd54afc2b37.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 3010, 36120, '万国IWC-飞行员系列 IW377714 男士自动机械表（万国小王子特别版）', '小王子特别版', 141, '万国IWC', 492),
('//image8.wbiao.co/shop/2b41e05283b242328b5c01386dc48922.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 135.9, 1631, '阿玛尼(Armani) AR2506 石英男表【批次更新，新型号为AR11188】', '', 234, '阿玛尼ARMANI', 493),
('//image8.wbiao.co/shop/110dc1df89aa463e82dcfa99792e3237.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 5985.4, 71825, '伯爵Piaget-POLO系列 G0A41002 男士自动机械表', '', 14, '精英品牌店', 494),
('//image8.wbiao.co/shop/7603ec486b0148d2adb932508a0d106b.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 168.8, 2025, '优立时unizeit-歌德系列 BC001-SL100-00BN 机械男表', '', 45, '德国优立时官方旗舰店', 495),
('//image8.wbiao.co/shop/9f73248eda99472d92b83c61170515c2.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 13600, 163200, '宝珀-villeret系列 6654-3642-55B 自动机械男表', '', 13, '精英品牌店', 496),
('//image8.wbiao.co/shop/2535da92ef7646ffa1bccc7d59b443ad.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 3033.3, 36400, '真力时Zenith 2018新款-飞行员系列 29.1940.679/21.C800 男士自动机械表 特别版', '', 12, '商务品牌店', 497),
('//image8.wbiao.co/shop/95b5fdda02a44768bef55f577affed17.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/b52e071b486844e4a04ad78416ac0e09.png', 8300, 825, 9900, '【9月初到货，好表提前购】瑞士独立制表品牌艾美达（Armand Nicolet）-当代经典M02-4系列日期', '', 11, '瑞士艾美达官方旗舰店', 498),
('//image8.wbiao.co/shop/f94b72509cfb4ede8dab78d026cfb22f.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 3033.3, 36400, '真力时Zenith 2018新款-飞行员系列 29.1940.679/57.C808 男士自动机械表 特别版', '', 6, '商务品牌店', 499),
('//image8.wbiao.co/shop/df7e58b9826f4c8d94d5a327f8cfbc96.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 21745.8, 260950, '伯爵-POLO系列 G0A32038 机械男表', '', 3, '精英品牌店', 500),
('//image8.wbiao.co/shop/d6e7f57620154b2c8937de6c075d275e.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 3033.3, 36400, '真力时Zenith-飞行员系列 11.1941.679/94.C814 男士自动机械表', '', 3, '商务品牌店', 501),
('//image8.wbiao.co/shop/d0bb457d792c4105b5ad6907d7469f05.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 3550, 42600, '真力时Zenith-飞行员系列 11.2430.679/21.C801 男士自动机械表', '', 3, '商务品牌店', 502),
('//image8.wbiao.co/shop/9d009db0203c4a60bc328761aa0f85f6.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 3033.3, 36400, '真力时Zenith-飞行员系列 11.1943.679/63.C800 男士自动机械表', '', 2, '商务品牌店', 503),
('//image8.wbiao.co/shop/08f0b24622954658b4062406400ffbc5.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 17491.7, 209900, '【陈奕迅代言款】真力时Zenith 2018新款- DEFY系列 32.9000.9004/78.R582 机械男表', '', 0, '商务品牌店', 504),
('//image8.wbiao.co/shop/3bcbb7300c1c42b6a00c0ba53303fd03.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 7431.7, 89180, '劳力士ROLEX-日志型系列 116333-72213白色 机械男表', '', 20, '劳力士ROLEX', 505),
('//image8.wbiao.co/shop/ce52fe3533b4458c889e4eaf4ad30579.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 14695, 1341.7, 16100, '帝舵（TUDOR）-骏珏系列星期日历型 56000-68060黑色 自动机械男表', '', 204, '帝舵TUDOR', 506),
('//image8.wbiao.co/shop/ebfb1b9d7c9f483f8119133c7df50524.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 616.3, 7395, '梅花TITONI-Space Star系列  83538 S-ST-580 自动机芯ETA2824-2男表', '', 15, '梅花旗舰店', 507),
('//image8.wbiao.co/shop/ebc575ad19f346daa4241b259b4a5cfd.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 115.7, 1388, 'HUAWEI-华为WATCH2 LEO星空灰 华为第二代智能运动手表蓝牙版 蓝牙通话 GPS心率FIRSTBEAT运动指导 ', '', 157, '智能品牌店', 508),
('//image8.wbiao.co/shop/1dc77c79200c46e9aea2aa9e1887a339.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 728, 8736, '【9月初到货，好表提前购】瑞士独立制表品牌艾美达（Armand Nicolet）-当代经典M02-4系列日期', '', 11, '瑞士艾美达官方旗舰店', 509),
('//image8.wbiao.co/shop/39f28e9b260d4e82a3ca9e046154fc50.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/3f1f3b1ddbe74d64baa00d8317e44a11.png', 46900, 4033.3, 48400, '万国IWC-葡萄牙系列 IW371445 机械男表', '', 159, '万国IWC', 510),
('//image8.wbiao.co/shop/ed48e0802ebb44a69e4010c90a3801b5.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 430, 5160, '天梭TISSOT-杜鲁尔系列 T099.407.36.038.00 机械男表', ' 80小时动储', 695, '天梭TISSOT', 511),
('//image8.wbiao.co/shop/578da1dfc23b43b39ab6b2acea3b3f4a.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 780, 9360, '瑞士艺术制表大师爱宝时（EPOS）-Emotion情感系列 日夜无间 3390.302.20.38.30 机械男表', '日月无间', 527, '瑞士爱宝时官方旗舰店', 512),
('//image8.wbiao.co/shop/2f653388271e49849b0dcf0890ac47a5.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 2530, 227.5, 2730, '法国优雅时尚腕表品牌：Michel Herbelin赫柏林  Classiques经典系列 12443/P08GO  男士石英表', '', 462, '法国赫柏林官方旗舰店', 513),
('//image8.wbiao.co/shop/4122f00947084fd685b9fdb8cbb92a49.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 8435.8, 101230, '劳力士ROLEX-蚝式恒动系列 116231-63201黑色纪念花纹10钻 机械男表', '', 120, '劳力士ROLEX', 514),
('//image8.wbiao.co/shop/201708_07_WAZ1010_BA0842_80953.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 7000, 633.3, 7600, '泰格豪雅(TAG HEUER)-FORMULA 1系列 WAZ1010.BA0842 石英男表     ', '', 114, '泰格豪雅TAG HEUER', 515),
('//image8.wbiao.co/shop/8f978bdc3a6749379f2df5522ab57360.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 1950, 23400, '百年灵Breitling-超级海洋系列  A17365C9-BD67-161A  机械男表', '', 21, '百年灵BREITLING', 516),
('//image8.wbiao.co/shop/54db1a48df8b4059aec7d2ceb9975c8a.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/3f1f3b1ddbe74d64baa00d8317e44a11.png', 12600, 1200, 14400, '【原名帝玛】拓天马TUTIMA-Grand Flieger大飞行员Grand Flieger Airport空港系列 蓝色魅影 6101-03 自动', '', 19, '德国拓天马官方旗舰店', 517),
('//image8.wbiao.co/shop/6778ed45488e4e7bb64a38efddb31add.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 4108.3, 49300, '瑞士柏高Paul Picot -FIRSHIRE 梦想家系列 全日历月相表 P0459.SRG.1232.1604 正装休闲 机械男表（全', '', 49, '瑞士柏高官方旗舰店', 518),
('//image8.wbiao.co/shop/d93babffd0424aca9a2cda34d79a9081.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 2000, 24000, '帝舵（TUDOR）-王子系列星期日历型 76213-62483黄布条 自动机械男表', '', 106, '帝舵TUDOR', 519),
('//image8.wbiao.co/shop/72f497ed8ae644039f4e46eadcf5c954.png?x-oss-process=image/resize,m_pad,h_350', '', 0, 2291.7, 27500, '百年灵Breitling-超级海洋系列 AB2010121B1S1 自动机械男表', '', 9, '百年灵BREITLING', 520),
('//image8.wbiao.co/shop/24bb12a7c1a340a4a7f358c0049b638e.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 2000, 24000, '帝舵（TUDOR）-王子系列星期日历型  76213-62483香槟色 自动机械男表', '', 5, '帝舵TUDOR', 521),
('//image8.wbiao.co/shop/7fcdfdfd339d4be989fecff46a238aed.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 266.6, 3199, '摩纹Marvin-莫尔顿160圆形系列 M020.13.22.74 男士石英表', '', 67, '经典品牌店', 522),
('//image8.wbiao.co/shop/4cc5ba91a4e74ba3b9954676228d49f7.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 44264, 3772, 45264, '卡地亚Cartier-蓝气球系列 W69012Z4（大号） 机械男表', '', 66, '卡地亚CARTIER', 523),
('//image8.wbiao.co/shop/51648383100e42da9a29a2401a6aa119.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 1934.2, 23210, '世纪独家蓝宝石 瑞士高端珠宝腕表：Century世纪表-ELEGANCE系列-机械之芯 648.7.N.S1.12.SF 机械男', '', 2, '瑞士世纪表官方旗舰店', 524),
('//image8.wbiao.co/shop/201708_08_M119_23_44_84_1_99800.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 511.7, 6140, '摩纹Marvin-枕形Malton系列 《战狼Ⅱ》限量版 M119.23.44.84.1 自动机械表', '', 60, '经典品牌店', 525),
('//image8.wbiao.co/shop/0895df0d42274ce2b098ed4ae70a9fbf.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 155.8, 1870, '阿玛尼ARMANI-时尚男表系列 AR11068 石英男表', '', 39, '阿玛尼ARMANI', 526),
('//image8.wbiao.co/shop/a4b8709c606547049e8fceaa6a9cb415.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 225, 2700, '摩纹Marvin-枕形Malton系列 M022.13.24.82 男士石英表', '', 35, '经典品牌店', 527),
('//image8.wbiao.co/shop/2ed6aa9b926c41bf8ebab897215a3a8a.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/3f1f3b1ddbe74d64baa00d8317e44a11.png', 36500, 3166.7, 38000, '万国IWC-柏涛菲诺系列 IW391008 自动机械男表', '', 26, '万国IWC', 528),
('//image8.wbiao.co/shop/c7b1285ee380485f9b9743f3495c07c7.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 3496, 306.7, 3680, '【天梭原装正品，全球联保两年】天梭TISSOT-力洛克系列T006.407.11.033.00 自动机械男表', '80小时动储', 6626, '天梭TISSOT', 529),
('//image8.wbiao.co/shop/28cc3cbbf68a49afb3186dc8bef4c345.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 4970, 480.8, 5770, '瑞士艺术制表大师爱宝时（EPOS）-Emotion情感系列 罗马假期-水蓝版 3390.152.20.16.25 机械男表', '水蓝版', 5375, '瑞士爱宝时官方旗舰店', 530),
('//image8.wbiao.co/shop/d5f66e5fef0247f099b76840941958e1.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 5240, 511.7, 6140, '瑞士艺术制表大师爱宝时（EPOS）-Emotion情感系列 罗马假期-雪白版 3390.152.20.10.30 机械男表', '雪白版', 4808, '瑞士爱宝时官方旗舰店', 531),
('//image8.wbiao.co/shop/23ba86255c5245dc88d3cc116b127c2c.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 4660, 455, 5460, '【绿蛟龙】纯正瑞士品牌 迪沃斯DAVOSA-Diving 潜水系列 Ternos 特诺斯潜行者 墨玉绿 16155570 自', '', 3548, '瑞士迪沃斯官方旗舰店', 532),
('//image8.wbiao.co/shop/6a49448ba5704a6184156eb876b1b4e6.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 4660, 455, 5460, '【黑蛟龙】纯正瑞士品牌 迪沃斯DAVOSA-Diving 潜水系列 Ternos 特诺斯潜行者 深空黑 16155550 自', '黑蛟龙', 2785, '瑞士迪沃斯官方旗舰店', 533),
('//image8.wbiao.co/shop/00027ee065b1490abbabb2d21642afe5.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 3496, 306.7, 3680, '【天梭原装正品，全球联保两年】 天梭TISSOT-力洛克系列 T006.407.11.053.00 机械男表', '80小时动储', 3617, '天梭TISSOT', 534),
('//image8.wbiao.co/shop/110556385610467c8180e0a9e52a8147.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 583.3, 6999, '德国高级独立制表品牌：格拉苏蒂·莫勒Muehle·Glashuette-Sporty  运动系列 M1-25-21-LB 29er 商务机', '商务休闲随心搭配', 2558, '德国莫勒官方旗舰店', 535),
('//image8.wbiao.co/shop/fc0cd7f2a9e2452cbd83a13d4338bea0.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 1900, 175, 2100, '法国国民腕表品牌：Michel Herbelin赫柏林  Classiques经典系列  永恒绅士  12443/S01  男士石英表', '', 2217, '法国赫柏林官方旗舰店', 536),
('//image8.wbiao.co/shop/824dd16ad6444e9f8b124c04a563f30a.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 4496, 408, 4896, '爆款！纯正瑞士品牌 迪沃斯DAVOSA-Heritage传统系列 Classic 经典机械 绅士蓝影 16145615 自动机械', '儒雅绅士', 723, '瑞士迪沃斯官方旗舰店', 537),
('//image8.wbiao.co/shop/b1276261f397498f83c1d64904cd1e09.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 22990, 2016.7, 24200, '[瑞士原装正品，全球联保]欧米茄Omega-碟飞系列 424.10.37.20.02.001 机械男表', '', 2722, '欧米茄OMEGA', 538),
('//image8.wbiao.co/shop/2725bd17baa74ff3beebcfdaf8c978bd.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 18400, 1766.7, 21200, '库尔沃火焰纹款 拥有拉丁血统的瑞士腕表品牌：瑞士库尔沃CYS-Historiador 历史学家系列 古董', '古董手绘火焰纹', 575, '瑞士库尔沃官方旗舰店', 539),
('//image8.wbiao.co/shop/d8198583a6f74aeea543f3befea5db44.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 32500, 3066.7, 36800, '库尔沃宝玑逆跳款：瑞士库尔沃CYS-Historiador 历史学家系列 Retrogrado 3194.1A(黑色表带) 机械男', '宝玑逆跳 买即送豪礼', 558, '瑞士库尔沃官方旗舰店', 540),
('//image8.wbiao.co/shop/5b2918fac97e4b6181297ace2d332a23.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 371.3, 4455, '法国国民腕表品牌：Michel Herbelin赫柏林  Metropole大都会系列  诺曼底公爵  1643/08   男士机械', '咨询客服送钢带', 1414, '法国赫柏林官方旗舰店', 541),
('//image8.wbiao.co/shop/be30c4da13c8488a98a38bf901358578.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 16450, 1579.2, 18950, '【德国海军定制款】德国高级独立制表品牌：格拉苏蒂莫勒Muehle·Glashuette Nautical Wristwatches ', '运动爱好者必备', 487, '德国莫勒官方旗舰店', 542),
('//image8.wbiao.co/shop/2405f3390e564a8f80cdcc941899e27b.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 6700, 666.7, 8000, '瑞士艺术制表大师爱宝时（EPOS）-Emotion情感系列 日夜无间 3390.302.20.38.25 机械男表', '日夜无间', 1268, '瑞士爱宝时官方旗舰店', 543),
('//image8.wbiao.co/shop/8a033d3eb6504297b0c8cca50c10af61.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 2850, 245.8, 2950, '【魏大勋同款】西铁城Citizen-光动能男表系列 BX1001-89L 万年历男表', '万年历/世界时', 114, '西铁城官方旗舰店', 544),
('//image8.wbiao.co/shop/4f3abdf707cd4390beabd94c0e46a156.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/3f1f3b1ddbe74d64baa00d8317e44a11.png', 12050, 1062.5, 12750, '浪琴longines-名匠系列 L2.628.4.78.3 机械男表', '', 2183, '浪琴LONGINES', 545),
('//image8.wbiao.co/shop/d63aec1aadcc427ea3d414e6f4fb943b.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/3f1f3b1ddbe74d64baa00d8317e44a11.png', 8900, 858.3, 10300, '【原名帝玛】拓天马TUTIMA-Flieger飞行员系列 沙漠猛禽 6105-03 自动机械男表', '', 14, '德国拓天马官方旗舰店', 546),
('//image8.wbiao.co/shop/c30ca9c868604b87aaca29bfea874794.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 12760, 1113.3, 13360, '泰格豪雅(TAG HEUER)-竞潜AQUARACER系列 WAY2010.BA0927  机械男表', '', 289, '泰格豪雅TAG HEUER', 547),
('//image8.wbiao.co/shop/6ce15441c50a4aa5aac744d10208a546.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 15240, 1320, 15840, '泰格豪雅(TAG HEUER)-竞潜AQUARACER系列 WAY201B.BA0927  机械男表', '', 363, '泰格豪雅TAG HEUER', 548),
('//image8.wbiao.co/shop/e6c996cd741d41b58dff349448327657.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 8110, 792.5, 9510, '【爆款】德国高级独立制表品牌：格拉苏蒂Muehle·Glashuette-Sporty  运动系列 M1-37-47-MB 机械男', '', 127, '德国莫勒官方旗舰店', 549),
('//image8.wbiao.co/shop/bc4b69ded08c43b9a14b3ab1167eba36.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 12920, 1235, 14820, '源自星空的浪漫！瑞士艺术制表大师爱宝时（EPOS）-Emotion情感系列 浪漫星月3391.832.20.16.30 ', '浪漫星月', 1594, '瑞士爱宝时官方旗舰店', 550),
('//image8.wbiao.co/shop/8d6b77825a0844d7a3e37038a90e9e2c.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/3f1f3b1ddbe74d64baa00d8317e44a11.png', 10500, 1008.3, 12100, '【原名帝玛】拓天马TUTIMA-M2运动 Coastline海岸线系列 假日海岸 6150-02 自动机械男表', '', 19, '德国拓天马官方旗舰店', 551),
('//image8.wbiao.co/shop/6a1909c0f6154d229ec33cc709f65dec.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 12020, 1110, 13320, '豪利时Oris- 潜水AQUIS系列 733-7730-4157M 日历机械腕表 2018新品', '', 37, '瑞士豪利时官方旗舰店', 552),
('//image8.wbiao.co/shop/f250fc8634cd4bad998f8d772eafbd4c.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 14695, 1341.7, 16100, '帝舵（TUDOR）-骏珏系列星期日历型 56000-68060银色 自动机械男表', '', 486, '帝舵TUDOR', 553),
('//image8.wbiao.co/shop/a2a92409d7f24677bcb745d7a03606d4.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 6500, 566.7, 6800, '梅花Titoni-Air Master空霸系列 83909 S-063 机械男表', '', 739, '梅花旗舰店', 554),
('//image8.wbiao.co/shop/4ed6a66fc1e5492b81c06377331cce2e.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 1900, 175, 2100, '法国国民腕表品牌：Michel Herbelin赫柏林  City都市系列  蓝色星空  19515/15  男士石英表', '', 1589, '法国赫柏林官方旗舰店', 555),
('//image8.wbiao.co/shop/dcc9a32d470b47cda4f7436635e2899c.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 6090, 532.5, 6390, '梅花Titoni-Air Master空霸系列 83909 S-354 机械男表', '', 704, '梅花旗舰店', 556);
INSERT INTO `listpage` (`imgGood`, `schoolOpenImg`, `schoolOpenPrice`, `fenqi_price`, `s_price`, `s_goods_name`, `goods_sale1`, `goods_sale2`, `s_shop`, `goodsID`) VALUES
('//image8.wbiao.co/shop/1a846b59a21a4ebba413c6b19dccd97d.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 5166.7, 62000, '瑞士柏高Paul Picot -Atelier 美学家系列  “迦南美地” P0482.SG.1022.2001 世界时机械男表（限量300', '', 41, '瑞士柏高官方旗舰店', 557),
('//image8.wbiao.co/shop/f11e52f51a7a4a27a54eb254343a032b.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 2400, 28800, '万国IWC-柏涛菲诺系列 IW356501 机械男表', '', 216, '万国IWC', 558),
('//image8.wbiao.co/shop/b786c00fe3794f11b82d8e27c15af7a6.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 2450, 29400, '帝舵（TUDOR）-骏珏系列星期日历型 56003-68063香槟色10钻 自动机械男表', '', 364, '帝舵TUDOR', 559),
('//image8.wbiao.co/shop/6f16ce22b2c047dca584b907239f63ca.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/3f1f3b1ddbe74d64baa00d8317e44a11.png', 12390, 1090.8, 13090, '浪琴Longines-名匠系列 L2.628.4.78.6 机械男表', '', 1566, '浪琴LONGINES', 560),
('//image8.wbiao.co/shop/398b104f76eb4a18bc1caa08e50436b3.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 130, 1560, '纯正瑞士品牌 迪沃斯DAVOSA-Heritage传统系列 Amaranto 阿马兰托极简版 16248015 男士商务休闲石英', '', 2667, '瑞士迪沃斯官方旗舰店', 561),
('//image8.wbiao.co/shop/4819fb165fb447a3a41c134068e6e7e5.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 10780, 990, 11880, '豪利时Oris- 潜水AQUIS系列 733-7730-4157R 日历机械腕表 2018新品 ', '', 45, '瑞士豪利时官方旗舰店', 562),
('//image8.wbiao.co/shop/9a50feb1cf1847728844804bf88c7dc9.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/3f1f3b1ddbe74d64baa00d8317e44a11.png', 10500, 1008.3, 12100, '【原名帝玛】拓天马TUTIMA-M2运动 Coastline海岸线系列 深灰天幕 6150-04 自动机械男表', '', 15, '德国拓天马官方旗舰店', 563),
('//image8.wbiao.co/shop/c85485b6382641fbb0289653f6b0f92a.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 934.2, 11210, '【2018年新品】豪度CODEX-极臻系列 1101.26.0311.L01 自动机械男表（青铜表壳）', '', 8, '商务品牌店', 564),
('//image8.wbiao.co/shop/e795856767f846b99a6d3a5ec48c95e4.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/3f1f3b1ddbe74d64baa00d8317e44a11.png', 27200, 2391.7, 28700, '万国IWC-飞行员系列 IW327002 男士自动机械表（新型号IW327012）', '', 29, '万国IWC', 565),
('//image8.wbiao.co/shop/b68b8bf65811426ca53588ce7bdc18a6.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/3f1f3b1ddbe74d64baa00d8317e44a11.png', 7030, 644.2, 7730, '浪琴Longines-瑰丽系列 L4.821.4.11.6 机械男表', '', 781, '浪琴LONGINES', 566),
('//image8.wbiao.co/shop/dc1d4f10f3584c6889cbd2ae86e0128d.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 22135, 1941.7, 23300, '[瑞士原装正品，全球联保]欧米茄Omega-碟飞系列 424.13.40.20.02.001 机械男表', '', 705, '欧米茄OMEGA', 567),
('//image8.wbiao.co/shop/8f24d57f12264415ac3d580c4df6fee8.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 580, 6960, '梅花Titoni-Air Master空霸系列 83909 SY-063 机械男表', '', 745, '梅花旗舰店', 568),
('//image8.wbiao.co/shop/d941218b4954480eab45ae62ce453896.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 463.3, 5560, '汉米尔顿Hamilton-爵士系列  开心 H32565555 机械男表', '', 614, '汉米尔顿HAMILTON', 569),
('//image8.wbiao.co/shop/f3b3345c66e94d6ca7a81c16bf11e834.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 12840, 1228.3, 14740, '【销量冠军】德国高级独立制表品牌：格拉苏蒂莫勒Muehle·Glashuette Classical 经典系列-日耳曼', '双日历', 544, '德国莫勒官方旗舰店', 570),
('//image8.wbiao.co/shop/bed605e03147469f82befeec36587ab7.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 1532, 136, 1632, '阿玛尼-时尚男表 AR2411 石英男表', '', 775, '阿玛尼ARMANI', 571),
('//image8.wbiao.co/shop/d81ca8cca9734c218ace8aa02c9d9dbc.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 22135, 1941.7, 23300, '[瑞士原装正品，全球联保]欧米茄OMEGA-碟飞系列 424.13.40.20.03.001 机械男表', '', 477, '欧米茄OMEGA', 572),
('//image8.wbiao.co/shop/3762630083f74e6e89bb5731eea5e246.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 640, 7680, '美度MIDO-指挥官 COMMANDER系列 M021.431.11.041.00 机械男表', '', 500, '美度MIDO', 573),
('//image8.wbiao.co/shop/815a6ff6caa4495c92fe9131e51bf14c.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 215, 2580, '恒圆EONE-哥斯拉限量款BR-GO 经典酷黑 创意触感极简时尚腕表', '', 19, '时尚品牌店', 574),
('//image8.wbiao.co/shop/45850207631b46cda4de6514a65a4eb2.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 140, 1680, '精工SEIKO-Seiko 5系列 SRP605J2 自动机械男表', '', 455, '精工官方旗舰店', 575),
('//image8.wbiao.co/shop/5b9fcfce2a4043008cdcf4100c20a35c.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 22135, 1941.7, 23300, '[瑞士原装正品，全球联保]欧米茄Omega-碟飞系列 424.13.40.20.01.001 机械男表', '', 384, '欧米茄OMEGA', 576),
('//image8.wbiao.co/shop/22a4b2ed384b446a8e8eaee5ccc93e1d.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 3050, 262.5, 3150, '西铁城CITIZEN-光动能系列  AT2140-55L 男士光动能表', '', 344, '西铁城官方旗舰店', 577),
('//image8.wbiao.co/shop/238d16b5ec8541c4bad05e300ba5465c.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 3050, 262.5, 3150, '西铁城CITIZEN-光动能系列 AT2140-55E 男士光动能表', '', 704, '西铁城官方旗舰店', 578),
('//image8.wbiao.co/shop/ac183b65e767415a92bb33b5be4eb964.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/b52e071b486844e4a04ad78416ac0e09.png', 8300, 825, 9900, '瑞士独立制表品牌艾美达（Armand Nicolet）-当代经典M02-4系列日期显示大三针 A840AAA-AG-M9742 商', '', 15, '瑞士艾美达官方旗舰店', 579),
('//image8.wbiao.co/shop/5884a11b322f452fa43461e4c217854d.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 2024, 177, 2124, '阿玛尼Armani-时尚男表系列 AR2477 石英男表', '', 389, '阿玛尼ARMANI', 580),
('//image8.wbiao.co/shop/6d6630029b694ef98472730d95b3a6a9.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 116.7, 1400, '精工SEIKO- Chronograph系列 SNDC31J1  男士石英表', '', 325, '精工官方旗舰店', 581),
('//image8.wbiao.co/shop/5f86e714b668410dbacf2cfe00b77c91.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 669.7, 8036, '康斯登Frederique Constant 百年典雅系列  FC-303MC4P6 儒雅商务机械男表', '', 293, '瑞士康斯登官方旗舰店', 582),
('//image8.wbiao.co/shop/2d9b5398fb7d4e0c812a44acbc89c5f9.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 2583.3, 31000, '欧米茄Omega-碟飞系列 424.13.40.21.01.001 机械男表', '', 257, '欧米茄OMEGA', 583),
('//image8.wbiao.co/shop/c7fe11add1b24475b1d582b053687469.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 2024, 177, 2124, '阿玛尼-LUIGI系列 AR1970 石英男表', '', 287, '阿玛尼ARMANI', 584),
('//image8.wbiao.co/shop/0951976f55fd428fb709e5b39d1eebd7.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 10780, 1040, 12480, '【商务精英优选】瑞士柏高Paul Picot -梦想家系列 P2061.SG.4000.7601 商务休闲 机械男表', '商务休闲随心切换', 529, '瑞士柏高官方旗舰店', 585),
('//image8.wbiao.co/shop/f79aefdd264544bba862b9b54f455669.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/3f1f3b1ddbe74d64baa00d8317e44a11.png', 19500, 1841.7, 22100, '【原名帝玛】拓天马TUTIMA-Saxon One都市系列 灰色堡垒 6120-01 自动机械男表', '', 6, '德国拓天马官方旗舰店', 586),
('//image8.wbiao.co/shop/041dd55dcb144b01883daa73187f7b77.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 4655, 408.3, 4900, '天梭TISSOT-杜鲁尔系列 T099.407.11.048.00 黄晓明同款自动机械男表', '80小时动储', 238, '天梭TISSOT', 587),
('//image8.wbiao.co/shop/81584497e919486f81a28fee027e751c.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 753.3, 9040, '依波路ErnestBorel-皇室系列 GS6155-2590 机械男表', '', 518, '经典品牌店', 588),
('//image8.wbiao.co/shop/1f53dfef9ff043e0b4271e9569792c68.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 563.1, 6757, '汉米尔顿Hamilton-卡其-海军系列 先锋 H78465553 机械男表', '', 479, '汉米尔顿HAMILTON', 589),
('//image8.wbiao.co/shop/929f01c9dcf74b89baa5e25709e39e0e.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 1240, 14880, '【商务简约款】瑞士库尔沃CYS-Historiador 历史学家系列 pequenos segundos 3195.1CS.AR 机械男表', '', 260, '瑞士库尔沃官方旗舰店', 590),
('//image8.wbiao.co/shop/7a3443cd0b0e42a68e8aa622d56676e5.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 546.7, 6560, '康斯登Frederique Constant 瑞士传统智能腕表系列  FC-285S5B6 蓝牙石英男表', '', 249, '瑞士康斯登官方旗舰店', 591),
('//image8.wbiao.co/shop/ba2ae2e4862f4285b998d6855f579dea.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 22135, 1941.7, 23300, '[瑞士原装正品，全球联保]欧米茄OMEGA-碟飞系列 424.13.40.20.02.002  机械男表', '', 208, '欧米茄OMEGA', 592),
('//image8.wbiao.co/shop/8b3e3b8f1cda456088a1d1ffdad0cc68.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 29450, 2583.3, 31000, '[瑞士原装正品，全球联保]欧米茄Omega-碟飞系列 424.13.40.21.02.001 机械男表', '', 207, '欧米茄OMEGA', 593),
('//image8.wbiao.co/shop/b551f17016174c7c818fe346ff4b9ea9.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 400, 4800, '美度MIDO-贝伦赛丽系列 M8600.4.18.1 机械男表', '都市绅士致尚之选', 1248, '美度MIDO', 594),
('//image8.wbiao.co/shop/acb7b84f542140c79ecc0c3509bf5c7e.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 220, 2640, '摩纹Marvin-ORIGIN系列 M025.13.42.13 男士石英表', '', 436, '经典品牌店', 595),
('//image8.wbiao.co/shop/db88f0e4e5914833a30b86b283652d3b.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 231.7, 2780, '阿玛尼Armani-RENATO系列 AR2448 石英男表', '', 340, '阿玛尼ARMANI', 596),
('//image8.wbiao.co/shop/530a2b99a3db40d9bfd2237b3e5c5c2d.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 6420, 618.3, 7420, '瑞士艺术制表大师爱宝时（EPOS）-Sportive运动系列海兽克拉肯3441.131.99.52.52 机械男表', '', 176, '瑞士爱宝时官方旗舰店', 597),
('//image8.wbiao.co/shop/cd1440d444934a09bdb3c4064b3a92d7.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 381.7, 4580, '意大利品牌：天铭（Timing）-源动系列 2077SX（玫瑰金壳玫瑰金机芯 ）机械男表', '', 234, '天铭官方旗舰店', 598),
('//image8.wbiao.co/shop/46a84301a383483e8cc166848b5ebac7.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/3f1f3b1ddbe74d64baa00d8317e44a11.png', 28900, 2533.3, 30400, '万国IWC-柏涛菲诺系列 IW356502 机械男表 ', '', 193, '万国IWC', 599),
('//image8.wbiao.co/shop/572610bf35674336a4e50709204d9ff9.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 275, 3300, '法国复古时尚腕表品牌：雍加毕索Yonger& Bresson-Beaumesnil 凡尔赛宫系列 YBH 8341-02 M 机械男表', '', 221, '法国雍加毕索官方旗舰店', 600),
('//image8.wbiao.co/shop/c22c440771f241b28bb5e95b1e9be002.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 1110, 13320, '豪利时Oris-潜水系列 733-7730-4135M 机械男表', '', 42, '瑞士豪利时官方旗舰店', 601),
('//image8.wbiao.co/shop/f59b7d27184e4b64a4230423cf843754.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 2583.3, 31000, '欧米茄Omega-碟飞系列 424.13.40.21.03.001 机械男表', '', 135, '欧米茄OMEGA', 602),
('//image8.wbiao.co/shop/9839f98dd4d1483a9e5cd7a8a7908180.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 29450, 2583.3, 31000, '欧米茄OMEGA-碟飞系列  424.13.40.21.02.002 机械男表', '', 130, '欧米茄OMEGA', 603),
('//image8.wbiao.co/shop/e1d98648664146f0a7dd69d427e9bef9.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 2999, 249.9, 2999, '精工SEIKO-Presage 鸡尾酒系列 Espresso Martini SSA345J1 自动机械男表', '', 184, '精工官方旗舰店', 604),
('//image8.wbiao.co/shop/6e8879f27e064088a0bc905ec0c6a350.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 363.3, 4360, '全新升级！！！天梭TISSOT-力洛克系列 T006.407.22.033.00 机械男表', '80小时动储', 112, '天梭TISSOT', 605),
('//image8.wbiao.co/shop/85680e26b56449e8b581ddc92c773985.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 576.7, 6920, '汉米尔顿Hamilton-爵士系列  H42555751 自动机械男表', '', 105, '汉米尔顿HAMILTON', 606),
('//image8.wbiao.co/shop/7ad25e4ef55d49189ad98362e848d9fd.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 12760, 1113.3, 13360, '泰格豪雅(TAG HEUER)-竞潜AQUARACER系列 WAY2012.BA0927  机械男表', '', 100, '泰格豪雅TAG HEUER', 607),
('//image8.wbiao.co/shop/3064125a84ab43c184026e1e7dea63a1.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 24668, 2139, 25668, '卡地亚cartier-RONDE SOLO DE CARTIER系列 W6701011 机械男表', '', 162, '卡地亚CARTIER', 608),
('//image8.wbiao.co/shop/2ad12211e9e54647978960f184a01548.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 15200, 1266.7, 15200, '泰格豪雅(TAG HEUER)-AQUARACER竞潜系列 WAY211A.BA0928 机械男表  ', '', 122, '泰格豪雅TAG HEUER', 609),
('//image8.wbiao.co/shop/fc39f85f8ec447998374bc396c7d18a9.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 8840, 786.7, 9440, '泰格豪雅(TAG HEUER)-FORMULA 1（F1系列）  WAZ2113.FT8023  机械男表 ', '', 215, '泰格豪雅TAG HEUER', 610),
('//image8.wbiao.co/shop/9086bffa8bb045168971a9928ce1509e.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 2016.7, 24200, '欧米茄OMEGA-碟飞系列 424.10.40.20.02.002 机械男表', '', 88, '欧米茄OMEGA', 611),
('//image8.wbiao.co/shop/17ed2ed8c4fd4548a713521c94ff7da2.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 22400, 2133.3, 25600, '库尔沃双时区款 拥有拉丁血统的瑞士腕表品牌：瑞士库尔沃CYS-Historiador 历史学家系列GMT格', '', 243, '瑞士库尔沃官方旗舰店', 612),
('//image8.wbiao.co/shop/249504aaf3be49e4830a89c63013a6f3.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 2016.7, 24200, '欧米茄OMEGA-碟飞系列 424.10.40.20.02.001 机械男表', '', 84, '欧米茄OMEGA', 613),
('//image8.wbiao.co/shop/6e6d1f4a87004ae8a81ca04c96b0da95.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 792.5, 9510, '瑞士艺术制表大师爱宝时（EPOS）-Passion激情系列 3434.183.24.34.25 收藏家（新品）机械男表 限', '全球限量999枚', 115, '瑞士爱宝时官方旗舰店', 614),
('//image8.wbiao.co/shop/201708_24_SRPB41J1_32518.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 206.7, 2480, '精工SEIKO-Presage 鸡尾酒系列 Bluemoon SRPB41J1 自动机械男表', '', 145, '精工官方旗舰店', 615),
('//image8.wbiao.co/shop/d382234c833546ba8f27136e511ec776.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 18400, 1766.7, 21200, '包豪斯工艺美学款 拥有拉丁血统的瑞士腕表品牌：瑞士库尔沃CYS-Historiador 历史学家系列 包', '', 232, '瑞士库尔沃官方旗舰店', 616),
('//image8.wbiao.co/shop/11b68ad7cf0e4c6e83384983c77479df.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 373.3, 4480, '天梭TISSOT-杜鲁尔系列 T099.407.16.447.00 机械男表', '', 138, '天梭TISSOT', 617),
('//image8.wbiao.co/shop/3c3dcf1e2e0d408d8634318b2698a0ca.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 350, 4200, '汉米尔顿Hamilton-美国经典系列  勇者 H39515154 机械男表', '', 325, '汉米尔顿HAMILTON', 618),
('//image8.wbiao.co/shop/6784eaab20f344f9aeb0eb83d79299a9.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 2016.7, 24200, '欧米茄OMEGA-碟飞系列 424.10.40.20.02.003 机械男表', '', 74, '欧米茄OMEGA', 619),
('//image8.wbiao.co/shop/92c472ad1e954fda8e709f5851382ca7.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 93.3, 1120, '精工SEIKO-Seiko 5系列 SNKL47J1 机械男表', '', 129, '精工官方旗舰店', 620),
('//image8.wbiao.co/shop/5f35e9a4c3e446e881cff1b409c0fb5a.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 2760, 230, 2760, '精工SEIKO- PROSPEX系列  SRPB99J1  机械男表', '', 64, '精工官方旗舰店', 621),
('//image8.wbiao.co/shop/d21ca90cf54842ceb637be1fbe878609.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 690, 8280, '雷达RADO-晶萃系列 R30939103 机械男表', '', 312, '经典品牌店', 622),
('//image8.wbiao.co/shop/17ae06a8facf4b4994252d3abf49c267.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 463.3, 5560, '汉米尔顿Hamilton-爵士系列 开心 H32565595 机械男表', '', 81, '汉米尔顿HAMILTON', 623),
('//image8.wbiao.co/shop/44c422741ddc47debe1bb9110d17383f.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 2016.7, 24200, '欧米茄OMEGA-碟飞系列 424.10.37.20.02.002 机械男表', '', 28, '欧米茄OMEGA', 624),
('//image8.wbiao.co/shop/7c689b4087cb46be91be587dde51157b.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 1316.7, 15800, '【赠送定制表带】雷米格Romago-跑车系列  RM077-0523ST-SV 自动机械男表（绝版）', '', 21, '瑞士雷米格官方旗舰店', 625),
('//image8.wbiao.co/shop/42fd45fb652e4f2a8482d228c4513c6c.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 3550, 42600, '真力时-飞行员系列 29.2430.679/21.c753  机械男表', '', 51, '商务品牌店', 626),
('//image8.wbiao.co/shop/d5150648512f49129d0ca723d1df3f1b.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 6116.7, 73400, '真力时Zenith-ELPRIMERO系列 95.9000.9004/78.R582  男士自动机械表', '', 19, '商务品牌店', 627),
('//image8.wbiao.co/shop/22272fb318e84d429825e77cfd32d74d.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 8.3, 99, '迪士尼（Disney）-时尚运动手表 MK-15015L 少年活力学生 大盘 石英男表', '', 46, '迪士尼手表官方旗舰店', 628),
('//image8.wbiao.co/shop/a94af2b00e60436c8f328e79f5e9fe90.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 22400, 2133.3, 25600, '拥有拉丁血统的瑞士腕表品牌：瑞士库尔沃-历史学家系列 GMT格林尼治时间款 3196.1C 机械男', '', 316, '瑞士库尔沃官方旗舰店', 629),
('//image8.wbiao.co/shop/ca5cf94b5ac0445eb8d905a6ed7710b3.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 2043.2, 24518, '康斯登Frederique Constant  自家机芯系列FC-705S4S6 自动机械男表（刘青云同款月相表)', '', 34, '瑞士康斯登官方旗舰店', 630),
('//image8.wbiao.co/shop/156532e0cc114537aa9cb51df02ccf16.png?x-oss-process=image/resize,m_pad,h_350', '', 0, 500, 6000, '【红魔  魏大勋同款】西铁城Citizen-光动能卫星对时系列 CC3079-11E 万年历男士腕表', '', 2, '西铁城官方旗舰店', 631),
('//image8.wbiao.co/shop/4a8d8b1cd43543faa6c584dac851a0f2.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 67.4, 809, ' CIGA Design-玺佳全镂空机械男表 Z011-SISI-13 德国红点奖作品', '', 33, '时尚品牌店', 632),
('//image8.wbiao.co/shop/a368ff3a7ecc4221bd430a1413c37003.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 5045.3, 60544, '沛纳海Panerai-历史经典系列 PAM00423 机械男表', '', 27, '沛纳海PANERAI', 633),
('//image8.wbiao.co/shop/ca6ac6167fb04d919ffad246a45dcf72.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 12530, 1202.5, 14430, '瑞士柏高Paul Picot -FIRSHIRE 梦想家系列 造王者 P3710.SG.1021.1106 正装休闲  机械男表', '', 393, '瑞士柏高官方旗舰店', 634),
('//image8.wbiao.co/shop/5c6a0c3343fd4b978f997aa20852a4a2.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 949.8, 11398, '瑞士康斯登 Frederique Constant 百年典雅系列 天方自动 FC-310MC4S34 机械男表', '', 17, '瑞士康斯登官方旗舰店', 635),
('//image8.wbiao.co/shop/3dadc3cefd244fe689fbafd54afc2b37.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 3010, 36120, '万国IWC-飞行员系列 IW377714 男士自动机械表（万国小王子特别版）', '小王子特别版', 141, '万国IWC', 636),
('//image8.wbiao.co/shop/2b41e05283b242328b5c01386dc48922.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 135.9, 1631, '阿玛尼(Armani) AR2506 石英男表【批次更新，新型号为AR11188】', '', 234, '阿玛尼ARMANI', 637),
('//image8.wbiao.co/shop/110dc1df89aa463e82dcfa99792e3237.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 5985.4, 71825, '伯爵Piaget-POLO系列 G0A41002 男士自动机械表', '', 14, '精英品牌店', 638),
('//image8.wbiao.co/shop/7603ec486b0148d2adb932508a0d106b.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 168.8, 2025, '优立时unizeit-歌德系列 BC001-SL100-00BN 机械男表', '', 45, '德国优立时官方旗舰店', 639),
('//image8.wbiao.co/shop/9f73248eda99472d92b83c61170515c2.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 13600, 163200, '宝珀-villeret系列 6654-3642-55B 自动机械男表', '', 13, '精英品牌店', 640),
('//image8.wbiao.co/shop/2535da92ef7646ffa1bccc7d59b443ad.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 3033.3, 36400, '真力时Zenith 2018新款-飞行员系列 29.1940.679/21.C800 男士自动机械表 特别版', '', 12, '商务品牌店', 641),
('//image8.wbiao.co/shop/95b5fdda02a44768bef55f577affed17.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/b52e071b486844e4a04ad78416ac0e09.png', 8300, 825, 9900, '【9月初到货，好表提前购】瑞士独立制表品牌艾美达（Armand Nicolet）-当代经典M02-4系列日期', '', 11, '瑞士艾美达官方旗舰店', 642),
('//image8.wbiao.co/shop/f94b72509cfb4ede8dab78d026cfb22f.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 3033.3, 36400, '真力时Zenith 2018新款-飞行员系列 29.1940.679/57.C808 男士自动机械表 特别版', '', 6, '商务品牌店', 643),
('//image8.wbiao.co/shop/df7e58b9826f4c8d94d5a327f8cfbc96.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 21745.8, 260950, '伯爵-POLO系列 G0A32038 机械男表', '', 3, '精英品牌店', 644),
('//image8.wbiao.co/shop/d6e7f57620154b2c8937de6c075d275e.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 3033.3, 36400, '真力时Zenith-飞行员系列 11.1941.679/94.C814 男士自动机械表', '', 3, '商务品牌店', 645),
('//image8.wbiao.co/shop/d0bb457d792c4105b5ad6907d7469f05.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 3550, 42600, '真力时Zenith-飞行员系列 11.2430.679/21.C801 男士自动机械表', '', 3, '商务品牌店', 646),
('//image8.wbiao.co/shop/9d009db0203c4a60bc328761aa0f85f6.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 3033.3, 36400, '真力时Zenith-飞行员系列 11.1943.679/63.C800 男士自动机械表', '', 2, '商务品牌店', 647),
('//image8.wbiao.co/shop/08f0b24622954658b4062406400ffbc5.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 17491.7, 209900, '【陈奕迅代言款】真力时Zenith 2018新款- DEFY系列 32.9000.9004/78.R582 机械男表', '', 0, '商务品牌店', 648),
('//image8.wbiao.co/shop/3bcbb7300c1c42b6a00c0ba53303fd03.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 7431.7, 89180, '劳力士ROLEX-日志型系列 116333-72213白色 机械男表', '', 20, '劳力士ROLEX', 649),
('//image8.wbiao.co/shop/ce52fe3533b4458c889e4eaf4ad30579.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 14695, 1341.7, 16100, '帝舵（TUDOR）-骏珏系列星期日历型 56000-68060黑色 自动机械男表', '', 204, '帝舵TUDOR', 650),
('//image8.wbiao.co/shop/ebfb1b9d7c9f483f8119133c7df50524.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 616.3, 7395, '梅花TITONI-Space Star系列  83538 S-ST-580 自动机芯ETA2824-2男表', '', 15, '梅花旗舰店', 651),
('//image8.wbiao.co/shop/ebc575ad19f346daa4241b259b4a5cfd.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 115.7, 1388, 'HUAWEI-华为WATCH2 LEO星空灰 华为第二代智能运动手表蓝牙版 蓝牙通话 GPS心率FIRSTBEAT运动指导 ', '', 157, '智能品牌店', 652),
('//image8.wbiao.co/shop/1dc77c79200c46e9aea2aa9e1887a339.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 728, 8736, '【9月初到货，好表提前购】瑞士独立制表品牌艾美达（Armand Nicolet）-当代经典M02-4系列日期', '', 11, '瑞士艾美达官方旗舰店', 653),
('//image8.wbiao.co/shop/39f28e9b260d4e82a3ca9e046154fc50.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/3f1f3b1ddbe74d64baa00d8317e44a11.png', 46900, 4033.3, 48400, '万国IWC-葡萄牙系列 IW371445 机械男表', '', 159, '万国IWC', 654),
('//image8.wbiao.co/shop/ed48e0802ebb44a69e4010c90a3801b5.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 430, 5160, '天梭TISSOT-杜鲁尔系列 T099.407.36.038.00 机械男表', ' 80小时动储', 695, '天梭TISSOT', 655),
('//image8.wbiao.co/shop/578da1dfc23b43b39ab6b2acea3b3f4a.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 780, 9360, '瑞士艺术制表大师爱宝时（EPOS）-Emotion情感系列 日夜无间 3390.302.20.38.30 机械男表', '日月无间', 527, '瑞士爱宝时官方旗舰店', 656),
('//image8.wbiao.co/shop/2f653388271e49849b0dcf0890ac47a5.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 2530, 227.5, 2730, '法国优雅时尚腕表品牌：Michel Herbelin赫柏林  Classiques经典系列 12443/P08GO  男士石英表', '', 462, '法国赫柏林官方旗舰店', 657),
('//image8.wbiao.co/shop/4122f00947084fd685b9fdb8cbb92a49.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 8435.8, 101230, '劳力士ROLEX-蚝式恒动系列 116231-63201黑色纪念花纹10钻 机械男表', '', 120, '劳力士ROLEX', 658),
('//image8.wbiao.co/shop/201708_07_WAZ1010_BA0842_80953.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 7000, 633.3, 7600, '泰格豪雅(TAG HEUER)-FORMULA 1系列 WAZ1010.BA0842 石英男表     ', '', 114, '泰格豪雅TAG HEUER', 659),
('//image8.wbiao.co/shop/8f978bdc3a6749379f2df5522ab57360.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 1950, 23400, '百年灵Breitling-超级海洋系列  A17365C9-BD67-161A  机械男表', '', 21, '百年灵BREITLING', 660),
('//image8.wbiao.co/shop/54db1a48df8b4059aec7d2ceb9975c8a.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/3f1f3b1ddbe74d64baa00d8317e44a11.png', 12600, 1200, 14400, '【原名帝玛】拓天马TUTIMA-Grand Flieger大飞行员Grand Flieger Airport空港系列 蓝色魅影 6101-03 自动', '', 19, '德国拓天马官方旗舰店', 661),
('//image8.wbiao.co/shop/6778ed45488e4e7bb64a38efddb31add.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 4108.3, 49300, '瑞士柏高Paul Picot -FIRSHIRE 梦想家系列 全日历月相表 P0459.SRG.1232.1604 正装休闲 机械男表（全', '', 49, '瑞士柏高官方旗舰店', 662),
('//image8.wbiao.co/shop/d93babffd0424aca9a2cda34d79a9081.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 2000, 24000, '帝舵（TUDOR）-王子系列星期日历型 76213-62483黄布条 自动机械男表', '', 106, '帝舵TUDOR', 663),
('//image8.wbiao.co/shop/72f497ed8ae644039f4e46eadcf5c954.png?x-oss-process=image/resize,m_pad,h_350', '', 0, 2291.7, 27500, '百年灵Breitling-超级海洋系列 AB2010121B1S1 自动机械男表', '', 9, '百年灵BREITLING', 664),
('//image8.wbiao.co/shop/24bb12a7c1a340a4a7f358c0049b638e.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 2000, 24000, '帝舵（TUDOR）-王子系列星期日历型  76213-62483香槟色 自动机械男表', '', 5, '帝舵TUDOR', 665),
('//image8.wbiao.co/shop/7fcdfdfd339d4be989fecff46a238aed.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 266.6, 3199, '摩纹Marvin-莫尔顿160圆形系列 M020.13.22.74 男士石英表', '', 67, '经典品牌店', 666),
('//image8.wbiao.co/shop/4cc5ba91a4e74ba3b9954676228d49f7.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/4d6d335465df4d77abe6a954f6ea0485.png', 44264, 3772, 45264, '卡地亚Cartier-蓝气球系列 W69012Z4（大号） 机械男表', '', 66, '卡地亚CARTIER', 667),
('//image8.wbiao.co/shop/51648383100e42da9a29a2401a6aa119.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 1934.2, 23210, '世纪独家蓝宝石 瑞士高端珠宝腕表：Century世纪表-ELEGANCE系列-机械之芯 648.7.N.S1.12.SF 机械男', '', 2, '瑞士世纪表官方旗舰店', 668),
('//image8.wbiao.co/shop/201708_08_M119_23_44_84_1_99800.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 511.7, 6140, '摩纹Marvin-枕形Malton系列 《战狼Ⅱ》限量版 M119.23.44.84.1 自动机械表', '', 60, '经典品牌店', 669),
('//image8.wbiao.co/shop/0895df0d42274ce2b098ed4ae70a9fbf.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 155.8, 1870, '阿玛尼ARMANI-时尚男表系列 AR11068 石英男表', '', 39, '阿玛尼ARMANI', 670),
('//image8.wbiao.co/shop/a4b8709c606547049e8fceaa6a9cb415.jpg?x-oss-process=image/resize,m_pad,h_350', '', 0, 225, 2700, '摩纹Marvin-枕形Malton系列 M022.13.24.82 男士石英表', '', 35, '经典品牌店', 671),
('//image8.wbiao.co/shop/2ed6aa9b926c41bf8ebab897215a3a8a.jpg?x-oss-process=image/resize,m_pad,h_350', '//image8.wbiao.co/mall/3f1f3b1ddbe74d64baa00d8317e44a11.png', 36500, 3166.7, 38000, '万国IWC-柏涛菲诺系列 IW391008 自动机械男表', '', 26, '万国IWC', 672);

-- --------------------------------------------------------

--
-- 表的结构 `orderform`
--

CREATE TABLE IF NOT EXISTS `orderform` (
  `data_goodid` int(100) NOT NULL,
  `goodNum` int(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `shop` varchar(100) NOT NULL,
  `imgSrc` varchar(200) NOT NULL,
  `goodsName` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `version` varchar(100) NOT NULL,
  `storeNumber` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `orderform`
--

INSERT INTO `orderform` (`data_goodid`, `goodNum`, `user`, `shop`, `imgSrc`, `goodsName`, `price`, `version`, `storeNumber`) VALUES
(387, 1, '13642309535', '瑞士爱宝时官方旗舰店', 'https://image8.wbiao.co/shop/23ba86255c5245dc88d3cc116b127c2c.jpg?x-oss-process=image/resize,m_pad,w_1000,h_1000,color_ffffff', '瑞士艺术制表大师爱宝时（EPOS）-Emotion情感系列 罗马假期-雪白版 3390.152.20.10.30 机械男表', '6140', '钢 银色 精钢', 300),
(0, 0, '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `phone` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `phone2` varchar(100) NOT NULL,
  `time` varchar(200) NOT NULL,
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`phone`, `password`, `phone2`, `time`) VALUES
('13642309535', 'fcea920f7412b5da7be0cf42b8c93759', '', 'Fri Sep 06 2019 09:16:17 GMT 0800 (中国标准时间)'),
('13642309536', 'fcea920f7412b5da7be0cf42b8c93759', '13642309535', 'Fri Sep 06 2019 09:17:53 GMT 0800 (中国标准时间)');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
