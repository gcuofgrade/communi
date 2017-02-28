-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017-02-28 23:31:11
-- 服务器版本： 10.0.29-MariaDB-0ubuntu0.16.04.1
-- PHP Version: 5.6.30-1+deb.sury.org~xenial+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `communi`
--

-- --------------------------------------------------------

--
-- 表的结构 `v9_admin`
--

CREATE TABLE `v9_admin` (
  `userid` mediumint(6) UNSIGNED NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `roleid` smallint(5) DEFAULT '0',
  `encrypt` varchar(6) DEFAULT NULL,
  `lastloginip` varchar(15) DEFAULT NULL,
  `lastlogintime` int(10) UNSIGNED DEFAULT '0',
  `email` varchar(40) DEFAULT NULL,
  `realname` varchar(50) NOT NULL DEFAULT '',
  `card` varchar(255) NOT NULL,
  `lang` varchar(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_admin`
--

INSERT INTO `v9_admin` (`userid`, `username`, `password`, `roleid`, `encrypt`, `lastloginip`, `lastlogintime`, `email`, `realname`, `card`, `lang`) VALUES
(1, 'phpcms', '93fd2f0eda5fb9f80c5a9bbdd122b45f', 1, 'fDMwZI', '127.0.0.1', 1488283509, '992081699@qq.com', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `v9_admin_panel`
--

CREATE TABLE `v9_admin_panel` (
  `menuid` mediumint(8) UNSIGNED NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `name` char(32) DEFAULT NULL,
  `url` char(255) DEFAULT NULL,
  `datetime` int(10) UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_admin_role`
--

CREATE TABLE `v9_admin_role` (
  `roleid` tinyint(3) UNSIGNED NOT NULL,
  `rolename` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `listorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_admin_role`
--

INSERT INTO `v9_admin_role` (`roleid`, `rolename`, `description`, `listorder`, `disabled`) VALUES
(1, '超级管理员', '超级管理员', 0, 0),
(2, '站点管理员', '站点管理员', 0, 0),
(3, '运营总监', '运营总监', 1, 0),
(4, '总编', '总编', 5, 0),
(5, '编辑', '编辑', 1, 0),
(7, '发布人员', '发布人员', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_admin_role_priv`
--

CREATE TABLE `v9_admin_role_priv` (
  `roleid` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL,
  `c` char(20) NOT NULL,
  `a` char(20) NOT NULL,
  `data` char(30) NOT NULL DEFAULT '',
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_attachment`
--

CREATE TABLE `v9_attachment` (
  `aid` int(10) UNSIGNED NOT NULL,
  `module` char(15) NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `filename` char(50) NOT NULL,
  `filepath` char(200) NOT NULL,
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fileext` char(10) NOT NULL,
  `isimage` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `isthumb` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `downloads` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `uploadtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uploadip` char(15) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `authcode` char(32) NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_attachment`
--

INSERT INTO `v9_attachment` (`aid`, `module`, `catid`, `filename`, `filepath`, `filesize`, `fileext`, `isimage`, `isthumb`, `downloads`, `userid`, `uploadtime`, `uploadip`, `status`, `authcode`, `siteid`) VALUES
(38, 'content', 10, '7730-150331100136-53.jpg', '2017/0107/20170107055446817.jpg', 81946, 'jpg', 1, 0, 0, 1, 1483782886, '127.0.0.1', 1, '31c093b20f4303c7b899bf1aa4d6cebe', 1),
(34, 'content', 10, 'u=1188971070,373829797&fm=23&gp=0.jpg', '2017/0107/20170107055226836.jpg', 31352, 'jpg', 1, 0, 0, 1, 1483782746, '127.0.0.1', 1, 'acc4f338a41f57a8af3bbf6f0dfe8a3a', 1),
(43, 'content', 10, 'u=1293539264,2483928271&fm=23&gp=0.jpg', '2017/0107/20170107095422531.jpg', 22130, 'jpg', 1, 0, 0, 1, 1483797262, '127.0.0.1', 1, '60f384bcfa2967daa6e53aa8dbabbed2', 1),
(49, 'content', 0, 'u=3758579475,3169523787&fm=23&gp=0.jpg', '2017/0107/20170107100220591.jpg', 22507, 'jpg', 1, 0, 0, 1, 1483797740, '127.0.0.1', 1, '39faf0e5ac282ab032863621c6fc48c2', 1),
(5, 'content', 20, 'img7.jpg', '2016/1226/20161226120957414.jpg', 12732, 'jpg', 1, 0, 0, 1, 1482682197, '127.0.0.1', 1, 'f51188fd4b2cf7c5c314332d5d6a545c', 1),
(6, 'content', 21, 'img7.jpg', '2016/1226/20161226121110355.jpg', 12732, 'jpg', 1, 0, 0, 1, 1482682270, '127.0.0.1', 1, '0b2966d993509ee57c14c5c557a11460', 1),
(7, 'content', 21, 'img7.jpg', '2016/1226/20161226121223690.jpg', 12732, 'jpg', 1, 0, 0, 1, 1482682343, '127.0.0.1', 1, 'e6c58205f28ac03b0f5037d662aa7f94', 1),
(8, 'content', 21, '01.jpg', '2016/1226/20161226121335664.jpg', 86365, 'jpg', 1, 0, 0, 1, 1482682415, '127.0.0.1', 1, 'b84597bd5ba8813f61b272fcc7d0d7ed', 1),
(9, 'content', 0, 'img6.jpg', '2016/1231/20161231031036426.jpg', 14651, 'jpg', 1, 0, 0, 1, 1483168236, '127.0.0.1', 1, 'e91ad1235f96eaeb5e8d40834f52598e', 1),
(10, 'content', 60, 'u=3679329189,35980967&fm=23&gp=0.jpg', '2017/0107/20170107124449301.jpg', 19889, 'jpg', 1, 0, 0, 1, 1483764289, '127.0.0.1', 1, '58e02d0ba8cc8d37e7733b2704aef079', 1),
(11, 'content', 64, 'u=3424503186,1759473065&fm=23&gp=0.jpg', '2017/0107/20170107124705408.jpg', 15660, 'jpg', 1, 0, 0, 1, 1483764425, '127.0.0.1', 1, '64b2d83daff97bfe198589e928beec48', 1),
(12, 'content', 64, 'u=2777708712,398018638&fm=11&gp=0.jpg', '2017/0107/20170107124823136.jpg', 21991, 'jpg', 1, 0, 0, 1, 1483764503, '127.0.0.1', 1, '0f4e497657d8e992aa57c2f4f0f9a041', 1),
(13, 'content', 63, 'u=2777708712,398018638&fm=11&gp=0.jpg', '2017/0107/20170107124927602.jpg', 21991, 'jpg', 1, 0, 0, 1, 1483764567, '127.0.0.1', 1, '376c346f9db8a70eb4df6bc3690bf0d4', 1),
(14, 'content', 63, 'u=3424503186,1759473065&fm=23&gp=0.jpg', '2017/0107/20170107125008664.jpg', 15660, 'jpg', 1, 0, 0, 1, 1483764608, '127.0.0.1', 1, 'd70458c4a71fcd4f3ddab6efe401e6d9', 1),
(15, 'content', 58, 'u=3424503186,1759473065&fm=23&gp=0.jpg', '2017/0107/20170107125153913.jpg', 15660, 'jpg', 1, 0, 0, 1, 1483764713, '127.0.0.1', 1, 'f16955b1fdb49c5770893f4709c7c8ad', 1),
(16, 'content', 58, 'u=3424503186,1759473065&fm=23&gp=0.jpg', '2017/0107/20170107125232662.jpg', 15660, 'jpg', 1, 0, 0, 1, 1483764752, '127.0.0.1', 1, '1f5879fc9947b756e13e6e030b5dd490', 1),
(48, 'content', 0, 'u=1552464069,2936022293&fm=23&gp=0.jpg', '2017/0107/20170107100103284.jpg', 8917, 'jpg', 1, 0, 0, 1, 1483797663, '127.0.0.1', 1, 'e12d4e309b824a387fa5aceb403130d9', 1),
(42, 'content', 10, 'ntk-1920-754.jpg', '2017/0107/20170107095349501.jpg', 997272, 'jpg', 1, 0, 0, 1, 1483797229, '127.0.0.1', 1, '7544d778d49423a6dd8e92a70a1944ce', 1),
(47, 'content', 0, 'u=3424503186,1759473065&fm=23&gp=0.jpg', '2017/0107/20170107100049124.jpg', 15660, 'jpg', 1, 0, 0, 1, 1483797649, '127.0.0.1', 1, '1c86111c764a0a7083add4774e4cd366', 1),
(33, 'content', 10, '2016122102122118200.jpg', '2017/0107/20170107055212522.jpg', 194688, 'jpg', 1, 0, 0, 1, 1483782732, '127.0.0.1', 1, 'bca13687b61067b46ffd7f6e3b4284b6', 1),
(41, 'content', 10, '0854-niutuku.com-26242.jpg', '2017/0107/20170107095212742.jpg', 1176313, 'jpg', 1, 0, 0, 1, 1483797132, '127.0.0.1', 1, '0e87de6e158782531c911762783645f9', 1),
(46, 'content', 0, 'u=1552464069,2936022293&fm=23&gp=0.jpg', '2017/0107/20170107095933412.jpg', 8917, 'jpg', 1, 0, 0, 1, 1483797573, '127.0.0.1', 1, 'c800a6fa7241d9a4eff7f375a58b738a', 1),
(40, 'content', 22, 'u=2777708712,398018638&fm=11&gp=0.jpg', '2017/0107/20170107061001849.jpg', 21991, 'jpg', 1, 0, 0, 1, 1483783801, '127.0.0.1', 1, '803021adeb5af02fd99ab68826d5bf94', 1),
(39, 'content', 10, 'u=1262392306,2509779084&fm=23&gp=0.jpg', '2017/0107/20170107060215152.jpg', 40098, 'jpg', 1, 0, 0, 1, 1483783335, '127.0.0.1', 1, '136bdae962b0837becb6ad5bb961503a', 1),
(37, 'content', 10, 'u=1262392306,2509779084&fm=23&gp=0.jpg', '2017/0107/20170107055426878.jpg', 40098, 'jpg', 1, 0, 0, 1, 1483782866, '127.0.0.1', 1, '16c79a7abf0eef33f810e7c788f6606e', 1),
(45, 'content', 0, 'u=1316131427,3335377805&fm=23&gp=0.jpg', '2017/0107/20170107095917525.jpg', 27362, 'jpg', 1, 0, 0, 1, 1483797556, '127.0.0.1', 1, 'a60196d49cb42064524b044921ef7bef', 1),
(27, 'content', 65, 'u=3424503186,1759473065&fm=23&gp=0.jpg', '2017/0107/20170107010431243.jpg', 15660, 'jpg', 1, 0, 0, 1, 1483765471, '127.0.0.1', 1, '4f2293930f8d60715e1bcd1bef782cc8', 1),
(44, 'content', 10, 'ntk-1512-42297.jpg', '2017/0107/20170107095630374.jpg', 825202, 'jpg', 1, 0, 0, 1, 1483797390, '127.0.0.1', 1, '3f575529c5706079e4f469d53251ceb6', 1),
(50, 'content', 0, 'u=4102869907,1107883708&fm=23&gp=0.jpg', '2017/0107/20170107100233802.jpg', 22026, 'jpg', 1, 0, 0, 1, 1483797753, '127.0.0.1', 1, '564e6061e89e3da8909f7676ac111412', 1),
(51, 'content', 0, 'u=4102869907,1107883708&fm=23&gp=0.jpg', '2017/0107/20170107100442450.jpg', 22026, 'jpg', 1, 0, 0, 1, 1483797882, '127.0.0.1', 1, 'c177dc64c3f260477138e4df63fa55ef', 1),
(52, 'content', 0, '2016122102122118200.jpg', '2017/0107/20170107100506636.jpg', 194688, 'jpg', 1, 0, 0, 1, 1483797906, '127.0.0.1', 1, '560aad702c662e1bf9c67a9227f4ecd1', 1),
(53, 'content', 10, '68-1612221K545-50.jpg', '2017/0212/20170212055144456.jpg', 126536, 'jpg', 1, 0, 0, 1, 1486893104, '127.0.0.1', 1, '61ff99fb6d8efac36be2e4fc84c321d6', 1),
(54, 'content', 10, '7730-150331100136-53.jpg', '2017/0212/20170212055203151.jpg', 81946, 'jpg', 1, 0, 0, 1, 1486893123, '127.0.0.1', 1, 'cf98279ed5763d784abc26acbfc11492', 1),
(55, 'content', 10, '469571.jpg', '2017/0212/20170212055221409.jpg', 179742, 'jpg', 1, 0, 0, 1, 1486893141, '127.0.0.1', 1, '14fbeb5c5234975ae9d6d563fb79beb0', 1),
(56, 'content', 10, '2016122102122118200.jpg', '2017/0212/20170212055243134.jpg', 194688, 'jpg', 1, 0, 0, 1, 1486893163, '127.0.0.1', 1, '93590e2ea9aef84599532e38ca499b92', 1),
(57, 'content', 0, 'u=1316131427,3335377805&fm=23&gp=0.jpg', '2017/0212/20170212055429917.jpg', 27362, 'jpg', 1, 0, 0, 1, 1486893269, '127.0.0.1', 1, 'c063524c0e51f223e0ec905b3daff435', 1),
(58, 'content', 0, 'u=4102869907,1107883708&fm=23&gp=0.jpg', '2017/0212/20170212055856599.jpg', 22026, 'jpg', 1, 0, 0, 1, 1486893536, '127.0.0.1', 1, '7d0ec1195949c2c1d483ac9657e768f0', 1),
(59, 'content', 0, 'u=1552464069,2936022293&fm=23&gp=0.jpg', '2017/0212/20170212055942680.jpg', 8917, 'jpg', 1, 0, 0, 1, 1486893582, '127.0.0.1', 1, '7550f4091e5665a9548dacc617211dcf', 1),
(60, 'content', 0, 'u=3424503186,1759473065&fm=23&gp=0.jpg', '2017/0212/20170212060011649.jpg', 15660, 'jpg', 1, 0, 0, 1, 1486893611, '127.0.0.1', 1, '33a4db96fce15fe406e3db48eb46c1a6', 1),
(61, 'content', 0, 'u=3758579475,3169523787&fm=23&gp=0.jpg', '2017/0212/20170212060033688.jpg', 22507, 'jpg', 1, 0, 0, 1, 1486893633, '127.0.0.1', 1, '2a29049b82416b4a82396e645be3156e', 1),
(62, 'content', 0, 'u=3679329189,35980967&fm=23&gp=0.jpg', '2017/0212/20170212060123516.jpg', 19889, 'jpg', 1, 0, 0, 1, 1486893683, '127.0.0.1', 1, '773f0ca3d33b05e2fc229d02ff593fd5', 1),
(63, 'content', 0, 'u=2777708712,398018638&fm=11&gp=0.jpg', '2017/0212/20170212060143152.jpg', 21991, 'jpg', 1, 0, 0, 1, 1486893703, '127.0.0.1', 1, 'ed44d56880eaa0a24e4885a8ad89ae15', 1),
(64, 'content', 0, 'u=4102869907,1107883708&fm=23&gp=0.jpg', '2017/0212/20170212060210701.jpg', 22026, 'jpg', 1, 0, 0, 1, 1486893730, '127.0.0.1', 1, '8732c85367c44e4eaa7e39a90ed8ff0f', 1),
(65, 'content', 0, 'u=1316131427,3335377805&fm=23&gp=0.jpg', '2017/0212/20170212060234895.jpg', 27362, 'jpg', 1, 0, 0, 1, 1486893754, '127.0.0.1', 1, '637bfbb3ab24d8e40c297c6dd89d4a20', 1),
(66, 'link', 0, '1.png', '2017/0225/20170225024041930.png', 8036, 'png', 1, 0, 0, 1, 1488004841, '127.0.0.1', 1, '92a13350d6814ca1c1520b2e9e35584c', 1);

-- --------------------------------------------------------

--
-- 表的结构 `v9_attachment_index`
--

CREATE TABLE `v9_attachment_index` (
  `keyid` char(30) NOT NULL,
  `aid` char(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_attachment_index`
--

INSERT INTO `v9_attachment_index` (`keyid`, `aid`) VALUES
('c-10-43', '38'),
('c-10-41', '34'),
('c-10-42', '43'),
('c-20-6', '5'),
('c-20-7', '6'),
('c-21-8', '7'),
('c-21-9', '8'),
('catid-26', '51'),
('c-60-24', '10'),
('c-64-25', '11'),
('c-64-26', '12'),
('c-63-27', '13'),
('c-63-28', '14'),
('c-58-30', '15'),
('c-58-35', '16'),
('catid-31', '50'),
('c-10-42', '42'),
('catid-30', '52'),
('c-10-40', '33'),
('c-10-41', '41'),
('catid-29', '48'),
('c-22-2', '40'),
('c-10-41', '39'),
('c-10-42', '37'),
('catid-28', '47'),
('c-65-36', '27'),
('catid-27', '46'),
('c-10-42', '44'),
('c-10-43', '53'),
('c-10-42', '54'),
('c-10-41', '55'),
('c-10-40', '56'),
('catid-21', '57'),
('catid-39', '58'),
('catid-40', '59'),
('catid-41', '60'),
('catid-42', '61'),
('catid-32', '62'),
('catid-33', '63'),
('catid-34', '64'),
('catid-35', '65'),
('link-10', '66');

-- --------------------------------------------------------

--
-- 表的结构 `v9_badword`
--

CREATE TABLE `v9_badword` (
  `badid` smallint(5) UNSIGNED NOT NULL,
  `badword` char(20) NOT NULL,
  `level` tinyint(5) NOT NULL DEFAULT '1',
  `replaceword` char(20) NOT NULL DEFAULT '0',
  `lastusetime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `listorder` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_block`
--

CREATE TABLE `v9_block` (
  `id` int(10) NOT NULL,
  `siteid` smallint(5) UNSIGNED DEFAULT '0',
  `name` char(50) DEFAULT NULL,
  `pos` char(30) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0',
  `data` text,
  `template` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_block_history`
--

CREATE TABLE `v9_block_history` (
  `id` int(10) NOT NULL,
  `blockid` int(10) UNSIGNED DEFAULT '0',
  `data` text,
  `creat_at` int(10) UNSIGNED DEFAULT '0',
  `userid` mediumint(8) UNSIGNED DEFAULT '0',
  `username` char(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_block_priv`
--

CREATE TABLE `v9_block_priv` (
  `id` int(10) UNSIGNED NOT NULL,
  `roleid` tinyint(3) UNSIGNED DEFAULT '0',
  `siteid` smallint(5) UNSIGNED DEFAULT '0',
  `blockid` int(10) UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_cache`
--

CREATE TABLE `v9_cache` (
  `filename` char(50) NOT NULL,
  `path` char(50) NOT NULL,
  `data` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_cache`
--

INSERT INTO `v9_cache` (`filename`, `path`, `data`) VALUES
('category_content.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  11 => \'1\',\n  73 => \'1\',\n  12 => \'1\',\n  13 => \'1\',\n  14 => \'1\',\n  15 => \'1\',\n  16 => \'1\',\n  17 => \'1\',\n  18 => \'1\',\n  10 => \'1\',\n  22 => \'1\',\n  84 => \'1\',\n  23 => \'1\',\n  24 => \'1\',\n  25 => \'1\',\n  26 => \'1\',\n  27 => \'1\',\n  28 => \'1\',\n  29 => \'1\',\n  30 => \'1\',\n  31 => \'1\',\n  32 => \'1\',\n  33 => \'1\',\n  34 => \'1\',\n  35 => \'1\',\n  39 => \'1\',\n  40 => \'1\',\n  41 => \'1\',\n  42 => \'1\',\n  85 => \'1\',\n  44 => \'1\',\n  45 => \'1\',\n  46 => \'1\',\n  47 => \'1\',\n  48 => \'1\',\n  49 => \'1\',\n  50 => \'1\',\n  51 => \'1\',\n  52 => \'1\',\n  53 => \'1\',\n  54 => \'1\',\n  55 => \'1\',\n  56 => \'1\',\n  57 => \'1\',\n  58 => \'1\',\n  59 => \'1\',\n  60 => \'1\',\n  61 => \'1\',\n  62 => \'1\',\n  63 => \'1\',\n  64 => \'1\',\n  65 => \'1\',\n  67 => \'1\',\n  74 => \'1\',\n  75 => \'1\',\n  76 => \'1\',\n  77 => \'1\',\n  79 => \'1\',\n  80 => \'1\',\n  81 => \'1\',\n  82 => \'1\',\n  83 => \'1\',\n  86 => \'1\',\n  87 => \'1\',\n  88 => \'1\',\n  89 => \'1\',\n  90 => \'1\',\n  91 => \'1\',\n);\n?>');
INSERT INTO `v9_cache` (`filename`, `path`, `data`) VALUES
('category_content_1.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  11 => \n  array (\n    \'catid\' => \'11\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'11\',\n    \'catname\' => \'外事通讯\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'quickannuce\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=11\',\n    \'items\' => \'2\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'1\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'waishitongxun\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  73 => \n  array (\n    \'catid\' => \'73\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'73,82,83\',\n    \'catname\' => \'机构介绍\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'jigoujieshao\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=73\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'2\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'jigoujieshao\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  12 => \n  array (\n    \'catid\' => \'12\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'12,74,79,75,76,80,81,77\',\n    \'catname\' => \'国际交流\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'communi\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=12\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'3\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'guojijiaoliu\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  13 => \n  array (\n    \'catid\' => \'13\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'13,22,23,26,27,84,24,28,29,25,30,31\',\n    \'catname\' => \'国际合作\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'cooper\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=13\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'4\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'guojihezuo\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  14 => \n  array (\n    \'catid\' => \'14\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'14,58,59,60,61\',\n    \'catname\' => \'港澳台交流合作\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'webpagesCooper\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=14\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'5\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'gangaotaijiaoliuhezuo\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  15 => \n  array (\n    \'catid\' => \'15\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'15,62,63,64\',\n    \'catname\' => \'国际认证\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'authentication\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=15\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'6\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'guojirenzheng\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  16 => \n  array (\n    \'catid\' => \'16\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'16,39,85,44,45,46,40,47,48,49,50,41,51,52,53,42,54,55,56,57\',\n    \'catname\' => \'外教管理\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'teacher\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=16\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_video","list_template":"list_video","show_template":"show_video","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'7\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'waijiaoguanli\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  17 => \n  array (\n    \'catid\' => \'17\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'17,32,33,34,35\',\n    \'catname\' => \'来华留学\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'studychina\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=17\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_download","list_template":"list_download","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'8\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'laihualiuxue\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  18 => \n  array (\n    \'catid\' => \'18\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'18,65\',\n    \'catname\' => \'港澳台招生\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'recruit\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=18\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'9\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'gangaotaizhaosheng\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  10 => \n  array (\n    \'catid\' => \'10\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'10\',\n    \'catname\' => \'通知公告\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'annunce\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=10\',\n    \'items\' => \'4\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'10\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'tongzhigonggao\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  22 => \n  array (\n    \'catid\' => \'22\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'13\',\n    \'arrparentid\' => \'0,13\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'22\',\n    \'catname\' => \'中外办学项目\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'cooper/\',\n    \'catdir\' => \'cooperwork\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=22\',\n    \'items\' => \'1\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'22\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'zhongwaibanxuexiangmu\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  23 => \n  array (\n    \'catid\' => \'23\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'13\',\n    \'arrparentid\' => \'0,13\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'23,26,27\',\n    \'catname\' => \'一学期交换生项目\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'cooper/\',\n    \'catdir\' => \'oneschool\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=23\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'23\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'yixueqijiaohuanshengxiangmu\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  84 => \n  array (\n    \'catid\' => \'84\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'13\',\n    \'arrparentid\' => \'0,13\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'84\',\n    \'catname\' => \'互免学费交换生项目\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'cooper/\',\n    \'catdir\' => \'freestudent\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=84\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'23\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'humianxuefeijiaohuanshengxiang\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  24 => \n  array (\n    \'catid\' => \'24\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'13\',\n    \'arrparentid\' => \'0,13\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'24,28,29\',\n    \'catname\' => \'2+2/3+1学分互认项目\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'cooper/\',\n    \'catdir\' => \'twoandtwo\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=24\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'24\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'2+2/3+1xuefenhurenxiangmu\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  25 => \n  array (\n    \'catid\' => \'25\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'13\',\n    \'arrparentid\' => \'0,13\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'25,30,31\',\n    \'catname\' => \'3+1+1本硕连读项目\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'cooper/\',\n    \'catdir\' => \'threeAndOne\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=25\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'25\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'3+1+1benshuolianduxiangmu\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  26 => \n  array (\n    \'catid\' => \'26\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'23\',\n    \'arrparentid\' => \'0,13,23\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'26\',\n    \'catname\' => \'美国\',\n    \'style\' => \'\',\n    \'image\' => \'http://communi.chenyimin.cn/uploadfile/2017/0107/20170107100442450.jpg\',\n    \'description\' => \'这个就是一个一学期交换美国的描述\',\n    \'parentdir\' => \'cooper/oneschool/\',\n    \'catdir\' => \'onoeclassusa\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=26\',\n    \'items\' => \'1\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'26\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'meiguo\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  27 => \n  array (\n    \'catid\' => \'27\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'23\',\n    \'arrparentid\' => \'0,13,23\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'27\',\n    \'catname\' => \'英国\',\n    \'style\' => \'\',\n    \'image\' => \'http://communi.chenyimin.cn/uploadfile/2017/0107/20170107095933412.jpg\',\n    \'description\' => \'这里显示的是对美国这个国家的描述，描述到底有多长呢，我需要测试一下下\',\n    \'parentdir\' => \'cooper/oneschool/\',\n    \'catdir\' => \'oneclassenglish\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=27\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'27\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'yingguo\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  28 => \n  array (\n    \'catid\' => \'28\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'24\',\n    \'arrparentid\' => \'0,13,24\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'28\',\n    \'catname\' => \'美国\',\n    \'style\' => \'\',\n    \'image\' => \'http://communi.chenyimin.cn/uploadfile/2017/0107/20170107100049124.jpg\',\n    \'description\' => \'\',\n    \'parentdir\' => \'cooper/twoandtwo/\',\n    \'catdir\' => \'twoandtwoenglish\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=28\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'28\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'meiguo\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  29 => \n  array (\n    \'catid\' => \'29\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'24\',\n    \'arrparentid\' => \'0,13,24\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'29\',\n    \'catname\' => \'美国\',\n    \'style\' => \'\',\n    \'image\' => \'http://communi.chenyimin.cn/uploadfile/2017/0107/20170107100103284.jpg\',\n    \'description\' => \'\',\n    \'parentdir\' => \'cooper/twoandtwo/\',\n    \'catdir\' => \'twoandtwousa\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=29\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'29\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'meiguo\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  30 => \n  array (\n    \'catid\' => \'30\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'25\',\n    \'arrparentid\' => \'0,13,25\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'30\',\n    \'catname\' => \'美国\',\n    \'style\' => \'\',\n    \'image\' => \'http://communi.chenyimin.cn/uploadfile/2017/0107/20170107100506636.jpg\',\n    \'description\' => \'这里应该有一个叫做描述的东西的但是我也不知道我该怎么填写\',\n    \'parentdir\' => \'cooper/threeAndOne/\',\n    \'catdir\' => \'twoandoneusa\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=30\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'30\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'meiguo\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  31 => \n  array (\n    \'catid\' => \'31\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'25\',\n    \'arrparentid\' => \'0,13,25\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'31\',\n    \'catname\' => \'英国\',\n    \'style\' => \'\',\n    \'image\' => \'http://communi.chenyimin.cn/uploadfile/2017/0107/20170107100233802.jpg\',\n    \'description\' => \'这里应该有一个叫做描述的东西的但是我也不知道我该怎么填写\',\n    \'parentdir\' => \'cooper/threeAndOne/\',\n    \'catdir\' => \'twoandoneenglish\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=31\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'31\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'yingguo\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  32 => \n  array (\n    \'catid\' => \'32\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'17\',\n    \'arrparentid\' => \'0,17\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'32\',\n    \'catname\' => \'留学类别\',\n    \'style\' => \'\',\n    \'image\' => \'http://communi.chenyimin.cn/uploadfile/2017/0212/20170212060123516.jpg\',\n    \'description\' => \'\',\n    \'parentdir\' => \'studychina/\',\n    \'catdir\' => \'classgen\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=32\',\n    \'items\' => \'3\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_download","list_template":"list_download","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'32\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'liuxueleibie\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  33 => \n  array (\n    \'catid\' => \'33\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'17\',\n    \'arrparentid\' => \'0,17\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'33\',\n    \'catname\' => \'招生信息\',\n    \'style\' => \'\',\n    \'image\' => \'http://communi.chenyimin.cn/uploadfile/2017/0212/20170212060143152.jpg\',\n    \'description\' => \'\',\n    \'parentdir\' => \'studychina/\',\n    \'catdir\' => \'studentjoinus\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=33\',\n    \'items\' => \'3\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_download","list_template":"list_download","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'33\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'zhaoshengxinxi\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  34 => \n  array (\n    \'catid\' => \'34\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'17\',\n    \'arrparentid\' => \'0,17\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'34\',\n    \'catname\' => \'日常管理\',\n    \'style\' => \'\',\n    \'image\' => \'http://communi.chenyimin.cn/uploadfile/2017/0212/20170212060210701.jpg\',\n    \'description\' => \'\',\n    \'parentdir\' => \'studychina/\',\n    \'catdir\' => \'manGen\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=34\',\n    \'items\' => \'5\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_download","list_template":"list_download","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'34\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'richangguanli\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  35 => \n  array (\n    \'catid\' => \'35\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'17\',\n    \'arrparentid\' => \'0,17\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'35\',\n    \'catname\' => \'来华留学奖学金\',\n    \'style\' => \'\',\n    \'image\' => \'http://communi.chenyimin.cn/uploadfile/2017/0212/20170212060234895.jpg\',\n    \'description\' => \'\',\n    \'parentdir\' => \'studychina/\',\n    \'catdir\' => \'studymony\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=35\',\n    \'items\' => \'2\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_download","list_template":"list_download","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'35\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'laihualiuxuejiangxuejin\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  39 => \n  array (\n    \'catid\' => \'39\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'16\',\n    \'arrparentid\' => \'0,16\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'39,85,44,45,46\',\n    \'catname\' => \'外教情况\',\n    \'style\' => \'\',\n    \'image\' => \'http://communi.chenyimin.cn/uploadfile/2017/0212/20170212055856599.jpg\',\n    \'description\' => \'\',\n    \'parentdir\' => \'teacher/\',\n    \'catdir\' => \'outexpert\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=39\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_video","list_template":"list_video","show_template":"show_video","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'39\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'waijiaoqingkuang\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  40 => \n  array (\n    \'catid\' => \'40\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'16\',\n    \'arrparentid\' => \'0,16\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'40,47,48,49,50\',\n    \'catname\' => \'外教聘用程序\',\n    \'style\' => \'\',\n    \'image\' => \'http://communi.chenyimin.cn/uploadfile/2017/0212/20170212055942680.jpg\',\n    \'description\' => \'\',\n    \'parentdir\' => \'teacher/\',\n    \'catdir\' => \'studentjoinus\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=40\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_video","list_template":"list_video","show_template":"show_video","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'40\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'waijiaopinyongchengxu\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  41 => \n  array (\n    \'catid\' => \'41\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'16\',\n    \'arrparentid\' => \'0,16\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'41,51,52,53\',\n    \'catname\' => \'外教服务指南\',\n    \'style\' => \'\',\n    \'image\' => \'http://communi.chenyimin.cn/uploadfile/2017/0212/20170212060011649.jpg\',\n    \'description\' => \'\',\n    \'parentdir\' => \'teacher/\',\n    \'catdir\' => \'servlet\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=41\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_video","list_template":"list_video","show_template":"show_video","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'41\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'waijiaofuwuzhinan\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  42 => \n  array (\n    \'catid\' => \'42\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'16\',\n    \'arrparentid\' => \'0,16\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'42,54,55,56,57\',\n    \'catname\' => \'外教活动\',\n    \'style\' => \'\',\n    \'image\' => \'http://communi.chenyimin.cn/uploadfile/2017/0212/20170212060033688.jpg\',\n    \'description\' => \'\',\n    \'parentdir\' => \'teacher/\',\n    \'catdir\' => \'outacivity\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=42\',\n    \'items\' => \'1\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_video","list_template":"list_video","show_template":"show_video","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'42\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'waijiaohuodong\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  85 => \n  array (\n    \'catid\' => \'85\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'39\',\n    \'arrparentid\' => \'0,16,39\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'85\',\n    \'catname\' => \'外教风采\',\n    \'style\' => \'\',\n    \'image\' => \'http://communi.chenyimin.cn/uploadfile/2017/0212/20170212055856599.jpg\',\n    \'description\' => \'\',\n    \'parentdir\' => \'teacher/outexpert/\',\n    \'catdir\' => \'teachercolor\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=85\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'43\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'waijiaofengcai\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  44 => \n  array (\n    \'catid\' => \'44\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'39\',\n    \'arrparentid\' => \'0,16,39\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'44\',\n    \'catname\' => \'规章制度\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'teacher/outexpert/\',\n    \'catdir\' => \'ruler\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=44\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1","category_template":"category_video","list_template":"list_video","show_template":"show_video"}\',\n    \'listorder\' => \'44\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'guizhangzhidu\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  45 => \n  array (\n    \'catid\' => \'45\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'39\',\n    \'arrparentid\' => \'0,16,39\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'45\',\n    \'catname\' => \'荣誉奖励\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'teacher/outexpert/\',\n    \'catdir\' => \'honor\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=45\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1","category_template":"category_video","list_template":"list_video","show_template":"show_video"}\',\n    \'listorder\' => \'45\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'rongyujiangli\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  46 => \n  array (\n    \'catid\' => \'46\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'39\',\n    \'arrparentid\' => \'0,16,39\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'46\',\n    \'catname\' => \'招聘信息\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'teacher/outexpert/\',\n    \'catdir\' => \'infoofjoin\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=46\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1","category_template":"category_video","list_template":"list_video","show_template":"show_video"}\',\n    \'listorder\' => \'46\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'zhaopinxinxi\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  47 => \n  array (\n    \'catid\' => \'47\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'40\',\n    \'arrparentid\' => \'0,16,40\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'47\',\n    \'catname\' => \'长期外教专家聘用流程\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'teacher/studentjoinus/\',\n    \'catdir\' => \'longJoinUs\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=47\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1","category_template":"category_video","list_template":"list_video","show_template":"show_video"}\',\n    \'listorder\' => \'47\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'changqiwaijiaozhuanjiapinyongl\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  48 => \n  array (\n    \'catid\' => \'48\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'40\',\n    \'arrparentid\' => \'0,16,40\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'48\',\n    \'catname\' => \'证件办理\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'teacher/studentjoinus/\',\n    \'catdir\' => \'makePapers\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=48\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1","category_template":"category_video","list_template":"list_video","show_template":"show_video"}\',\n    \'listorder\' => \'48\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'zhengjianbanli\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  49 => \n  array (\n    \'catid\' => \'49\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'40\',\n    \'arrparentid\' => \'0,16,40\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'49\',\n    \'catname\' => \'短期外教专家聘用流程\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'teacher/studentjoinus/\',\n    \'catdir\' => \'shortJoinUs\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=49\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1","category_template":"category_video","list_template":"list_video","show_template":"show_video"}\',\n    \'listorder\' => \'49\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'duanqiwaijiaozhuanjiapinyongli\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  50 => \n  array (\n    \'catid\' => \'50\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'40\',\n    \'arrparentid\' => \'0,16,40\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'50\',\n    \'catname\' => \'入职&离职\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'teacher/studentjoinus/\',\n    \'catdir\' => \'joinAndLeave\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=50\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1","category_template":"category_video","list_template":"list_video","show_template":"show_video"}\',\n    \'listorder\' => \'50\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'ruzhi&lizhi\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  51 => \n  array (\n    \'catid\' => \'51\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'41\',\n    \'arrparentid\' => \'0,16,41\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'51\',\n    \'catname\' => \'来华前\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'teacher/servlet/\',\n    \'catdir\' => \'before\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=51\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1","category_template":"category_video","list_template":"list_video","show_template":"show_video"}\',\n    \'listorder\' => \'51\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'laihuaqian\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  52 => \n  array (\n    \'catid\' => \'52\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'41\',\n    \'arrparentid\' => \'0,16,41\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'52\',\n    \'catname\' => \'来华后\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'teacher/servlet/\',\n    \'catdir\' => \'after\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=52\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1","category_template":"category_video","list_template":"list_video","show_template":"show_video"}\',\n    \'listorder\' => \'52\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'laihuahou\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  53 => \n  array (\n    \'catid\' => \'53\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'41\',\n    \'arrparentid\' => \'0,16,41\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'53\',\n    \'catname\' => \'外教指南\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'teacher/servlet/\',\n    \'catdir\' => \'teaOutTeacher\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=53\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1","category_template":"category_video","list_template":"list_video","show_template":"show_video"}\',\n    \'listorder\' => \'53\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'waijiaozhinan\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  54 => \n  array (\n    \'catid\' => \'54\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'42\',\n    \'arrparentid\' => \'0,16,42\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'54\',\n    \'catname\' => \'活动1\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'teacher/outacivity/\',\n    \'catdir\' => \'activityone\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=54\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1"}\',\n    \'listorder\' => \'54\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'huodong1\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  55 => \n  array (\n    \'catid\' => \'55\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'42\',\n    \'arrparentid\' => \'0,16,42\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'55\',\n    \'catname\' => \'活动2\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'teacher/outacivity/\',\n    \'catdir\' => \'acivitytwo\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=55\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1"}\',\n    \'listorder\' => \'55\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'huodong2\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  56 => \n  array (\n    \'catid\' => \'56\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'42\',\n    \'arrparentid\' => \'0,16,42\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'56\',\n    \'catname\' => \'活动3\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'teacher/outacivity/\',\n    \'catdir\' => \'activitythree\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=56\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1"}\',\n    \'listorder\' => \'56\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'huodong3\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  57 => \n  array (\n    \'catid\' => \'57\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'42\',\n    \'arrparentid\' => \'0,16,42\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'57\',\n    \'catname\' => \'活动4\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'teacher/outacivity/\',\n    \'catdir\' => \'activityFour\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=57\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"ishtml":"0","template_list":"","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1"}\',\n    \'listorder\' => \'57\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'huodong4\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  58 => \n  array (\n    \'catid\' => \'58\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'14\',\n    \'arrparentid\' => \'0,14\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'58\',\n    \'catname\' => \'短期文化交流项目\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'webpagesCooper/\',\n    \'catdir\' => \'shortcul\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=58\',\n    \'items\' => \'2\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'58\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'duanqiwenhuajiaoliuxiangmu\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  59 => \n  array (\n    \'catid\' => \'59\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'14\',\n    \'arrparentid\' => \'0,14\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'59\',\n    \'catname\' => \'互免学费交换生\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'webpagesCooper/\',\n    \'catdir\' => \'publicExchange\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=59\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'59\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'humianxuefeijiaohuansheng\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  60 => \n  array (\n    \'catid\' => \'60\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'14\',\n    \'arrparentid\' => \'0,14\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'60\',\n    \'catname\' => \'一学期研习项目\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'webpagesCooper/\',\n    \'catdir\' => \'oneClassToStudy\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=60\',\n    \'items\' => \'1\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'60\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'yixueqiyanxixiangmu\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  61 => \n  array (\n    \'catid\' => \'61\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'14\',\n    \'arrparentid\' => \'0,14\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'61\',\n    \'catname\' => \'保荐研究生项目\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'webpagesCooper/\',\n    \'catdir\' => \'connectInfo\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=61\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'61\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'baojianyanjiushengxiangmu\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  62 => \n  array (\n    \'catid\' => \'62\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'15\',\n    \'arrparentid\' => \'0,15\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'62\',\n    \'catname\' => \'IACBE国际认证\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'authentication/\',\n    \'catdir\' => \'IACBE\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=62\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'62\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'iacbeguojirenzheng\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  63 => \n  array (\n    \'catid\' => \'63\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'15\',\n    \'arrparentid\' => \'0,15\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'63\',\n    \'catname\' => \'ABET国际认证\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'authentication/\',\n    \'catdir\' => \'ABET\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=63\',\n    \'items\' => \'2\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'63\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'abetguojirenzheng\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  64 => \n  array (\n    \'catid\' => \'64\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'15\',\n    \'arrparentid\' => \'0,15\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'64\',\n    \'catname\' => \'IEEE认证\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'authentication/\',\n    \'catdir\' => \'ieeerenzheng\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=64\',\n    \'items\' => \'2\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'64\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'ieeerenzheng\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  65 => \n  array (\n    \'catid\' => \'65\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'18\',\n    \'arrparentid\' => \'0,18\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'65\',\n    \'catname\' => \'港澳台招生简介\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'recruit/\',\n    \'catdir\' => \'genForao\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=65\',\n    \'items\' => \'1\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'65\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'gangaotaizhaoshengjianjie\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  67 => \n  array (\n    \'catid\' => \'67\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'67\',\n    \'catname\' => \'联系我们\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'linkToUs\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=67\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"ishtml":"0","template_list":"","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1"}\',\n    \'listorder\' => \'67\',\n    \'ismenu\' => \'0\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'lianxiwomen\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  74 => \n  array (\n    \'catid\' => \'74\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'12\',\n    \'arrparentid\' => \'0,12\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'74,79\',\n    \'catname\' => \'中欧交流项目\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'communi/\',\n    \'catdir\' => \'zhongoujiaoliuxiangmu\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=74\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'74\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'zhongoujiaoliuxiangmu\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  75 => \n  array (\n    \'catid\' => \'75\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'12\',\n    \'arrparentid\' => \'0,12\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'75\',\n    \'catname\' => \'中美交流项目\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'communi/\',\n    \'catdir\' => \'zhongmeijiaoliuxiangmu\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=75\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'75\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'zhongmeijiaoliuxiangmu\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  76 => \n  array (\n    \'catid\' => \'76\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'12\',\n    \'arrparentid\' => \'0,12\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'76,80,81\',\n    \'catname\' => \'中亚交流项目\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'communi/\',\n    \'catdir\' => \'zhongyajiaoliuxiangmu\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=76\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'76\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'zhongyajiaoliuxiangmu\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  77 => \n  array (\n    \'catid\' => \'77\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'12\',\n    \'arrparentid\' => \'0,12\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'77\',\n    \'catname\' => \'中澳交流项目\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'communi/\',\n    \'catdir\' => \'zhongaojiaoliuxiangmu\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=77\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'77\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'zhongaojiaoliuxiangmu\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  79 => \n  array (\n    \'catid\' => \'79\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'74\',\n    \'arrparentid\' => \'0,12,74\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'79\',\n    \'catname\' => \'英国\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'communi/zhongoujiaoliuxiangmu/\',\n    \'catdir\' => \'english\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=79\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'79\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'yingguo\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  80 => \n  array (\n    \'catid\' => \'80\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'76\',\n    \'arrparentid\' => \'0,12,76\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'80\',\n    \'catname\' => \'新加坡\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'communi/zhongyajiaoliuxiangmu/\',\n    \'catdir\' => \'xinjiapo\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=80\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'80\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'xinjiapo\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  81 => \n  array (\n    \'catid\' => \'81\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'76\',\n    \'arrparentid\' => \'0,12,76\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'81\',\n    \'catname\' => \'韩国\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'communi/zhongyajiaoliuxiangmu/\',\n    \'catdir\' => \'hanguo\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=81\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'81\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'hanguo\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  82 => \n  array (\n    \'catid\' => \'82\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'73\',\n    \'arrparentid\' => \'0,73\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'82\',\n    \'catname\' => \'项目\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'jigoujieshao/\',\n    \'catdir\' => \'xiangmu\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=82\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'82\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'xiangmu\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  83 => \n  array (\n    \'catid\' => \'83\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'73\',\n    \'arrparentid\' => \'0,73\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'83\',\n    \'catname\' => \'机构\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'jigoujieshao/\',\n    \'catdir\' => \'jigou\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=83\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'83\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'jigou\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  86 => \n  array (\n    \'catid\' => \'86\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'86,87,88,89,90,91\',\n    \'catname\' => \'图例\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'tuli\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=86\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'86\',\n    \'ismenu\' => \'0\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'tuli\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  87 => \n  array (\n    \'catid\' => \'87\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'86\',\n    \'arrparentid\' => \'0,86\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'87\',\n    \'catname\' => \'办事流程\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'tuli/\',\n    \'catdir\' => \'banshiliucheng\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=87\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'87\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'banshiliucheng\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  88 => \n  array (\n    \'catid\' => \'88\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'86\',\n    \'arrparentid\' => \'0,86\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'88\',\n    \'catname\' => \'国家政策法规\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'tuli/\',\n    \'catdir\' => \'guojiazhengcefagui\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=88\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'88\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'guojiazhengcefagui\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  89 => \n  array (\n    \'catid\' => \'89\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'86\',\n    \'arrparentid\' => \'0,86\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'89\',\n    \'catname\' => \'境外签证指南\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'tuli/\',\n    \'catdir\' => \'jingwaiqianzhengzhinan\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=89\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'89\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'jingwaiqianzhengzhinan\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  90 => \n  array (\n    \'catid\' => \'90\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'86\',\n    \'arrparentid\' => \'0,86\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'90\',\n    \'catname\' => \'学校外事制度\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'tuli/\',\n    \'catdir\' => \'xuexiaowaishizhidu\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=90\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'90\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'xuexiaowaishizhidu\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  91 => \n  array (\n    \'catid\' => \'91\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'3\',\n    \'parentid\' => \'86\',\n    \'arrparentid\' => \'0,86\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'91\',\n    \'catname\' => \'广州学院校历\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'tuli/\',\n    \'catdir\' => \'guangzhouxueyuanxiaoli\',\n    \'url\' => \'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=91\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}\',\n    \'listorder\' => \'91\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'guangzhouxueyuanxiaoli\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n);\n?>');
INSERT INTO `v9_cache` (`filename`, `path`, `data`) VALUES
('sitelist.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  1 => \n  array (\n    \'siteid\' => \'1\',\n    \'name\' => \'默认站点\',\n    \'dirname\' => \'\',\n    \'domain\' => \'http://communi.chenyimin.cn/\',\n    \'site_title\' => \'国际交流中心\',\n    \'keywords\' => \'国际交流中心\',\n    \'description\' => \'国际交流中心\',\n    \'release_point\' => \'\',\n    \'default_style\' => \'default\',\n    \'template\' => \'default\',\n    \'setting\' => \'{"upload_maxsize":"2048","upload_allowext":"jpg|jpeg|gif|bmp|png|doc|docx|xls|xlsx|ppt|pptx|pdf|txt|rar|zip|swf","watermark_enable":"0","watermark_minwidth":"300","watermark_minheight":"300","watermark_img":"statics\\\\/images\\\\/water\\\\/\\\\/mark.png","watermark_pct":"85","watermark_quality":"100","watermark_pos":"9"}\',\n    \'uuid\' => \'b1c7bc95-c85d-11e6-bb9c-f0761ccbeea9\',\n    \'url\' => \'http://communi.chenyimin.cn/\',\n  ),\n);\n?>'),
('downservers.cache.php', 'caches_commons/caches_data/', '<?php\nreturn NULL;\n?>'),
('badword.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('ipbanned.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('keylink.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('position.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  2 => \n  array (\n    \'posid\' => \'2\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'首页头条推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'4\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  1 => \n  array (\n    \'posid\' => \'1\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'首页焦点图推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'1\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  16 => \n  array (\n    \'posid\' => \'16\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'视频首页每日热点\',\n    \'maxnum\' => \'20\',\n    \'extention\' => \'\',\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  15 => \n  array (\n    \'posid\' => \'15\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'视频首页头条推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => \'\',\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  14 => \n  array (\n    \'posid\' => \'14\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'视频首页焦点图\',\n    \'maxnum\' => \'20\',\n    \'extention\' => \'\',\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  12 => \n  array (\n    \'posid\' => \'12\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'首页图片推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  10 => \n  array (\n    \'posid\' => \'10\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'栏目首页推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  9 => \n  array (\n    \'posid\' => \'9\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'网站顶部推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  8 => \n  array (\n    \'posid\' => \'8\',\n    \'modelid\' => \'30\',\n    \'catid\' => \'54\',\n    \'name\' => \'图片频道首页焦点图\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  5 => \n  array (\n    \'posid\' => \'5\',\n    \'modelid\' => \'69\',\n    \'catid\' => \'0\',\n    \'name\' => \'推荐下载\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  13 => \n  array (\n    \'posid\' => \'13\',\n    \'modelid\' => \'82\',\n    \'catid\' => \'0\',\n    \'name\' => \'栏目页焦点图\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  17 => \n  array (\n    \'posid\' => \'17\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'视频栏目精彩推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => \'\',\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n);\n?>'),
('role_siteid.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('role.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  1 => \'超级管理员\',\n  2 => \'站点管理员\',\n  3 => \'运营总监\',\n  4 => \'总编\',\n  5 => \'编辑\',\n  7 => \'发布人员\',\n);\n?>'),
('urlrules_detail.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  1 => \n  array (\n    \'urlruleid\' => \'1\',\n    \'module\' => \'content\',\n    \'file\' => \'category\',\n    \'ishtml\' => \'1\',\n    \'urlrule\' => \'{$categorydir}{$catdir}/index.html|{$categorydir}{$catdir}/{$page}.html\',\n    \'example\' => \'news/china/1000.html\',\n  ),\n  6 => \n  array (\n    \'urlruleid\' => \'6\',\n    \'module\' => \'content\',\n    \'file\' => \'category\',\n    \'ishtml\' => \'0\',\n    \'urlrule\' => \'index.php?m=content&c=index&a=lists&catid={$catid}|index.php?m=content&c=index&a=lists&catid={$catid}&page={$page}\',\n    \'example\' => \'index.php?m=content&c=index&a=lists&catid=1&page=1\',\n  ),\n  11 => \n  array (\n    \'urlruleid\' => \'11\',\n    \'module\' => \'content\',\n    \'file\' => \'show\',\n    \'ishtml\' => \'1\',\n    \'urlrule\' => \'{$year}/{$catdir}_{$month}{$day}/{$id}.html|{$year}/{$catdir}_{$month}{$day}/{$id}_{$page}.html\',\n    \'example\' => \'2010/catdir_0720/1_2.html\',\n  ),\n  12 => \n  array (\n    \'urlruleid\' => \'12\',\n    \'module\' => \'content\',\n    \'file\' => \'show\',\n    \'ishtml\' => \'1\',\n    \'urlrule\' => \'{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}.html|{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}_{$page}.html\',\n    \'example\' => \'it/product/2010/0720/1_2.html\',\n  ),\n  16 => \n  array (\n    \'urlruleid\' => \'16\',\n    \'module\' => \'content\',\n    \'file\' => \'show\',\n    \'ishtml\' => \'0\',\n    \'urlrule\' => \'index.php?m=content&c=index&a=show&catid={$catid}&id={$id}|index.php?m=content&c=index&a=show&catid={$catid}&id={$id}&page={$page}\',\n    \'example\' => \'index.php?m=content&c=index&a=show&catid=1&id=1\',\n  ),\n  17 => \n  array (\n    \'urlruleid\' => \'17\',\n    \'module\' => \'content\',\n    \'file\' => \'show\',\n    \'ishtml\' => \'0\',\n    \'urlrule\' => \'show-{$catid}-{$id}-{$page}.html\',\n    \'example\' => \'show-1-2-1.html\',\n  ),\n  18 => \n  array (\n    \'urlruleid\' => \'18\',\n    \'module\' => \'content\',\n    \'file\' => \'show\',\n    \'ishtml\' => \'0\',\n    \'urlrule\' => \'content-{$catid}-{$id}-{$page}.html\',\n    \'example\' => \'content-1-2-1.html\',\n  ),\n  30 => \n  array (\n    \'urlruleid\' => \'30\',\n    \'module\' => \'content\',\n    \'file\' => \'category\',\n    \'ishtml\' => \'0\',\n    \'urlrule\' => \'list-{$catid}-{$page}.html\',\n    \'example\' => \'list-1-1.html\',\n  ),\n);\n?>'),
('urlrules.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  1 => \'{$categorydir}{$catdir}/index.html|{$categorydir}{$catdir}/{$page}.html\',\n  6 => \'index.php?m=content&c=index&a=lists&catid={$catid}|index.php?m=content&c=index&a=lists&catid={$catid}&page={$page}\',\n  11 => \'{$year}/{$catdir}_{$month}{$day}/{$id}.html|{$year}/{$catdir}_{$month}{$day}/{$id}_{$page}.html\',\n  12 => \'{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}.html|{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}_{$page}.html\',\n  16 => \'index.php?m=content&c=index&a=show&catid={$catid}&id={$id}|index.php?m=content&c=index&a=show&catid={$catid}&id={$id}&page={$page}\',\n  17 => \'show-{$catid}-{$id}-{$page}.html\',\n  18 => \'content-{$catid}-{$id}-{$page}.html\',\n  30 => \'list-{$catid}-{$page}.html\',\n);\n?>'),
('modules.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  \'admin\' => \n  array (\n    \'module\' => \'admin\',\n    \'name\' => \'admin\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'array (\n  \\\'admin_email\\\' => \\\'phpcms@phpcms.cn\\\',\n  \\\'adminaccessip\\\' => \\\'0\\\',\n  \\\'maxloginfailedtimes\\\' => \\\'8\\\',\n  \\\'maxiplockedtime\\\' => \\\'15\\\',\n  \\\'minrefreshtime\\\' => \\\'2\\\',\n  \\\'mail_type\\\' => \\\'1\\\',\n  \\\'mail_server\\\' => \\\'smtp.qq.com\\\',\n  \\\'mail_port\\\' => \\\'25\\\',\n  \\\'mail_user\\\' => \\\'phpcms.cn@foxmail.com\\\',\n  \\\'mail_auth\\\' => \\\'1\\\',\n  \\\'mail_from\\\' => \\\'phpcms.cn@foxmail.com\\\',\n  \\\'mail_password\\\' => \\\'\\\',\n  \\\'errorlog_size\\\' => \\\'20\\\',\n)\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-10-18\',\n    \'updatedate\' => \'2010-10-18\',\n  ),\n  \'member\' => \n  array (\n    \'module\' => \'member\',\n    \'name\' => \'会员\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'{"allowregister":"0","choosemodel":"0","enablemailcheck":"0","enablcodecheck":"0","mobile_checktype":"0","user_sendsms_title":"","registerverify":"0","showapppoint":"0","rmb_point_rate":"10","defualtpoint":"0","defualtamount":"0","showregprotocol":"0","regprotocol":"\\\\t\\\\t \\\\u6b22\\\\u8fce\\\\u60a8\\\\u6ce8\\\\u518c\\\\u6210\\\\u4e3aphpcms\\\\u7528\\\\u6237\\\\r\\\\n\\\\u8bf7\\\\u4ed4\\\\u7ec6\\\\u9605\\\\u8bfb\\\\u4e0b\\\\u9762\\\\u7684\\\\u534f\\\\u8bae\\\\uff0c\\\\u53ea\\\\u6709\\\\u63a5\\\\u53d7\\\\u534f\\\\u8bae\\\\u624d\\\\u80fd\\\\u7ee7\\\\u7eed\\\\u8fdb\\\\u884c\\\\u6ce8\\\\u518c\\\\u3002 \\\\r\\\\n1\\\\uff0e\\\\u670d\\\\u52a1\\\\u6761\\\\u6b3e\\\\u7684\\\\u786e\\\\u8ba4\\\\u548c\\\\u63a5\\\\u7eb3\\\\r\\\\n\\\\u3000\\\\u3000phpcms\\\\u7528\\\\u6237\\\\u670d\\\\u52a1\\\\u7684\\\\u6240\\\\u6709\\\\u6743\\\\u548c\\\\u8fd0\\\\u4f5c\\\\u6743\\\\u5f52phpcms\\\\u62e5\\\\u6709\\\\u3002phpcms\\\\u6240\\\\u63d0\\\\u4f9b\\\\u7684\\\\u670d\\\\u52a1\\\\u5c06\\\\u6309\\\\u7167\\\\u6709\\\\u5173\\\\u7ae0\\\\u7a0b\\\\u3001\\\\u670d\\\\u52a1\\\\u6761\\\\u6b3e\\\\u548c\\\\u64cd\\\\u4f5c\\\\u89c4\\\\u5219\\\\u4e25\\\\u683c\\\\u6267\\\\u884c\\\\u3002\\\\u7528\\\\u6237\\\\u901a\\\\u8fc7\\\\u6ce8\\\\u518c\\\\u7a0b\\\\u5e8f\\\\u70b9\\\\u51fb\\\\u201c\\\\u6211\\\\u540c\\\\u610f\\\\u201d \\\\u6309\\\\u94ae\\\\uff0c\\\\u5373\\\\u8868\\\\u793a\\\\u7528\\\\u6237\\\\u4e0ephpcms\\\\u8fbe\\\\u6210\\\\u534f\\\\u8bae\\\\u5e76\\\\u63a5\\\\u53d7\\\\u6240\\\\u6709\\\\u7684\\\\u670d\\\\u52a1\\\\u6761\\\\u6b3e\\\\u3002\\\\r\\\\n2\\\\uff0e phpcms\\\\u670d\\\\u52a1\\\\u7b80\\\\u4ecb\\\\r\\\\n\\\\u3000\\\\u3000phpcms\\\\u901a\\\\u8fc7\\\\u56fd\\\\u9645\\\\u4e92\\\\u8054\\\\u7f51\\\\u4e3a\\\\u7528\\\\u6237\\\\u63d0\\\\u4f9b\\\\u65b0\\\\u95fb\\\\u53ca\\\\u6587\\\\u7ae0\\\\u6d4f\\\\u89c8\\\\u3001\\\\u56fe\\\\u7247\\\\u6d4f\\\\u89c8\\\\u3001\\\\u8f6f\\\\u4ef6\\\\u4e0b\\\\u8f7d\\\\u3001\\\\u7f51\\\\u4e0a\\\\u7559\\\\u8a00\\\\u548cBBS\\\\u8bba\\\\u575b\\\\u7b49\\\\u670d\\\\u52a1\\\\u3002\\\\r\\\\n\\\\u3000\\\\u3000\\\\u7528\\\\u6237\\\\u5fc5\\\\u987b\\\\uff1a \\\\r\\\\n\\\\u3000\\\\u30001)\\\\u8d2d\\\\u7f6e\\\\u8bbe\\\\u5907\\\\uff0c\\\\u5305\\\\u62ec\\\\u4e2a\\\\u4eba\\\\u7535\\\\u8111\\\\u4e00\\\\u53f0\\\\u3001\\\\u8c03\\\\u5236\\\\u89e3\\\\u8c03\\\\u5668\\\\u4e00\\\\u4e2a\\\\u53ca\\\\u914d\\\\u5907\\\\u4e0a\\\\u7f51\\\\u88c5\\\\u7f6e\\\\u3002 \\\\r\\\\n\\\\u3000\\\\u30002)\\\\u4e2a\\\\u4eba\\\\u4e0a\\\\u7f51\\\\u548c\\\\u652f\\\\u4ed8\\\\u4e0e\\\\u6b64\\\\u670d\\\\u52a1\\\\u6709\\\\u5173\\\\u7684\\\\u7535\\\\u8bdd\\\\u8d39\\\\u7528\\\\u3001\\\\u7f51\\\\u7edc\\\\u8d39\\\\u7528\\\\u3002\\\\r\\\\n\\\\u3000\\\\u3000\\\\u7528\\\\u6237\\\\u540c\\\\u610f\\\\uff1a \\\\r\\\\n\\\\u3000\\\\u30001)\\\\u63d0\\\\u4f9b\\\\u53ca\\\\u65f6\\\\u3001\\\\u8be6\\\\u5c3d\\\\u53ca\\\\u51c6\\\\u786e\\\\u7684\\\\u4e2a\\\\u4eba\\\\u8d44\\\\u6599\\\\u3002 \\\\r\\\\n\\\\u3000\\\\u30002)\\\\u4e0d\\\\u65ad\\\\u66f4\\\\u65b0\\\\u6ce8\\\\u518c\\\\u8d44\\\\u6599\\\\uff0c\\\\u7b26\\\\u5408\\\\u53ca\\\\u65f6\\\\u3001\\\\u8be6\\\\u5c3d\\\\u3001\\\\u51c6\\\\u786e\\\\u7684\\\\u8981\\\\u6c42\\\\u3002\\\\u6240\\\\u6709\\\\u539f\\\\u59cb\\\\u952e\\\\u5165\\\\u7684\\\\u8d44\\\\u6599\\\\u5c06\\\\u5f15\\\\u7528\\\\u4e3a\\\\u6ce8\\\\u518c\\\\u8d44\\\\u6599\\\\u3002 \\\\r\\\\n\\\\u3000\\\\u30003)\\\\u7528\\\\u6237\\\\u540c\\\\u610f\\\\u9075\\\\u5b88\\\\u300a\\\\u4e2d\\\\u534e\\\\u4eba\\\\u6c11\\\\u5171\\\\u548c\\\\u56fd\\\\u4fdd\\\\u5b88\\\\u56fd\\\\u5bb6\\\\u79d8\\\\u5bc6\\\\u6cd5\\\\u300b\\\\u3001\\\\u300a\\\\u4e2d\\\\u534e\\\\u4eba\\\\u6c11\\\\u5171\\\\u548c\\\\u56fd\\\\u8ba1\\\\u7b97\\\\u673a\\\\u4fe1\\\\u606f\\\\u7cfb\\\\u7edf\\\\u5b89\\\\u5168\\\\u4fdd\\\\u62a4\\\\u6761\\\\u4f8b\\\\u300b\\\\u3001\\\\u300a\\\\u8ba1\\\\u7b97\\\\u673a\\\\u8f6f\\\\u4ef6\\\\u4fdd\\\\u62a4\\\\u6761\\\\u4f8b\\\\u300b\\\\u7b49\\\\u6709\\\\u5173\\\\u8ba1\\\\u7b97\\\\u673a\\\\u53ca\\\\u4e92\\\\u8054\\\\u7f51\\\\u89c4\\\\u5b9a\\\\u7684\\\\u6cd5\\\\u5f8b\\\\u548c\\\\u6cd5\\\\u89c4\\\\u3001\\\\u5b9e\\\\u65bd\\\\u529e\\\\u6cd5\\\\u3002\\\\u5728\\\\u4efb\\\\u4f55\\\\u60c5\\\\u51b5\\\\u4e0b\\\\uff0cphpcms\\\\u5408\\\\u7406\\\\u5730\\\\u8ba4\\\\u4e3a\\\\u7528\\\\u6237\\\\u7684\\\\u884c\\\\u4e3a\\\\u53ef\\\\u80fd\\\\u8fdd\\\\u53cd\\\\u4e0a\\\\u8ff0\\\\u6cd5\\\\u5f8b\\\\u3001\\\\u6cd5\\\\u89c4\\\\uff0cphpcms\\\\u53ef\\\\u4ee5\\\\u5728\\\\u4efb\\\\u4f55\\\\u65f6\\\\u5019\\\\uff0c\\\\u4e0d\\\\u7ecf\\\\u4e8b\\\\u5148\\\\u901a\\\\u77e5\\\\u7ec8\\\\u6b62\\\\u5411\\\\u8be5\\\\u7528\\\\u6237\\\\u63d0\\\\u4f9b\\\\u670d\\\\u52a1\\\\u3002\\\\u7528\\\\u6237\\\\u5e94\\\\u4e86\\\\u89e3\\\\u56fd\\\\u9645\\\\u4e92\\\\u8054\\\\u7f51\\\\u7684\\\\u65e0\\\\u56fd\\\\u754c\\\\u6027\\\\uff0c\\\\u5e94\\\\u7279\\\\u522b\\\\u6ce8\\\\u610f\\\\u9075\\\\u5b88\\\\u5f53\\\\u5730\\\\u6240\\\\u6709\\\\u6709\\\\u5173\\\\u7684\\\\u6cd5\\\\u5f8b\\\\u548c\\\\u6cd5\\\\u89c4\\\\u3002\\\\r\\\\n3\\\\uff0e \\\\u670d\\\\u52a1\\\\u6761\\\\u6b3e\\\\u7684\\\\u4fee\\\\u6539\\\\r\\\\n\\\\u3000\\\\u3000phpcms\\\\u4f1a\\\\u4e0d\\\\u5b9a\\\\u65f6\\\\u5730\\\\u4fee\\\\u6539\\\\u670d\\\\u52a1\\\\u6761\\\\u6b3e\\\\uff0c\\\\u670d\\\\u52a1\\\\u6761\\\\u6b3e\\\\u4e00\\\\u65e6\\\\u53d1\\\\u751f\\\\u53d8\\\\u52a8\\\\uff0c\\\\u5c06\\\\u4f1a\\\\u5728\\\\u76f8\\\\u5173\\\\u9875\\\\u9762\\\\u4e0a\\\\u63d0\\\\u793a\\\\u4fee\\\\u6539\\\\u5185\\\\u5bb9\\\\u3002\\\\u5982\\\\u679c\\\\u60a8\\\\u540c\\\\u610f\\\\u6539\\\\u52a8\\\\uff0c\\\\u5219\\\\u518d\\\\u4e00\\\\u6b21\\\\u70b9\\\\u51fb\\\\u201c\\\\u6211\\\\u540c\\\\u610f\\\\u201d\\\\u6309\\\\u94ae\\\\u3002 \\\\u5982\\\\u679c\\\\u60a8\\\\u4e0d\\\\u63a5\\\\u53d7\\\\uff0c\\\\u5219\\\\u53ca\\\\u65f6\\\\u53d6\\\\u6d88\\\\u60a8\\\\u7684\\\\u7528\\\\u6237\\\\u4f7f\\\\u7528\\\\u670d\\\\u52a1\\\\u8d44\\\\u683c\\\\u3002\\\\r\\\\n4\\\\uff0e \\\\u670d\\\\u52a1\\\\u4fee\\\\u8ba2\\\\r\\\\n\\\\u3000\\\\u3000phpcms\\\\u4fdd\\\\u7559\\\\u968f\\\\u65f6\\\\u4fee\\\\u6539\\\\u6216\\\\u4e2d\\\\u65ad\\\\u670d\\\\u52a1\\\\u800c\\\\u4e0d\\\\u9700\\\\u77e5\\\\u7167\\\\u7528\\\\u6237\\\\u7684\\\\u6743\\\\u5229\\\\u3002phpcms\\\\u884c\\\\u4f7f\\\\u4fee\\\\u6539\\\\u6216\\\\u4e2d\\\\u65ad\\\\u670d\\\\u52a1\\\\u7684\\\\u6743\\\\u5229\\\\uff0c\\\\u4e0d\\\\u9700\\\\u5bf9\\\\u7528\\\\u6237\\\\u6216\\\\u7b2c\\\\u4e09\\\\u65b9\\\\u8d1f\\\\u8d23\\\\u3002\\\\r\\\\n5\\\\uff0e \\\\u7528\\\\u6237\\\\u9690\\\\u79c1\\\\u5236\\\\u5ea6\\\\r\\\\n\\\\u3000\\\\u3000\\\\u5c0a\\\\u91cd\\\\u7528\\\\u6237\\\\u4e2a\\\\u4eba\\\\u9690\\\\u79c1\\\\u662fphpcms\\\\u7684 \\\\u57fa\\\\u672c\\\\u653f\\\\u7b56\\\\u3002phpcms\\\\u4e0d\\\\u4f1a\\\\u516c\\\\u5f00\\\\u3001\\\\u7f16\\\\u8f91\\\\u6216\\\\u900f\\\\u9732\\\\u7528\\\\u6237\\\\u7684\\\\u6ce8\\\\u518c\\\\u4fe1\\\\u606f\\\\uff0c\\\\u9664\\\\u975e\\\\u6709\\\\u6cd5\\\\u5f8b\\\\u8bb8\\\\u53ef\\\\u8981\\\\u6c42\\\\uff0c\\\\u6216phpcms\\\\u5728\\\\u8bda\\\\u4fe1\\\\u7684\\\\u57fa\\\\u7840\\\\u4e0a\\\\u8ba4\\\\u4e3a\\\\u900f\\\\u9732\\\\u8fd9\\\\u4e9b\\\\u4fe1\\\\u606f\\\\u5728\\\\u4ee5\\\\u4e0b\\\\u4e09\\\\u79cd\\\\u60c5\\\\u51b5\\\\u662f\\\\u5fc5\\\\u8981\\\\u7684\\\\uff1a \\\\r\\\\n\\\\u3000\\\\u30001)\\\\u9075\\\\u5b88\\\\u6709\\\\u5173\\\\u6cd5\\\\u5f8b\\\\u89c4\\\\u5b9a\\\\uff0c\\\\u9075\\\\u4ece\\\\u5408\\\\u6cd5\\\\u670d\\\\u52a1\\\\u7a0b\\\\u5e8f\\\\u3002 \\\\r\\\\n\\\\u3000\\\\u30002)\\\\u4fdd\\\\u6301\\\\u7ef4\\\\u62a4phpcms\\\\u7684\\\\u5546\\\\u6807\\\\u6240\\\\u6709\\\\u6743\\\\u3002 \\\\r\\\\n\\\\u3000\\\\u30003)\\\\u5728\\\\u7d27\\\\u6025\\\\u60c5\\\\u51b5\\\\u4e0b\\\\u7aed\\\\u529b\\\\u7ef4\\\\u62a4\\\\u7528\\\\u6237\\\\u4e2a\\\\u4eba\\\\u548c\\\\u793e\\\\u4f1a\\\\u5927\\\\u4f17\\\\u7684\\\\u9690\\\\u79c1\\\\u5b89\\\\u5168\\\\u3002 \\\\r\\\\n\\\\u3000\\\\u30004)\\\\u7b26\\\\u5408\\\\u5176\\\\u4ed6\\\\u76f8\\\\u5173\\\\u7684\\\\u8981\\\\u6c42\\\\u3002 \\\\r\\\\n6\\\\uff0e\\\\u7528\\\\u6237\\\\u7684\\\\u5e10\\\\u53f7\\\\uff0c\\\\u5bc6\\\\u7801\\\\u548c\\\\u5b89\\\\u5168\\\\u6027\\\\r\\\\n\\\\u3000\\\\u3000\\\\u4e00\\\\u65e6\\\\u6ce8\\\\u518c\\\\u6210\\\\u529f\\\\u6210\\\\u4e3aphpcms\\\\u7528\\\\u6237\\\\uff0c\\\\u60a8\\\\u5c06\\\\u5f97\\\\u5230\\\\u4e00\\\\u4e2a\\\\u5bc6\\\\u7801\\\\u548c\\\\u5e10\\\\u53f7\\\\u3002\\\\u5982\\\\u679c\\\\u60a8\\\\u4e0d\\\\u4fdd\\\\u7ba1\\\\u597d\\\\u81ea\\\\u5df1\\\\u7684\\\\u5e10\\\\u53f7\\\\u548c\\\\u5bc6\\\\u7801\\\\u5b89\\\\u5168\\\\uff0c\\\\u5c06\\\\u5bf9\\\\u56e0\\\\u6b64\\\\u4ea7\\\\u751f\\\\u7684\\\\u540e\\\\u679c\\\\u8d1f\\\\u5168\\\\u90e8\\\\u8d23\\\\u4efb\\\\u3002\\\\u53e6\\\\u5916\\\\uff0c\\\\u6bcf\\\\u4e2a\\\\u7528\\\\u6237\\\\u90fd\\\\u8981\\\\u5bf9\\\\u5176\\\\u5e10\\\\u6237\\\\u4e2d\\\\u7684\\\\u6240\\\\u6709\\\\u6d3b\\\\u52a8\\\\u548c\\\\u4e8b\\\\u4ef6\\\\u8d1f\\\\u5168\\\\u8d23\\\\u3002\\\\u60a8\\\\u53ef\\\\u968f\\\\u65f6\\\\u6839\\\\u636e\\\\u6307\\\\u793a\\\\u6539\\\\u53d8\\\\u60a8\\\\u7684\\\\u5bc6\\\\u7801\\\\uff0c\\\\u4e5f\\\\u53ef\\\\u4ee5\\\\u7ed3\\\\u675f\\\\u65e7\\\\u7684\\\\u5e10\\\\u6237\\\\u91cd\\\\u5f00\\\\u4e00\\\\u4e2a\\\\u65b0\\\\u5e10\\\\u6237\\\\u3002\\\\u7528\\\\u6237\\\\u540c\\\\u610f\\\\u82e5\\\\u53d1\\\\u73b0\\\\u4efb\\\\u4f55\\\\u975e\\\\u6cd5\\\\u4f7f\\\\u7528\\\\u7528\\\\u6237\\\\u5e10\\\\u53f7\\\\u6216\\\\u5b89\\\\u5168\\\\u6f0f\\\\u6d1e\\\\u7684\\\\u60c5\\\\u51b5\\\\uff0c\\\\u7acb\\\\u5373\\\\u901a\\\\u77e5phpcms\\\\u3002\\\\r\\\\n7\\\\uff0e \\\\u514d\\\\u8d23\\\\u6761\\\\u6b3e\\\\r\\\\n\\\\u3000\\\\u3000\\\\u7528\\\\u6237\\\\u660e\\\\u786e\\\\u540c\\\\u610f\\\\u7f51\\\\u7ad9\\\\u670d\\\\u52a1\\\\u7684\\\\u4f7f\\\\u7528\\\\u7531\\\\u7528\\\\u6237\\\\u4e2a\\\\u4eba\\\\u627f\\\\u62c5\\\\u98ce\\\\u9669\\\\u3002 \\\\u3000\\\\u3000 \\\\r\\\\n\\\\u3000\\\\u3000phpcms\\\\u4e0d\\\\u4f5c\\\\u4efb\\\\u4f55\\\\u7c7b\\\\u578b\\\\u7684\\\\u62c5\\\\u4fdd\\\\uff0c\\\\u4e0d\\\\u62c5\\\\u4fdd\\\\u670d\\\\u52a1\\\\u4e00\\\\u5b9a\\\\u80fd\\\\u6ee1\\\\u8db3\\\\u7528\\\\u6237\\\\u7684\\\\u8981\\\\u6c42\\\\uff0c\\\\u4e5f\\\\u4e0d\\\\u62c5\\\\u4fdd\\\\u670d\\\\u52a1\\\\u4e0d\\\\u4f1a\\\\u53d7\\\\u4e2d\\\\u65ad\\\\uff0c\\\\u5bf9\\\\u670d\\\\u52a1\\\\u7684\\\\u53ca\\\\u65f6\\\\u6027\\\\uff0c\\\\u5b89\\\\u5168\\\\u6027\\\\uff0c\\\\u51fa\\\\u9519\\\\u53d1\\\\u751f\\\\u90fd\\\\u4e0d\\\\u4f5c\\\\u62c5\\\\u4fdd\\\\u3002\\\\u7528\\\\u6237\\\\u7406\\\\u89e3\\\\u5e76\\\\u63a5\\\\u53d7\\\\uff1a\\\\u4efb\\\\u4f55\\\\u901a\\\\u8fc7phpcms\\\\u670d\\\\u52a1\\\\u53d6\\\\u5f97\\\\u7684\\\\u4fe1\\\\u606f\\\\u8d44\\\\u6599\\\\u7684\\\\u53ef\\\\u9760\\\\u6027\\\\u53d6\\\\u51b3\\\\u4e8e\\\\u7528\\\\u6237\\\\u81ea\\\\u5df1\\\\uff0c\\\\u7528\\\\u6237\\\\u81ea\\\\u5df1\\\\u627f\\\\u62c5\\\\u6240\\\\u6709\\\\u98ce\\\\u9669\\\\u548c\\\\u8d23\\\\u4efb\\\\u3002 \\\\r\\\\n8\\\\uff0e\\\\u6709\\\\u9650\\\\u8d23\\\\u4efb\\\\r\\\\n\\\\u3000\\\\u3000phpcms\\\\u5bf9\\\\u4efb\\\\u4f55\\\\u76f4\\\\u63a5\\\\u3001\\\\u95f4\\\\u63a5\\\\u3001\\\\u5076\\\\u7136\\\\u3001\\\\u7279\\\\u6b8a\\\\u53ca\\\\u7ee7\\\\u8d77\\\\u7684\\\\u635f\\\\u5bb3\\\\u4e0d\\\\u8d1f\\\\u8d23\\\\u4efb\\\\u3002\\\\r\\\\n9\\\\uff0e \\\\u4e0d\\\\u63d0\\\\u4f9b\\\\u96f6\\\\u552e\\\\u548c\\\\u5546\\\\u4e1a\\\\u6027\\\\u670d\\\\u52a1 \\\\r\\\\n\\\\u3000\\\\u3000\\\\u7528\\\\u6237\\\\u4f7f\\\\u7528\\\\u7f51\\\\u7ad9\\\\u670d\\\\u52a1\\\\u7684\\\\u6743\\\\u5229\\\\u662f\\\\u4e2a\\\\u4eba\\\\u7684\\\\u3002\\\\u7528\\\\u6237\\\\u53ea\\\\u80fd\\\\u662f\\\\u4e00\\\\u4e2a\\\\u5355\\\\u72ec\\\\u7684\\\\u4e2a\\\\u4f53\\\\u800c\\\\u4e0d\\\\u80fd\\\\u662f\\\\u4e00\\\\u4e2a\\\\u516c\\\\u53f8\\\\u6216\\\\u5b9e\\\\u4f53\\\\u5546\\\\u4e1a\\\\u6027\\\\u7ec4\\\\u7ec7\\\\u3002\\\\u7528\\\\u6237\\\\u627f\\\\u8bfa\\\\u4e0d\\\\u7ecfphpcms\\\\u540c\\\\u610f\\\\uff0c\\\\u4e0d\\\\u80fd\\\\u5229\\\\u7528\\\\u7f51\\\\u7ad9\\\\u670d\\\\u52a1\\\\u8fdb\\\\u884c\\\\u9500\\\\u552e\\\\u6216\\\\u5176\\\\u4ed6\\\\u5546\\\\u4e1a\\\\u7528\\\\u9014\\\\u3002\\\\r\\\\n10\\\\uff0e\\\\u7528\\\\u6237\\\\u8d23\\\\u4efb \\\\r\\\\n\\\\u3000\\\\u3000\\\\u7528\\\\u6237\\\\u5355\\\\u72ec\\\\u627f\\\\u62c5\\\\u4f20\\\\u8f93\\\\u5185\\\\u5bb9\\\\u7684\\\\u8d23\\\\u4efb\\\\u3002\\\\u7528\\\\u6237\\\\u5fc5\\\\u987b\\\\u9075\\\\u5faa\\\\uff1a \\\\r\\\\n\\\\u3000\\\\u30001)\\\\u4ece\\\\u4e2d\\\\u56fd\\\\u5883\\\\u5185\\\\u5411\\\\u5916\\\\u4f20\\\\u8f93\\\\u6280\\\\u672f\\\\u6027\\\\u8d44\\\\u6599\\\\u65f6\\\\u5fc5\\\\u987b\\\\u7b26\\\\u5408\\\\u4e2d\\\\u56fd\\\\u6709\\\\u5173\\\\u6cd5\\\\u89c4\\\\u3002 \\\\r\\\\n\\\\u3000\\\\u30002)\\\\u4f7f\\\\u7528\\\\u7f51\\\\u7ad9\\\\u670d\\\\u52a1\\\\u4e0d\\\\u4f5c\\\\u975e\\\\u6cd5\\\\u7528\\\\u9014\\\\u3002 \\\\r\\\\n\\\\u3000\\\\u30003)\\\\u4e0d\\\\u5e72\\\\u6270\\\\u6216\\\\u6df7\\\\u4e71\\\\u7f51\\\\u7edc\\\\u670d\\\\u52a1\\\\u3002 \\\\r\\\\n\\\\u3000\\\\u30004)\\\\u4e0d\\\\u5728\\\\u8bba\\\\u575bBBS\\\\u6216\\\\u7559\\\\u8a00\\\\u7c3f\\\\u53d1\\\\u8868\\\\u4efb\\\\u4f55\\\\u4e0e\\\\u653f\\\\u6cbb\\\\u76f8\\\\u5173\\\\u7684\\\\u4fe1\\\\u606f\\\\u3002 \\\\r\\\\n\\\\u3000\\\\u30005)\\\\u9075\\\\u5b88\\\\u6240\\\\u6709\\\\u4f7f\\\\u7528\\\\u7f51\\\\u7ad9\\\\u670d\\\\u52a1\\\\u7684\\\\u7f51\\\\u7edc\\\\u534f\\\\u8bae\\\\u3001\\\\u89c4\\\\u5b9a\\\\u3001\\\\u7a0b\\\\u5e8f\\\\u548c\\\\u60ef\\\\u4f8b\\\\u3002\\\\r\\\\n\\\\u3000\\\\u30006)\\\\u4e0d\\\\u5f97\\\\u5229\\\\u7528\\\\u672c\\\\u7ad9\\\\u5371\\\\u5bb3\\\\u56fd\\\\u5bb6\\\\u5b89\\\\u5168\\\\u3001\\\\u6cc4\\\\u9732\\\\u56fd\\\\u5bb6\\\\u79d8\\\\u5bc6\\\\uff0c\\\\u4e0d\\\\u5f97\\\\u4fb5\\\\u72af\\\\u56fd\\\\u5bb6\\\\u793e\\\\u4f1a\\\\u96c6\\\\u4f53\\\\u7684\\\\u548c\\\\u516c\\\\u6c11\\\\u7684\\\\u5408\\\\u6cd5\\\\u6743\\\\u76ca\\\\u3002\\\\r\\\\n\\\\u3000\\\\u30007)\\\\u4e0d\\\\u5f97\\\\u5229\\\\u7528\\\\u672c\\\\u7ad9\\\\u5236\\\\u4f5c\\\\u3001\\\\u590d\\\\u5236\\\\u548c\\\\u4f20\\\\u64ad\\\\u4e0b\\\\u5217\\\\u4fe1\\\\u606f\\\\uff1a \\\\r\\\\n\\\\u3000\\\\u3000\\\\u30001\\\\u3001\\\\u717d\\\\u52a8\\\\u6297\\\\u62d2\\\\u3001\\\\u7834\\\\u574f\\\\u5baa\\\\u6cd5\\\\u548c\\\\u6cd5\\\\u5f8b\\\\u3001\\\\u884c\\\\u653f\\\\u6cd5\\\\u89c4\\\\u5b9e\\\\u65bd\\\\u7684\\\\uff1b\\\\r\\\\n\\\\u3000\\\\u3000\\\\u30002\\\\u3001\\\\u717d\\\\u52a8\\\\u98a0\\\\u8986\\\\u56fd\\\\u5bb6\\\\u653f\\\\u6743\\\\uff0c\\\\u63a8\\\\u7ffb\\\\u793e\\\\u4f1a\\\\u4e3b\\\\u4e49\\\\u5236\\\\u5ea6\\\\u7684\\\\uff1b\\\\r\\\\n\\\\u3000\\\\u3000\\\\u30003\\\\u3001\\\\u717d\\\\u52a8\\\\u5206\\\\u88c2\\\\u56fd\\\\u5bb6\\\\u3001\\\\u7834\\\\u574f\\\\u56fd\\\\u5bb6\\\\u7edf\\\\u4e00\\\\u7684\\\\uff1b\\\\r\\\\n\\\\u3000\\\\u3000\\\\u30004\\\\u3001\\\\u717d\\\\u52a8\\\\u6c11\\\\u65cf\\\\u4ec7\\\\u6068\\\\u3001\\\\u6c11\\\\u65cf\\\\u6b67\\\\u89c6\\\\uff0c\\\\u7834\\\\u574f\\\\u6c11\\\\u65cf\\\\u56e2\\\\u7ed3\\\\u7684\\\\uff1b\\\\r\\\\n\\\\u3000\\\\u3000\\\\u30005\\\\u3001\\\\u634f\\\\u9020\\\\u6216\\\\u8005\\\\u6b6a\\\\u66f2\\\\u4e8b\\\\u5b9e\\\\uff0c\\\\u6563\\\\u5e03\\\\u8c23\\\\u8a00\\\\uff0c\\\\u6270\\\\u4e71\\\\u793e\\\\u4f1a\\\\u79e9\\\\u5e8f\\\\u7684\\\\uff1b\\\\r\\\\n\\\\u3000\\\\u3000\\\\u30006\\\\u3001\\\\u5ba3\\\\u626c\\\\u5c01\\\\u5efa\\\\u8ff7\\\\u4fe1\\\\u3001\\\\u6deb\\\\u79fd\\\\u3001\\\\u8272\\\\u60c5\\\\u3001\\\\u8d4c\\\\u535a\\\\u3001\\\\u66b4\\\\u529b\\\\u3001\\\\u51f6\\\\u6740\\\\u3001\\\\u6050\\\\u6016\\\\u3001\\\\u6559\\\\u5506\\\\u72af\\\\u7f6a\\\\u7684\\\\uff1b\\\\r\\\\n\\\\u3000\\\\u3000\\\\u30007\\\\u3001\\\\u516c\\\\u7136\\\\u4fae\\\\u8fb1\\\\u4ed6\\\\u4eba\\\\u6216\\\\u8005\\\\u634f\\\\u9020\\\\u4e8b\\\\u5b9e\\\\u8bfd\\\\u8c24\\\\u4ed6\\\\u4eba\\\\u7684\\\\uff0c\\\\u6216\\\\u8005\\\\u8fdb\\\\u884c\\\\u5176\\\\u4ed6\\\\u6076\\\\u610f\\\\u653b\\\\u51fb\\\\u7684\\\\uff1b\\\\r\\\\n\\\\u3000\\\\u3000\\\\u30008\\\\u3001\\\\u635f\\\\u5bb3\\\\u56fd\\\\u5bb6\\\\u673a\\\\u5173\\\\u4fe1\\\\u8a89\\\\u7684\\\\uff1b\\\\r\\\\n\\\\u3000\\\\u3000\\\\u30009\\\\u3001\\\\u5176\\\\u4ed6\\\\u8fdd\\\\u53cd\\\\u5baa\\\\u6cd5\\\\u548c\\\\u6cd5\\\\u5f8b\\\\u884c\\\\u653f\\\\u6cd5\\\\u89c4\\\\u7684\\\\uff1b\\\\r\\\\n\\\\u3000\\\\u3000\\\\u300010\\\\u3001\\\\u8fdb\\\\u884c\\\\u5546\\\\u4e1a\\\\u5e7f\\\\u544a\\\\u884c\\\\u4e3a\\\\u7684\\\\u3002\\\\r\\\\n\\\\u3000\\\\u3000\\\\u7528\\\\u6237\\\\u4e0d\\\\u80fd\\\\u4f20\\\\u8f93\\\\u4efb\\\\u4f55\\\\u6559\\\\u5506\\\\u4ed6\\\\u4eba\\\\u6784\\\\u6210\\\\u72af\\\\u7f6a\\\\u884c\\\\u4e3a\\\\u7684\\\\u8d44\\\\u6599\\\\uff1b\\\\u4e0d\\\\u80fd\\\\u4f20\\\\u8f93\\\\u957f\\\\u56fd\\\\u5185\\\\u4e0d\\\\u5229\\\\u6761\\\\u4ef6\\\\u548c\\\\u6d89\\\\u53ca\\\\u56fd\\\\u5bb6\\\\u5b89\\\\u5168\\\\u7684\\\\u8d44\\\\u6599\\\\uff1b\\\\u4e0d\\\\u80fd\\\\u4f20\\\\u8f93\\\\u4efb\\\\u4f55\\\\u4e0d\\\\u7b26\\\\u5408\\\\u5f53\\\\u5730\\\\u6cd5\\\\u89c4\\\\u3001\\\\u56fd\\\\u5bb6\\\\u6cd5\\\\u5f8b\\\\u548c\\\\u56fd\\\\u9645\\\\u6cd5 \\\\u5f8b\\\\u7684\\\\u8d44\\\\u6599\\\\u3002\\\\u672a\\\\u7ecf\\\\u8bb8\\\\u53ef\\\\u800c\\\\u975e\\\\u6cd5\\\\u8fdb\\\\u5165\\\\u5176\\\\u5b83\\\\u7535\\\\u8111\\\\u7cfb\\\\u7edf\\\\u662f\\\\u7981\\\\u6b62\\\\u7684\\\\u3002\\\\u82e5\\\\u7528\\\\u6237\\\\u7684\\\\u884c\\\\u4e3a\\\\u4e0d\\\\u7b26\\\\u5408\\\\u4ee5\\\\u4e0a\\\\u7684\\\\u6761\\\\u6b3e\\\\uff0cphpcms\\\\u5c06\\\\u53d6\\\\u6d88\\\\u7528\\\\u6237\\\\u670d\\\\u52a1\\\\u5e10\\\\u53f7\\\\u3002\\\\r\\\\n11\\\\uff0e\\\\u7f51\\\\u7ad9\\\\u5185\\\\u5bb9\\\\u7684\\\\u6240\\\\u6709\\\\u6743\\\\r\\\\n\\\\u3000\\\\u3000phpcms\\\\u5b9a\\\\u4e49\\\\u7684\\\\u5185\\\\u5bb9\\\\u5305\\\\u62ec\\\\uff1a\\\\u6587\\\\u5b57\\\\u3001\\\\u8f6f\\\\u4ef6\\\\u3001\\\\u58f0\\\\u97f3\\\\u3001\\\\u76f8\\\\u7247\\\\u3001\\\\u5f55\\\\u8c61\\\\u3001\\\\u56fe\\\\u8868\\\\uff1b\\\\u5728\\\\u5e7f\\\\u544a\\\\u4e2d\\\\u5168\\\\u90e8\\\\u5185\\\\u5bb9\\\\uff1b\\\\u7535\\\\u5b50\\\\u90ae\\\\u4ef6\\\\u7684\\\\u5168\\\\u90e8\\\\u5185\\\\u5bb9\\\\uff1bphpcms\\\\u4e3a\\\\u7528\\\\u6237\\\\u63d0\\\\u4f9b\\\\u7684\\\\u5546\\\\u4e1a\\\\u4fe1\\\\u606f\\\\u3002\\\\u6240\\\\u6709\\\\u8fd9\\\\u4e9b\\\\u5185\\\\u5bb9\\\\u53d7\\\\u7248\\\\u6743\\\\u3001\\\\u5546\\\\u6807\\\\u3001\\\\u6807\\\\u7b7e\\\\u548c\\\\u5176\\\\u5b83\\\\u8d22\\\\u4ea7\\\\u6240\\\\u6709\\\\u6743\\\\u6cd5\\\\u5f8b\\\\u7684\\\\u4fdd\\\\u62a4\\\\u3002\\\\u6240\\\\u4ee5\\\\uff0c\\\\u7528\\\\u6237\\\\u53ea\\\\u80fd\\\\u5728phpcms\\\\u548c\\\\u5e7f\\\\u544a\\\\u5546\\\\u6388\\\\u6743\\\\u4e0b\\\\u624d\\\\u80fd\\\\u4f7f\\\\u7528\\\\u8fd9\\\\u4e9b\\\\u5185\\\\u5bb9\\\\uff0c\\\\u800c\\\\u4e0d\\\\u80fd\\\\u64c5\\\\u81ea\\\\u590d\\\\u5236\\\\u3001\\\\u7be1\\\\u6539\\\\u8fd9\\\\u4e9b\\\\u5185\\\\u5bb9\\\\u3001\\\\u6216\\\\u521b\\\\u9020\\\\u4e0e\\\\u5185\\\\u5bb9\\\\u6709\\\\u5173\\\\u7684\\\\u6d3e\\\\u751f\\\\u4ea7\\\\u54c1\\\\u3002\\\\r\\\\n12\\\\uff0e\\\\u9644\\\\u52a0\\\\u4fe1\\\\u606f\\\\u670d\\\\u52a1\\\\r\\\\n\\\\u3000\\\\u3000\\\\u7528\\\\u6237\\\\u5728\\\\u4eab\\\\u7528phpcms\\\\u63d0\\\\u4f9b\\\\u7684\\\\u514d\\\\u8d39\\\\u670d\\\\u52a1\\\\u7684\\\\u540c\\\\u65f6\\\\uff0c\\\\u540c\\\\u610f\\\\u63a5\\\\u53d7phpcms\\\\u63d0\\\\u4f9b\\\\u7684\\\\u5404\\\\u7c7b\\\\u9644\\\\u52a0\\\\u4fe1\\\\u606f\\\\u670d\\\\u52a1\\\\u3002\\\\r\\\\n13\\\\uff0e\\\\u89e3\\\\u91ca\\\\u6743\\\\r\\\\n\\\\u3000\\\\u3000\\\\u672c\\\\u6ce8\\\\u518c\\\\u534f\\\\u8bae\\\\u7684\\\\u89e3\\\\u91ca\\\\u6743\\\\u5f52phpcms\\\\u6240\\\\u6709\\\\u3002\\\\u5982\\\\u679c\\\\u5176\\\\u4e2d\\\\u6709\\\\u4efb\\\\u4f55\\\\u6761\\\\u6b3e\\\\u4e0e\\\\u56fd\\\\u5bb6\\\\u7684\\\\u6709\\\\u5173\\\\u6cd5\\\\u5f8b\\\\u76f8\\\\u62b5\\\\u89e6\\\\uff0c\\\\u5219\\\\u4ee5\\\\u56fd\\\\u5bb6\\\\u6cd5\\\\u5f8b\\\\u7684\\\\u660e\\\\u6587\\\\u89c4\\\\u5b9a\\\\u4e3a\\\\u51c6\\\\u3002 ","registerverifymessage":" \\\\u6b22\\\\u8fce\\\\u60a8\\\\u6ce8\\\\u518c\\\\u6210\\\\u4e3aphpcms\\\\u7528\\\\u6237\\\\uff0c\\\\u60a8\\\\u7684\\\\u8d26\\\\u53f7\\\\u9700\\\\u8981\\\\u90ae\\\\u7bb1\\\\u8ba4\\\\u8bc1\\\\uff0c\\\\u70b9\\\\u51fb\\\\u4e0b\\\\u9762\\\\u94fe\\\\u63a5\\\\u8fdb\\\\u884c\\\\u8ba4\\\\u8bc1\\\\uff1a{click}\\\\r\\\\n\\\\u6216\\\\u8005\\\\u5c06\\\\u7f51\\\\u5740\\\\u590d\\\\u5236\\\\u5230\\\\u6d4f\\\\u89c8\\\\u5668\\\\uff1a{url}","forgetpassword":" phpcms\\\\u5bc6\\\\u7801\\\\u627e\\\\u56de\\\\uff0c\\\\u8bf7\\\\u5728\\\\u4e00\\\\u5c0f\\\\u65f6\\\\u5185\\\\u70b9\\\\u51fb\\\\u4e0b\\\\u9762\\\\u94fe\\\\u63a5\\\\u8fdb\\\\u884c\\\\u64cd\\\\u4f5c\\\\uff1a{click}\\\\r\\\\n\\\\u6216\\\\u8005\\\\u5c06\\\\u7f51\\\\u5740\\\\u590d\\\\u5236\\\\u5230\\\\u6d4f\\\\u89c8\\\\u5668\\\\uff1a{url}"}\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'pay\' => \n  array (\n    \'module\' => \'pay\',\n    \'name\' => \'支付\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'digg\' => \n  array (\n    \'module\' => \'digg\',\n    \'name\' => \'顶一下\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'special\' => \n  array (\n    \'module\' => \'special\',\n    \'name\' => \'专题\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'content\' => \n  array (\n    \'module\' => \'content\',\n    \'name\' => \'内容模块\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'search\' => \n  array (\n    \'module\' => \'search\',\n    \'name\' => \'全站搜索\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'array (\n  \\\'fulltextenble\\\' => \\\'1\\\',\n  \\\'relationenble\\\' => \\\'1\\\',\n  \\\'suggestenable\\\' => \\\'1\\\',\n  \\\'sphinxenable\\\' => \\\'0\\\',\n  \\\'sphinxhost\\\' => \\\'10.228.134.102\\\',\n  \\\'sphinxport\\\' => \\\'9312\\\',\n)\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'scan\' => \n  array (\n    \'module\' => \'scan\',\n    \'name\' => \'木马扫描\',\n    \'url\' => \'scan\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'attachment\' => \n  array (\n    \'module\' => \'attachment\',\n    \'name\' => \'附件\',\n    \'url\' => \'attachment\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'block\' => \n  array (\n    \'module\' => \'block\',\n    \'name\' => \'碎片\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'collection\' => \n  array (\n    \'module\' => \'collection\',\n    \'name\' => \'采集模块\',\n    \'url\' => \'collection\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'dbsource\' => \n  array (\n    \'module\' => \'dbsource\',\n    \'name\' => \'数据源\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'template\' => \n  array (\n    \'module\' => \'template\',\n    \'name\' => \'模板风格\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'release\' => \n  array (\n    \'module\' => \'release\',\n    \'name\' => \'发布点\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'video\' => \n  array (\n    \'module\' => \'video\',\n    \'name\' => \'视频库\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2012-09-28\',\n    \'updatedate\' => \'2012-09-28\',\n  ),\n  \'comment\' => \n  array (\n    \'module\' => \'comment\',\n    \'name\' => \'评论\',\n    \'url\' => \'comment/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'评论\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2016-12-22\',\n    \'updatedate\' => \'2016-12-22\',\n  ),\n  \'link\' => \n  array (\n    \'module\' => \'link\',\n    \'name\' => \'友情链接\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'{"1":{"is_post":"0","enablecheckcode":"0"}}\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'formguide\' => \n  array (\n    \'module\' => \'formguide\',\n    \'name\' => \'表单向导\',\n    \'url\' => \'formguide/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'formguide\',\n    \'setting\' => \'array (\n  \\\'allowmultisubmit\\\' => \\\'1\\\',\n  \\\'interval\\\' => \\\'30\\\',\n  \\\'allowunreg\\\' => \\\'0\\\',\n  \\\'mailmessage\\\' => \\\'用户向我们提交了表单数据，赶快去看看吧。\\\',\n)\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-10-20\',\n    \'updatedate\' => \'2010-10-20\',\n  ),\n  \'tag\' => \n  array (\n    \'module\' => \'tag\',\n    \'name\' => \'标签向导\',\n    \'url\' => \'tag/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'标签向导\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2016-12-22\',\n    \'updatedate\' => \'2016-12-22\',\n  ),\n);\n?>'),
('model.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  1 => \n  array (\n    \'modelid\' => \'1\',\n    \'siteid\' => \'1\',\n    \'name\' => \'文章模型\',\n    \'description\' => \'\',\n    \'tablename\' => \'news\',\n    \'setting\' => \'\',\n    \'addtime\' => \'0\',\n    \'items\' => \'0\',\n    \'enablesearch\' => \'1\',\n    \'disabled\' => \'0\',\n    \'default_style\' => \'default\',\n    \'category_template\' => \'category\',\n    \'list_template\' => \'list\',\n    \'show_template\' => \'show\',\n    \'js_template\' => \'\',\n    \'admin_list_template\' => \'\',\n    \'member_add_template\' => \'\',\n    \'member_list_template\' => \'\',\n    \'sort\' => \'0\',\n    \'type\' => \'0\',\n  ),\n  2 => \n  array (\n    \'modelid\' => \'2\',\n    \'siteid\' => \'1\',\n    \'name\' => \'下载模型\',\n    \'description\' => \'\',\n    \'tablename\' => \'download\',\n    \'setting\' => \'\',\n    \'addtime\' => \'0\',\n    \'items\' => \'0\',\n    \'enablesearch\' => \'1\',\n    \'disabled\' => \'0\',\n    \'default_style\' => \'default\',\n    \'category_template\' => \'category_download\',\n    \'list_template\' => \'list_download\',\n    \'show_template\' => \'show_download\',\n    \'js_template\' => \'\',\n    \'admin_list_template\' => \'\',\n    \'member_add_template\' => \'\',\n    \'member_list_template\' => \'\',\n    \'sort\' => \'0\',\n    \'type\' => \'0\',\n  ),\n  3 => \n  array (\n    \'modelid\' => \'3\',\n    \'siteid\' => \'1\',\n    \'name\' => \'图片模型\',\n    \'description\' => \'\',\n    \'tablename\' => \'picture\',\n    \'setting\' => \'\',\n    \'addtime\' => \'0\',\n    \'items\' => \'0\',\n    \'enablesearch\' => \'1\',\n    \'disabled\' => \'0\',\n    \'default_style\' => \'default\',\n    \'category_template\' => \'category_picture\',\n    \'list_template\' => \'list_picture\',\n    \'show_template\' => \'show_picture\',\n    \'js_template\' => \'\',\n    \'admin_list_template\' => \'\',\n    \'member_add_template\' => \'\',\n    \'member_list_template\' => \'\',\n    \'sort\' => \'0\',\n    \'type\' => \'0\',\n  ),\n  11 => \n  array (\n    \'modelid\' => \'11\',\n    \'siteid\' => \'1\',\n    \'name\' => \'视频模型\',\n    \'description\' => \'\',\n    \'tablename\' => \'video\',\n    \'setting\' => \'\',\n    \'addtime\' => \'0\',\n    \'items\' => \'0\',\n    \'enablesearch\' => \'1\',\n    \'disabled\' => \'0\',\n    \'default_style\' => \'default\',\n    \'category_template\' => \'category_video\',\n    \'list_template\' => \'list_video\',\n    \'show_template\' => \'show_video\',\n    \'js_template\' => \'\',\n    \'admin_list_template\' => \'\',\n    \'member_add_template\' => \'\',\n    \'member_list_template\' => \'\',\n    \'sort\' => \'0\',\n    \'type\' => \'0\',\n  ),\n);\n?>'),
('workflow_1.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  1 => \n  array (\n    \'workflowid\' => \'1\',\n    \'siteid\' => \'1\',\n    \'steps\' => \'1\',\n    \'workname\' => \'一级审核\',\n    \'description\' => \'审核一次\',\n    \'setting\' => \'\',\n    \'flag\' => \'0\',\n  ),\n  2 => \n  array (\n    \'workflowid\' => \'2\',\n    \'siteid\' => \'1\',\n    \'steps\' => \'2\',\n    \'workname\' => \'二级审核\',\n    \'description\' => \'审核两次\',\n    \'setting\' => \'\',\n    \'flag\' => \'0\',\n  ),\n  3 => \n  array (\n    \'workflowid\' => \'3\',\n    \'siteid\' => \'1\',\n    \'steps\' => \'3\',\n    \'workname\' => \'三级审核\',\n    \'description\' => \'审核三次\',\n    \'setting\' => \'\',\n    \'flag\' => \'0\',\n  ),\n  4 => \n  array (\n    \'workflowid\' => \'4\',\n    \'siteid\' => \'1\',\n    \'steps\' => \'4\',\n    \'workname\' => \'四级审核\',\n    \'description\' => \'四级审核\',\n    \'setting\' => \'\',\n    \'flag\' => \'0\',\n  ),\n);\n?>'),
('member_model.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  10 => \n  array (\n    \'modelid\' => \'10\',\n    \'siteid\' => \'1\',\n    \'name\' => \'普通会员\',\n    \'description\' => \'普通会员\',\n    \'tablename\' => \'member_detail\',\n    \'setting\' => \'\',\n    \'addtime\' => \'0\',\n    \'items\' => \'0\',\n    \'enablesearch\' => \'1\',\n    \'disabled\' => \'0\',\n    \'default_style\' => \'\',\n    \'category_template\' => \'\',\n    \'list_template\' => \'\',\n    \'show_template\' => \'\',\n    \'js_template\' => \'\',\n    \'admin_list_template\' => \'\',\n    \'member_add_template\' => \'\',\n    \'member_list_template\' => \'\',\n    \'sort\' => \'0\',\n    \'type\' => \'2\',\n  ),\n);\n?>'),
('special.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('common.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  \'admin_email\' => \'phpcms@phpcms.cn\',\n  \'adminaccessip\' => \'0\',\n  \'maxloginfailedtimes\' => \'8\',\n  \'maxiplockedtime\' => \'15\',\n  \'minrefreshtime\' => \'2\',\n  \'mail_type\' => \'1\',\n  \'mail_server\' => \'smtp.qq.com\',\n  \'mail_port\' => \'25\',\n  \'mail_user\' => \'phpcms.cn@foxmail.com\',\n  \'mail_auth\' => \'1\',\n  \'mail_from\' => \'phpcms.cn@foxmail.com\',\n  \'mail_password\' => \'\',\n  \'errorlog_size\' => \'20\',\n);\n?>'),
('category_items_1.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  10 => \'4\',\n  11 => \'2\',\n  14 => \'0\',\n  15 => \'0\',\n  16 => \'0\',\n  17 => \'0\',\n  18 => \'0\',\n  32 => \'3\',\n  33 => \'3\',\n  34 => \'5\',\n  35 => \'2\',\n  39 => \'0\',\n  40 => \'0\',\n  41 => \'0\',\n  42 => \'1\',\n  58 => \'2\',\n  59 => \'0\',\n  60 => \'1\',\n  61 => \'0\',\n  62 => \'0\',\n  63 => \'2\',\n  64 => \'2\',\n  65 => \'1\',\n);\n?>'),
('category_items_2.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('category_items_3.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  75 => \'0\',\n  73 => \'0\',\n  76 => \'0\',\n  12 => \'0\',\n  13 => \'0\',\n  22 => \'1\',\n  23 => \'0\',\n  24 => \'0\',\n  25 => \'0\',\n  26 => \'1\',\n  27 => \'0\',\n  28 => \'0\',\n  29 => \'0\',\n  30 => \'0\',\n  31 => \'0\',\n  85 => \'0\',\n  74 => \'0\',\n  91 => \'0\',\n  90 => \'0\',\n  89 => \'0\',\n  88 => \'0\',\n  77 => \'0\',\n  87 => \'0\',\n  79 => \'0\',\n  80 => \'0\',\n  81 => \'0\',\n  82 => \'0\',\n  83 => \'0\',\n  84 => \'0\',\n  86 => \'0\',\n);\n?>'),
('category_items_11.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('type_content.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('vote.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('link.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  1 => \n  array (\n    \'is_post\' => \'0\',\n    \'enablecheckcode\' => \'0\',\n  ),\n);\n?>'),
('type_content_1.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>');

-- --------------------------------------------------------

--
-- 表的结构 `v9_category`
--

CREATE TABLE `v9_category` (
  `catid` smallint(5) UNSIGNED NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `module` varchar(15) NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `modelid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `parentid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `arrparentid` varchar(255) NOT NULL,
  `child` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `arrchildid` mediumtext NOT NULL,
  `catname` varchar(30) NOT NULL,
  `style` varchar(5) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `parentdir` varchar(100) NOT NULL,
  `catdir` varchar(30) NOT NULL,
  `url` varchar(100) NOT NULL,
  `items` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `setting` mediumtext NOT NULL,
  `listorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `ismenu` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `sethtml` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `letter` varchar(30) NOT NULL,
  `usable_type` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_category`
--

INSERT INTO `v9_category` (`catid`, `siteid`, `module`, `type`, `modelid`, `parentid`, `arrparentid`, `child`, `arrchildid`, `catname`, `style`, `image`, `description`, `parentdir`, `catdir`, `url`, `items`, `hits`, `setting`, `listorder`, `ismenu`, `sethtml`, `letter`, `usable_type`) VALUES
(75, 1, 'content', 0, 3, 12, '0,12', 0, '75', '中美交流项目', '', '', '', 'communi/', 'zhongmeijiaoliuxiangmu', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=75', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 75, 1, 0, 'zhongmeijiaoliuxiangmu', ''),
(73, 1, 'content', 0, 3, 0, '0', 1, '73,82,83', '机构介绍', '', '', '', '', 'jigoujieshao', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=73', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 2, 1, 0, 'jigoujieshao', ''),
(76, 1, 'content', 0, 3, 12, '0,12', 1, '76,80,81', '中亚交流项目', '', '', '', 'communi/', 'zhongyajiaoliuxiangmu', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=76', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 76, 1, 0, 'zhongyajiaoliuxiangmu', ''),
(10, 1, 'content', 0, 1, 0, '0', 0, '10', '通知公告', '', '', '', '', 'annunce', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=10', 4, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 10, 1, 0, 'tongzhigonggao', ''),
(11, 1, 'content', 0, 1, 0, '0', 0, '11', '外事通讯', '', '', '', '', 'quickannuce', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=11', 2, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 1, 1, 0, 'waishitongxun', ''),
(12, 1, 'content', 0, 3, 0, '0', 1, '12,74,79,75,76,80,81,77', '国际交流', '', '', '', '', 'communi', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=12', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 3, 1, 0, 'guojijiaoliu', ''),
(13, 1, 'content', 0, 3, 0, '0', 1, '13,22,23,26,27,84,24,28,29,25,30,31', '国际合作', '', '', '', '', 'cooper', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=13', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 4, 1, 0, 'guojihezuo', ''),
(14, 1, 'content', 0, 1, 0, '0', 1, '14,58,59,60,61', '港澳台交流合作', '', '', '', '', 'webpagesCooper', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=14', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 5, 1, 0, 'gangaotaijiaoliuhezuo', ''),
(15, 1, 'content', 0, 1, 0, '0', 1, '15,62,63,64', '国际认证', '', '', '', '', 'authentication', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=15', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 6, 1, 0, 'guojirenzheng', ''),
(16, 1, 'content', 0, 1, 0, '0', 1, '16,39,85,44,45,46,40,47,48,49,50,41,51,52,53,42,54,55,56,57', '外教管理', '', '', '', '', 'teacher', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=16', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_video","list_template":"list_video","show_template":"show_video","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 7, 1, 0, 'waijiaoguanli', ''),
(17, 1, 'content', 0, 1, 0, '0', 1, '17,32,33,34,35', '来华留学', '', '', '', '', 'studychina', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=17', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_download","list_template":"list_download","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 8, 1, 0, 'laihualiuxue', ''),
(18, 1, 'content', 0, 1, 0, '0', 1, '18,65', '港澳台招生', '', '', '', '', 'recruit', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=18', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 9, 1, 0, 'gangaotaizhaosheng', ''),
(22, 1, 'content', 0, 3, 13, '0,13', 0, '22', '中外办学项目', '', '', '', 'cooper/', 'cooperwork', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=22', 1, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 22, 1, 0, 'zhongwaibanxuexiangmu', ''),
(23, 1, 'content', 0, 3, 13, '0,13', 1, '23,26,27', '一学期交换生项目', '', '', '', 'cooper/', 'oneschool', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=23', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 23, 1, 0, 'yixueqijiaohuanshengxiangmu', ''),
(24, 1, 'content', 0, 3, 13, '0,13', 1, '24,28,29', '2+2/3+1学分互认项目', '', '', '', 'cooper/', 'twoandtwo', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=24', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 24, 1, 0, '2+2/3+1xuefenhurenxiangmu', ''),
(25, 1, 'content', 0, 3, 13, '0,13', 1, '25,30,31', '3+1+1本硕连读项目', '', '', '', 'cooper/', 'threeAndOne', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=25', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 25, 1, 0, '3+1+1benshuolianduxiangmu', ''),
(26, 1, 'content', 0, 3, 23, '0,13,23', 0, '26', '美国', '', 'http://communi.chenyimin.cn/uploadfile/2017/0107/20170107100442450.jpg', '这个就是一个一学期交换美国的描述', 'cooper/oneschool/', 'onoeclassusa', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=26', 1, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 26, 1, 0, 'meiguo', ''),
(27, 1, 'content', 0, 3, 23, '0,13,23', 0, '27', '英国', '', 'http://communi.chenyimin.cn/uploadfile/2017/0107/20170107095933412.jpg', '这里显示的是对美国这个国家的描述，描述到底有多长呢，我需要测试一下下', 'cooper/oneschool/', 'oneclassenglish', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=27', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 27, 1, 0, 'yingguo', ''),
(28, 1, 'content', 0, 3, 24, '0,13,24', 0, '28', '美国', '', 'http://communi.chenyimin.cn/uploadfile/2017/0107/20170107100049124.jpg', '', 'cooper/twoandtwo/', 'twoandtwoenglish', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=28', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 28, 1, 0, 'meiguo', ''),
(29, 1, 'content', 0, 3, 24, '0,13,24', 0, '29', '美国', '', 'http://communi.chenyimin.cn/uploadfile/2017/0107/20170107100103284.jpg', '', 'cooper/twoandtwo/', 'twoandtwousa', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=29', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 29, 1, 0, 'meiguo', ''),
(30, 1, 'content', 0, 3, 25, '0,13,25', 0, '30', '美国', '', 'http://communi.chenyimin.cn/uploadfile/2017/0107/20170107100506636.jpg', '这里应该有一个叫做描述的东西的但是我也不知道我该怎么填写', 'cooper/threeAndOne/', 'twoandoneusa', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=30', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 30, 1, 0, 'meiguo', ''),
(31, 1, 'content', 0, 3, 25, '0,13,25', 0, '31', '英国', '', 'http://communi.chenyimin.cn/uploadfile/2017/0107/20170107100233802.jpg', '这里应该有一个叫做描述的东西的但是我也不知道我该怎么填写', 'cooper/threeAndOne/', 'twoandoneenglish', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=31', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 31, 1, 0, 'yingguo', ''),
(32, 1, 'content', 0, 1, 17, '0,17', 0, '32', '留学类别', '', 'http://communi.chenyimin.cn/uploadfile/2017/0212/20170212060123516.jpg', '', 'studychina/', 'classgen', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=32', 3, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_download","list_template":"list_download","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 32, 1, 0, 'liuxueleibie', ''),
(33, 1, 'content', 0, 1, 17, '0,17', 0, '33', '招生信息', '', 'http://communi.chenyimin.cn/uploadfile/2017/0212/20170212060143152.jpg', '', 'studychina/', 'studentjoinus', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=33', 3, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_download","list_template":"list_download","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 33, 1, 0, 'zhaoshengxinxi', ''),
(34, 1, 'content', 0, 1, 17, '0,17', 0, '34', '日常管理', '', 'http://communi.chenyimin.cn/uploadfile/2017/0212/20170212060210701.jpg', '', 'studychina/', 'manGen', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=34', 5, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_download","list_template":"list_download","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 34, 1, 0, 'richangguanli', ''),
(35, 1, 'content', 0, 1, 17, '0,17', 0, '35', '来华留学奖学金', '', 'http://communi.chenyimin.cn/uploadfile/2017/0212/20170212060234895.jpg', '', 'studychina/', 'studymony', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=35', 2, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_download","list_template":"list_download","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 35, 1, 0, 'laihualiuxuejiangxuejin', ''),
(39, 1, 'content', 0, 1, 16, '0,16', 1, '39,85,44,45,46', '外教情况', '', 'http://communi.chenyimin.cn/uploadfile/2017/0212/20170212055856599.jpg', '', 'teacher/', 'outexpert', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=39', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_video","list_template":"list_video","show_template":"show_video","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 39, 1, 0, 'waijiaoqingkuang', ''),
(40, 1, 'content', 0, 1, 16, '0,16', 1, '40,47,48,49,50', '外教聘用程序', '', 'http://communi.chenyimin.cn/uploadfile/2017/0212/20170212055942680.jpg', '', 'teacher/', 'studentjoinus', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=40', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_video","list_template":"list_video","show_template":"show_video","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 40, 1, 0, 'waijiaopinyongchengxu', ''),
(41, 1, 'content', 0, 1, 16, '0,16', 1, '41,51,52,53', '外教服务指南', '', 'http://communi.chenyimin.cn/uploadfile/2017/0212/20170212060011649.jpg', '', 'teacher/', 'servlet', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=41', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_video","list_template":"list_video","show_template":"show_video","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 41, 1, 0, 'waijiaofuwuzhinan', ''),
(42, 1, 'content', 0, 1, 16, '0,16', 1, '42,54,55,56,57', '外教活动', '', 'http://communi.chenyimin.cn/uploadfile/2017/0212/20170212060033688.jpg', '', 'teacher/', 'outacivity', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=42', 1, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_video","list_template":"list_video","show_template":"show_video","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 42, 1, 0, 'waijiaohuodong', ''),
(44, 1, 'content', 1, 0, 39, '0,16,39', 0, '44', '规章制度', '', '', '', 'teacher/outexpert/', 'ruler', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=44', 0, 0, '{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1","category_template":"category_video","list_template":"list_video","show_template":"show_video"}', 44, 1, 0, 'guizhangzhidu', ''),
(45, 1, 'content', 1, 0, 39, '0,16,39', 0, '45', '荣誉奖励', '', '', '', 'teacher/outexpert/', 'honor', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=45', 0, 0, '{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1","category_template":"category_video","list_template":"list_video","show_template":"show_video"}', 45, 1, 0, 'rongyujiangli', ''),
(46, 1, 'content', 1, 0, 39, '0,16,39', 0, '46', '招聘信息', '', '', '', 'teacher/outexpert/', 'infoofjoin', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=46', 0, 0, '{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1","category_template":"category_video","list_template":"list_video","show_template":"show_video"}', 46, 1, 0, 'zhaopinxinxi', ''),
(47, 1, 'content', 1, 0, 40, '0,16,40', 0, '47', '长期外教专家聘用流程', '', '', '', 'teacher/studentjoinus/', 'longJoinUs', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=47', 0, 0, '{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1","category_template":"category_video","list_template":"list_video","show_template":"show_video"}', 47, 1, 0, 'changqiwaijiaozhuanjiapinyongl', ''),
(48, 1, 'content', 1, 0, 40, '0,16,40', 0, '48', '证件办理', '', '', '', 'teacher/studentjoinus/', 'makePapers', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=48', 0, 0, '{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1","category_template":"category_video","list_template":"list_video","show_template":"show_video"}', 48, 1, 0, 'zhengjianbanli', ''),
(49, 1, 'content', 1, 0, 40, '0,16,40', 0, '49', '短期外教专家聘用流程', '', '', '', 'teacher/studentjoinus/', 'shortJoinUs', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=49', 0, 0, '{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1","category_template":"category_video","list_template":"list_video","show_template":"show_video"}', 49, 1, 0, 'duanqiwaijiaozhuanjiapinyongli', ''),
(50, 1, 'content', 1, 0, 40, '0,16,40', 0, '50', '入职&离职', '', '', '', 'teacher/studentjoinus/', 'joinAndLeave', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=50', 0, 0, '{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1","category_template":"category_video","list_template":"list_video","show_template":"show_video"}', 50, 1, 0, 'ruzhi&lizhi', ''),
(51, 1, 'content', 1, 0, 41, '0,16,41', 0, '51', '来华前', '', '', '', 'teacher/servlet/', 'before', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=51', 0, 0, '{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1","category_template":"category_video","list_template":"list_video","show_template":"show_video"}', 51, 1, 0, 'laihuaqian', ''),
(52, 1, 'content', 1, 0, 41, '0,16,41', 0, '52', '来华后', '', '', '', 'teacher/servlet/', 'after', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=52', 0, 0, '{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1","category_template":"category_video","list_template":"list_video","show_template":"show_video"}', 52, 1, 0, 'laihuahou', ''),
(53, 1, 'content', 1, 0, 41, '0,16,41', 0, '53', '外教指南', '', '', '', 'teacher/servlet/', 'teaOutTeacher', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=53', 0, 0, '{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1","category_template":"category_video","list_template":"list_video","show_template":"show_video"}', 53, 1, 0, 'waijiaozhinan', ''),
(54, 1, 'content', 1, 0, 42, '0,16,42', 0, '54', '活动1', '', '', '', 'teacher/outacivity/', 'activityone', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=54', 0, 0, '{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1"}', 54, 1, 0, 'huodong1', ''),
(55, 1, 'content', 1, 0, 42, '0,16,42', 0, '55', '活动2', '', '', '', 'teacher/outacivity/', 'acivitytwo', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=55', 0, 0, '{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1"}', 55, 1, 0, 'huodong2', ''),
(56, 1, 'content', 1, 0, 42, '0,16,42', 0, '56', '活动3', '', '', '', 'teacher/outacivity/', 'activitythree', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=56', 0, 0, '{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1"}', 56, 1, 0, 'huodong3', ''),
(57, 1, 'content', 1, 0, 42, '0,16,42', 0, '57', '活动4', '', '', '', 'teacher/outacivity/', 'activityFour', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=57', 0, 0, '{"ishtml":"0","template_list":"","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1"}', 57, 1, 0, 'huodong4', ''),
(58, 1, 'content', 0, 1, 14, '0,14', 0, '58', '短期文化交流项目', '', '', '', 'webpagesCooper/', 'shortcul', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=58', 2, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 58, 1, 0, 'duanqiwenhuajiaoliuxiangmu', ''),
(59, 1, 'content', 0, 1, 14, '0,14', 0, '59', '互免学费交换生', '', '', '', 'webpagesCooper/', 'publicExchange', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=59', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 59, 1, 0, 'humianxuefeijiaohuansheng', ''),
(60, 1, 'content', 0, 1, 14, '0,14', 0, '60', '一学期研习项目', '', '', '', 'webpagesCooper/', 'oneClassToStudy', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=60', 1, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 60, 1, 0, 'yixueqiyanxixiangmu', ''),
(61, 1, 'content', 0, 1, 14, '0,14', 0, '61', '保荐研究生项目', '', '', '', 'webpagesCooper/', 'connectInfo', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=61', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 61, 1, 0, 'baojianyanjiushengxiangmu', ''),
(62, 1, 'content', 0, 1, 15, '0,15', 0, '62', 'IACBE国际认证', '', '', '', 'authentication/', 'IACBE', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=62', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 62, 1, 0, 'iacbeguojirenzheng', ''),
(63, 1, 'content', 0, 1, 15, '0,15', 0, '63', 'ABET国际认证', '', '', '', 'authentication/', 'ABET', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=63', 2, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 63, 1, 0, 'abetguojirenzheng', ''),
(64, 1, 'content', 0, 1, 15, '0,15', 0, '64', 'IEEE认证', '', '', '', 'authentication/', 'ieeerenzheng', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=64', 2, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 64, 1, 0, 'ieeerenzheng', ''),
(65, 1, 'content', 0, 1, 18, '0,18', 0, '65', '港澳台招生简介', '', '', '', 'recruit/', 'genForao', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=65', 1, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 65, 1, 0, 'gangaotaizhaoshengjianjie', ''),
(85, 1, 'content', 0, 3, 39, '0,16,39', 0, '85', '外教风采', '', 'http://communi.chenyimin.cn/uploadfile/2017/0212/20170212055856599.jpg', '', 'teacher/outexpert/', 'teachercolor', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=85', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 43, 1, 0, 'waijiaofengcai', ''),
(74, 1, 'content', 0, 3, 12, '0,12', 1, '74,79', '中欧交流项目', '', '', '', 'communi/', 'zhongoujiaoliuxiangmu', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=74', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 74, 1, 0, 'zhongoujiaoliuxiangmu', ''),
(67, 1, 'content', 1, 0, 0, '0', 0, '67', '联系我们', '', '', '', '', 'linkToUs', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=67', 0, 0, '{"ishtml":"0","template_list":"","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1"}', 67, 0, 0, 'lianxiwomen', ''),
(91, 1, 'content', 0, 3, 86, '0,86', 0, '91', '广州学院校历', '', '', '', 'tuli/', 'guangzhouxueyuanxiaoli', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=91', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 91, 1, 0, 'guangzhouxueyuanxiaoli', ''),
(90, 1, 'content', 0, 3, 86, '0,86', 0, '90', '学校外事制度', '', '', '', 'tuli/', 'xuexiaowaishizhidu', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=90', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 90, 1, 0, 'xuexiaowaishizhidu', ''),
(89, 1, 'content', 0, 3, 86, '0,86', 0, '89', '境外签证指南', '', '', '', 'tuli/', 'jingwaiqianzhengzhinan', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=89', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 89, 1, 0, 'jingwaiqianzhengzhinan', ''),
(88, 1, 'content', 0, 3, 86, '0,86', 0, '88', '国家政策法规', '', '', '', 'tuli/', 'guojiazhengcefagui', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=88', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 88, 1, 0, 'guojiazhengcefagui', ''),
(77, 1, 'content', 0, 3, 12, '0,12', 0, '77', '中澳交流项目', '', '', '', 'communi/', 'zhongaojiaoliuxiangmu', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=77', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 77, 1, 0, 'zhongaojiaoliuxiangmu', ''),
(87, 1, 'content', 0, 3, 86, '0,86', 0, '87', '办事流程', '', '', '', 'tuli/', 'banshiliucheng', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=87', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 87, 1, 0, 'banshiliucheng', ''),
(79, 1, 'content', 0, 3, 74, '0,12,74', 0, '79', '英国', '', '', '', 'communi/zhongoujiaoliuxiangmu/', 'english', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=79', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 79, 1, 0, 'yingguo', ''),
(80, 1, 'content', 0, 3, 76, '0,12,76', 0, '80', '新加坡', '', '', '', 'communi/zhongyajiaoliuxiangmu/', 'xinjiapo', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=80', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 80, 1, 0, 'xinjiapo', ''),
(81, 1, 'content', 0, 3, 76, '0,12,76', 0, '81', '韩国', '', '', '', 'communi/zhongyajiaoliuxiangmu/', 'hanguo', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=81', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 81, 1, 0, 'hanguo', ''),
(82, 1, 'content', 0, 3, 73, '0,73', 0, '82', '项目', '', '', '', 'jigoujieshao/', 'xiangmu', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=82', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 82, 1, 0, 'xiangmu', ''),
(83, 1, 'content', 0, 3, 73, '0,73', 0, '83', '机构', '', '', '', 'jigoujieshao/', 'jigou', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=83', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 83, 1, 0, 'jigou', ''),
(84, 1, 'content', 0, 3, 13, '0,13', 0, '84', '互免学费交换生项目', '', '', '', 'cooper/', 'freestudent', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=84', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 23, 1, 0, 'humianxuefeijiaohuanshengxiang', ''),
(86, 1, 'content', 0, 3, 0, '0', 1, '86,87,88,89,90,91', '图例', '', '', '', '', 'tuli', 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=lists&catid=86', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_picture","list_template":"list_picture","show_template":"show_picture","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 86, 0, 0, 'tuli', '');

-- --------------------------------------------------------

--
-- 表的结构 `v9_category_priv`
--

CREATE TABLE `v9_category_priv` (
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `roleid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `is_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `action` char(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_collection_content`
--

CREATE TABLE `v9_collection_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `nodeid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `siteid` mediumint(5) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `url` char(255) NOT NULL,
  `title` char(100) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_collection_history`
--

CREATE TABLE `v9_collection_history` (
  `md5` char(32) NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_collection_node`
--

CREATE TABLE `v9_collection_node` (
  `nodeid` smallint(6) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `lastdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `sourcecharset` varchar(8) NOT NULL,
  `sourcetype` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `urlpage` text NOT NULL,
  `pagesize_start` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `pagesize_end` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `page_base` char(255) NOT NULL,
  `par_num` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `url_contain` char(100) NOT NULL,
  `url_except` char(100) NOT NULL,
  `url_start` char(100) NOT NULL DEFAULT '',
  `url_end` char(100) NOT NULL DEFAULT '',
  `title_rule` char(100) NOT NULL,
  `title_html_rule` text NOT NULL,
  `author_rule` char(100) NOT NULL,
  `author_html_rule` text NOT NULL,
  `comeform_rule` char(100) NOT NULL,
  `comeform_html_rule` text NOT NULL,
  `time_rule` char(100) NOT NULL,
  `time_html_rule` text NOT NULL,
  `content_rule` char(100) NOT NULL,
  `content_html_rule` text NOT NULL,
  `content_page_start` char(100) NOT NULL,
  `content_page_end` char(100) NOT NULL,
  `content_page_rule` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `content_page` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `content_nextpage` char(100) NOT NULL,
  `down_attachment` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `watermark` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `coll_order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `customize_config` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_collection_program`
--

CREATE TABLE `v9_collection_program` (
  `id` int(10) UNSIGNED NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `nodeid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modelid` mediumint(6) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `config` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_comment`
--

CREATE TABLE `v9_comment` (
  `commentid` char(30) NOT NULL,
  `siteid` smallint(5) NOT NULL DEFAULT '0',
  `title` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `total` int(8) UNSIGNED DEFAULT '0',
  `square` mediumint(8) UNSIGNED DEFAULT '0',
  `anti` mediumint(8) UNSIGNED DEFAULT '0',
  `neutral` mediumint(8) UNSIGNED DEFAULT '0',
  `display_type` tinyint(1) DEFAULT '0',
  `tableid` mediumint(8) UNSIGNED DEFAULT '0',
  `lastupdate` int(10) UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_comment_check`
--

CREATE TABLE `v9_comment_check` (
  `id` int(10) NOT NULL,
  `comment_data_id` int(10) DEFAULT '0' COMMENT '论评ID号',
  `siteid` smallint(5) NOT NULL DEFAULT '0' COMMENT '站点ID',
  `tableid` mediumint(8) DEFAULT '0' COMMENT '数据存储表ID'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_comment_data_1`
--

CREATE TABLE `v9_comment_data_1` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '评论ID',
  `commentid` char(30) NOT NULL DEFAULT '' COMMENT '评论ID号',
  `siteid` smallint(5) NOT NULL DEFAULT '0' COMMENT '站点ID',
  `userid` int(10) UNSIGNED DEFAULT '0' COMMENT '用户ID',
  `username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `creat_at` int(10) DEFAULT NULL COMMENT '发布时间',
  `ip` varchar(15) DEFAULT NULL COMMENT '用户IP地址',
  `status` tinyint(1) DEFAULT '0' COMMENT '评论状态{0:未审核,-1:未通过审核,1:通过审核}',
  `content` text COMMENT '评论内容',
  `direction` tinyint(1) DEFAULT '0' COMMENT '评论方向{0:无方向,1:正文,2:反方,3:中立}',
  `support` mediumint(8) UNSIGNED DEFAULT '0' COMMENT '支持数',
  `reply` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为回复'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_comment_setting`
--

CREATE TABLE `v9_comment_setting` (
  `siteid` smallint(5) NOT NULL DEFAULT '0' COMMENT '站点ID',
  `guest` tinyint(1) DEFAULT '0' COMMENT '是否允许游客评论',
  `check` tinyint(1) DEFAULT '0' COMMENT '是否需要审核',
  `code` tinyint(1) DEFAULT '0' COMMENT '是否开启验证码',
  `add_point` tinyint(3) UNSIGNED DEFAULT '0' COMMENT '添加的积分数',
  `del_point` tinyint(3) UNSIGNED DEFAULT '0' COMMENT '扣除的积分数'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_comment_setting`
--

INSERT INTO `v9_comment_setting` (`siteid`, `guest`, `check`, `code`, `add_point`, `del_point`) VALUES
(1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_comment_table`
--

CREATE TABLE `v9_comment_table` (
  `tableid` mediumint(8) NOT NULL COMMENT '表ID号',
  `total` int(10) UNSIGNED DEFAULT '0' COMMENT '数据总量',
  `creat_at` int(10) DEFAULT '0' COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_comment_table`
--

INSERT INTO `v9_comment_table` (`tableid`, `total`, `creat_at`) VALUES
(1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_content_check`
--

CREATE TABLE `v9_content_check` (
  `checkid` char(15) NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `title` char(80) NOT NULL,
  `username` char(20) NOT NULL,
  `inputtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_copyfrom`
--

CREATE TABLE `v9_copyfrom` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `sitename` varchar(30) NOT NULL,
  `siteurl` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `listorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_datacall`
--

CREATE TABLE `v9_datacall` (
  `id` int(10) NOT NULL,
  `name` char(40) DEFAULT NULL,
  `dis_type` tinyint(1) UNSIGNED DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `module` char(20) DEFAULT NULL,
  `action` char(20) DEFAULT NULL,
  `data` text,
  `template` text,
  `cache` mediumint(8) DEFAULT NULL,
  `num` smallint(6) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_dbsource`
--

CREATE TABLE `v9_dbsource` (
  `id` int(10) NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `host` varchar(20) NOT NULL,
  `port` int(5) NOT NULL DEFAULT '3306',
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `dbname` varchar(50) NOT NULL,
  `dbtablepre` varchar(30) NOT NULL,
  `charset` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_download`
--

CREATE TABLE `v9_download` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `typeid` smallint(5) UNSIGNED NOT NULL,
  `title` char(80) NOT NULL DEFAULT '',
  `style` char(24) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  `posids` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `islink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `systems` varchar(100) NOT NULL DEFAULT 'Win2000/WinXP/Win2003',
  `copytype` varchar(15) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `classtype` varchar(20) NOT NULL DEFAULT '',
  `version` varchar(20) NOT NULL DEFAULT '',
  `filesize` varchar(10) NOT NULL DEFAULT 'Unkown',
  `stars` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_download_data`
--

CREATE TABLE `v9_download_data` (
  `id` mediumint(8) UNSIGNED DEFAULT '0',
  `content` text NOT NULL,
  `readpoint` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) NOT NULL,
  `paytype` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `relation` varchar(255) NOT NULL DEFAULT '',
  `allow_comment` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `downfiles` mediumtext NOT NULL,
  `downfile` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_downservers`
--

CREATE TABLE `v9_downservers` (
  `id` mediumint(8) NOT NULL,
  `sitename` varchar(100) DEFAULT NULL,
  `siteurl` varchar(255) DEFAULT NULL,
  `listorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_extend_setting`
--

CREATE TABLE `v9_extend_setting` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `key` char(30) NOT NULL,
  `data` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_favorite`
--

CREATE TABLE `v9_favorite` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `title` char(100) NOT NULL,
  `url` char(100) NOT NULL,
  `adddate` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_hits`
--

CREATE TABLE `v9_hits` (
  `hitsid` char(30) NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `yesterdayviews` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dayviews` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `weekviews` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `monthviews` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_hits`
--

INSERT INTO `v9_hits` (`hitsid`, `catid`, `views`, `yesterdayviews`, `dayviews`, `weekviews`, `monthviews`, `updatetime`) VALUES
('c-1-1', 11, 2, 0, 1, 1, 1, 1483782290),
('c-1-42', 10, 7, 0, 7, 7, 7, 1484121182),
('c-1-43', 10, 5, 0, 1, 1, 5, 1484121251),
('c-1-40', 10, 1, 0, 1, 1, 1, 1484120014),
('c-1-41', 10, 1, 0, 1, 1, 1, 1487980829),
('c-1-6', 20, 1, 0, 1, 1, 1, 1483107692),
('c-1-7', 20, 7, 1, 1, 1, 1, 1488284189),
('c-1-8', 21, 3, 0, 3, 3, 3, 1484120298),
('c-1-9', 21, 2, 0, 1, 1, 1, 1483783858),
('c-3-1', 26, 55, 0, 55, 55, 55, 1483190691),
('c-3-2', 22, 6, 0, 4, 4, 6, 1484121196),
('c-1-10', 32, 1, 0, 1, 1, 1, 1483177274),
('c-1-11', 32, 1, 0, 1, 1, 1, 1483177277),
('c-1-12', 32, 5, 0, 5, 5, 5, 1483181803),
('c-1-13', 33, 0, 0, 0, 0, 0, 1483175551),
('c-1-14', 33, 0, 0, 0, 0, 0, 1483175583),
('c-1-15', 33, 0, 0, 0, 0, 0, 1483175613),
('c-1-16', 34, 0, 0, 0, 0, 0, 1483175663),
('c-1-17', 34, 1, 0, 1, 1, 1, 1483186260),
('c-1-18', 34, 0, 0, 0, 0, 0, 1483175744),
('c-1-19', 34, 0, 0, 0, 0, 0, 1483175786),
('c-1-20', 34, 0, 0, 0, 0, 0, 1483175814),
('c-1-21', 35, 2, 0, 2, 2, 2, 1483180695),
('c-1-22', 35, 2, 0, 2, 2, 2, 1483180692),
('c-1-23', 42, 2, 0, 2, 2, 2, 1483187883),
('c-1-24', 60, 0, 0, 0, 0, 0, 1483764302),
('c-1-25', 64, 0, 0, 0, 0, 0, 1483764452),
('c-1-26', 64, 0, 0, 0, 0, 0, 1483764505),
('c-1-27', 63, 0, 0, 0, 0, 0, 1483764584),
('c-1-28', 63, 0, 0, 0, 0, 0, 1483764637),
('c-1-29', 62, 0, 0, 0, 0, 0, 1483764637),
('c-1-30', 58, 0, 0, 0, 0, 0, 1483764727),
('c-1-31', 58, 1, 0, 1, 1, 1, 1484120303),
('c-1-32', 59, 0, 0, 0, 0, 0, 1483764727),
('c-1-33', 60, 0, 0, 0, 0, 0, 1483764727),
('c-1-34', 61, 0, 0, 0, 0, 0, 1483764727),
('c-1-35', 58, 2, 0, 2, 2, 2, 1484137489),
('c-1-36', 65, 4, 0, 1, 1, 2, 1487980800),
('c-1-37', 11, 1, 0, 1, 1, 1, 1483798136);

-- --------------------------------------------------------

--
-- 表的结构 `v9_ipbanned`
--

CREATE TABLE `v9_ipbanned` (
  `ipbannedid` smallint(5) NOT NULL,
  `ip` char(15) NOT NULL,
  `expires` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_keylink`
--

CREATE TABLE `v9_keylink` (
  `keylinkid` smallint(5) UNSIGNED NOT NULL,
  `word` char(40) NOT NULL,
  `url` char(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_keyword`
--

CREATE TABLE `v9_keyword` (
  `id` int(10) UNSIGNED NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `keyword` char(100) NOT NULL,
  `pinyin` char(100) NOT NULL,
  `videonum` int(11) NOT NULL DEFAULT '0',
  `searchnums` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_keyword`
--

INSERT INTO `v9_keyword` (`id`, `siteid`, `keyword`, `pinyin`, `videonum`, `searchnums`) VALUES
(1, 1, '文章', 'wenzhang', 17, 0),
(2, 1, '通知公告', 'tongzhigonggao', 48, 0),
(3, 1, '摘要', 'zhaiyao', 9, 0),
(4, 1, '部分', 'bufen', 9, 0),
(5, 1, '中荷双国交流', 'zhongheshuangguojiaoliu', 2, 0),
(6, 1, 'zzsfzdjf', 'zzsfzdjf', 2, 0),
(7, 1, '中新', 'zhongxin', 4, 0),
(8, 1, '美国', 'meiguo', 2, 0),
(9, 1, '学期', 'xueqi', 4, 0),
(10, 1, '项目', 'xiangmu', 2, 0),
(11, 1, '学历', 'xueli', 1, 0),
(12, 1, '语言', 'yuyan', 1, 0),
(13, 1, '交换生', 'jiaohuansheng', 1, 0),
(14, 1, 'EXCHAGE', 'exchage', 1, 0),
(15, 1, 'STUDENTS', 'students', 1, 0),
(16, 1, '国际学生', 'guojixuesheng', 1, 0),
(17, 1, '招生简章', 'zhaoshengjianzhang', 1, 0),
(18, 1, '申请表', 'shenqingbiao', 3, 0),
(19, 1, '留学生', 'liuxuesheng', 2, 0),
(20, 1, '外国', 'waiguo', 1, 0),
(21, 1, '签证', 'qianzheng', 1, 0),
(22, 1, '手册', 'shouce', 1, 0),
(23, 1, '学生', 'xuesheng', 1, 0),
(24, 1, '', '', 1, 0),
(25, 1, '行前指引', 'xingqianzhiyin', 1, 0),
(26, 1, 'PRE-DEPARTURE', 'pre-departure', 1, 0),
(27, 1, 'GUIDE', 'guide', 1, 0),
(28, 1, '流程', 'liucheng', 1, 0),
(29, 1, '广东省', 'guangdongsheng', 1, 0),
(30, 1, '广东省政府', 'guangdongshengzhengfu', 1, 0),
(31, 1, '奖学金', 'jiangxuejin', 1, 0),
(32, 1, '外教', 'waijiao', 1, 0),
(33, 1, '内容', 'neirong', 2, 0),
(34, 1, '标题', 'biaoti', 2, 0),
(35, 1, '文件', 'wenjian', 3, 0),
(36, 1, '国际认证', 'guojirenzheng', 2, 0),
(37, 1, '加多', 'jiaduo', 1, 0),
(38, 1, '模板', 'moban', 1, 0),
(39, 1, '简介', 'jianjie', 1, 0),
(40, 1, '外事', 'waishi', 1, 0),
(41, 1, '通讯', 'tongxun', 1, 0),
(42, 1, '这是', 'zheshi', 10, 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_keyword_data`
--

CREATE TABLE `v9_keyword_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `tagid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `contentid` char(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_keyword_data`
--

INSERT INTO `v9_keyword_data` (`id`, `tagid`, `siteid`, `contentid`) VALUES
(1, 1, 1, '1-1'),
(2, 2, 1, '2-1'),
(3, 1, 1, '2-1'),
(4, 2, 1, '3-1'),
(5, 2, 1, '4-1'),
(6, 2, 1, '5-1'),
(7, 3, 1, '5-1'),
(8, 4, 1, '5-1'),
(9, 5, 1, '6-1'),
(10, 6, 1, '7-1'),
(11, 7, 1, '8-1'),
(12, 7, 1, '9-1'),
(13, 8, 1, '1-3'),
(14, 9, 1, '1-3'),
(15, 10, 1, '2-3'),
(16, 11, 1, '10-1'),
(17, 12, 1, '11-1'),
(18, 13, 1, '12-1'),
(19, 14, 1, '12-1'),
(20, 15, 1, '12-1'),
(21, 16, 1, '13-1'),
(22, 17, 1, '13-1'),
(23, 18, 1, '14-1'),
(24, 19, 1, '14-1'),
(25, 20, 1, '14-1'),
(26, 21, 1, '15-1'),
(27, 22, 1, '16-1'),
(28, 23, 1, '16-1'),
(29, 24, 1, '17-1'),
(30, 25, 1, '18-1'),
(31, 26, 1, '18-1'),
(32, 27, 1, '18-1'),
(33, 18, 1, '19-1'),
(34, 28, 1, '20-1'),
(35, 29, 1, '21-1'),
(36, 19, 1, '21-1'),
(37, 30, 1, '22-1'),
(38, 18, 1, '22-1'),
(39, 31, 1, '22-1'),
(40, 32, 1, '23-1'),
(41, 33, 1, '23-1'),
(42, 9, 1, '24-1'),
(43, 34, 1, '24-1'),
(44, 35, 1, '25-1'),
(45, 35, 1, '26-1'),
(46, 36, 1, '27-1'),
(47, 33, 1, '27-1'),
(48, 37, 1, '28-1'),
(49, 36, 1, '28-1'),
(50, 38, 1, '30-1'),
(51, 35, 1, '35-1'),
(52, 39, 1, '36-1'),
(53, 1, 1, '36-1'),
(54, 40, 1, '37-1'),
(55, 41, 1, '37-1'),
(56, 1, 1, '37-1'),
(57, 2, 1, '38-1'),
(58, 42, 1, '38-1'),
(59, 1, 1, '38-1'),
(60, 2, 1, '39-1'),
(61, 42, 1, '39-1'),
(62, 1, 1, '39-1'),
(63, 2, 1, '40-1'),
(64, 2, 1, '41-1'),
(65, 2, 1, '42-1'),
(66, 2, 1, '43-1');

-- --------------------------------------------------------

--
-- 表的结构 `v9_link`
--

CREATE TABLE `v9_link` (
  `linkid` smallint(5) UNSIGNED NOT NULL,
  `siteid` smallint(5) UNSIGNED DEFAULT '0',
  `typeid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `linktype` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `introduce` text NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `listorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `elite` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `passed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_link`
--

INSERT INTO `v9_link` (`linkid`, `siteid`, `typeid`, `linktype`, `name`, `url`, `logo`, `introduce`, `username`, `listorder`, `elite`, `passed`, `addtime`) VALUES
(3, 1, 53, 0, '国际工程学院', 'http://ies.gcu.edu.cn/cn/', '', '', '', 0, 0, 1, 1488003156),
(4, 1, 53, 0, '中兴通信工程学院', 'http://3g.gcu.edu.cn/', '', '', '', 0, 0, 1, 1488003237),
(5, 1, 53, 0, '国际商学院', 'http://gibs.gcu.edu.cn/', '', '', '', 0, 0, 1, 1488003338),
(6, 1, 54, 0, '学生处', 'http://gqt.gcu.edu.cn/', '', '', '', 0, 0, 1, 1488003494),
(7, 1, 54, 0, '图书馆', 'http://lib.gcu.edu.cn/home/', '', '', '', 0, 0, 1, 1488003556),
(8, 1, 55, 0, '广东省外国专家局', 'http://www.gdhrss.gov.cn/publicfiles/business/htmlfiles/gdswzj/index.html', '', '', '', 0, 0, 1, 1488003719),
(9, 1, 55, 0, '教育部留学服务中心', 'http://renzheng.cscse.edu.cn/Login.aspx', '', '', '', 0, 0, 1, 1488003785),
(10, 1, 56, 1, '英格兰大学', 'http://www.uwe.ac.uk/', 'http://communi.chenyimin.cn/uploadfile/2017/0225/20170225024041930.png', '', '', 0, 0, 1, 1488004848);

-- --------------------------------------------------------

--
-- 表的结构 `v9_linkage`
--

CREATE TABLE `v9_linkage` (
  `linkageid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `style` varchar(35) NOT NULL,
  `parentid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `child` tinyint(1) NOT NULL,
  `arrchildid` mediumtext NOT NULL,
  `keyid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `setting` varchar(255) DEFAULT NULL,
  `siteid` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_linkage`
--

INSERT INTO `v9_linkage` (`linkageid`, `name`, `style`, `parentid`, `child`, `arrchildid`, `keyid`, `listorder`, `description`, `setting`, `siteid`) VALUES
(1, '中国', '1', 0, 0, '', 0, 0, '', NULL, 0),
(2, '北京市', '0', 0, 0, '', 1, 0, '', NULL, 0),
(3, '上海市', '0', 0, 0, '', 1, 0, '', NULL, 0),
(4, '天津市', '0', 0, 0, '', 1, 0, '', NULL, 0),
(5, '重庆市', '0', 0, 0, '', 1, 0, '', NULL, 0),
(6, '河北省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(7, '山西省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(8, '内蒙古', '0', 0, 0, '', 1, 0, '', NULL, 0),
(9, '辽宁省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(10, '吉林省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(11, '黑龙江省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(12, '江苏省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(13, '浙江省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(14, '安徽省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(15, '福建省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(16, '江西省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(17, '山东省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(18, '河南省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(19, '湖北省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(20, '湖南省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(21, '广东省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(22, '广西', '0', 0, 0, '', 1, 0, '', NULL, 0),
(23, '海南省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(24, '四川省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(25, '贵州省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(26, '云南省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(27, '西藏', '0', 0, 0, '', 1, 0, '', NULL, 0),
(28, '陕西省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(29, '甘肃省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(30, '青海省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(31, '宁夏', '0', 0, 0, '', 1, 0, '', NULL, 0),
(32, '新疆', '0', 0, 0, '', 1, 0, '', NULL, 0),
(33, '台湾省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(34, '香港', '0', 0, 0, '', 1, 0, '', NULL, 0),
(35, '澳门', '0', 0, 0, '', 1, 0, '', NULL, 0),
(36, '东城区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(37, '西城区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(38, '崇文区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(39, '宣武区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(40, '朝阳区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(41, '石景山区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(42, '海淀区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(43, '门头沟区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(44, '房山区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(45, '通州区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(46, '顺义区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(47, '昌平区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(48, '大兴区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(49, '怀柔区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(50, '平谷区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(51, '密云县', '0', 2, 0, '', 1, 0, '', NULL, 0),
(52, '延庆县', '0', 2, 0, '', 1, 0, '', NULL, 0),
(53, '黄浦区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(54, '卢湾区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(55, '徐汇区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(56, '长宁区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(57, '静安区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(58, '普陀区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(59, '闸北区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(60, '虹口区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(61, '杨浦区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(62, '闵行区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(63, '宝山区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(64, '嘉定区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(65, '浦东新区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(66, '金山区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(67, '松江区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(68, '青浦区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(69, '南汇区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(70, '奉贤区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(71, '崇明县', '0', 3, 0, '', 1, 0, '', NULL, 0),
(72, '和平区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(73, '河东区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(74, '河西区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(75, '南开区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(76, '河北区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(77, '红桥区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(78, '塘沽区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(79, '汉沽区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(80, '大港区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(81, '东丽区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(82, '西青区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(83, '津南区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(84, '北辰区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(85, '武清区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(86, '宝坻区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(87, '宁河县', '0', 4, 0, '', 1, 0, '', NULL, 0),
(88, '静海县', '0', 4, 0, '', 1, 0, '', NULL, 0),
(89, '蓟县', '0', 4, 0, '', 1, 0, '', NULL, 0),
(90, '万州区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(91, '涪陵区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(92, '渝中区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(93, '大渡口区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(94, '江北区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(95, '沙坪坝区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(96, '九龙坡区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(97, '南岸区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(98, '北碚区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(99, '万盛区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(100, '双桥区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(101, '渝北区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(102, '巴南区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(103, '黔江区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(104, '长寿区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(105, '綦江县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(106, '潼南县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(107, '铜梁县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(108, '大足县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(109, '荣昌县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(110, '璧山县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(111, '梁平县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(112, '城口县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(113, '丰都县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(114, '垫江县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(115, '武隆县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(116, '忠县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(117, '开县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(118, '云阳县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(119, '奉节县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(120, '巫山县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(121, '巫溪县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(122, '石柱县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(123, '秀山县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(124, '酉阳县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(125, '彭水县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(126, '江津区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(127, '合川区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(128, '永川区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(129, '南川区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(130, '石家庄市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(131, '唐山市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(132, '秦皇岛市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(133, '邯郸市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(134, '邢台市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(135, '保定市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(136, '张家口市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(137, '承德市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(138, '沧州市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(139, '廊坊市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(140, '衡水市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(141, '太原市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(142, '大同市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(143, '阳泉市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(144, '长治市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(145, '晋城市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(146, '朔州市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(147, '晋中市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(148, '运城市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(149, '忻州市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(150, '临汾市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(151, '吕梁市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(152, '呼和浩特市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(153, '包头市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(154, '乌海市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(155, '赤峰市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(156, '通辽市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(157, '鄂尔多斯市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(158, '呼伦贝尔市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(159, '巴彦淖尔市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(160, '乌兰察布市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(161, '兴安盟', '0', 8, 0, '', 1, 0, '', NULL, 0),
(162, '锡林郭勒盟', '0', 8, 0, '', 1, 0, '', NULL, 0),
(163, '阿拉善盟', '0', 8, 0, '', 1, 0, '', NULL, 0),
(164, '沈阳市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(165, '大连市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(166, '鞍山市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(167, '抚顺市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(168, '本溪市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(169, '丹东市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(170, '锦州市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(171, '营口市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(172, '阜新市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(173, '辽阳市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(174, '盘锦市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(175, '铁岭市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(176, '朝阳市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(177, '葫芦岛市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(178, '长春市', '0', 10, 0, '', 1, 0, '', NULL, 0),
(179, '吉林市', '0', 10, 0, '', 1, 0, '', NULL, 0),
(180, '四平市', '0', 10, 0, '', 1, 0, '', NULL, 0),
(181, '辽源市', '0', 10, 0, '', 1, 0, '', NULL, 0),
(182, '通化市', '0', 10, 0, '', 1, 0, '', NULL, 0),
(183, '白山市', '0', 10, 0, '', 1, 0, '', NULL, 0),
(184, '松原市', '0', 10, 0, '', 1, 0, '', NULL, 0),
(185, '白城市', '0', 10, 0, '', 1, 0, '', NULL, 0),
(186, '延边', '0', 10, 0, '', 1, 0, '', NULL, 0),
(187, '哈尔滨市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(188, '齐齐哈尔市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(189, '鸡西市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(190, '鹤岗市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(191, '双鸭山市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(192, '大庆市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(193, '伊春市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(194, '佳木斯市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(195, '七台河市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(196, '牡丹江市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(197, '黑河市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(198, '绥化市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(199, '大兴安岭地区', '0', 11, 0, '', 1, 0, '', NULL, 0),
(200, '南京市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(201, '无锡市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(202, '徐州市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(203, '常州市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(204, '苏州市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(205, '南通市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(206, '连云港市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(207, '淮安市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(208, '盐城市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(209, '扬州市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(210, '镇江市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(211, '泰州市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(212, '宿迁市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(213, '杭州市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(214, '宁波市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(215, '温州市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(216, '嘉兴市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(217, '湖州市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(218, '绍兴市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(219, '金华市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(220, '衢州市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(221, '舟山市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(222, '台州市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(223, '丽水市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(224, '合肥市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(225, '芜湖市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(226, '蚌埠市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(227, '淮南市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(228, '马鞍山市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(229, '淮北市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(230, '铜陵市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(231, '安庆市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(232, '黄山市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(233, '滁州市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(234, '阜阳市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(235, '宿州市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(236, '巢湖市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(237, '六安市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(238, '亳州市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(239, '池州市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(240, '宣城市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(241, '福州市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(242, '厦门市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(243, '莆田市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(244, '三明市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(245, '泉州市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(246, '漳州市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(247, '南平市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(248, '龙岩市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(249, '宁德市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(250, '南昌市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(251, '景德镇市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(252, '萍乡市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(253, '九江市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(254, '新余市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(255, '鹰潭市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(256, '赣州市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(257, '吉安市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(258, '宜春市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(259, '抚州市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(260, '上饶市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(261, '济南市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(262, '青岛市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(263, '淄博市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(264, '枣庄市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(265, '东营市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(266, '烟台市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(267, '潍坊市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(268, '济宁市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(269, '泰安市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(270, '威海市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(271, '日照市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(272, '莱芜市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(273, '临沂市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(274, '德州市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(275, '聊城市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(276, '滨州市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(277, '荷泽市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(278, '郑州市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(279, '开封市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(280, '洛阳市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(281, '平顶山市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(282, '安阳市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(283, '鹤壁市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(284, '新乡市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(285, '焦作市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(286, '濮阳市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(287, '许昌市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(288, '漯河市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(289, '三门峡市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(290, '南阳市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(291, '商丘市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(292, '信阳市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(293, '周口市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(294, '驻马店市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(295, '武汉市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(296, '黄石市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(297, '十堰市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(298, '宜昌市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(299, '襄樊市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(300, '鄂州市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(301, '荆门市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(302, '孝感市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(303, '荆州市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(304, '黄冈市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(305, '咸宁市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(306, '随州市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(307, '恩施土家族苗族自治州', '0', 19, 0, '', 1, 0, '', NULL, 0),
(308, '仙桃市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(309, '潜江市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(310, '天门市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(311, '神农架林区', '0', 19, 0, '', 1, 0, '', NULL, 0),
(312, '长沙市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(313, '株洲市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(314, '湘潭市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(315, '衡阳市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(316, '邵阳市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(317, '岳阳市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(318, '常德市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(319, '张家界市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(320, '益阳市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(321, '郴州市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(322, '永州市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(323, '怀化市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(324, '娄底市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(325, '湘西土家族苗族自治州', '0', 20, 0, '', 1, 0, '', NULL, 0),
(326, '广州市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(327, '韶关市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(328, '深圳市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(329, '珠海市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(330, '汕头市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(331, '佛山市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(332, '江门市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(333, '湛江市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(334, '茂名市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(335, '肇庆市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(336, '惠州市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(337, '梅州市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(338, '汕尾市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(339, '河源市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(340, '阳江市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(341, '清远市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(342, '东莞市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(343, '中山市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(344, '潮州市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(345, '揭阳市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(346, '云浮市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(347, '南宁市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(348, '柳州市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(349, '桂林市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(350, '梧州市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(351, '北海市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(352, '防城港市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(353, '钦州市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(354, '贵港市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(355, '玉林市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(356, '百色市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(357, '贺州市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(358, '河池市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(359, '来宾市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(360, '崇左市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(361, '海口市', '0', 23, 0, '', 1, 0, '', NULL, 0),
(362, '三亚市', '0', 23, 0, '', 1, 0, '', NULL, 0),
(363, '五指山市', '0', 23, 0, '', 1, 0, '', NULL, 0),
(364, '琼海市', '0', 23, 0, '', 1, 0, '', NULL, 0),
(365, '儋州市', '0', 23, 0, '', 1, 0, '', NULL, 0),
(366, '文昌市', '0', 23, 0, '', 1, 0, '', NULL, 0),
(367, '万宁市', '0', 23, 0, '', 1, 0, '', NULL, 0),
(368, '东方市', '0', 23, 0, '', 1, 0, '', NULL, 0),
(369, '定安县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(370, '屯昌县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(371, '澄迈县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(372, '临高县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(373, '白沙黎族自治县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(374, '昌江黎族自治县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(375, '乐东黎族自治县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(376, '陵水黎族自治县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(377, '保亭黎族苗族自治县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(378, '琼中黎族苗族自治县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(379, '西沙群岛', '0', 23, 0, '', 1, 0, '', NULL, 0),
(380, '南沙群岛', '0', 23, 0, '', 1, 0, '', NULL, 0),
(381, '中沙群岛的岛礁及其海域', '0', 23, 0, '', 1, 0, '', NULL, 0),
(382, '成都市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(383, '自贡市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(384, '攀枝花市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(385, '泸州市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(386, '德阳市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(387, '绵阳市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(388, '广元市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(389, '遂宁市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(390, '内江市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(391, '乐山市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(392, '南充市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(393, '眉山市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(394, '宜宾市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(395, '广安市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(396, '达州市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(397, '雅安市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(398, '巴中市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(399, '资阳市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(400, '阿坝州', '0', 24, 0, '', 1, 0, '', NULL, 0),
(401, '甘孜州', '0', 24, 0, '', 1, 0, '', NULL, 0),
(402, '凉山州', '0', 24, 0, '', 1, 0, '', NULL, 0),
(403, '贵阳市', '0', 25, 0, '', 1, 0, '', NULL, 0),
(404, '六盘水市', '0', 25, 0, '', 1, 0, '', NULL, 0),
(405, '遵义市', '0', 25, 0, '', 1, 0, '', NULL, 0),
(406, '安顺市', '0', 25, 0, '', 1, 0, '', NULL, 0),
(407, '铜仁地区', '0', 25, 0, '', 1, 0, '', NULL, 0),
(408, '黔西南州', '0', 25, 0, '', 1, 0, '', NULL, 0),
(409, '毕节地区', '0', 25, 0, '', 1, 0, '', NULL, 0),
(410, '黔东南州', '0', 25, 0, '', 1, 0, '', NULL, 0),
(411, '黔南州', '0', 25, 0, '', 1, 0, '', NULL, 0),
(412, '昆明市', '0', 26, 0, '', 1, 0, '', NULL, 0),
(413, '曲靖市', '0', 26, 0, '', 1, 0, '', NULL, 0),
(414, '玉溪市', '0', 26, 0, '', 1, 0, '', NULL, 0),
(415, '保山市', '0', 26, 0, '', 1, 0, '', NULL, 0),
(416, '昭通市', '0', 26, 0, '', 1, 0, '', NULL, 0),
(417, '丽江市', '0', 26, 0, '', 1, 0, '', NULL, 0),
(418, '思茅市', '0', 26, 0, '', 1, 0, '', NULL, 0),
(419, '临沧市', '0', 26, 0, '', 1, 0, '', NULL, 0),
(420, '楚雄州', '0', 26, 0, '', 1, 0, '', NULL, 0),
(421, '红河州', '0', 26, 0, '', 1, 0, '', NULL, 0),
(422, '文山州', '0', 26, 0, '', 1, 0, '', NULL, 0),
(423, '西双版纳', '0', 26, 0, '', 1, 0, '', NULL, 0),
(424, '大理', '0', 26, 0, '', 1, 0, '', NULL, 0),
(425, '德宏', '0', 26, 0, '', 1, 0, '', NULL, 0),
(426, '怒江', '0', 26, 0, '', 1, 0, '', NULL, 0),
(427, '迪庆', '0', 26, 0, '', 1, 0, '', NULL, 0),
(428, '拉萨市', '0', 27, 0, '', 1, 0, '', NULL, 0),
(429, '昌都', '0', 27, 0, '', 1, 0, '', NULL, 0),
(430, '山南', '0', 27, 0, '', 1, 0, '', NULL, 0),
(431, '日喀则', '0', 27, 0, '', 1, 0, '', NULL, 0),
(432, '那曲', '0', 27, 0, '', 1, 0, '', NULL, 0),
(433, '阿里', '0', 27, 0, '', 1, 0, '', NULL, 0),
(434, '林芝', '0', 27, 0, '', 1, 0, '', NULL, 0),
(435, '西安市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(436, '铜川市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(437, '宝鸡市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(438, '咸阳市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(439, '渭南市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(440, '延安市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(441, '汉中市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(442, '榆林市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(443, '安康市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(444, '商洛市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(445, '兰州市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(446, '嘉峪关市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(447, '金昌市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(448, '白银市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(449, '天水市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(450, '武威市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(451, '张掖市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(452, '平凉市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(453, '酒泉市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(454, '庆阳市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(455, '定西市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(456, '陇南市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(457, '临夏州', '0', 29, 0, '', 1, 0, '', NULL, 0),
(458, '甘州', '0', 29, 0, '', 1, 0, '', NULL, 0),
(459, '西宁市', '0', 30, 0, '', 1, 0, '', NULL, 0),
(460, '海东地区', '0', 30, 0, '', 1, 0, '', NULL, 0),
(461, '海州', '0', 30, 0, '', 1, 0, '', NULL, 0),
(462, '黄南州', '0', 30, 0, '', 1, 0, '', NULL, 0),
(463, '海南州', '0', 30, 0, '', 1, 0, '', NULL, 0),
(464, '果洛州', '0', 30, 0, '', 1, 0, '', NULL, 0),
(465, '玉树州', '0', 30, 0, '', 1, 0, '', NULL, 0),
(466, '海西州', '0', 30, 0, '', 1, 0, '', NULL, 0),
(467, '银川市', '0', 31, 0, '', 1, 0, '', NULL, 0),
(468, '石嘴山市', '0', 31, 0, '', 1, 0, '', NULL, 0),
(469, '吴忠市', '0', 31, 0, '', 1, 0, '', NULL, 0),
(470, '固原市', '0', 31, 0, '', 1, 0, '', NULL, 0),
(471, '中卫市', '0', 31, 0, '', 1, 0, '', NULL, 0),
(472, '乌鲁木齐市', '0', 32, 0, '', 1, 0, '', NULL, 0),
(473, '克拉玛依市', '0', 32, 0, '', 1, 0, '', NULL, 0),
(474, '吐鲁番地区', '0', 32, 0, '', 1, 0, '', NULL, 0),
(475, '哈密地区', '0', 32, 0, '', 1, 0, '', NULL, 0),
(476, '昌吉州', '0', 32, 0, '', 1, 0, '', NULL, 0),
(477, '博尔州', '0', 32, 0, '', 1, 0, '', NULL, 0),
(478, '巴音郭楞州', '0', 32, 0, '', 1, 0, '', NULL, 0),
(479, '阿克苏地区', '0', 32, 0, '', 1, 0, '', NULL, 0),
(480, '克孜勒苏柯尔克孜自治州', '0', 32, 0, '', 1, 0, '', NULL, 0),
(481, '喀什地区', '0', 32, 0, '', 1, 0, '', NULL, 0),
(482, '和田地区', '0', 32, 0, '', 1, 0, '', NULL, 0),
(483, '伊犁州', '0', 32, 0, '', 1, 0, '', NULL, 0),
(484, '塔城地区', '0', 32, 0, '', 1, 0, '', NULL, 0),
(485, '阿勒泰地区', '0', 32, 0, '', 1, 0, '', NULL, 0),
(486, '石河子市', '0', 32, 0, '', 1, 0, '', NULL, 0),
(487, '阿拉尔市', '0', 32, 0, '', 1, 0, '', NULL, 0),
(488, '图木舒克市', '0', 32, 0, '', 1, 0, '', NULL, 0),
(489, '五家渠市', '0', 32, 0, '', 1, 0, '', NULL, 0),
(490, '台北市', '0', 33, 0, '', 1, 0, '', NULL, 0),
(491, '高雄市', '0', 33, 0, '', 1, 0, '', NULL, 0),
(492, '基隆市', '0', 33, 0, '', 1, 0, '', NULL, 0),
(493, '新竹市', '0', 33, 0, '', 1, 0, '', NULL, 0),
(494, '台中市', '0', 33, 0, '', 1, 0, '', NULL, 0),
(495, '嘉义市', '0', 33, 0, '', 1, 0, '', NULL, 0),
(496, '台南市', '0', 33, 0, '', 1, 0, '', NULL, 0),
(497, '台北县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(498, '桃园县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(499, '新竹县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(500, '苗栗县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(501, '台中县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(502, '彰化县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(503, '南投县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(504, '云林县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(505, '嘉义县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(506, '台南县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(507, '高雄县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(508, '屏东县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(509, '宜兰县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(510, '花莲县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(511, '台东县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(512, '澎湖县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(513, '金门县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(514, '连江县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(515, '中西区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(516, '东区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(517, '南区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(518, '湾仔区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(519, '九龙城区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(520, '观塘区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(521, '深水埗区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(522, '黄大仙区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(523, '油尖旺区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(524, '离岛区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(525, '葵青区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(526, '北区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(527, '西贡区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(528, '沙田区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(529, '大埔区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(530, '荃湾区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(531, '屯门区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(532, '元朗区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(533, '花地玛堂区', '0', 35, 0, '', 1, 0, '', NULL, 0),
(534, '市圣安多尼堂区', '0', 35, 0, '', 1, 0, '', NULL, 0),
(535, '大堂区', '0', 35, 0, '', 1, 0, '', NULL, 0),
(536, '望德堂区', '0', 35, 0, '', 1, 0, '', NULL, 0),
(537, '风顺堂区', '0', 35, 0, '', 1, 0, '', NULL, 0),
(538, '嘉模堂区', '0', 35, 0, '', 1, 0, '', NULL, 0),
(539, '圣方济各堂区', '0', 35, 0, '', 1, 0, '', NULL, 0),
(540, '长安区', '0', 130, 0, '', 1, 0, '', NULL, 0),
(541, '桥东区', '0', 130, 0, '', 1, 0, '', NULL, 0),
(542, '桥西区', '0', 130, 0, '', 1, 0, '', NULL, 0),
(543, '新华区', '0', 130, 0, '', 1, 0, '', NULL, 0),
(544, '井陉矿区', '0', 130, 0, '', 1, 0, '', NULL, 0),
(545, '裕华区', '0', 130, 0, '', 1, 0, '', NULL, 0),
(546, '井陉县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(547, '正定县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(548, '栾城县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(549, '行唐县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(550, '灵寿县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(551, '高邑县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(552, '深泽县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(553, '赞皇县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(554, '无极县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(555, '平山县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(556, '元氏县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(557, '赵县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(558, '辛集市', '0', 130, 0, '', 1, 0, '', NULL, 0),
(559, '藁城市', '0', 130, 0, '', 1, 0, '', NULL, 0),
(560, '晋州市', '0', 130, 0, '', 1, 0, '', NULL, 0),
(561, '新乐市', '0', 130, 0, '', 1, 0, '', NULL, 0),
(562, '鹿泉市', '0', 130, 0, '', 1, 0, '', NULL, 0),
(563, '路南区', '0', 131, 0, '', 1, 0, '', NULL, 0),
(564, '路北区', '0', 131, 0, '', 1, 0, '', NULL, 0),
(565, '古冶区', '0', 131, 0, '', 1, 0, '', NULL, 0),
(566, '开平区', '0', 131, 0, '', 1, 0, '', NULL, 0),
(567, '丰南区', '0', 131, 0, '', 1, 0, '', NULL, 0),
(568, '丰润区', '0', 131, 0, '', 1, 0, '', NULL, 0),
(569, '滦县', '0', 131, 0, '', 1, 0, '', NULL, 0),
(570, '滦南县', '0', 131, 0, '', 1, 0, '', NULL, 0),
(571, '乐亭县', '0', 131, 0, '', 1, 0, '', NULL, 0),
(572, '迁西县', '0', 131, 0, '', 1, 0, '', NULL, 0),
(573, '玉田县', '0', 131, 0, '', 1, 0, '', NULL, 0),
(574, '唐海县', '0', 131, 0, '', 1, 0, '', NULL, 0),
(575, '遵化市', '0', 131, 0, '', 1, 0, '', NULL, 0),
(576, '迁安市', '0', 131, 0, '', 1, 0, '', NULL, 0),
(577, '海港区', '0', 132, 0, '', 1, 0, '', NULL, 0),
(578, '山海关区', '0', 132, 0, '', 1, 0, '', NULL, 0),
(579, '北戴河区', '0', 132, 0, '', 1, 0, '', NULL, 0),
(580, '青龙县', '0', 132, 0, '', 1, 0, '', NULL, 0),
(581, '昌黎县', '0', 132, 0, '', 1, 0, '', NULL, 0),
(582, '抚宁县', '0', 132, 0, '', 1, 0, '', NULL, 0),
(583, '卢龙县', '0', 132, 0, '', 1, 0, '', NULL, 0),
(584, '邯山区', '0', 133, 0, '', 1, 0, '', NULL, 0),
(585, '丛台区', '0', 133, 0, '', 1, 0, '', NULL, 0),
(586, '复兴区', '0', 133, 0, '', 1, 0, '', NULL, 0),
(587, '峰峰矿区', '0', 133, 0, '', 1, 0, '', NULL, 0),
(588, '邯郸县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(589, '临漳县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(590, '成安县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(591, '大名县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(592, '涉县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(593, '磁县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(594, '肥乡县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(595, '永年县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(596, '邱县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(597, '鸡泽县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(598, '广平县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(599, '馆陶县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(600, '魏县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(601, '曲周县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(602, '武安市', '0', 133, 0, '', 1, 0, '', NULL, 0),
(603, '桥东区', '0', 134, 0, '', 1, 0, '', NULL, 0),
(604, '桥西区', '0', 134, 0, '', 1, 0, '', NULL, 0),
(605, '邢台县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(606, '临城县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(607, '内丘县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(608, '柏乡县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(609, '隆尧县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(610, '任县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(611, '南和县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(612, '宁晋县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(613, '巨鹿县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(614, '新河县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(615, '广宗县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(616, '平乡县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(617, '威县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(618, '清河县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(619, '临西县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(620, '南宫市', '0', 134, 0, '', 1, 0, '', NULL, 0),
(621, '沙河市', '0', 134, 0, '', 1, 0, '', NULL, 0),
(622, '新市区', '0', 135, 0, '', 1, 0, '', NULL, 0),
(623, '北市区', '0', 135, 0, '', 1, 0, '', NULL, 0),
(624, '南市区', '0', 135, 0, '', 1, 0, '', NULL, 0),
(625, '满城县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(626, '清苑县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(627, '涞水县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(628, '阜平县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(629, '徐水县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(630, '定兴县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(631, '唐县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(632, '高阳县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(633, '容城县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(634, '涞源县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(635, '望都县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(636, '安新县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(637, '易县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(638, '曲阳县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(639, '蠡县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(640, '顺平县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(641, '博野县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(642, '雄县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(643, '涿州市', '0', 135, 0, '', 1, 0, '', NULL, 0),
(644, '定州市', '0', 135, 0, '', 1, 0, '', NULL, 0),
(645, '安国市', '0', 135, 0, '', 1, 0, '', NULL, 0),
(646, '高碑店市', '0', 135, 0, '', 1, 0, '', NULL, 0),
(647, '桥东区', '0', 136, 0, '', 1, 0, '', NULL, 0),
(648, '桥西区', '0', 136, 0, '', 1, 0, '', NULL, 0),
(649, '宣化区', '0', 136, 0, '', 1, 0, '', NULL, 0),
(650, '下花园区', '0', 136, 0, '', 1, 0, '', NULL, 0),
(651, '宣化县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(652, '张北县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(653, '康保县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(654, '沽源县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(655, '尚义县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(656, '蔚县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(657, '阳原县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(658, '怀安县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(659, '万全县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(660, '怀来县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(661, '涿鹿县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(662, '赤城县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(663, '崇礼县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(664, '双桥区', '0', 137, 0, '', 1, 0, '', NULL, 0),
(665, '双滦区', '0', 137, 0, '', 1, 0, '', NULL, 0),
(666, '鹰手营子矿区', '0', 137, 0, '', 1, 0, '', NULL, 0),
(667, '承德县', '0', 137, 0, '', 1, 0, '', NULL, 0),
(668, '兴隆县', '0', 137, 0, '', 1, 0, '', NULL, 0),
(669, '平泉县', '0', 137, 0, '', 1, 0, '', NULL, 0),
(670, '滦平县', '0', 137, 0, '', 1, 0, '', NULL, 0),
(671, '隆化县', '0', 137, 0, '', 1, 0, '', NULL, 0),
(672, '丰宁县', '0', 137, 0, '', 1, 0, '', NULL, 0),
(673, '宽城县', '0', 137, 0, '', 1, 0, '', NULL, 0),
(674, '围场县', '0', 137, 0, '', 1, 0, '', NULL, 0),
(675, '新华区', '0', 138, 0, '', 1, 0, '', NULL, 0),
(676, '运河区', '0', 138, 0, '', 1, 0, '', NULL, 0),
(677, '沧县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(678, '青县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(679, '东光县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(680, '海兴县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(681, '盐山县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(682, '肃宁县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(683, '南皮县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(684, '吴桥县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(685, '献县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(686, '孟村县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(687, '泊头市', '0', 138, 0, '', 1, 0, '', NULL, 0),
(688, '任丘市', '0', 138, 0, '', 1, 0, '', NULL, 0),
(689, '黄骅市', '0', 138, 0, '', 1, 0, '', NULL, 0),
(690, '河间市', '0', 138, 0, '', 1, 0, '', NULL, 0),
(691, '安次区', '0', 139, 0, '', 1, 0, '', NULL, 0),
(692, '广阳区', '0', 139, 0, '', 1, 0, '', NULL, 0),
(693, '固安县', '0', 139, 0, '', 1, 0, '', NULL, 0),
(694, '永清县', '0', 139, 0, '', 1, 0, '', NULL, 0),
(695, '香河县', '0', 139, 0, '', 1, 0, '', NULL, 0),
(696, '大城县', '0', 139, 0, '', 1, 0, '', NULL, 0),
(697, '文安县', '0', 139, 0, '', 1, 0, '', NULL, 0),
(698, '大厂县', '0', 139, 0, '', 1, 0, '', NULL, 0),
(699, '霸州市', '0', 139, 0, '', 1, 0, '', NULL, 0),
(700, '三河市', '0', 139, 0, '', 1, 0, '', NULL, 0),
(701, '桃城区', '0', 140, 0, '', 1, 0, '', NULL, 0),
(702, '枣强县', '0', 140, 0, '', 1, 0, '', NULL, 0),
(703, '武邑县', '0', 140, 0, '', 1, 0, '', NULL, 0),
(704, '武强县', '0', 140, 0, '', 1, 0, '', NULL, 0),
(705, '饶阳县', '0', 140, 0, '', 1, 0, '', NULL, 0),
(706, '安平县', '0', 140, 0, '', 1, 0, '', NULL, 0),
(707, '故城县', '0', 140, 0, '', 1, 0, '', NULL, 0),
(708, '景县', '0', 140, 0, '', 1, 0, '', NULL, 0),
(709, '阜城县', '0', 140, 0, '', 1, 0, '', NULL, 0),
(710, '冀州市', '0', 140, 0, '', 1, 0, '', NULL, 0),
(711, '深州市', '0', 140, 0, '', 1, 0, '', NULL, 0),
(712, '小店区', '0', 141, 0, '', 1, 0, '', NULL, 0),
(713, '迎泽区', '0', 141, 0, '', 1, 0, '', NULL, 0),
(714, '杏花岭区', '0', 141, 0, '', 1, 0, '', NULL, 0),
(715, '尖草坪区', '0', 141, 0, '', 1, 0, '', NULL, 0),
(716, '万柏林区', '0', 141, 0, '', 1, 0, '', NULL, 0),
(717, '晋源区', '0', 141, 0, '', 1, 0, '', NULL, 0),
(718, '清徐县', '0', 141, 0, '', 1, 0, '', NULL, 0),
(719, '阳曲县', '0', 141, 0, '', 1, 0, '', NULL, 0),
(720, '娄烦县', '0', 141, 0, '', 1, 0, '', NULL, 0),
(721, '古交市', '0', 141, 0, '', 1, 0, '', NULL, 0),
(722, '城区', '0', 142, 0, '', 1, 0, '', NULL, 0),
(723, '矿区', '0', 142, 0, '', 1, 0, '', NULL, 0),
(724, '南郊区', '0', 142, 0, '', 1, 0, '', NULL, 0),
(725, '新荣区', '0', 142, 0, '', 1, 0, '', NULL, 0),
(726, '阳高县', '0', 142, 0, '', 1, 0, '', NULL, 0),
(727, '天镇县', '0', 142, 0, '', 1, 0, '', NULL, 0),
(728, '广灵县', '0', 142, 0, '', 1, 0, '', NULL, 0),
(729, '灵丘县', '0', 142, 0, '', 1, 0, '', NULL, 0),
(730, '浑源县', '0', 142, 0, '', 1, 0, '', NULL, 0),
(731, '左云县', '0', 142, 0, '', 1, 0, '', NULL, 0),
(732, '大同县', '0', 142, 0, '', 1, 0, '', NULL, 0),
(733, '城区', '0', 143, 0, '', 1, 0, '', NULL, 0),
(734, '矿区', '0', 143, 0, '', 1, 0, '', NULL, 0),
(735, '郊区', '0', 143, 0, '', 1, 0, '', NULL, 0),
(736, '平定县', '0', 143, 0, '', 1, 0, '', NULL, 0),
(737, '盂县', '0', 143, 0, '', 1, 0, '', NULL, 0),
(738, '城区', '0', 144, 0, '', 1, 0, '', NULL, 0),
(739, '郊区', '0', 144, 0, '', 1, 0, '', NULL, 0),
(740, '长治县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(741, '襄垣县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(742, '屯留县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(743, '平顺县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(744, '黎城县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(745, '壶关县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(746, '长子县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(747, '武乡县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(748, '沁县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(749, '沁源县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(750, '潞城市', '0', 144, 0, '', 1, 0, '', NULL, 0),
(751, '城区', '0', 145, 0, '', 1, 0, '', NULL, 0),
(752, '沁水县', '0', 145, 0, '', 1, 0, '', NULL, 0),
(753, '阳城县', '0', 145, 0, '', 1, 0, '', NULL, 0),
(754, '陵川县', '0', 145, 0, '', 1, 0, '', NULL, 0),
(755, '泽州县', '0', 145, 0, '', 1, 0, '', NULL, 0),
(756, '高平市', '0', 145, 0, '', 1, 0, '', NULL, 0),
(757, '朔城区', '0', 146, 0, '', 1, 0, '', NULL, 0),
(758, '平鲁区', '0', 146, 0, '', 1, 0, '', NULL, 0),
(759, '山阴县', '0', 146, 0, '', 1, 0, '', NULL, 0),
(760, '应县', '0', 146, 0, '', 1, 0, '', NULL, 0),
(761, '右玉县', '0', 146, 0, '', 1, 0, '', NULL, 0),
(762, '怀仁县', '0', 146, 0, '', 1, 0, '', NULL, 0),
(763, '榆次区', '0', 147, 0, '', 1, 0, '', NULL, 0),
(764, '榆社县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(765, '左权县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(766, '和顺县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(767, '昔阳县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(768, '寿阳县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(769, '太谷县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(770, '祁县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(771, '平遥县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(772, '灵石县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(773, '介休市', '0', 147, 0, '', 1, 0, '', NULL, 0),
(774, '盐湖区', '0', 148, 0, '', 1, 0, '', NULL, 0),
(775, '临猗县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(776, '万荣县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(777, '闻喜县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(778, '稷山县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(779, '新绛县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(780, '绛县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(781, '垣曲县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(782, '夏县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(783, '平陆县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(784, '芮城县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(785, '永济市', '0', 148, 0, '', 1, 0, '', NULL, 0),
(786, '河津市', '0', 148, 0, '', 1, 0, '', NULL, 0),
(787, '忻府区', '0', 149, 0, '', 1, 0, '', NULL, 0),
(788, '定襄县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(789, '五台县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(790, '代县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(791, '繁峙县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(792, '宁武县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(793, '静乐县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(794, '神池县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(795, '五寨县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(796, '岢岚县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(797, '河曲县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(798, '保德县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(799, '偏关县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(800, '原平市', '0', 149, 0, '', 1, 0, '', NULL, 0),
(801, '尧都区', '0', 150, 0, '', 1, 0, '', NULL, 0),
(802, '曲沃县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(803, '翼城县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(804, '襄汾县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(805, '洪洞县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(806, '古县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(807, '安泽县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(808, '浮山县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(809, '吉县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(810, '乡宁县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(811, '大宁县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(812, '隰县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(813, '永和县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(814, '蒲县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(815, '汾西县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(816, '侯马市', '0', 150, 0, '', 1, 0, '', NULL, 0),
(817, '霍州市', '0', 150, 0, '', 1, 0, '', NULL, 0),
(818, '离石区', '0', 151, 0, '', 1, 0, '', NULL, 0),
(819, '文水县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(820, '交城县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(821, '兴县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(822, '临县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(823, '柳林县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(824, '石楼县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(825, '岚县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(826, '方山县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(827, '中阳县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(828, '交口县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(829, '孝义市', '0', 151, 0, '', 1, 0, '', NULL, 0),
(830, '汾阳市', '0', 151, 0, '', 1, 0, '', NULL, 0),
(831, '新城区', '0', 152, 0, '', 1, 0, '', NULL, 0),
(832, '回民区', '0', 152, 0, '', 1, 0, '', NULL, 0),
(833, '玉泉区', '0', 152, 0, '', 1, 0, '', NULL, 0),
(834, '赛罕区', '0', 152, 0, '', 1, 0, '', NULL, 0),
(835, '土默特左旗', '0', 152, 0, '', 1, 0, '', NULL, 0),
(836, '托克托县', '0', 152, 0, '', 1, 0, '', NULL, 0),
(837, '和林格尔县', '0', 152, 0, '', 1, 0, '', NULL, 0),
(838, '清水河县', '0', 152, 0, '', 1, 0, '', NULL, 0),
(839, '武川县', '0', 152, 0, '', 1, 0, '', NULL, 0),
(840, '东河区', '0', 153, 0, '', 1, 0, '', NULL, 0),
(841, '昆都仑区', '0', 153, 0, '', 1, 0, '', NULL, 0),
(842, '青山区', '0', 153, 0, '', 1, 0, '', NULL, 0),
(843, '石拐区', '0', 153, 0, '', 1, 0, '', NULL, 0),
(844, '白云矿区', '0', 153, 0, '', 1, 0, '', NULL, 0),
(845, '九原区', '0', 153, 0, '', 1, 0, '', NULL, 0),
(846, '土默特右旗', '0', 153, 0, '', 1, 0, '', NULL, 0),
(847, '固阳县', '0', 153, 0, '', 1, 0, '', NULL, 0),
(848, '达尔罕茂明安联合旗', '0', 153, 0, '', 1, 0, '', NULL, 0),
(849, '海勃湾区', '0', 154, 0, '', 1, 0, '', NULL, 0),
(850, '海南区', '0', 154, 0, '', 1, 0, '', NULL, 0),
(851, '乌达区', '0', 154, 0, '', 1, 0, '', NULL, 0),
(852, '红山区', '0', 155, 0, '', 1, 0, '', NULL, 0),
(853, '元宝山区', '0', 155, 0, '', 1, 0, '', NULL, 0),
(854, '松山区', '0', 155, 0, '', 1, 0, '', NULL, 0),
(855, '阿鲁科尔沁旗', '0', 155, 0, '', 1, 0, '', NULL, 0),
(856, '巴林左旗', '0', 155, 0, '', 1, 0, '', NULL, 0),
(857, '巴林右旗', '0', 155, 0, '', 1, 0, '', NULL, 0),
(858, '林西县', '0', 155, 0, '', 1, 0, '', NULL, 0),
(859, '克什克腾旗', '0', 155, 0, '', 1, 0, '', NULL, 0),
(860, '翁牛特旗', '0', 155, 0, '', 1, 0, '', NULL, 0),
(861, '喀喇沁旗', '0', 155, 0, '', 1, 0, '', NULL, 0),
(862, '宁城县', '0', 155, 0, '', 1, 0, '', NULL, 0),
(863, '敖汉旗', '0', 155, 0, '', 1, 0, '', NULL, 0),
(864, '科尔沁区', '0', 156, 0, '', 1, 0, '', NULL, 0),
(865, '科尔沁左翼中旗', '0', 156, 0, '', 1, 0, '', NULL, 0),
(866, '科尔沁左翼后旗', '0', 156, 0, '', 1, 0, '', NULL, 0),
(867, '开鲁县', '0', 156, 0, '', 1, 0, '', NULL, 0),
(868, '库伦旗', '0', 156, 0, '', 1, 0, '', NULL, 0),
(869, '奈曼旗', '0', 156, 0, '', 1, 0, '', NULL, 0),
(870, '扎鲁特旗', '0', 156, 0, '', 1, 0, '', NULL, 0),
(871, '霍林郭勒市', '0', 156, 0, '', 1, 0, '', NULL, 0),
(872, '东胜区', '0', 157, 0, '', 1, 0, '', NULL, 0),
(873, '达拉特旗', '0', 157, 0, '', 1, 0, '', NULL, 0),
(874, '准格尔旗', '0', 157, 0, '', 1, 0, '', NULL, 0),
(875, '鄂托克前旗', '0', 157, 0, '', 1, 0, '', NULL, 0),
(876, '鄂托克旗', '0', 157, 0, '', 1, 0, '', NULL, 0),
(877, '杭锦旗', '0', 157, 0, '', 1, 0, '', NULL, 0),
(878, '乌审旗', '0', 157, 0, '', 1, 0, '', NULL, 0),
(879, '伊金霍洛旗', '0', 157, 0, '', 1, 0, '', NULL, 0),
(880, '海拉尔区', '0', 158, 0, '', 1, 0, '', NULL, 0),
(881, '阿荣旗', '0', 158, 0, '', 1, 0, '', NULL, 0),
(882, '莫力达瓦达斡尔族自治旗', '0', 158, 0, '', 1, 0, '', NULL, 0),
(883, '鄂伦春自治旗', '0', 158, 0, '', 1, 0, '', NULL, 0),
(884, '鄂温克族自治旗', '0', 158, 0, '', 1, 0, '', NULL, 0),
(885, '陈巴尔虎旗', '0', 158, 0, '', 1, 0, '', NULL, 0),
(886, '新巴尔虎左旗', '0', 158, 0, '', 1, 0, '', NULL, 0),
(887, '新巴尔虎右旗', '0', 158, 0, '', 1, 0, '', NULL, 0),
(888, '满洲里市', '0', 158, 0, '', 1, 0, '', NULL, 0),
(889, '牙克石市', '0', 158, 0, '', 1, 0, '', NULL, 0),
(890, '扎兰屯市', '0', 158, 0, '', 1, 0, '', NULL, 0),
(891, '额尔古纳市', '0', 158, 0, '', 1, 0, '', NULL, 0),
(892, '根河市', '0', 158, 0, '', 1, 0, '', NULL, 0),
(893, '临河区', '0', 159, 0, '', 1, 0, '', NULL, 0),
(894, '五原县', '0', 159, 0, '', 1, 0, '', NULL, 0),
(895, '磴口县', '0', 159, 0, '', 1, 0, '', NULL, 0),
(896, '乌拉特前旗', '0', 159, 0, '', 1, 0, '', NULL, 0),
(897, '乌拉特中旗', '0', 159, 0, '', 1, 0, '', NULL, 0),
(898, '乌拉特后旗', '0', 159, 0, '', 1, 0, '', NULL, 0),
(899, '杭锦后旗', '0', 159, 0, '', 1, 0, '', NULL, 0),
(900, '集宁区', '0', 160, 0, '', 1, 0, '', NULL, 0),
(901, '卓资县', '0', 160, 0, '', 1, 0, '', NULL, 0),
(902, '化德县', '0', 160, 0, '', 1, 0, '', NULL, 0),
(903, '商都县', '0', 160, 0, '', 1, 0, '', NULL, 0),
(904, '兴和县', '0', 160, 0, '', 1, 0, '', NULL, 0),
(905, '凉城县', '0', 160, 0, '', 1, 0, '', NULL, 0),
(906, '察哈尔右翼前旗', '0', 160, 0, '', 1, 0, '', NULL, 0),
(907, '察哈尔右翼中旗', '0', 160, 0, '', 1, 0, '', NULL, 0),
(908, '察哈尔右翼后旗', '0', 160, 0, '', 1, 0, '', NULL, 0),
(909, '四子王旗', '0', 160, 0, '', 1, 0, '', NULL, 0),
(910, '丰镇市', '0', 160, 0, '', 1, 0, '', NULL, 0),
(911, '乌兰浩特市', '0', 161, 0, '', 1, 0, '', NULL, 0),
(912, '阿尔山市', '0', 161, 0, '', 1, 0, '', NULL, 0),
(913, '科尔沁右翼前旗', '0', 161, 0, '', 1, 0, '', NULL, 0),
(914, '科尔沁右翼中旗', '0', 161, 0, '', 1, 0, '', NULL, 0),
(915, '扎赉特旗', '0', 161, 0, '', 1, 0, '', NULL, 0),
(916, '突泉县', '0', 161, 0, '', 1, 0, '', NULL, 0),
(917, '二连浩特市', '0', 162, 0, '', 1, 0, '', NULL, 0),
(918, '锡林浩特市', '0', 162, 0, '', 1, 0, '', NULL, 0),
(919, '阿巴嘎旗', '0', 162, 0, '', 1, 0, '', NULL, 0),
(920, '苏尼特左旗', '0', 162, 0, '', 1, 0, '', NULL, 0),
(921, '苏尼特右旗', '0', 162, 0, '', 1, 0, '', NULL, 0),
(922, '东乌珠穆沁旗', '0', 162, 0, '', 1, 0, '', NULL, 0),
(923, '西乌珠穆沁旗', '0', 162, 0, '', 1, 0, '', NULL, 0),
(924, '太仆寺旗', '0', 162, 0, '', 1, 0, '', NULL, 0),
(925, '镶黄旗', '0', 162, 0, '', 1, 0, '', NULL, 0),
(926, '正镶白旗', '0', 162, 0, '', 1, 0, '', NULL, 0),
(927, '正蓝旗', '0', 162, 0, '', 1, 0, '', NULL, 0),
(928, '多伦县', '0', 162, 0, '', 1, 0, '', NULL, 0),
(929, '阿拉善左旗', '0', 163, 0, '', 1, 0, '', NULL, 0),
(930, '阿拉善右旗', '0', 163, 0, '', 1, 0, '', NULL, 0),
(931, '额济纳旗', '0', 163, 0, '', 1, 0, '', NULL, 0),
(932, '和平区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(933, '沈河区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(934, '大东区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(935, '皇姑区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(936, '铁西区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(937, '苏家屯区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(938, '东陵区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(939, '新城子区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(940, '于洪区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(941, '辽中县', '0', 164, 0, '', 1, 0, '', NULL, 0),
(942, '康平县', '0', 164, 0, '', 1, 0, '', NULL, 0),
(943, '法库县', '0', 164, 0, '', 1, 0, '', NULL, 0),
(944, '新民市', '0', 164, 0, '', 1, 0, '', NULL, 0),
(945, '中山区', '0', 165, 0, '', 1, 0, '', NULL, 0),
(946, '西岗区', '0', 165, 0, '', 1, 0, '', NULL, 0),
(947, '沙河口区', '0', 165, 0, '', 1, 0, '', NULL, 0),
(948, '甘井子区', '0', 165, 0, '', 1, 0, '', NULL, 0),
(949, '旅顺口区', '0', 165, 0, '', 1, 0, '', NULL, 0),
(950, '金州区', '0', 165, 0, '', 1, 0, '', NULL, 0),
(951, '长海县', '0', 165, 0, '', 1, 0, '', NULL, 0),
(952, '瓦房店市', '0', 165, 0, '', 1, 0, '', NULL, 0),
(953, '普兰店市', '0', 165, 0, '', 1, 0, '', NULL, 0),
(954, '庄河市', '0', 165, 0, '', 1, 0, '', NULL, 0),
(955, '铁东区', '0', 166, 0, '', 1, 0, '', NULL, 0),
(956, '铁西区', '0', 166, 0, '', 1, 0, '', NULL, 0),
(957, '立山区', '0', 166, 0, '', 1, 0, '', NULL, 0),
(958, '千山区', '0', 166, 0, '', 1, 0, '', NULL, 0),
(959, '台安县', '0', 166, 0, '', 1, 0, '', NULL, 0),
(960, '岫岩满族自治县', '0', 166, 0, '', 1, 0, '', NULL, 0),
(961, '海城市', '0', 166, 0, '', 1, 0, '', NULL, 0),
(962, '新抚区', '0', 167, 0, '', 1, 0, '', NULL, 0),
(963, '东洲区', '0', 167, 0, '', 1, 0, '', NULL, 0),
(964, '望花区', '0', 167, 0, '', 1, 0, '', NULL, 0),
(965, '顺城区', '0', 167, 0, '', 1, 0, '', NULL, 0),
(966, '抚顺县', '0', 167, 0, '', 1, 0, '', NULL, 0),
(967, '新宾满族自治县', '0', 167, 0, '', 1, 0, '', NULL, 0),
(968, '清原满族自治县', '0', 167, 0, '', 1, 0, '', NULL, 0),
(969, '平山区', '0', 168, 0, '', 1, 0, '', NULL, 0),
(970, '溪湖区', '0', 168, 0, '', 1, 0, '', NULL, 0),
(971, '明山区', '0', 168, 0, '', 1, 0, '', NULL, 0),
(972, '南芬区', '0', 168, 0, '', 1, 0, '', NULL, 0),
(973, '本溪满族自治县', '0', 168, 0, '', 1, 0, '', NULL, 0),
(974, '桓仁满族自治县', '0', 168, 0, '', 1, 0, '', NULL, 0),
(975, '元宝区', '0', 169, 0, '', 1, 0, '', NULL, 0),
(976, '振兴区', '0', 169, 0, '', 1, 0, '', NULL, 0),
(977, '振安区', '0', 169, 0, '', 1, 0, '', NULL, 0),
(978, '宽甸满族自治县', '0', 169, 0, '', 1, 0, '', NULL, 0),
(979, '东港市', '0', 169, 0, '', 1, 0, '', NULL, 0),
(980, '凤城市', '0', 169, 0, '', 1, 0, '', NULL, 0),
(981, '古塔区', '0', 170, 0, '', 1, 0, '', NULL, 0),
(982, '凌河区', '0', 170, 0, '', 1, 0, '', NULL, 0),
(983, '太和区', '0', 170, 0, '', 1, 0, '', NULL, 0),
(984, '黑山县', '0', 170, 0, '', 1, 0, '', NULL, 0),
(985, '义县', '0', 170, 0, '', 1, 0, '', NULL, 0),
(986, '凌海市', '0', 170, 0, '', 1, 0, '', NULL, 0),
(987, '北镇市', '0', 170, 0, '', 1, 0, '', NULL, 0),
(988, '站前区', '0', 171, 0, '', 1, 0, '', NULL, 0),
(989, '西市区', '0', 171, 0, '', 1, 0, '', NULL, 0),
(990, '鲅鱼圈区', '0', 171, 0, '', 1, 0, '', NULL, 0),
(991, '老边区', '0', 171, 0, '', 1, 0, '', NULL, 0),
(992, '盖州市', '0', 171, 0, '', 1, 0, '', NULL, 0),
(993, '大石桥市', '0', 171, 0, '', 1, 0, '', NULL, 0),
(994, '海州区', '0', 172, 0, '', 1, 0, '', NULL, 0),
(995, '新邱区', '0', 172, 0, '', 1, 0, '', NULL, 0),
(996, '太平区', '0', 172, 0, '', 1, 0, '', NULL, 0),
(997, '清河门区', '0', 172, 0, '', 1, 0, '', NULL, 0),
(998, '细河区', '0', 172, 0, '', 1, 0, '', NULL, 0),
(999, '阜新蒙古族自治县', '0', 172, 0, '', 1, 0, '', NULL, 0),
(1000, '彰武县', '0', 172, 0, '', 1, 0, '', NULL, 0),
(1001, '白塔区', '0', 173, 0, '', 1, 0, '', NULL, 0),
(1002, '文圣区', '0', 173, 0, '', 1, 0, '', NULL, 0),
(1003, '宏伟区', '0', 173, 0, '', 1, 0, '', NULL, 0),
(1004, '弓长岭区', '0', 173, 0, '', 1, 0, '', NULL, 0),
(1005, '太子河区', '0', 173, 0, '', 1, 0, '', NULL, 0),
(1006, '辽阳县', '0', 173, 0, '', 1, 0, '', NULL, 0),
(1007, '灯塔市', '0', 173, 0, '', 1, 0, '', NULL, 0),
(1008, '双台子区', '0', 174, 0, '', 1, 0, '', NULL, 0),
(1009, '兴隆台区', '0', 174, 0, '', 1, 0, '', NULL, 0),
(1010, '大洼县', '0', 174, 0, '', 1, 0, '', NULL, 0),
(1011, '盘山县', '0', 174, 0, '', 1, 0, '', NULL, 0),
(1012, '银州区', '0', 175, 0, '', 1, 0, '', NULL, 0),
(1013, '清河区', '0', 175, 0, '', 1, 0, '', NULL, 0),
(1014, '铁岭县', '0', 175, 0, '', 1, 0, '', NULL, 0),
(1015, '西丰县', '0', 175, 0, '', 1, 0, '', NULL, 0),
(1016, '昌图县', '0', 175, 0, '', 1, 0, '', NULL, 0),
(1017, '调兵山市', '0', 175, 0, '', 1, 0, '', NULL, 0),
(1018, '开原市', '0', 175, 0, '', 1, 0, '', NULL, 0),
(1019, '双塔区', '0', 176, 0, '', 1, 0, '', NULL, 0),
(1020, '龙城区', '0', 176, 0, '', 1, 0, '', NULL, 0),
(1021, '朝阳县', '0', 176, 0, '', 1, 0, '', NULL, 0),
(1022, '建平县', '0', 176, 0, '', 1, 0, '', NULL, 0),
(1023, '喀喇沁左翼蒙古族自治县', '0', 176, 0, '', 1, 0, '', NULL, 0),
(1024, '北票市', '0', 176, 0, '', 1, 0, '', NULL, 0),
(1025, '凌源市', '0', 176, 0, '', 1, 0, '', NULL, 0),
(1026, '连山区', '0', 177, 0, '', 1, 0, '', NULL, 0),
(1027, '龙港区', '0', 177, 0, '', 1, 0, '', NULL, 0),
(1028, '南票区', '0', 177, 0, '', 1, 0, '', NULL, 0),
(1029, '绥中县', '0', 177, 0, '', 1, 0, '', NULL, 0),
(1030, '建昌县', '0', 177, 0, '', 1, 0, '', NULL, 0),
(1031, '兴城市', '0', 177, 0, '', 1, 0, '', NULL, 0),
(1032, '南关区', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1033, '宽城区', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1034, '朝阳区', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1035, '二道区', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1036, '绿园区', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1037, '双阳区', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1038, '农安县', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1039, '九台市', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1040, '榆树市', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1041, '德惠市', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1042, '昌邑区', '0', 179, 0, '', 1, 0, '', NULL, 0),
(1043, '龙潭区', '0', 179, 0, '', 1, 0, '', NULL, 0),
(1044, '船营区', '0', 179, 0, '', 1, 0, '', NULL, 0),
(1045, '丰满区', '0', 179, 0, '', 1, 0, '', NULL, 0),
(1046, '永吉县', '0', 179, 0, '', 1, 0, '', NULL, 0),
(1047, '蛟河市', '0', 179, 0, '', 1, 0, '', NULL, 0),
(1048, '桦甸市', '0', 179, 0, '', 1, 0, '', NULL, 0);
INSERT INTO `v9_linkage` (`linkageid`, `name`, `style`, `parentid`, `child`, `arrchildid`, `keyid`, `listorder`, `description`, `setting`, `siteid`) VALUES
(1049, '舒兰市', '0', 179, 0, '', 1, 0, '', NULL, 0),
(1050, '磐石市', '0', 179, 0, '', 1, 0, '', NULL, 0),
(1051, '铁西区', '0', 180, 0, '', 1, 0, '', NULL, 0),
(1052, '铁东区', '0', 180, 0, '', 1, 0, '', NULL, 0),
(1053, '梨树县', '0', 180, 0, '', 1, 0, '', NULL, 0),
(1054, '伊通满族自治县', '0', 180, 0, '', 1, 0, '', NULL, 0),
(1055, '公主岭市', '0', 180, 0, '', 1, 0, '', NULL, 0),
(1056, '双辽市', '0', 180, 0, '', 1, 0, '', NULL, 0),
(1057, '龙山区', '0', 181, 0, '', 1, 0, '', NULL, 0),
(1058, '西安区', '0', 181, 0, '', 1, 0, '', NULL, 0),
(1059, '东丰县', '0', 181, 0, '', 1, 0, '', NULL, 0),
(1060, '东辽县', '0', 181, 0, '', 1, 0, '', NULL, 0),
(1061, '东昌区', '0', 182, 0, '', 1, 0, '', NULL, 0),
(1062, '二道江区', '0', 182, 0, '', 1, 0, '', NULL, 0),
(1063, '通化县', '0', 182, 0, '', 1, 0, '', NULL, 0),
(1064, '辉南县', '0', 182, 0, '', 1, 0, '', NULL, 0),
(1065, '柳河县', '0', 182, 0, '', 1, 0, '', NULL, 0),
(1066, '梅河口市', '0', 182, 0, '', 1, 0, '', NULL, 0),
(1067, '集安市', '0', 182, 0, '', 1, 0, '', NULL, 0),
(1068, '八道江区', '0', 183, 0, '', 1, 0, '', NULL, 0),
(1069, '抚松县', '0', 183, 0, '', 1, 0, '', NULL, 0),
(1070, '靖宇县', '0', 183, 0, '', 1, 0, '', NULL, 0),
(1071, '长白朝鲜族自治县', '0', 183, 0, '', 1, 0, '', NULL, 0),
(1072, '江源县', '0', 183, 0, '', 1, 0, '', NULL, 0),
(1073, '临江市', '0', 183, 0, '', 1, 0, '', NULL, 0),
(1074, '宁江区', '0', 184, 0, '', 1, 0, '', NULL, 0),
(1075, '前郭尔罗斯蒙古族自治县', '0', 184, 0, '', 1, 0, '', NULL, 0),
(1076, '长岭县', '0', 184, 0, '', 1, 0, '', NULL, 0),
(1077, '乾安县', '0', 184, 0, '', 1, 0, '', NULL, 0),
(1078, '扶余县', '0', 184, 0, '', 1, 0, '', NULL, 0),
(1079, '洮北区', '0', 185, 0, '', 1, 0, '', NULL, 0),
(1080, '镇赉县', '0', 185, 0, '', 1, 0, '', NULL, 0),
(1081, '通榆县', '0', 185, 0, '', 1, 0, '', NULL, 0),
(1082, '洮南市', '0', 185, 0, '', 1, 0, '', NULL, 0),
(1083, '大安市', '0', 185, 0, '', 1, 0, '', NULL, 0),
(1084, '延吉市', '0', 186, 0, '', 1, 0, '', NULL, 0),
(1085, '图们市', '0', 186, 0, '', 1, 0, '', NULL, 0),
(1086, '敦化市', '0', 186, 0, '', 1, 0, '', NULL, 0),
(1087, '珲春市', '0', 186, 0, '', 1, 0, '', NULL, 0),
(1088, '龙井市', '0', 186, 0, '', 1, 0, '', NULL, 0),
(1089, '和龙市', '0', 186, 0, '', 1, 0, '', NULL, 0),
(1090, '汪清县', '0', 186, 0, '', 1, 0, '', NULL, 0),
(1091, '安图县', '0', 186, 0, '', 1, 0, '', NULL, 0),
(1092, '道里区', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1093, '南岗区', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1094, '道外区', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1095, '香坊区', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1096, '动力区', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1097, '平房区', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1098, '松北区', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1099, '呼兰区', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1100, '依兰县', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1101, '方正县', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1102, '宾县', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1103, '巴彦县', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1104, '木兰县', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1105, '通河县', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1106, '延寿县', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1107, '阿城市', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1108, '双城市', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1109, '尚志市', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1110, '五常市', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1111, '龙沙区', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1112, '建华区', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1113, '铁锋区', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1114, '昂昂溪区', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1115, '富拉尔基区', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1116, '碾子山区', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1117, '梅里斯达斡尔族区', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1118, '龙江县', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1119, '依安县', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1120, '泰来县', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1121, '甘南县', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1122, '富裕县', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1123, '克山县', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1124, '克东县', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1125, '拜泉县', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1126, '讷河市', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1127, '鸡冠区', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1128, '恒山区', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1129, '滴道区', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1130, '梨树区', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1131, '城子河区', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1132, '麻山区', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1133, '鸡东县', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1134, '虎林市', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1135, '密山市', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1136, '向阳区', '0', 190, 0, '', 1, 0, '', NULL, 0),
(1137, '工农区', '0', 190, 0, '', 1, 0, '', NULL, 0),
(1138, '南山区', '0', 190, 0, '', 1, 0, '', NULL, 0),
(1139, '兴安区', '0', 190, 0, '', 1, 0, '', NULL, 0),
(1140, '东山区', '0', 190, 0, '', 1, 0, '', NULL, 0),
(1141, '兴山区', '0', 190, 0, '', 1, 0, '', NULL, 0),
(1142, '萝北县', '0', 190, 0, '', 1, 0, '', NULL, 0),
(1143, '绥滨县', '0', 190, 0, '', 1, 0, '', NULL, 0),
(1144, '尖山区', '0', 191, 0, '', 1, 0, '', NULL, 0),
(1145, '岭东区', '0', 191, 0, '', 1, 0, '', NULL, 0),
(1146, '四方台区', '0', 191, 0, '', 1, 0, '', NULL, 0),
(1147, '宝山区', '0', 191, 0, '', 1, 0, '', NULL, 0),
(1148, '集贤县', '0', 191, 0, '', 1, 0, '', NULL, 0),
(1149, '友谊县', '0', 191, 0, '', 1, 0, '', NULL, 0),
(1150, '宝清县', '0', 191, 0, '', 1, 0, '', NULL, 0),
(1151, '饶河县', '0', 191, 0, '', 1, 0, '', NULL, 0),
(1152, '萨尔图区', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1153, '龙凤区', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1154, '让胡路区', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1155, '红岗区', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1156, '大同区', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1157, '肇州县', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1158, '肇源县', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1159, '林甸县', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1160, '杜尔伯特蒙古族自治县', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1161, '伊春区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1162, '南岔区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1163, '友好区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1164, '西林区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1165, '翠峦区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1166, '新青区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1167, '美溪区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1168, '金山屯区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1169, '五营区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1170, '乌马河区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1171, '汤旺河区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1172, '带岭区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1173, '乌伊岭区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1174, '红星区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1175, '上甘岭区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1176, '嘉荫县', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1177, '铁力市', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1178, '永红区', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1179, '向阳区', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1180, '前进区', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1181, '东风区', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1182, '郊区', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1183, '桦南县', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1184, '桦川县', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1185, '汤原县', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1186, '抚远县', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1187, '同江市', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1188, '富锦市', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1189, '新兴区', '0', 195, 0, '', 1, 0, '', NULL, 0),
(1190, '桃山区', '0', 195, 0, '', 1, 0, '', NULL, 0),
(1191, '茄子河区', '0', 195, 0, '', 1, 0, '', NULL, 0),
(1192, '勃利县', '0', 195, 0, '', 1, 0, '', NULL, 0),
(1193, '东安区', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1194, '阳明区', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1195, '爱民区', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1196, '西安区', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1197, '东宁县', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1198, '林口县', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1199, '绥芬河市', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1200, '海林市', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1201, '宁安市', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1202, '穆棱市', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1203, '爱辉区', '0', 197, 0, '', 1, 0, '', NULL, 0),
(1204, '嫩江县', '0', 197, 0, '', 1, 0, '', NULL, 0),
(1205, '逊克县', '0', 197, 0, '', 1, 0, '', NULL, 0),
(1206, '孙吴县', '0', 197, 0, '', 1, 0, '', NULL, 0),
(1207, '北安市', '0', 197, 0, '', 1, 0, '', NULL, 0),
(1208, '五大连池市', '0', 197, 0, '', 1, 0, '', NULL, 0),
(1209, '北林区', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1210, '望奎县', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1211, '兰西县', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1212, '青冈县', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1213, '庆安县', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1214, '明水县', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1215, '绥棱县', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1216, '安达市', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1217, '肇东市', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1218, '海伦市', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1219, '呼玛县', '0', 199, 0, '', 1, 0, '', NULL, 0),
(1220, '塔河县', '0', 199, 0, '', 1, 0, '', NULL, 0),
(1221, '漠河县', '0', 199, 0, '', 1, 0, '', NULL, 0),
(1222, '玄武区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1223, '白下区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1224, '秦淮区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1225, '建邺区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1226, '鼓楼区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1227, '下关区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1228, '浦口区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1229, '栖霞区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1230, '雨花台区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1231, '江宁区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1232, '六合区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1233, '溧水县', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1234, '高淳县', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1235, '崇安区', '0', 201, 0, '', 1, 0, '', NULL, 0),
(1236, '南长区', '0', 201, 0, '', 1, 0, '', NULL, 0),
(1237, '北塘区', '0', 201, 0, '', 1, 0, '', NULL, 0),
(1238, '锡山区', '0', 201, 0, '', 1, 0, '', NULL, 0),
(1239, '惠山区', '0', 201, 0, '', 1, 0, '', NULL, 0),
(1240, '滨湖区', '0', 201, 0, '', 1, 0, '', NULL, 0),
(1241, '江阴市', '0', 201, 0, '', 1, 0, '', NULL, 0),
(1242, '宜兴市', '0', 201, 0, '', 1, 0, '', NULL, 0),
(1243, '鼓楼区', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1244, '云龙区', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1245, '九里区', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1246, '贾汪区', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1247, '泉山区', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1248, '丰县', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1249, '沛县', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1250, '铜山县', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1251, '睢宁县', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1252, '新沂市', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1253, '邳州市', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1254, '天宁区', '0', 203, 0, '', 1, 0, '', NULL, 0),
(1255, '钟楼区', '0', 203, 0, '', 1, 0, '', NULL, 0),
(1256, '戚墅堰区', '0', 203, 0, '', 1, 0, '', NULL, 0),
(1257, '新北区', '0', 203, 0, '', 1, 0, '', NULL, 0),
(1258, '武进区', '0', 203, 0, '', 1, 0, '', NULL, 0),
(1259, '溧阳市', '0', 203, 0, '', 1, 0, '', NULL, 0),
(1260, '金坛市', '0', 203, 0, '', 1, 0, '', NULL, 0),
(1261, '沧浪区', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1262, '平江区', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1263, '金阊区', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1264, '虎丘区', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1265, '吴中区', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1266, '相城区', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1267, '常熟市', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1268, '张家港市', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1269, '昆山市', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1270, '吴江市', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1271, '太仓市', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1272, '崇川区', '0', 205, 0, '', 1, 0, '', NULL, 0),
(1273, '港闸区', '0', 205, 0, '', 1, 0, '', NULL, 0),
(1274, '海安县', '0', 205, 0, '', 1, 0, '', NULL, 0),
(1275, '如东县', '0', 205, 0, '', 1, 0, '', NULL, 0),
(1276, '启东市', '0', 205, 0, '', 1, 0, '', NULL, 0),
(1277, '如皋市', '0', 205, 0, '', 1, 0, '', NULL, 0),
(1278, '通州市', '0', 205, 0, '', 1, 0, '', NULL, 0),
(1279, '海门市', '0', 205, 0, '', 1, 0, '', NULL, 0),
(1280, '连云区', '0', 206, 0, '', 1, 0, '', NULL, 0),
(1281, '新浦区', '0', 206, 0, '', 1, 0, '', NULL, 0),
(1282, '海州区', '0', 206, 0, '', 1, 0, '', NULL, 0),
(1283, '赣榆县', '0', 206, 0, '', 1, 0, '', NULL, 0),
(1284, '东海县', '0', 206, 0, '', 1, 0, '', NULL, 0),
(1285, '灌云县', '0', 206, 0, '', 1, 0, '', NULL, 0),
(1286, '灌南县', '0', 206, 0, '', 1, 0, '', NULL, 0),
(1287, '清河区', '0', 207, 0, '', 1, 0, '', NULL, 0),
(1288, '楚州区', '0', 207, 0, '', 1, 0, '', NULL, 0),
(1289, '淮阴区', '0', 207, 0, '', 1, 0, '', NULL, 0),
(1290, '清浦区', '0', 207, 0, '', 1, 0, '', NULL, 0),
(1291, '涟水县', '0', 207, 0, '', 1, 0, '', NULL, 0),
(1292, '洪泽县', '0', 207, 0, '', 1, 0, '', NULL, 0),
(1293, '盱眙县', '0', 207, 0, '', 1, 0, '', NULL, 0),
(1294, '金湖县', '0', 207, 0, '', 1, 0, '', NULL, 0),
(1295, '亭湖区', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1296, '盐都区', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1297, '响水县', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1298, '滨海县', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1299, '阜宁县', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1300, '射阳县', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1301, '建湖县', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1302, '东台市', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1303, '大丰市', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1304, '广陵区', '0', 209, 0, '', 1, 0, '', NULL, 0),
(1305, '邗江区', '0', 209, 0, '', 1, 0, '', NULL, 0),
(1306, '维扬区', '0', 209, 0, '', 1, 0, '', NULL, 0),
(1307, '宝应县', '0', 209, 0, '', 1, 0, '', NULL, 0),
(1308, '仪征市', '0', 209, 0, '', 1, 0, '', NULL, 0),
(1309, '高邮市', '0', 209, 0, '', 1, 0, '', NULL, 0),
(1310, '江都市', '0', 209, 0, '', 1, 0, '', NULL, 0),
(1311, '京口区', '0', 210, 0, '', 1, 0, '', NULL, 0),
(1312, '润州区', '0', 210, 0, '', 1, 0, '', NULL, 0),
(1313, '丹徒区', '0', 210, 0, '', 1, 0, '', NULL, 0),
(1314, '丹阳市', '0', 210, 0, '', 1, 0, '', NULL, 0),
(1315, '扬中市', '0', 210, 0, '', 1, 0, '', NULL, 0),
(1316, '句容市', '0', 210, 0, '', 1, 0, '', NULL, 0),
(1317, '海陵区', '0', 211, 0, '', 1, 0, '', NULL, 0),
(1318, '高港区', '0', 211, 0, '', 1, 0, '', NULL, 0),
(1319, '兴化市', '0', 211, 0, '', 1, 0, '', NULL, 0),
(1320, '靖江市', '0', 211, 0, '', 1, 0, '', NULL, 0),
(1321, '泰兴市', '0', 211, 0, '', 1, 0, '', NULL, 0),
(1322, '姜堰市', '0', 211, 0, '', 1, 0, '', NULL, 0),
(1323, '宿城区', '0', 212, 0, '', 1, 0, '', NULL, 0),
(1324, '宿豫区', '0', 212, 0, '', 1, 0, '', NULL, 0),
(1325, '沭阳县', '0', 212, 0, '', 1, 0, '', NULL, 0),
(1326, '泗阳县', '0', 212, 0, '', 1, 0, '', NULL, 0),
(1327, '泗洪县', '0', 212, 0, '', 1, 0, '', NULL, 0),
(1328, '上城区', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1329, '下城区', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1330, '江干区', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1331, '拱墅区', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1332, '西湖区', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1333, '滨江区', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1334, '萧山区', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1335, '余杭区', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1336, '桐庐县', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1337, '淳安县', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1338, '建德市', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1339, '富阳市', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1340, '临安市', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1341, '海曙区', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1342, '江东区', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1343, '江北区', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1344, '北仑区', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1345, '镇海区', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1346, '鄞州区', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1347, '象山县', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1348, '宁海县', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1349, '余姚市', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1350, '慈溪市', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1351, '奉化市', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1352, '鹿城区', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1353, '龙湾区', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1354, '瓯海区', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1355, '洞头县', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1356, '永嘉县', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1357, '平阳县', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1358, '苍南县', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1359, '文成县', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1360, '泰顺县', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1361, '瑞安市', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1362, '乐清市', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1363, '秀城区', '0', 216, 0, '', 1, 0, '', NULL, 0),
(1364, '秀洲区', '0', 216, 0, '', 1, 0, '', NULL, 0),
(1365, '嘉善县', '0', 216, 0, '', 1, 0, '', NULL, 0),
(1366, '海盐县', '0', 216, 0, '', 1, 0, '', NULL, 0),
(1367, '海宁市', '0', 216, 0, '', 1, 0, '', NULL, 0),
(1368, '平湖市', '0', 216, 0, '', 1, 0, '', NULL, 0),
(1369, '桐乡市', '0', 216, 0, '', 1, 0, '', NULL, 0),
(1370, '吴兴区', '0', 217, 0, '', 1, 0, '', NULL, 0),
(1371, '南浔区', '0', 217, 0, '', 1, 0, '', NULL, 0),
(1372, '德清县', '0', 217, 0, '', 1, 0, '', NULL, 0),
(1373, '长兴县', '0', 217, 0, '', 1, 0, '', NULL, 0),
(1374, '安吉县', '0', 217, 0, '', 1, 0, '', NULL, 0),
(1375, '越城区', '0', 218, 0, '', 1, 0, '', NULL, 0),
(1376, '绍兴县', '0', 218, 0, '', 1, 0, '', NULL, 0),
(1377, '新昌县', '0', 218, 0, '', 1, 0, '', NULL, 0),
(1378, '诸暨市', '0', 218, 0, '', 1, 0, '', NULL, 0),
(1379, '上虞市', '0', 218, 0, '', 1, 0, '', NULL, 0),
(1380, '嵊州市', '0', 218, 0, '', 1, 0, '', NULL, 0),
(1381, '婺城区', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1382, '金东区', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1383, '武义县', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1384, '浦江县', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1385, '磐安县', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1386, '兰溪市', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1387, '义乌市', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1388, '东阳市', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1389, '永康市', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1390, '柯城区', '0', 220, 0, '', 1, 0, '', NULL, 0),
(1391, '衢江区', '0', 220, 0, '', 1, 0, '', NULL, 0),
(1392, '常山县', '0', 220, 0, '', 1, 0, '', NULL, 0),
(1393, '开化县', '0', 220, 0, '', 1, 0, '', NULL, 0),
(1394, '龙游县', '0', 220, 0, '', 1, 0, '', NULL, 0),
(1395, '江山市', '0', 220, 0, '', 1, 0, '', NULL, 0),
(1396, '定海区', '0', 221, 0, '', 1, 0, '', NULL, 0),
(1397, '普陀区', '0', 221, 0, '', 1, 0, '', NULL, 0),
(1398, '岱山县', '0', 221, 0, '', 1, 0, '', NULL, 0),
(1399, '嵊泗县', '0', 221, 0, '', 1, 0, '', NULL, 0),
(1400, '椒江区', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1401, '黄岩区', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1402, '路桥区', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1403, '玉环县', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1404, '三门县', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1405, '天台县', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1406, '仙居县', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1407, '温岭市', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1408, '临海市', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1409, '莲都区', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1410, '青田县', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1411, '缙云县', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1412, '遂昌县', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1413, '松阳县', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1414, '云和县', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1415, '庆元县', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1416, '景宁畲族自治县', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1417, '龙泉市', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1418, '瑶海区', '0', 224, 0, '', 1, 0, '', NULL, 0),
(1419, '庐阳区', '0', 224, 0, '', 1, 0, '', NULL, 0),
(1420, '蜀山区', '0', 224, 0, '', 1, 0, '', NULL, 0),
(1421, '包河区', '0', 224, 0, '', 1, 0, '', NULL, 0),
(1422, '长丰县', '0', 224, 0, '', 1, 0, '', NULL, 0),
(1423, '肥东县', '0', 224, 0, '', 1, 0, '', NULL, 0),
(1424, '肥西县', '0', 224, 0, '', 1, 0, '', NULL, 0),
(1425, '镜湖区', '0', 225, 0, '', 1, 0, '', NULL, 0),
(1426, '弋江区', '0', 225, 0, '', 1, 0, '', NULL, 0),
(1427, '鸠江区', '0', 225, 0, '', 1, 0, '', NULL, 0),
(1428, '三山区', '0', 225, 0, '', 1, 0, '', NULL, 0),
(1429, '芜湖县', '0', 225, 0, '', 1, 0, '', NULL, 0),
(1430, '繁昌县', '0', 225, 0, '', 1, 0, '', NULL, 0),
(1431, '南陵县', '0', 225, 0, '', 1, 0, '', NULL, 0),
(1432, '龙子湖区', '0', 226, 0, '', 1, 0, '', NULL, 0),
(1433, '蚌山区', '0', 226, 0, '', 1, 0, '', NULL, 0),
(1434, '禹会区', '0', 226, 0, '', 1, 0, '', NULL, 0),
(1435, '淮上区', '0', 226, 0, '', 1, 0, '', NULL, 0),
(1436, '怀远县', '0', 226, 0, '', 1, 0, '', NULL, 0),
(1437, '五河县', '0', 226, 0, '', 1, 0, '', NULL, 0),
(1438, '固镇县', '0', 226, 0, '', 1, 0, '', NULL, 0),
(1439, '大通区', '0', 227, 0, '', 1, 0, '', NULL, 0),
(1440, '田家庵区', '0', 227, 0, '', 1, 0, '', NULL, 0),
(1441, '谢家集区', '0', 227, 0, '', 1, 0, '', NULL, 0),
(1442, '八公山区', '0', 227, 0, '', 1, 0, '', NULL, 0),
(1443, '潘集区', '0', 227, 0, '', 1, 0, '', NULL, 0),
(1444, '凤台县', '0', 227, 0, '', 1, 0, '', NULL, 0),
(1445, '金家庄区', '0', 228, 0, '', 1, 0, '', NULL, 0),
(1446, '花山区', '0', 228, 0, '', 1, 0, '', NULL, 0),
(1447, '雨山区', '0', 228, 0, '', 1, 0, '', NULL, 0),
(1448, '当涂县', '0', 228, 0, '', 1, 0, '', NULL, 0),
(1449, '杜集区', '0', 229, 0, '', 1, 0, '', NULL, 0),
(1450, '相山区', '0', 229, 0, '', 1, 0, '', NULL, 0),
(1451, '烈山区', '0', 229, 0, '', 1, 0, '', NULL, 0),
(1452, '濉溪县', '0', 229, 0, '', 1, 0, '', NULL, 0),
(1453, '铜官山区', '0', 230, 0, '', 1, 0, '', NULL, 0),
(1454, '狮子山区', '0', 230, 0, '', 1, 0, '', NULL, 0),
(1455, '郊区', '0', 230, 0, '', 1, 0, '', NULL, 0),
(1456, '铜陵县', '0', 230, 0, '', 1, 0, '', NULL, 0),
(1457, '迎江区', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1458, '大观区', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1459, '宜秀区', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1460, '怀宁县', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1461, '枞阳县', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1462, '潜山县', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1463, '太湖县', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1464, '宿松县', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1465, '望江县', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1466, '岳西县', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1467, '桐城市', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1468, '屯溪区', '0', 232, 0, '', 1, 0, '', NULL, 0),
(1469, '黄山区', '0', 232, 0, '', 1, 0, '', NULL, 0),
(1470, '徽州区', '0', 232, 0, '', 1, 0, '', NULL, 0),
(1471, '歙县', '0', 232, 0, '', 1, 0, '', NULL, 0),
(1472, '休宁县', '0', 232, 0, '', 1, 0, '', NULL, 0),
(1473, '黟县', '0', 232, 0, '', 1, 0, '', NULL, 0),
(1474, '祁门县', '0', 232, 0, '', 1, 0, '', NULL, 0),
(1475, '琅琊区', '0', 233, 0, '', 1, 0, '', NULL, 0),
(1476, '南谯区', '0', 233, 0, '', 1, 0, '', NULL, 0),
(1477, '来安县', '0', 233, 0, '', 1, 0, '', NULL, 0),
(1478, '全椒县', '0', 233, 0, '', 1, 0, '', NULL, 0),
(1479, '定远县', '0', 233, 0, '', 1, 0, '', NULL, 0),
(1480, '凤阳县', '0', 233, 0, '', 1, 0, '', NULL, 0),
(1481, '天长市', '0', 233, 0, '', 1, 0, '', NULL, 0),
(1482, '明光市', '0', 233, 0, '', 1, 0, '', NULL, 0),
(1483, '颍州区', '0', 234, 0, '', 1, 0, '', NULL, 0),
(1484, '颍东区', '0', 234, 0, '', 1, 0, '', NULL, 0),
(1485, '颍泉区', '0', 234, 0, '', 1, 0, '', NULL, 0),
(1486, '临泉县', '0', 234, 0, '', 1, 0, '', NULL, 0),
(1487, '太和县', '0', 234, 0, '', 1, 0, '', NULL, 0),
(1488, '阜南县', '0', 234, 0, '', 1, 0, '', NULL, 0),
(1489, '颍上县', '0', 234, 0, '', 1, 0, '', NULL, 0),
(1490, '界首市', '0', 234, 0, '', 1, 0, '', NULL, 0),
(1491, '埇桥区', '0', 235, 0, '', 1, 0, '', NULL, 0),
(1492, '砀山县', '0', 235, 0, '', 1, 0, '', NULL, 0),
(1493, '萧县', '0', 235, 0, '', 1, 0, '', NULL, 0),
(1494, '灵璧县', '0', 235, 0, '', 1, 0, '', NULL, 0),
(1495, '泗县', '0', 235, 0, '', 1, 0, '', NULL, 0),
(1496, '居巢区', '0', 236, 0, '', 1, 0, '', NULL, 0),
(1497, '庐江县', '0', 236, 0, '', 1, 0, '', NULL, 0),
(1498, '无为县', '0', 236, 0, '', 1, 0, '', NULL, 0),
(1499, '含山县', '0', 236, 0, '', 1, 0, '', NULL, 0),
(1500, '和县', '0', 236, 0, '', 1, 0, '', NULL, 0),
(1501, '金安区', '0', 237, 0, '', 1, 0, '', NULL, 0),
(1502, '裕安区', '0', 237, 0, '', 1, 0, '', NULL, 0),
(1503, '寿县', '0', 237, 0, '', 1, 0, '', NULL, 0),
(1504, '霍邱县', '0', 237, 0, '', 1, 0, '', NULL, 0),
(1505, '舒城县', '0', 237, 0, '', 1, 0, '', NULL, 0),
(1506, '金寨县', '0', 237, 0, '', 1, 0, '', NULL, 0),
(1507, '霍山县', '0', 237, 0, '', 1, 0, '', NULL, 0),
(1508, '谯城区', '0', 238, 0, '', 1, 0, '', NULL, 0),
(1509, '涡阳县', '0', 238, 0, '', 1, 0, '', NULL, 0),
(1510, '蒙城县', '0', 238, 0, '', 1, 0, '', NULL, 0),
(1511, '利辛县', '0', 238, 0, '', 1, 0, '', NULL, 0),
(1512, '贵池区', '0', 239, 0, '', 1, 0, '', NULL, 0),
(1513, '东至县', '0', 239, 0, '', 1, 0, '', NULL, 0),
(1514, '石台县', '0', 239, 0, '', 1, 0, '', NULL, 0),
(1515, '青阳县', '0', 239, 0, '', 1, 0, '', NULL, 0),
(1516, '宣州区', '0', 240, 0, '', 1, 0, '', NULL, 0),
(1517, '郎溪县', '0', 240, 0, '', 1, 0, '', NULL, 0),
(1518, '广德县', '0', 240, 0, '', 1, 0, '', NULL, 0),
(1519, '泾县', '0', 240, 0, '', 1, 0, '', NULL, 0),
(1520, '绩溪县', '0', 240, 0, '', 1, 0, '', NULL, 0),
(1521, '旌德县', '0', 240, 0, '', 1, 0, '', NULL, 0),
(1522, '宁国市', '0', 240, 0, '', 1, 0, '', NULL, 0),
(1523, '鼓楼区', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1524, '台江区', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1525, '仓山区', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1526, '马尾区', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1527, '晋安区', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1528, '闽侯县', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1529, '连江县', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1530, '罗源县', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1531, '闽清县', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1532, '永泰县', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1533, '平潭县', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1534, '福清市', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1535, '长乐市', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1536, '思明区', '0', 242, 0, '', 1, 0, '', NULL, 0),
(1537, '海沧区', '0', 242, 0, '', 1, 0, '', NULL, 0),
(1538, '湖里区', '0', 242, 0, '', 1, 0, '', NULL, 0),
(1539, '集美区', '0', 242, 0, '', 1, 0, '', NULL, 0),
(1540, '同安区', '0', 242, 0, '', 1, 0, '', NULL, 0),
(1541, '翔安区', '0', 242, 0, '', 1, 0, '', NULL, 0),
(1542, '城厢区', '0', 243, 0, '', 1, 0, '', NULL, 0),
(1543, '涵江区', '0', 243, 0, '', 1, 0, '', NULL, 0),
(1544, '荔城区', '0', 243, 0, '', 1, 0, '', NULL, 0),
(1545, '秀屿区', '0', 243, 0, '', 1, 0, '', NULL, 0),
(1546, '仙游县', '0', 243, 0, '', 1, 0, '', NULL, 0),
(1547, '梅列区', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1548, '三元区', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1549, '明溪县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1550, '清流县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1551, '宁化县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1552, '大田县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1553, '尤溪县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1554, '沙县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1555, '将乐县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1556, '泰宁县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1557, '建宁县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1558, '永安市', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1559, '鲤城区', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1560, '丰泽区', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1561, '洛江区', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1562, '泉港区', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1563, '惠安县', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1564, '安溪县', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1565, '永春县', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1566, '德化县', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1567, '金门县', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1568, '石狮市', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1569, '晋江市', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1570, '南安市', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1571, '芗城区', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1572, '龙文区', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1573, '云霄县', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1574, '漳浦县', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1575, '诏安县', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1576, '长泰县', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1577, '东山县', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1578, '南靖县', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1579, '平和县', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1580, '华安县', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1581, '龙海市', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1582, '延平区', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1583, '顺昌县', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1584, '浦城县', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1585, '光泽县', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1586, '松溪县', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1587, '政和县', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1588, '邵武市', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1589, '武夷山市', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1590, '建瓯市', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1591, '建阳市', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1592, '新罗区', '0', 248, 0, '', 1, 0, '', NULL, 0),
(1593, '长汀县', '0', 248, 0, '', 1, 0, '', NULL, 0),
(1594, '永定县', '0', 248, 0, '', 1, 0, '', NULL, 0),
(1595, '上杭县', '0', 248, 0, '', 1, 0, '', NULL, 0),
(1596, '武平县', '0', 248, 0, '', 1, 0, '', NULL, 0),
(1597, '连城县', '0', 248, 0, '', 1, 0, '', NULL, 0),
(1598, '漳平市', '0', 248, 0, '', 1, 0, '', NULL, 0),
(1599, '蕉城区', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1600, '霞浦县', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1601, '古田县', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1602, '屏南县', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1603, '寿宁县', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1604, '周宁县', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1605, '柘荣县', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1606, '福安市', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1607, '福鼎市', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1608, '东湖区', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1609, '西湖区', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1610, '青云谱区', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1611, '湾里区', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1612, '青山湖区', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1613, '南昌县', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1614, '新建县', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1615, '安义县', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1616, '进贤县', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1617, '昌江区', '0', 251, 0, '', 1, 0, '', NULL, 0),
(1618, '珠山区', '0', 251, 0, '', 1, 0, '', NULL, 0),
(1619, '浮梁县', '0', 251, 0, '', 1, 0, '', NULL, 0),
(1620, '乐平市', '0', 251, 0, '', 1, 0, '', NULL, 0),
(1621, '安源区', '0', 252, 0, '', 1, 0, '', NULL, 0),
(1622, '湘东区', '0', 252, 0, '', 1, 0, '', NULL, 0),
(1623, '莲花县', '0', 252, 0, '', 1, 0, '', NULL, 0),
(1624, '上栗县', '0', 252, 0, '', 1, 0, '', NULL, 0),
(1625, '芦溪县', '0', 252, 0, '', 1, 0, '', NULL, 0),
(1626, '庐山区', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1627, '浔阳区', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1628, '九江县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1629, '武宁县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1630, '修水县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1631, '永修县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1632, '德安县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1633, '星子县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1634, '都昌县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1635, '湖口县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1636, '彭泽县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1637, '瑞昌市', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1638, '渝水区', '0', 254, 0, '', 1, 0, '', NULL, 0),
(1639, '分宜县', '0', 254, 0, '', 1, 0, '', NULL, 0),
(1640, '月湖区', '0', 255, 0, '', 1, 0, '', NULL, 0),
(1641, '余江县', '0', 255, 0, '', 1, 0, '', NULL, 0),
(1642, '贵溪市', '0', 255, 0, '', 1, 0, '', NULL, 0),
(1643, '章贡区', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1644, '赣县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1645, '信丰县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1646, '大余县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1647, '上犹县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1648, '崇义县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1649, '安远县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1650, '龙南县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1651, '定南县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1652, '全南县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1653, '宁都县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1654, '于都县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1655, '兴国县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1656, '会昌县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1657, '寻乌县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1658, '石城县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1659, '瑞金市', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1660, '南康市', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1661, '吉州区', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1662, '青原区', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1663, '吉安县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1664, '吉水县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1665, '峡江县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1666, '新干县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1667, '永丰县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1668, '泰和县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1669, '遂川县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1670, '万安县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1671, '安福县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1672, '永新县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1673, '井冈山市', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1674, '袁州区', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1675, '奉新县', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1676, '万载县', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1677, '上高县', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1678, '宜丰县', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1679, '靖安县', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1680, '铜鼓县', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1681, '丰城市', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1682, '樟树市', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1683, '高安市', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1684, '临川区', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1685, '南城县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1686, '黎川县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1687, '南丰县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1688, '崇仁县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1689, '乐安县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1690, '宜黄县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1691, '金溪县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1692, '资溪县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1693, '东乡县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1694, '广昌县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1695, '信州区', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1696, '上饶县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1697, '广丰县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1698, '玉山县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1699, '铅山县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1700, '横峰县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1701, '弋阳县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1702, '余干县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1703, '鄱阳县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1704, '万年县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1705, '婺源县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1706, '德兴市', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1707, '历下区', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1708, '市中区', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1709, '槐荫区', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1710, '天桥区', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1711, '历城区', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1712, '长清区', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1713, '平阴县', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1714, '济阳县', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1715, '商河县', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1716, '章丘市', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1717, '市南区', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1718, '市北区', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1719, '四方区', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1720, '黄岛区', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1721, '崂山区', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1722, '李沧区', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1723, '城阳区', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1724, '胶州市', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1725, '即墨市', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1726, '平度市', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1727, '胶南市', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1728, '莱西市', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1729, '淄川区', '0', 263, 0, '', 1, 0, '', NULL, 0),
(1730, '张店区', '0', 263, 0, '', 1, 0, '', NULL, 0),
(1731, '博山区', '0', 263, 0, '', 1, 0, '', NULL, 0),
(1732, '临淄区', '0', 263, 0, '', 1, 0, '', NULL, 0),
(1733, '周村区', '0', 263, 0, '', 1, 0, '', NULL, 0),
(1734, '桓台县', '0', 263, 0, '', 1, 0, '', NULL, 0),
(1735, '高青县', '0', 263, 0, '', 1, 0, '', NULL, 0),
(1736, '沂源县', '0', 263, 0, '', 1, 0, '', NULL, 0),
(1737, '市中区', '0', 264, 0, '', 1, 0, '', NULL, 0),
(1738, '薛城区', '0', 264, 0, '', 1, 0, '', NULL, 0),
(1739, '峄城区', '0', 264, 0, '', 1, 0, '', NULL, 0),
(1740, '台儿庄区', '0', 264, 0, '', 1, 0, '', NULL, 0),
(1741, '山亭区', '0', 264, 0, '', 1, 0, '', NULL, 0),
(1742, '滕州市', '0', 264, 0, '', 1, 0, '', NULL, 0),
(1743, '东营区', '0', 265, 0, '', 1, 0, '', NULL, 0),
(1744, '河口区', '0', 265, 0, '', 1, 0, '', NULL, 0),
(1745, '垦利县', '0', 265, 0, '', 1, 0, '', NULL, 0),
(1746, '利津县', '0', 265, 0, '', 1, 0, '', NULL, 0),
(1747, '广饶县', '0', 265, 0, '', 1, 0, '', NULL, 0),
(1748, '芝罘区', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1749, '福山区', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1750, '牟平区', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1751, '莱山区', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1752, '长岛县', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1753, '龙口市', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1754, '莱阳市', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1755, '莱州市', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1756, '蓬莱市', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1757, '招远市', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1758, '栖霞市', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1759, '海阳市', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1760, '潍城区', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1761, '寒亭区', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1762, '坊子区', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1763, '奎文区', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1764, '临朐县', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1765, '昌乐县', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1766, '青州市', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1767, '诸城市', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1768, '寿光市', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1769, '安丘市', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1770, '高密市', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1771, '昌邑市', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1772, '市中区', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1773, '任城区', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1774, '微山县', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1775, '鱼台县', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1776, '金乡县', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1777, '嘉祥县', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1778, '汶上县', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1779, '泗水县', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1780, '梁山县', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1781, '曲阜市', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1782, '兖州市', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1783, '邹城市', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1784, '泰山区', '0', 269, 0, '', 1, 0, '', NULL, 0),
(1785, '岱岳区', '0', 269, 0, '', 1, 0, '', NULL, 0),
(1786, '宁阳县', '0', 269, 0, '', 1, 0, '', NULL, 0),
(1787, '东平县', '0', 269, 0, '', 1, 0, '', NULL, 0),
(1788, '新泰市', '0', 269, 0, '', 1, 0, '', NULL, 0),
(1789, '肥城市', '0', 269, 0, '', 1, 0, '', NULL, 0),
(1790, '环翠区', '0', 270, 0, '', 1, 0, '', NULL, 0),
(1791, '文登市', '0', 270, 0, '', 1, 0, '', NULL, 0),
(1792, '荣成市', '0', 270, 0, '', 1, 0, '', NULL, 0),
(1793, '乳山市', '0', 270, 0, '', 1, 0, '', NULL, 0),
(1794, '东港区', '0', 271, 0, '', 1, 0, '', NULL, 0),
(1795, '岚山区', '0', 271, 0, '', 1, 0, '', NULL, 0),
(1796, '五莲县', '0', 271, 0, '', 1, 0, '', NULL, 0),
(1797, '莒县', '0', 271, 0, '', 1, 0, '', NULL, 0),
(1798, '莱城区', '0', 272, 0, '', 1, 0, '', NULL, 0),
(1799, '钢城区', '0', 272, 0, '', 1, 0, '', NULL, 0),
(1800, '兰山区', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1801, '罗庄区', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1802, '河东区', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1803, '沂南县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1804, '郯城县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1805, '沂水县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1806, '苍山县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1807, '费县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1808, '平邑县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1809, '莒南县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1810, '蒙阴县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1811, '临沭县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1812, '德城区', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1813, '陵县', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1814, '宁津县', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1815, '庆云县', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1816, '临邑县', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1817, '齐河县', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1818, '平原县', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1819, '夏津县', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1820, '武城县', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1821, '乐陵市', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1822, '禹城市', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1823, '东昌府区', '0', 275, 0, '', 1, 0, '', NULL, 0),
(1824, '阳谷县', '0', 275, 0, '', 1, 0, '', NULL, 0),
(1825, '莘县', '0', 275, 0, '', 1, 0, '', NULL, 0),
(1826, '茌平县', '0', 275, 0, '', 1, 0, '', NULL, 0),
(1827, '东阿县', '0', 275, 0, '', 1, 0, '', NULL, 0),
(1828, '冠县', '0', 275, 0, '', 1, 0, '', NULL, 0),
(1829, '高唐县', '0', 275, 0, '', 1, 0, '', NULL, 0),
(1830, '临清市', '0', 275, 0, '', 1, 0, '', NULL, 0),
(1831, '滨城区', '0', 276, 0, '', 1, 0, '', NULL, 0),
(1832, '惠民县', '0', 276, 0, '', 1, 0, '', NULL, 0),
(1833, '阳信县', '0', 276, 0, '', 1, 0, '', NULL, 0),
(1834, '无棣县', '0', 276, 0, '', 1, 0, '', NULL, 0),
(1835, '沾化县', '0', 276, 0, '', 1, 0, '', NULL, 0),
(1836, '博兴县', '0', 276, 0, '', 1, 0, '', NULL, 0),
(1837, '邹平县', '0', 276, 0, '', 1, 0, '', NULL, 0),
(1838, '牡丹区', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1839, '曹县', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1840, '单县', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1841, '成武县', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1842, '巨野县', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1843, '郓城县', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1844, '鄄城县', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1845, '定陶县', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1846, '东明县', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1847, '中原区', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1848, '二七区', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1849, '管城回族区', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1850, '金水区', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1851, '上街区', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1852, '惠济区', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1853, '中牟县', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1854, '巩义市', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1855, '荥阳市', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1856, '新密市', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1857, '新郑市', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1858, '登封市', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1859, '龙亭区', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1860, '顺河回族区', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1861, '鼓楼区', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1862, '禹王台区', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1863, '金明区', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1864, '杞县', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1865, '通许县', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1866, '尉氏县', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1867, '开封县', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1868, '兰考县', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1869, '老城区', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1870, '西工区', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1871, '廛河回族区', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1872, '涧西区', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1873, '吉利区', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1874, '洛龙区', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1875, '孟津县', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1876, '新安县', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1877, '栾川县', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1878, '嵩县', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1879, '汝阳县', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1880, '宜阳县', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1881, '洛宁县', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1882, '伊川县', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1883, '偃师市', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1884, '新华区', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1885, '卫东区', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1886, '石龙区', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1887, '湛河区', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1888, '宝丰县', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1889, '叶县', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1890, '鲁山县', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1891, '郏县', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1892, '舞钢市', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1893, '汝州市', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1894, '文峰区', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1895, '北关区', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1896, '殷都区', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1897, '龙安区', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1898, '安阳县', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1899, '汤阴县', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1900, '滑县', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1901, '内黄县', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1902, '林州市', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1903, '鹤山区', '0', 283, 0, '', 1, 0, '', NULL, 0),
(1904, '山城区', '0', 283, 0, '', 1, 0, '', NULL, 0),
(1905, '淇滨区', '0', 283, 0, '', 1, 0, '', NULL, 0),
(1906, '浚县', '0', 283, 0, '', 1, 0, '', NULL, 0),
(1907, '淇县', '0', 283, 0, '', 1, 0, '', NULL, 0),
(1908, '红旗区', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1909, '卫滨区', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1910, '凤泉区', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1911, '牧野区', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1912, '新乡县', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1913, '获嘉县', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1914, '原阳县', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1915, '延津县', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1916, '封丘县', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1917, '长垣县', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1918, '卫辉市', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1919, '辉县市', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1920, '解放区', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1921, '中站区', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1922, '马村区', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1923, '山阳区', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1924, '修武县', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1925, '博爱县', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1926, '武陟县', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1927, '温县', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1928, '济源市', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1929, '沁阳市', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1930, '孟州市', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1931, '华龙区', '0', 286, 0, '', 1, 0, '', NULL, 0),
(1932, '清丰县', '0', 286, 0, '', 1, 0, '', NULL, 0),
(1933, '南乐县', '0', 286, 0, '', 1, 0, '', NULL, 0),
(1934, '范县', '0', 286, 0, '', 1, 0, '', NULL, 0),
(1935, '台前县', '0', 286, 0, '', 1, 0, '', NULL, 0),
(1936, '濮阳县', '0', 286, 0, '', 1, 0, '', NULL, 0),
(1937, '魏都区', '0', 287, 0, '', 1, 0, '', NULL, 0),
(1938, '许昌县', '0', 287, 0, '', 1, 0, '', NULL, 0),
(1939, '鄢陵县', '0', 287, 0, '', 1, 0, '', NULL, 0),
(1940, '襄城县', '0', 287, 0, '', 1, 0, '', NULL, 0),
(1941, '禹州市', '0', 287, 0, '', 1, 0, '', NULL, 0),
(1942, '长葛市', '0', 287, 0, '', 1, 0, '', NULL, 0),
(1943, '源汇区', '0', 288, 0, '', 1, 0, '', NULL, 0),
(1944, '郾城区', '0', 288, 0, '', 1, 0, '', NULL, 0),
(1945, '召陵区', '0', 288, 0, '', 1, 0, '', NULL, 0),
(1946, '舞阳县', '0', 288, 0, '', 1, 0, '', NULL, 0),
(1947, '临颍县', '0', 288, 0, '', 1, 0, '', NULL, 0),
(1948, '湖滨区', '0', 289, 0, '', 1, 0, '', NULL, 0),
(1949, '渑池县', '0', 289, 0, '', 1, 0, '', NULL, 0),
(1950, '陕县', '0', 289, 0, '', 1, 0, '', NULL, 0),
(1951, '卢氏县', '0', 289, 0, '', 1, 0, '', NULL, 0),
(1952, '义马市', '0', 289, 0, '', 1, 0, '', NULL, 0),
(1953, '灵宝市', '0', 289, 0, '', 1, 0, '', NULL, 0),
(1954, '宛城区', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1955, '卧龙区', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1956, '南召县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1957, '方城县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1958, '西峡县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1959, '镇平县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1960, '内乡县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1961, '淅川县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1962, '社旗县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1963, '唐河县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1964, '新野县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1965, '桐柏县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1966, '邓州市', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1967, '梁园区', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1968, '睢阳区', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1969, '民权县', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1970, '睢县', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1971, '宁陵县', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1972, '柘城县', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1973, '虞城县', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1974, '夏邑县', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1975, '永城市', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1976, '浉河区', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1977, '平桥区', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1978, '罗山县', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1979, '光山县', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1980, '新县', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1981, '商城县', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1982, '固始县', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1983, '潢川县', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1984, '淮滨县', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1985, '息县', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1986, '川汇区', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1987, '扶沟县', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1988, '西华县', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1989, '商水县', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1990, '沈丘县', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1991, '郸城县', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1992, '淮阳县', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1993, '太康县', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1994, '鹿邑县', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1995, '项城市', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1996, '驿城区', '0', 294, 0, '', 1, 0, '', NULL, 0),
(1997, '西平县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(1998, '上蔡县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(1999, '平舆县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(2000, '正阳县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(2001, '确山县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(2002, '泌阳县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(2003, '汝南县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(2004, '遂平县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(2005, '新蔡县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(2006, '江岸区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2007, '江汉区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2008, '硚口区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2009, '汉阳区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2010, '武昌区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2011, '青山区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2012, '洪山区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2013, '东西湖区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2014, '汉南区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2015, '蔡甸区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2016, '江夏区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2017, '黄陂区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2018, '新洲区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2019, '黄石港区', '0', 296, 0, '', 1, 0, '', NULL, 0),
(2020, '西塞山区', '0', 296, 0, '', 1, 0, '', NULL, 0),
(2021, '下陆区', '0', 296, 0, '', 1, 0, '', NULL, 0),
(2022, '铁山区', '0', 296, 0, '', 1, 0, '', NULL, 0),
(2023, '阳新县', '0', 296, 0, '', 1, 0, '', NULL, 0),
(2024, '大冶市', '0', 296, 0, '', 1, 0, '', NULL, 0),
(2025, '茅箭区', '0', 297, 0, '', 1, 0, '', NULL, 0),
(2026, '张湾区', '0', 297, 0, '', 1, 0, '', NULL, 0),
(2027, '郧县', '0', 297, 0, '', 1, 0, '', NULL, 0),
(2028, '郧西县', '0', 297, 0, '', 1, 0, '', NULL, 0),
(2029, '竹山县', '0', 297, 0, '', 1, 0, '', NULL, 0),
(2030, '竹溪县', '0', 297, 0, '', 1, 0, '', NULL, 0),
(2031, '房县', '0', 297, 0, '', 1, 0, '', NULL, 0),
(2032, '丹江口市', '0', 297, 0, '', 1, 0, '', NULL, 0),
(2033, '西陵区', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2034, '伍家岗区', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2035, '点军区', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2036, '猇亭区', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2037, '夷陵区', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2038, '远安县', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2039, '兴山县', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2040, '秭归县', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2041, '长阳土家族自治县', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2042, '五峰土家族自治县', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2043, '宜都市', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2044, '当阳市', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2045, '枝江市', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2046, '襄城区', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2047, '樊城区', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2048, '襄阳区', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2049, '南漳县', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2050, '谷城县', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2051, '保康县', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2052, '老河口市', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2053, '枣阳市', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2054, '宜城市', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2055, '梁子湖区', '0', 300, 0, '', 1, 0, '', NULL, 0),
(2056, '华容区', '0', 300, 0, '', 1, 0, '', NULL, 0),
(2057, '鄂城区', '0', 300, 0, '', 1, 0, '', NULL, 0),
(2058, '东宝区', '0', 301, 0, '', 1, 0, '', NULL, 0),
(2059, '掇刀区', '0', 301, 0, '', 1, 0, '', NULL, 0),
(2060, '京山县', '0', 301, 0, '', 1, 0, '', NULL, 0),
(2061, '沙洋县', '0', 301, 0, '', 1, 0, '', NULL, 0),
(2062, '钟祥市', '0', 301, 0, '', 1, 0, '', NULL, 0),
(2063, '孝南区', '0', 302, 0, '', 1, 0, '', NULL, 0),
(2064, '孝昌县', '0', 302, 0, '', 1, 0, '', NULL, 0);
INSERT INTO `v9_linkage` (`linkageid`, `name`, `style`, `parentid`, `child`, `arrchildid`, `keyid`, `listorder`, `description`, `setting`, `siteid`) VALUES
(2065, '大悟县', '0', 302, 0, '', 1, 0, '', NULL, 0),
(2066, '云梦县', '0', 302, 0, '', 1, 0, '', NULL, 0),
(2067, '应城市', '0', 302, 0, '', 1, 0, '', NULL, 0),
(2068, '安陆市', '0', 302, 0, '', 1, 0, '', NULL, 0),
(2069, '汉川市', '0', 302, 0, '', 1, 0, '', NULL, 0),
(2070, '沙市区', '0', 303, 0, '', 1, 0, '', NULL, 0),
(2071, '荆州区', '0', 303, 0, '', 1, 0, '', NULL, 0),
(2072, '公安县', '0', 303, 0, '', 1, 0, '', NULL, 0),
(2073, '监利县', '0', 303, 0, '', 1, 0, '', NULL, 0),
(2074, '江陵县', '0', 303, 0, '', 1, 0, '', NULL, 0),
(2075, '石首市', '0', 303, 0, '', 1, 0, '', NULL, 0),
(2076, '洪湖市', '0', 303, 0, '', 1, 0, '', NULL, 0),
(2077, '松滋市', '0', 303, 0, '', 1, 0, '', NULL, 0),
(2078, '黄州区', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2079, '团风县', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2080, '红安县', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2081, '罗田县', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2082, '英山县', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2083, '浠水县', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2084, '蕲春县', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2085, '黄梅县', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2086, '麻城市', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2087, '武穴市', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2088, '咸安区', '0', 305, 0, '', 1, 0, '', NULL, 0),
(2089, '嘉鱼县', '0', 305, 0, '', 1, 0, '', NULL, 0),
(2090, '通城县', '0', 305, 0, '', 1, 0, '', NULL, 0),
(2091, '崇阳县', '0', 305, 0, '', 1, 0, '', NULL, 0),
(2092, '通山县', '0', 305, 0, '', 1, 0, '', NULL, 0),
(2093, '赤壁市', '0', 305, 0, '', 1, 0, '', NULL, 0),
(2094, '曾都区', '0', 306, 0, '', 1, 0, '', NULL, 0),
(2095, '广水市', '0', 306, 0, '', 1, 0, '', NULL, 0),
(2096, '恩施市', '0', 307, 0, '', 1, 0, '', NULL, 0),
(2097, '利川市', '0', 307, 0, '', 1, 0, '', NULL, 0),
(2098, '建始县', '0', 307, 0, '', 1, 0, '', NULL, 0),
(2099, '巴东县', '0', 307, 0, '', 1, 0, '', NULL, 0),
(2100, '宣恩县', '0', 307, 0, '', 1, 0, '', NULL, 0),
(2101, '咸丰县', '0', 307, 0, '', 1, 0, '', NULL, 0),
(2102, '来凤县', '0', 307, 0, '', 1, 0, '', NULL, 0),
(2103, '鹤峰县', '0', 307, 0, '', 1, 0, '', NULL, 0),
(2104, '芙蓉区', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2105, '天心区', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2106, '岳麓区', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2107, '开福区', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2108, '雨花区', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2109, '长沙县', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2110, '望城县', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2111, '宁乡县', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2112, '浏阳市', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2113, '荷塘区', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2114, '芦淞区', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2115, '石峰区', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2116, '天元区', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2117, '株洲县', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2118, '攸县', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2119, '茶陵县', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2120, '炎陵县', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2121, '醴陵市', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2122, '雨湖区', '0', 314, 0, '', 1, 0, '', NULL, 0),
(2123, '岳塘区', '0', 314, 0, '', 1, 0, '', NULL, 0),
(2124, '湘潭县', '0', 314, 0, '', 1, 0, '', NULL, 0),
(2125, '湘乡市', '0', 314, 0, '', 1, 0, '', NULL, 0),
(2126, '韶山市', '0', 314, 0, '', 1, 0, '', NULL, 0),
(2127, '珠晖区', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2128, '雁峰区', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2129, '石鼓区', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2130, '蒸湘区', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2131, '南岳区', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2132, '衡阳县', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2133, '衡南县', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2134, '衡山县', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2135, '衡东县', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2136, '祁东县', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2137, '耒阳市', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2138, '常宁市', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2139, '双清区', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2140, '大祥区', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2141, '北塔区', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2142, '邵东县', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2143, '新邵县', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2144, '邵阳县', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2145, '隆回县', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2146, '洞口县', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2147, '绥宁县', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2148, '新宁县', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2149, '城步苗族自治县', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2150, '武冈市', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2151, '岳阳楼区', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2152, '云溪区', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2153, '君山区', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2154, '岳阳县', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2155, '华容县', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2156, '湘阴县', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2157, '平江县', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2158, '汨罗市', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2159, '临湘市', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2160, '武陵区', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2161, '鼎城区', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2162, '安乡县', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2163, '汉寿县', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2164, '澧县', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2165, '临澧县', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2166, '桃源县', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2167, '石门县', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2168, '津市市', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2169, '永定区', '0', 319, 0, '', 1, 0, '', NULL, 0),
(2170, '武陵源区', '0', 319, 0, '', 1, 0, '', NULL, 0),
(2171, '慈利县', '0', 319, 0, '', 1, 0, '', NULL, 0),
(2172, '桑植县', '0', 319, 0, '', 1, 0, '', NULL, 0),
(2173, '资阳区', '0', 320, 0, '', 1, 0, '', NULL, 0),
(2174, '赫山区', '0', 320, 0, '', 1, 0, '', NULL, 0),
(2175, '南县', '0', 320, 0, '', 1, 0, '', NULL, 0),
(2176, '桃江县', '0', 320, 0, '', 1, 0, '', NULL, 0),
(2177, '安化县', '0', 320, 0, '', 1, 0, '', NULL, 0),
(2178, '沅江市', '0', 320, 0, '', 1, 0, '', NULL, 0),
(2179, '北湖区', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2180, '苏仙区', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2181, '桂阳县', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2182, '宜章县', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2183, '永兴县', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2184, '嘉禾县', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2185, '临武县', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2186, '汝城县', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2187, '桂东县', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2188, '安仁县', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2189, '资兴市', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2190, '零陵区', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2191, '冷水滩区', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2192, '祁阳县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2193, '东安县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2194, '双牌县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2195, '道县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2196, '江永县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2197, '宁远县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2198, '蓝山县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2199, '新田县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2200, '江华瑶族自治县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2201, '鹤城区', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2202, '中方县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2203, '沅陵县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2204, '辰溪县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2205, '溆浦县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2206, '会同县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2207, '麻阳苗族自治县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2208, '新晃侗族自治县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2209, '芷江侗族自治县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2210, '靖州苗族侗族自治县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2211, '通道侗族自治县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2212, '洪江市', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2213, '娄星区', '0', 324, 0, '', 1, 0, '', NULL, 0),
(2214, '双峰县', '0', 324, 0, '', 1, 0, '', NULL, 0),
(2215, '新化县', '0', 324, 0, '', 1, 0, '', NULL, 0),
(2216, '冷水江市', '0', 324, 0, '', 1, 0, '', NULL, 0),
(2217, '涟源市', '0', 324, 0, '', 1, 0, '', NULL, 0),
(2218, '吉首市', '0', 325, 0, '', 1, 0, '', NULL, 0),
(2219, '泸溪县', '0', 325, 0, '', 1, 0, '', NULL, 0),
(2220, '凤凰县', '0', 325, 0, '', 1, 0, '', NULL, 0),
(2221, '花垣县', '0', 325, 0, '', 1, 0, '', NULL, 0),
(2222, '保靖县', '0', 325, 0, '', 1, 0, '', NULL, 0),
(2223, '古丈县', '0', 325, 0, '', 1, 0, '', NULL, 0),
(2224, '永顺县', '0', 325, 0, '', 1, 0, '', NULL, 0),
(2225, '龙山县', '0', 325, 0, '', 1, 0, '', NULL, 0),
(2226, '荔湾区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2227, '越秀区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2228, '海珠区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2229, '天河区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2230, '白云区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2231, '黄埔区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2232, '番禺区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2233, '花都区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2234, '南沙区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2235, '萝岗区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2236, '增城市', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2237, '从化市', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2238, '武江区', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2239, '浈江区', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2240, '曲江区', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2241, '始兴县', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2242, '仁化县', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2243, '翁源县', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2244, '乳源瑶族自治县', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2245, '新丰县', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2246, '乐昌市', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2247, '南雄市', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2248, '罗湖区', '0', 328, 0, '', 1, 0, '', NULL, 0),
(2249, '福田区', '0', 328, 0, '', 1, 0, '', NULL, 0),
(2250, '南山区', '0', 328, 0, '', 1, 0, '', NULL, 0),
(2251, '宝安区', '0', 328, 0, '', 1, 0, '', NULL, 0),
(2252, '龙岗区', '0', 328, 0, '', 1, 0, '', NULL, 0),
(2253, '盐田区', '0', 328, 0, '', 1, 0, '', NULL, 0),
(2254, '香洲区', '0', 329, 0, '', 1, 0, '', NULL, 0),
(2255, '斗门区', '0', 329, 0, '', 1, 0, '', NULL, 0),
(2256, '金湾区', '0', 329, 0, '', 1, 0, '', NULL, 0),
(2257, '龙湖区', '0', 330, 0, '', 1, 0, '', NULL, 0),
(2258, '金平区', '0', 330, 0, '', 1, 0, '', NULL, 0),
(2259, '濠江区', '0', 330, 0, '', 1, 0, '', NULL, 0),
(2260, '潮阳区', '0', 330, 0, '', 1, 0, '', NULL, 0),
(2261, '潮南区', '0', 330, 0, '', 1, 0, '', NULL, 0),
(2262, '澄海区', '0', 330, 0, '', 1, 0, '', NULL, 0),
(2263, '南澳县', '0', 330, 0, '', 1, 0, '', NULL, 0),
(2264, '禅城区', '0', 331, 0, '', 1, 0, '', NULL, 0),
(2265, '南海区', '0', 331, 0, '', 1, 0, '', NULL, 0),
(2266, '顺德区', '0', 331, 0, '', 1, 0, '', NULL, 0),
(2267, '三水区', '0', 331, 0, '', 1, 0, '', NULL, 0),
(2268, '高明区', '0', 331, 0, '', 1, 0, '', NULL, 0),
(2269, '蓬江区', '0', 332, 0, '', 1, 0, '', NULL, 0),
(2270, '江海区', '0', 332, 0, '', 1, 0, '', NULL, 0),
(2271, '新会区', '0', 332, 0, '', 1, 0, '', NULL, 0),
(2272, '台山市', '0', 332, 0, '', 1, 0, '', NULL, 0),
(2273, '开平市', '0', 332, 0, '', 1, 0, '', NULL, 0),
(2274, '鹤山市', '0', 332, 0, '', 1, 0, '', NULL, 0),
(2275, '恩平市', '0', 332, 0, '', 1, 0, '', NULL, 0),
(2276, '赤坎区', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2277, '霞山区', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2278, '坡头区', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2279, '麻章区', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2280, '遂溪县', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2281, '徐闻县', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2282, '廉江市', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2283, '雷州市', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2284, '吴川市', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2285, '茂南区', '0', 334, 0, '', 1, 0, '', NULL, 0),
(2286, '茂港区', '0', 334, 0, '', 1, 0, '', NULL, 0),
(2287, '电白县', '0', 334, 0, '', 1, 0, '', NULL, 0),
(2288, '高州市', '0', 334, 0, '', 1, 0, '', NULL, 0),
(2289, '化州市', '0', 334, 0, '', 1, 0, '', NULL, 0),
(2290, '信宜市', '0', 334, 0, '', 1, 0, '', NULL, 0),
(2291, '端州区', '0', 335, 0, '', 1, 0, '', NULL, 0),
(2292, '鼎湖区', '0', 335, 0, '', 1, 0, '', NULL, 0),
(2293, '广宁县', '0', 335, 0, '', 1, 0, '', NULL, 0),
(2294, '怀集县', '0', 335, 0, '', 1, 0, '', NULL, 0),
(2295, '封开县', '0', 335, 0, '', 1, 0, '', NULL, 0),
(2296, '德庆县', '0', 335, 0, '', 1, 0, '', NULL, 0),
(2297, '高要市', '0', 335, 0, '', 1, 0, '', NULL, 0),
(2298, '四会市', '0', 335, 0, '', 1, 0, '', NULL, 0),
(2299, '惠城区', '0', 336, 0, '', 1, 0, '', NULL, 0),
(2300, '惠阳区', '0', 336, 0, '', 1, 0, '', NULL, 0),
(2301, '博罗县', '0', 336, 0, '', 1, 0, '', NULL, 0),
(2302, '惠东县', '0', 336, 0, '', 1, 0, '', NULL, 0),
(2303, '龙门县', '0', 336, 0, '', 1, 0, '', NULL, 0),
(2304, '梅江区', '0', 337, 0, '', 1, 0, '', NULL, 0),
(2305, '梅县', '0', 337, 0, '', 1, 0, '', NULL, 0),
(2306, '大埔县', '0', 337, 0, '', 1, 0, '', NULL, 0),
(2307, '丰顺县', '0', 337, 0, '', 1, 0, '', NULL, 0),
(2308, '五华县', '0', 337, 0, '', 1, 0, '', NULL, 0),
(2309, '平远县', '0', 337, 0, '', 1, 0, '', NULL, 0),
(2310, '蕉岭县', '0', 337, 0, '', 1, 0, '', NULL, 0),
(2311, '兴宁市', '0', 337, 0, '', 1, 0, '', NULL, 0),
(2312, '城区', '0', 338, 0, '', 1, 0, '', NULL, 0),
(2313, '海丰县', '0', 338, 0, '', 1, 0, '', NULL, 0),
(2314, '陆河县', '0', 338, 0, '', 1, 0, '', NULL, 0),
(2315, '陆丰市', '0', 338, 0, '', 1, 0, '', NULL, 0),
(2316, '源城区', '0', 339, 0, '', 1, 0, '', NULL, 0),
(2317, '紫金县', '0', 339, 0, '', 1, 0, '', NULL, 0),
(2318, '龙川县', '0', 339, 0, '', 1, 0, '', NULL, 0),
(2319, '连平县', '0', 339, 0, '', 1, 0, '', NULL, 0),
(2320, '和平县', '0', 339, 0, '', 1, 0, '', NULL, 0),
(2321, '东源县', '0', 339, 0, '', 1, 0, '', NULL, 0),
(2322, '江城区', '0', 340, 0, '', 1, 0, '', NULL, 0),
(2323, '阳西县', '0', 340, 0, '', 1, 0, '', NULL, 0),
(2324, '阳东县', '0', 340, 0, '', 1, 0, '', NULL, 0),
(2325, '阳春市', '0', 340, 0, '', 1, 0, '', NULL, 0),
(2326, '清城区', '0', 341, 0, '', 1, 0, '', NULL, 0),
(2327, '佛冈县', '0', 341, 0, '', 1, 0, '', NULL, 0),
(2328, '阳山县', '0', 341, 0, '', 1, 0, '', NULL, 0),
(2329, '连山壮族瑶族自治县', '0', 341, 0, '', 1, 0, '', NULL, 0),
(2330, '连南瑶族自治县', '0', 341, 0, '', 1, 0, '', NULL, 0),
(2331, '清新县', '0', 341, 0, '', 1, 0, '', NULL, 0),
(2332, '英德市', '0', 341, 0, '', 1, 0, '', NULL, 0),
(2333, '连州市', '0', 341, 0, '', 1, 0, '', NULL, 0),
(2334, '湘桥区', '0', 344, 0, '', 1, 0, '', NULL, 0),
(2335, '潮安县', '0', 344, 0, '', 1, 0, '', NULL, 0),
(2336, '饶平县', '0', 344, 0, '', 1, 0, '', NULL, 0),
(2337, '榕城区', '0', 345, 0, '', 1, 0, '', NULL, 0),
(2338, '揭东县', '0', 345, 0, '', 1, 0, '', NULL, 0),
(2339, '揭西县', '0', 345, 0, '', 1, 0, '', NULL, 0),
(2340, '惠来县', '0', 345, 0, '', 1, 0, '', NULL, 0),
(2341, '普宁市', '0', 345, 0, '', 1, 0, '', NULL, 0),
(2342, '云城区', '0', 346, 0, '', 1, 0, '', NULL, 0),
(2343, '新兴县', '0', 346, 0, '', 1, 0, '', NULL, 0),
(2344, '郁南县', '0', 346, 0, '', 1, 0, '', NULL, 0),
(2345, '云安县', '0', 346, 0, '', 1, 0, '', NULL, 0),
(2346, '罗定市', '0', 346, 0, '', 1, 0, '', NULL, 0),
(2347, '兴宁区', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2348, '青秀区', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2349, '江南区', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2350, '西乡塘区', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2351, '良庆区', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2352, '邕宁区', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2353, '武鸣县', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2354, '隆安县', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2355, '马山县', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2356, '上林县', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2357, '宾阳县', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2358, '横县', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2359, '城中区', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2360, '鱼峰区', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2361, '柳南区', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2362, '柳北区', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2363, '柳江县', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2364, '柳城县', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2365, '鹿寨县', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2366, '融安县', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2367, '融水苗族自治县', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2368, '三江侗族自治县', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2369, '秀峰区', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2370, '叠彩区', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2371, '象山区', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2372, '七星区', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2373, '雁山区', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2374, '阳朔县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2375, '临桂县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2376, '灵川县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2377, '全州县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2378, '兴安县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2379, '永福县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2380, '灌阳县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2381, '龙胜各族自治县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2382, '资源县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2383, '平乐县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2384, '荔蒲县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2385, '恭城瑶族自治县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2386, '万秀区', '0', 350, 0, '', 1, 0, '', NULL, 0),
(2387, '蝶山区', '0', 350, 0, '', 1, 0, '', NULL, 0),
(2388, '长洲区', '0', 350, 0, '', 1, 0, '', NULL, 0),
(2389, '苍梧县', '0', 350, 0, '', 1, 0, '', NULL, 0),
(2390, '藤县', '0', 350, 0, '', 1, 0, '', NULL, 0),
(2391, '蒙山县', '0', 350, 0, '', 1, 0, '', NULL, 0),
(2392, '岑溪市', '0', 350, 0, '', 1, 0, '', NULL, 0),
(2393, '海城区', '0', 351, 0, '', 1, 0, '', NULL, 0),
(2394, '银海区', '0', 351, 0, '', 1, 0, '', NULL, 0),
(2395, '铁山港区', '0', 351, 0, '', 1, 0, '', NULL, 0),
(2396, '合浦县', '0', 351, 0, '', 1, 0, '', NULL, 0),
(2397, '港口区', '0', 352, 0, '', 1, 0, '', NULL, 0),
(2398, '防城区', '0', 352, 0, '', 1, 0, '', NULL, 0),
(2399, '上思县', '0', 352, 0, '', 1, 0, '', NULL, 0),
(2400, '东兴市', '0', 352, 0, '', 1, 0, '', NULL, 0),
(2401, '钦南区', '0', 353, 0, '', 1, 0, '', NULL, 0),
(2402, '钦北区', '0', 353, 0, '', 1, 0, '', NULL, 0),
(2403, '灵山县', '0', 353, 0, '', 1, 0, '', NULL, 0),
(2404, '浦北县', '0', 353, 0, '', 1, 0, '', NULL, 0),
(2405, '港北区', '0', 354, 0, '', 1, 0, '', NULL, 0),
(2406, '港南区', '0', 354, 0, '', 1, 0, '', NULL, 0),
(2407, '覃塘区', '0', 354, 0, '', 1, 0, '', NULL, 0),
(2408, '平南县', '0', 354, 0, '', 1, 0, '', NULL, 0),
(2409, '桂平市', '0', 354, 0, '', 1, 0, '', NULL, 0),
(2410, '玉州区', '0', 355, 0, '', 1, 0, '', NULL, 0),
(2411, '容县', '0', 355, 0, '', 1, 0, '', NULL, 0),
(2412, '陆川县', '0', 355, 0, '', 1, 0, '', NULL, 0),
(2413, '博白县', '0', 355, 0, '', 1, 0, '', NULL, 0),
(2414, '兴业县', '0', 355, 0, '', 1, 0, '', NULL, 0),
(2415, '北流市', '0', 355, 0, '', 1, 0, '', NULL, 0),
(2416, '右江区', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2417, '田阳县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2418, '田东县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2419, '平果县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2420, '德保县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2421, '靖西县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2422, '那坡县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2423, '凌云县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2424, '乐业县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2425, '田林县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2426, '西林县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2427, '隆林各族自治县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2428, '八步区', '0', 357, 0, '', 1, 0, '', NULL, 0),
(2429, '昭平县', '0', 357, 0, '', 1, 0, '', NULL, 0),
(2430, '钟山县', '0', 357, 0, '', 1, 0, '', NULL, 0),
(2431, '富川瑶族自治县', '0', 357, 0, '', 1, 0, '', NULL, 0),
(2432, '金城江区', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2433, '南丹县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2434, '天峨县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2435, '凤山县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2436, '东兰县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2437, '罗城仫佬族自治县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2438, '环江毛南族自治县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2439, '巴马瑶族自治县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2440, '都安瑶族自治县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2441, '大化瑶族自治县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2442, '宜州市', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2443, '兴宾区', '0', 359, 0, '', 1, 0, '', NULL, 0),
(2444, '忻城县', '0', 359, 0, '', 1, 0, '', NULL, 0),
(2445, '象州县', '0', 359, 0, '', 1, 0, '', NULL, 0),
(2446, '武宣县', '0', 359, 0, '', 1, 0, '', NULL, 0),
(2447, '金秀瑶族自治县', '0', 359, 0, '', 1, 0, '', NULL, 0),
(2448, '合山市', '0', 359, 0, '', 1, 0, '', NULL, 0),
(2449, '江洲区', '0', 360, 0, '', 1, 0, '', NULL, 0),
(2450, '扶绥县', '0', 360, 0, '', 1, 0, '', NULL, 0),
(2451, '宁明县', '0', 360, 0, '', 1, 0, '', NULL, 0),
(2452, '龙州县', '0', 360, 0, '', 1, 0, '', NULL, 0),
(2453, '大新县', '0', 360, 0, '', 1, 0, '', NULL, 0),
(2454, '天等县', '0', 360, 0, '', 1, 0, '', NULL, 0),
(2455, '凭祥市', '0', 360, 0, '', 1, 0, '', NULL, 0),
(2456, '秀英区', '0', 361, 0, '', 1, 0, '', NULL, 0),
(2457, '龙华区', '0', 361, 0, '', 1, 0, '', NULL, 0),
(2458, '琼山区', '0', 361, 0, '', 1, 0, '', NULL, 0),
(2459, '美兰区', '0', 361, 0, '', 1, 0, '', NULL, 0),
(2460, '锦江区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2461, '青羊区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2462, '金牛区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2463, '武侯区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2464, '成华区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2465, '龙泉驿区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2466, '青白江区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2467, '新都区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2468, '温江区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2469, '金堂县', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2470, '双流县', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2471, '郫县', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2472, '大邑县', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2473, '蒲江县', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2474, '新津县', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2475, '都江堰市', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2476, '彭州市', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2477, '邛崃市', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2478, '崇州市', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2479, '自流井区', '0', 383, 0, '', 1, 0, '', NULL, 0),
(2480, '贡井区', '0', 383, 0, '', 1, 0, '', NULL, 0),
(2481, '大安区', '0', 383, 0, '', 1, 0, '', NULL, 0),
(2482, '沿滩区', '0', 383, 0, '', 1, 0, '', NULL, 0),
(2483, '荣县', '0', 383, 0, '', 1, 0, '', NULL, 0),
(2484, '富顺县', '0', 383, 0, '', 1, 0, '', NULL, 0),
(2485, '东区', '0', 384, 0, '', 1, 0, '', NULL, 0),
(2486, '西区', '0', 384, 0, '', 1, 0, '', NULL, 0),
(2487, '仁和区', '0', 384, 0, '', 1, 0, '', NULL, 0),
(2488, '米易县', '0', 384, 0, '', 1, 0, '', NULL, 0),
(2489, '盐边县', '0', 384, 0, '', 1, 0, '', NULL, 0),
(2490, '江阳区', '0', 385, 0, '', 1, 0, '', NULL, 0),
(2491, '纳溪区', '0', 385, 0, '', 1, 0, '', NULL, 0),
(2492, '龙马潭区', '0', 385, 0, '', 1, 0, '', NULL, 0),
(2493, '泸县', '0', 385, 0, '', 1, 0, '', NULL, 0),
(2494, '合江县', '0', 385, 0, '', 1, 0, '', NULL, 0),
(2495, '叙永县', '0', 385, 0, '', 1, 0, '', NULL, 0),
(2496, '古蔺县', '0', 385, 0, '', 1, 0, '', NULL, 0),
(2497, '旌阳区', '0', 386, 0, '', 1, 0, '', NULL, 0),
(2498, '中江县', '0', 386, 0, '', 1, 0, '', NULL, 0),
(2499, '罗江县', '0', 386, 0, '', 1, 0, '', NULL, 0),
(2500, '广汉市', '0', 386, 0, '', 1, 0, '', NULL, 0),
(2501, '什邡市', '0', 386, 0, '', 1, 0, '', NULL, 0),
(2502, '绵竹市', '0', 386, 0, '', 1, 0, '', NULL, 0),
(2503, '涪城区', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2504, '游仙区', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2505, '三台县', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2506, '盐亭县', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2507, '安县', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2508, '梓潼县', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2509, '北川羌族自治县', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2510, '平武县', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2511, '江油市', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2512, '市中区', '0', 388, 0, '', 1, 0, '', NULL, 0),
(2513, '元坝区', '0', 388, 0, '', 1, 0, '', NULL, 0),
(2514, '朝天区', '0', 388, 0, '', 1, 0, '', NULL, 0),
(2515, '旺苍县', '0', 388, 0, '', 1, 0, '', NULL, 0),
(2516, '青川县', '0', 388, 0, '', 1, 0, '', NULL, 0),
(2517, '剑阁县', '0', 388, 0, '', 1, 0, '', NULL, 0),
(2518, '苍溪县', '0', 388, 0, '', 1, 0, '', NULL, 0),
(2519, '船山区', '0', 389, 0, '', 1, 0, '', NULL, 0),
(2520, '安居区', '0', 389, 0, '', 1, 0, '', NULL, 0),
(2521, '蓬溪县', '0', 389, 0, '', 1, 0, '', NULL, 0),
(2522, '射洪县', '0', 389, 0, '', 1, 0, '', NULL, 0),
(2523, '大英县', '0', 389, 0, '', 1, 0, '', NULL, 0),
(2524, '市中区', '0', 390, 0, '', 1, 0, '', NULL, 0),
(2525, '东兴区', '0', 390, 0, '', 1, 0, '', NULL, 0),
(2526, '威远县', '0', 390, 0, '', 1, 0, '', NULL, 0),
(2527, '资中县', '0', 390, 0, '', 1, 0, '', NULL, 0),
(2528, '隆昌县', '0', 390, 0, '', 1, 0, '', NULL, 0),
(2529, '市中区', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2530, '沙湾区', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2531, '五通桥区', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2532, '金口河区', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2533, '犍为县', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2534, '井研县', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2535, '夹江县', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2536, '沐川县', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2537, '峨边彝族自治县', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2538, '马边彝族自治县', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2539, '峨眉山市', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2540, '顺庆区', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2541, '高坪区', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2542, '嘉陵区', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2543, '南部县', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2544, '营山县', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2545, '蓬安县', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2546, '仪陇县', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2547, '西充县', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2548, '阆中市', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2549, '东坡区', '0', 393, 0, '', 1, 0, '', NULL, 0),
(2550, '仁寿县', '0', 393, 0, '', 1, 0, '', NULL, 0),
(2551, '彭山县', '0', 393, 0, '', 1, 0, '', NULL, 0),
(2552, '洪雅县', '0', 393, 0, '', 1, 0, '', NULL, 0),
(2553, '丹棱县', '0', 393, 0, '', 1, 0, '', NULL, 0),
(2554, '青神县', '0', 393, 0, '', 1, 0, '', NULL, 0),
(2555, '翠屏区', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2556, '宜宾县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2557, '南溪县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2558, '江安县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2559, '长宁县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2560, '高县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2561, '珙县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2562, '筠连县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2563, '兴文县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2564, '屏山县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2565, '广安区', '0', 395, 0, '', 1, 0, '', NULL, 0),
(2566, '岳池县', '0', 395, 0, '', 1, 0, '', NULL, 0),
(2567, '武胜县', '0', 395, 0, '', 1, 0, '', NULL, 0),
(2568, '邻水县', '0', 395, 0, '', 1, 0, '', NULL, 0),
(2569, '华蓥市', '0', 395, 0, '', 1, 0, '', NULL, 0),
(2570, '通川区', '0', 396, 0, '', 1, 0, '', NULL, 0),
(2571, '达县', '0', 396, 0, '', 1, 0, '', NULL, 0),
(2572, '宣汉县', '0', 396, 0, '', 1, 0, '', NULL, 0),
(2573, '开江县', '0', 396, 0, '', 1, 0, '', NULL, 0),
(2574, '大竹县', '0', 396, 0, '', 1, 0, '', NULL, 0),
(2575, '渠县', '0', 396, 0, '', 1, 0, '', NULL, 0),
(2576, '万源市', '0', 396, 0, '', 1, 0, '', NULL, 0),
(2577, '雨城区', '0', 397, 0, '', 1, 0, '', NULL, 0),
(2578, '名山县', '0', 397, 0, '', 1, 0, '', NULL, 0),
(2579, '荥经县', '0', 397, 0, '', 1, 0, '', NULL, 0),
(2580, '汉源县', '0', 397, 0, '', 1, 0, '', NULL, 0),
(2581, '石棉县', '0', 397, 0, '', 1, 0, '', NULL, 0),
(2582, '天全县', '0', 397, 0, '', 1, 0, '', NULL, 0),
(2583, '芦山县', '0', 397, 0, '', 1, 0, '', NULL, 0),
(2584, '宝兴县', '0', 397, 0, '', 1, 0, '', NULL, 0),
(2585, '巴州区', '0', 398, 0, '', 1, 0, '', NULL, 0),
(2586, '通江县', '0', 398, 0, '', 1, 0, '', NULL, 0),
(2587, '南江县', '0', 398, 0, '', 1, 0, '', NULL, 0),
(2588, '平昌县', '0', 398, 0, '', 1, 0, '', NULL, 0),
(2589, '雁江区', '0', 399, 0, '', 1, 0, '', NULL, 0),
(2590, '安岳县', '0', 399, 0, '', 1, 0, '', NULL, 0),
(2591, '乐至县', '0', 399, 0, '', 1, 0, '', NULL, 0),
(2592, '简阳市', '0', 399, 0, '', 1, 0, '', NULL, 0),
(2593, '汶川县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2594, '理县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2595, '茂县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2596, '松潘县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2597, '九寨沟县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2598, '金川县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2599, '小金县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2600, '黑水县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2601, '马尔康县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2602, '壤塘县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2603, '阿坝县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2604, '若尔盖县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2605, '红原县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2606, '康定县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2607, '泸定县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2608, '丹巴县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2609, '九龙县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2610, '雅江县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2611, '道孚县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2612, '炉霍县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2613, '甘孜县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2614, '新龙县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2615, '德格县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2616, '白玉县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2617, '石渠县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2618, '色达县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2619, '理塘县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2620, '巴塘县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2621, '乡城县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2622, '稻城县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2623, '得荣县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2624, '西昌市', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2625, '木里藏族自治县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2626, '盐源县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2627, '德昌县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2628, '会理县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2629, '会东县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2630, '宁南县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2631, '普格县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2632, '布拖县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2633, '金阳县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2634, '昭觉县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2635, '喜德县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2636, '冕宁县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2637, '越西县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2638, '甘洛县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2639, '美姑县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2640, '雷波县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2641, '南明区', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2642, '云岩区', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2643, '花溪区', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2644, '乌当区', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2645, '白云区', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2646, '小河区', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2647, '开阳县', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2648, '息烽县', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2649, '修文县', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2650, '清镇市', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2651, '钟山区', '0', 404, 0, '', 1, 0, '', NULL, 0),
(2652, '六枝特区', '0', 404, 0, '', 1, 0, '', NULL, 0),
(2653, '水城县', '0', 404, 0, '', 1, 0, '', NULL, 0),
(2654, '盘县', '0', 404, 0, '', 1, 0, '', NULL, 0),
(2655, '红花岗区', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2656, '汇川区', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2657, '遵义县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2658, '桐梓县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2659, '绥阳县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2660, '正安县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2661, '道真仡佬族苗族自治县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2662, '务川仡佬族苗族自治县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2663, '凤冈县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2664, '湄潭县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2665, '余庆县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2666, '习水县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2667, '赤水市', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2668, '仁怀市', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2669, '西秀区', '0', 406, 0, '', 1, 0, '', NULL, 0),
(2670, '平坝县', '0', 406, 0, '', 1, 0, '', NULL, 0),
(2671, '普定县', '0', 406, 0, '', 1, 0, '', NULL, 0),
(2672, '镇宁布依族苗族自治县', '0', 406, 0, '', 1, 0, '', NULL, 0),
(2673, '关岭布依族苗族自治县', '0', 406, 0, '', 1, 0, '', NULL, 0),
(2674, '紫云苗族布依族自治县', '0', 406, 0, '', 1, 0, '', NULL, 0),
(2675, '铜仁市', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2676, '江口县', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2677, '玉屏侗族自治县', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2678, '石阡县', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2679, '思南县', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2680, '印江土家族苗族自治县', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2681, '德江县', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2682, '沿河土家族自治县', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2683, '松桃苗族自治县', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2684, '万山特区', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2685, '兴义市', '0', 408, 0, '', 1, 0, '', NULL, 0),
(2686, '兴仁县', '0', 408, 0, '', 1, 0, '', NULL, 0),
(2687, '普安县', '0', 408, 0, '', 1, 0, '', NULL, 0),
(2688, '晴隆县', '0', 408, 0, '', 1, 0, '', NULL, 0),
(2689, '贞丰县', '0', 408, 0, '', 1, 0, '', NULL, 0),
(2690, '望谟县', '0', 408, 0, '', 1, 0, '', NULL, 0),
(2691, '册亨县', '0', 408, 0, '', 1, 0, '', NULL, 0),
(2692, '安龙县', '0', 408, 0, '', 1, 0, '', NULL, 0),
(2693, '毕节市', '0', 409, 0, '', 1, 0, '', NULL, 0),
(2694, '大方县', '0', 409, 0, '', 1, 0, '', NULL, 0),
(2695, '黔西县', '0', 409, 0, '', 1, 0, '', NULL, 0),
(2696, '金沙县', '0', 409, 0, '', 1, 0, '', NULL, 0),
(2697, '织金县', '0', 409, 0, '', 1, 0, '', NULL, 0),
(2698, '纳雍县', '0', 409, 0, '', 1, 0, '', NULL, 0),
(2699, '威宁彝族回族苗族自治县', '0', 409, 0, '', 1, 0, '', NULL, 0),
(2700, '赫章县', '0', 409, 0, '', 1, 0, '', NULL, 0),
(2701, '凯里市', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2702, '黄平县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2703, '施秉县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2704, '三穗县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2705, '镇远县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2706, '岑巩县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2707, '天柱县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2708, '锦屏县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2709, '剑河县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2710, '台江县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2711, '黎平县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2712, '榕江县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2713, '从江县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2714, '雷山县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2715, '麻江县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2716, '丹寨县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2717, '都匀市', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2718, '福泉市', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2719, '荔波县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2720, '贵定县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2721, '瓮安县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2722, '独山县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2723, '平塘县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2724, '罗甸县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2725, '长顺县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2726, '龙里县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2727, '惠水县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2728, '三都水族自治县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2729, '五华区', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2730, '盘龙区', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2731, '官渡区', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2732, '西山区', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2733, '东川区', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2734, '呈贡县', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2735, '晋宁县', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2736, '富民县', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2737, '宜良县', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2738, '石林彝族自治县', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2739, '嵩明县', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2740, '禄劝彝族苗族自治县', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2741, '寻甸回族彝族自治县', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2742, '安宁市', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2743, '麒麟区', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2744, '马龙县', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2745, '陆良县', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2746, '师宗县', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2747, '罗平县', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2748, '富源县', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2749, '会泽县', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2750, '沾益县', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2751, '宣威市', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2752, '红塔区', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2753, '江川县', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2754, '澄江县', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2755, '通海县', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2756, '华宁县', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2757, '易门县', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2758, '峨山彝族自治县', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2759, '新平彝族傣族自治县', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2760, '元江哈尼族彝族傣族自治县', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2761, '隆阳区', '0', 415, 0, '', 1, 0, '', NULL, 0),
(2762, '施甸县', '0', 415, 0, '', 1, 0, '', NULL, 0),
(2763, '腾冲县', '0', 415, 0, '', 1, 0, '', NULL, 0),
(2764, '龙陵县', '0', 415, 0, '', 1, 0, '', NULL, 0),
(2765, '昌宁县', '0', 415, 0, '', 1, 0, '', NULL, 0),
(2766, '昭阳区', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2767, '鲁甸县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2768, '巧家县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2769, '盐津县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2770, '大关县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2771, '永善县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2772, '绥江县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2773, '镇雄县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2774, '彝良县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2775, '威信县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2776, '水富县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2777, '古城区', '0', 417, 0, '', 1, 0, '', NULL, 0),
(2778, '玉龙纳西族自治县', '0', 417, 0, '', 1, 0, '', NULL, 0),
(2779, '永胜县', '0', 417, 0, '', 1, 0, '', NULL, 0),
(2780, '华坪县', '0', 417, 0, '', 1, 0, '', NULL, 0),
(2781, '宁蒗彝族自治县', '0', 417, 0, '', 1, 0, '', NULL, 0),
(2782, '翠云区', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2783, '普洱哈尼族彝族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2784, '墨江哈尼族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2785, '景东彝族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2786, '景谷傣族彝族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2787, '镇沅彝族哈尼族拉祜族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2788, '江城哈尼族彝族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2789, '孟连傣族拉祜族佤族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2790, '澜沧拉祜族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2791, '西盟佤族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2792, '临翔区', '0', 419, 0, '', 1, 0, '', NULL, 0),
(2793, '凤庆县', '0', 419, 0, '', 1, 0, '', NULL, 0),
(2794, '云县', '0', 419, 0, '', 1, 0, '', NULL, 0),
(2795, '永德县', '0', 419, 0, '', 1, 0, '', NULL, 0),
(2796, '镇康县', '0', 419, 0, '', 1, 0, '', NULL, 0),
(2797, '双江拉祜族佤族布朗族傣族自治县', '0', 419, 0, '', 1, 0, '', NULL, 0),
(2798, '耿马傣族佤族自治县', '0', 419, 0, '', 1, 0, '', NULL, 0),
(2799, '沧源佤族自治县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2800, '楚雄市', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2801, '双柏县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2802, '牟定县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2803, '南华县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2804, '姚安县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2805, '大姚县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2806, '永仁县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2807, '元谋县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2808, '武定县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2809, '禄丰县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2810, '个旧市', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2811, '开远市', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2812, '蒙自县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2813, '屏边苗族自治县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2814, '建水县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2815, '石屏县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2816, '弥勒县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2817, '泸西县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2818, '元阳县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2819, '红河县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2820, '金平苗族瑶族傣族自治县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2821, '绿春县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2822, '河口瑶族自治县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2823, '文山县', '0', 422, 0, '', 1, 0, '', NULL, 0),
(2824, '砚山县', '0', 422, 0, '', 1, 0, '', NULL, 0),
(2825, '西畴县', '0', 422, 0, '', 1, 0, '', NULL, 0),
(2826, '麻栗坡县', '0', 422, 0, '', 1, 0, '', NULL, 0),
(2827, '马关县', '0', 422, 0, '', 1, 0, '', NULL, 0),
(2828, '丘北县', '0', 422, 0, '', 1, 0, '', NULL, 0),
(2829, '广南县', '0', 422, 0, '', 1, 0, '', NULL, 0),
(2830, '富宁县', '0', 422, 0, '', 1, 0, '', NULL, 0),
(2831, '景洪市', '0', 423, 0, '', 1, 0, '', NULL, 0),
(2832, '勐海县', '0', 423, 0, '', 1, 0, '', NULL, 0),
(2833, '勐腊县', '0', 423, 0, '', 1, 0, '', NULL, 0),
(2834, '大理市', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2835, '漾濞彝族自治县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2836, '祥云县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2837, '宾川县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2838, '弥渡县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2839, '南涧彝族自治县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2840, '巍山彝族回族自治县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2841, '永平县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2842, '云龙县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2843, '洱源县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2844, '剑川县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2845, '鹤庆县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2846, '瑞丽市', '0', 425, 0, '', 1, 0, '', NULL, 0),
(2847, '潞西市', '0', 425, 0, '', 1, 0, '', NULL, 0),
(2848, '梁河县', '0', 425, 0, '', 1, 0, '', NULL, 0),
(2849, '盈江县', '0', 425, 0, '', 1, 0, '', NULL, 0),
(2850, '陇川县', '0', 425, 0, '', 1, 0, '', NULL, 0),
(2851, '泸水县', '0', 426, 0, '', 1, 0, '', NULL, 0),
(2852, '福贡县', '0', 426, 0, '', 1, 0, '', NULL, 0),
(2853, '贡山独龙族怒族自治县', '0', 426, 0, '', 1, 0, '', NULL, 0),
(2854, '兰坪白族普米族自治县', '0', 426, 0, '', 1, 0, '', NULL, 0),
(2855, '香格里拉县', '0', 427, 0, '', 1, 0, '', NULL, 0),
(2856, '德钦县', '0', 427, 0, '', 1, 0, '', NULL, 0),
(2857, '维西傈僳族自治县', '0', 427, 0, '', 1, 0, '', NULL, 0),
(2858, '城关区', '0', 428, 0, '', 1, 0, '', NULL, 0),
(2859, '林周县', '0', 428, 0, '', 1, 0, '', NULL, 0),
(2860, '当雄县', '0', 428, 0, '', 1, 0, '', NULL, 0),
(2861, '尼木县', '0', 428, 0, '', 1, 0, '', NULL, 0),
(2862, '曲水县', '0', 428, 0, '', 1, 0, '', NULL, 0),
(2863, '堆龙德庆县', '0', 428, 0, '', 1, 0, '', NULL, 0),
(2864, '达孜县', '0', 428, 0, '', 1, 0, '', NULL, 0),
(2865, '墨竹工卡县', '0', 428, 0, '', 1, 0, '', NULL, 0),
(2866, '昌都县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2867, '江达县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2868, '贡觉县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2869, '类乌齐县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2870, '丁青县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2871, '察雅县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2872, '八宿县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2873, '左贡县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2874, '芒康县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2875, '洛隆县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2876, '边坝县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2877, '乃东县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2878, '扎囊县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2879, '贡嘎县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2880, '桑日县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2881, '琼结县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2882, '曲松县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2883, '措美县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2884, '洛扎县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2885, '加查县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2886, '隆子县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2887, '错那县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2888, '浪卡子县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2889, '日喀则市', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2890, '南木林县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2891, '江孜县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2892, '定日县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2893, '萨迦县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2894, '拉孜县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2895, '昂仁县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2896, '谢通门县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2897, '白朗县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2898, '仁布县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2899, '康马县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2900, '定结县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2901, '仲巴县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2902, '亚东县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2903, '吉隆县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2904, '聂拉木县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2905, '萨嘎县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2906, '岗巴县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2907, '那曲县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2908, '嘉黎县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2909, '比如县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2910, '聂荣县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2911, '安多县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2912, '申扎县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2913, '索县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2914, '班戈县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2915, '巴青县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2916, '尼玛县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2917, '普兰县', '0', 433, 0, '', 1, 0, '', NULL, 0),
(2918, '札达县', '0', 433, 0, '', 1, 0, '', NULL, 0),
(2919, '噶尔县', '0', 433, 0, '', 1, 0, '', NULL, 0),
(2920, '日土县', '0', 433, 0, '', 1, 0, '', NULL, 0),
(2921, '革吉县', '0', 433, 0, '', 1, 0, '', NULL, 0),
(2922, '改则县', '0', 433, 0, '', 1, 0, '', NULL, 0),
(2923, '措勤县', '0', 433, 0, '', 1, 0, '', NULL, 0),
(2924, '林芝县', '0', 434, 0, '', 1, 0, '', NULL, 0),
(2925, '工布江达县', '0', 434, 0, '', 1, 0, '', NULL, 0),
(2926, '米林县', '0', 434, 0, '', 1, 0, '', NULL, 0),
(2927, '墨脱县', '0', 434, 0, '', 1, 0, '', NULL, 0),
(2928, '波密县', '0', 434, 0, '', 1, 0, '', NULL, 0),
(2929, '察隅县', '0', 434, 0, '', 1, 0, '', NULL, 0),
(2930, '朗县', '0', 434, 0, '', 1, 0, '', NULL, 0),
(2931, '新城区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2932, '碑林区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2933, '莲湖区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2934, '灞桥区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2935, '未央区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2936, '雁塔区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2937, '阎良区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2938, '临潼区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2939, '长安区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2940, '蓝田县', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2941, '周至县', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2942, '户县', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2943, '高陵县', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2944, '王益区', '0', 436, 0, '', 1, 0, '', NULL, 0),
(2945, '印台区', '0', 436, 0, '', 1, 0, '', NULL, 0),
(2946, '耀州区', '0', 436, 0, '', 1, 0, '', NULL, 0),
(2947, '宜君县', '0', 436, 0, '', 1, 0, '', NULL, 0),
(2948, '渭滨区', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2949, '金台区', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2950, '陈仓区', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2951, '凤翔县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2952, '岐山县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2953, '扶风县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2954, '眉县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2955, '陇县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2956, '千阳县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2957, '麟游县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2958, '凤县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2959, '太白县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2960, '秦都区', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2961, '杨凌区', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2962, '渭城区', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2963, '三原县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2964, '泾阳县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2965, '乾县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2966, '礼泉县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2967, '永寿县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2968, '彬县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2969, '长武县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2970, '旬邑县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2971, '淳化县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2972, '武功县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2973, '兴平市', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2974, '临渭区', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2975, '华县', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2976, '潼关县', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2977, '大荔县', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2978, '合阳县', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2979, '澄城县', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2980, '蒲城县', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2981, '白水县', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2982, '富平县', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2983, '韩城市', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2984, '华阴市', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2985, '宝塔区', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2986, '延长县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2987, '延川县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2988, '子长县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2989, '安塞县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2990, '志丹县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2991, '吴起县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2992, '甘泉县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2993, '富县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2994, '洛川县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2995, '宜川县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2996, '黄龙县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2997, '黄陵县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2998, '汉台区', '0', 441, 0, '', 1, 0, '', NULL, 0),
(2999, '南郑县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3000, '城固县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3001, '洋县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3002, '西乡县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3003, '勉县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3004, '宁强县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3005, '略阳县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3006, '镇巴县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3007, '留坝县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3008, '佛坪县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3009, '榆阳区', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3010, '神木县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3011, '府谷县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3012, '横山县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3013, '靖边县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3014, '定边县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3015, '绥德县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3016, '米脂县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3017, '佳县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3018, '吴堡县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3019, '清涧县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3020, '子洲县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3021, '汉滨区', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3022, '汉阴县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3023, '石泉县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3024, '宁陕县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3025, '紫阳县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3026, '岚皋县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3027, '平利县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3028, '镇坪县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3029, '旬阳县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3030, '白河县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3031, '商州区', '0', 444, 0, '', 1, 0, '', NULL, 0),
(3032, '洛南县', '0', 444, 0, '', 1, 0, '', NULL, 0),
(3033, '丹凤县', '0', 444, 0, '', 1, 0, '', NULL, 0),
(3034, '商南县', '0', 444, 0, '', 1, 0, '', NULL, 0),
(3035, '山阳县', '0', 444, 0, '', 1, 0, '', NULL, 0),
(3036, '镇安县', '0', 444, 0, '', 1, 0, '', NULL, 0),
(3037, '柞水县', '0', 444, 0, '', 1, 0, '', NULL, 0),
(3038, '城关区', '0', 445, 0, '', 1, 0, '', NULL, 0),
(3039, '七里河区', '0', 445, 0, '', 1, 0, '', NULL, 0),
(3040, '西固区', '0', 445, 0, '', 1, 0, '', NULL, 0),
(3041, '安宁区', '0', 445, 0, '', 1, 0, '', NULL, 0),
(3042, '红古区', '0', 445, 0, '', 1, 0, '', NULL, 0),
(3043, '永登县', '0', 445, 0, '', 1, 0, '', NULL, 0),
(3044, '皋兰县', '0', 445, 0, '', 1, 0, '', NULL, 0),
(3045, '榆中县', '0', 445, 0, '', 1, 0, '', NULL, 0),
(3046, '金川区', '0', 447, 0, '', 1, 0, '', NULL, 0),
(3047, '永昌县', '0', 447, 0, '', 1, 0, '', NULL, 0),
(3048, '白银区', '0', 448, 0, '', 1, 0, '', NULL, 0),
(3049, '平川区', '0', 448, 0, '', 1, 0, '', NULL, 0),
(3050, '靖远县', '0', 448, 0, '', 1, 0, '', NULL, 0),
(3051, '会宁县', '0', 448, 0, '', 1, 0, '', NULL, 0),
(3052, '景泰县', '0', 448, 0, '', 1, 0, '', NULL, 0),
(3053, '秦城区', '0', 449, 0, '', 1, 0, '', NULL, 0),
(3054, '北道区', '0', 449, 0, '', 1, 0, '', NULL, 0),
(3055, '清水县', '0', 449, 0, '', 1, 0, '', NULL, 0),
(3056, '秦安县', '0', 449, 0, '', 1, 0, '', NULL, 0),
(3057, '甘谷县', '0', 449, 0, '', 1, 0, '', NULL, 0),
(3058, '武山县', '0', 449, 0, '', 1, 0, '', NULL, 0),
(3059, '张家川回族自治县', '0', 449, 0, '', 1, 0, '', NULL, 0),
(3060, '凉州区', '0', 450, 0, '', 1, 0, '', NULL, 0),
(3061, '民勤县', '0', 450, 0, '', 1, 0, '', NULL, 0),
(3062, '古浪县', '0', 450, 0, '', 1, 0, '', NULL, 0),
(3063, '天祝藏族自治县', '0', 450, 0, '', 1, 0, '', NULL, 0),
(3064, '甘州区', '0', 451, 0, '', 1, 0, '', NULL, 0),
(3065, '肃南裕固族自治县', '0', 451, 0, '', 1, 0, '', NULL, 0),
(3066, '民乐县', '0', 451, 0, '', 1, 0, '', NULL, 0),
(3067, '临泽县', '0', 451, 0, '', 1, 0, '', NULL, 0),
(3068, '高台县', '0', 451, 0, '', 1, 0, '', NULL, 0),
(3069, '山丹县', '0', 451, 0, '', 1, 0, '', NULL, 0),
(3070, '崆峒区', '0', 452, 0, '', 1, 0, '', NULL, 0),
(3071, '泾川县', '0', 452, 0, '', 1, 0, '', NULL, 0),
(3072, '灵台县', '0', 452, 0, '', 1, 0, '', NULL, 0),
(3073, '崇信县', '0', 452, 0, '', 1, 0, '', NULL, 0);
INSERT INTO `v9_linkage` (`linkageid`, `name`, `style`, `parentid`, `child`, `arrchildid`, `keyid`, `listorder`, `description`, `setting`, `siteid`) VALUES
(3074, '华亭县', '0', 452, 0, '', 1, 0, '', NULL, 0),
(3075, '庄浪县', '0', 452, 0, '', 1, 0, '', NULL, 0),
(3076, '静宁县', '0', 452, 0, '', 1, 0, '', NULL, 0),
(3077, '肃州区', '0', 453, 0, '', 1, 0, '', NULL, 0),
(3078, '金塔县', '0', 453, 0, '', 1, 0, '', NULL, 0),
(3079, '瓜州县', '0', 453, 0, '', 1, 0, '', NULL, 0),
(3080, '肃北蒙古族自治县', '0', 453, 0, '', 1, 0, '', NULL, 0),
(3081, '阿克塞哈萨克族自治县', '0', 453, 0, '', 1, 0, '', NULL, 0),
(3082, '玉门市', '0', 453, 0, '', 1, 0, '', NULL, 0),
(3083, '敦煌市', '0', 453, 0, '', 1, 0, '', NULL, 0),
(3084, '西峰区', '0', 454, 0, '', 1, 0, '', NULL, 0),
(3085, '庆城县', '0', 454, 0, '', 1, 0, '', NULL, 0),
(3086, '环县', '0', 454, 0, '', 1, 0, '', NULL, 0),
(3087, '华池县', '0', 454, 0, '', 1, 0, '', NULL, 0),
(3088, '合水县', '0', 454, 0, '', 1, 0, '', NULL, 0),
(3089, '正宁县', '0', 454, 0, '', 1, 0, '', NULL, 0),
(3090, '宁县', '0', 454, 0, '', 1, 0, '', NULL, 0),
(3091, '镇原县', '0', 454, 0, '', 1, 0, '', NULL, 0),
(3092, '安定区', '0', 455, 0, '', 1, 0, '', NULL, 0),
(3093, '通渭县', '0', 455, 0, '', 1, 0, '', NULL, 0),
(3094, '陇西县', '0', 455, 0, '', 1, 0, '', NULL, 0),
(3095, '渭源县', '0', 455, 0, '', 1, 0, '', NULL, 0),
(3096, '临洮县', '0', 455, 0, '', 1, 0, '', NULL, 0),
(3097, '漳县', '0', 455, 0, '', 1, 0, '', NULL, 0),
(3098, '岷县', '0', 455, 0, '', 1, 0, '', NULL, 0),
(3099, '武都区', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3100, '成县', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3101, '文县', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3102, '宕昌县', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3103, '康县', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3104, '西和县', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3105, '礼县', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3106, '徽县', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3107, '两当县', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3108, '临夏市', '0', 457, 0, '', 1, 0, '', NULL, 0),
(3109, '临夏县', '0', 457, 0, '', 1, 0, '', NULL, 0),
(3110, '康乐县', '0', 457, 0, '', 1, 0, '', NULL, 0),
(3111, '永靖县', '0', 457, 0, '', 1, 0, '', NULL, 0),
(3112, '广河县', '0', 457, 0, '', 1, 0, '', NULL, 0),
(3113, '和政县', '0', 457, 0, '', 1, 0, '', NULL, 0),
(3114, '东乡族自治县', '0', 457, 0, '', 1, 0, '', NULL, 0),
(3115, '积石山保安族东乡族撒拉族自治县', '0', 457, 0, '', 1, 0, '', NULL, 0),
(3116, '合作市', '0', 458, 0, '', 1, 0, '', NULL, 0),
(3117, '临潭县', '0', 458, 0, '', 1, 0, '', NULL, 0),
(3118, '卓尼县', '0', 458, 0, '', 1, 0, '', NULL, 0),
(3119, '舟曲县', '0', 458, 0, '', 1, 0, '', NULL, 0),
(3120, '迭部县', '0', 458, 0, '', 1, 0, '', NULL, 0),
(3121, '玛曲县', '0', 458, 0, '', 1, 0, '', NULL, 0),
(3122, '碌曲县', '0', 458, 0, '', 1, 0, '', NULL, 0),
(3123, '夏河县', '0', 458, 0, '', 1, 0, '', NULL, 0),
(3124, '城东区', '0', 459, 0, '', 1, 0, '', NULL, 0),
(3125, '城中区', '0', 459, 0, '', 1, 0, '', NULL, 0),
(3126, '城西区', '0', 459, 0, '', 1, 0, '', NULL, 0),
(3127, '城北区', '0', 459, 0, '', 1, 0, '', NULL, 0),
(3128, '大通回族土族自治县', '0', 459, 0, '', 1, 0, '', NULL, 0),
(3129, '湟中县', '0', 459, 0, '', 1, 0, '', NULL, 0),
(3130, '湟源县', '0', 459, 0, '', 1, 0, '', NULL, 0),
(3131, '平安县', '0', 460, 0, '', 1, 0, '', NULL, 0),
(3132, '民和回族土族自治县', '0', 460, 0, '', 1, 0, '', NULL, 0),
(3133, '乐都县', '0', 460, 0, '', 1, 0, '', NULL, 0),
(3134, '互助土族自治县', '0', 460, 0, '', 1, 0, '', NULL, 0),
(3135, '化隆回族自治县', '0', 460, 0, '', 1, 0, '', NULL, 0),
(3136, '循化撒拉族自治县', '0', 460, 0, '', 1, 0, '', NULL, 0),
(3137, '门源回族自治县', '0', 461, 0, '', 1, 0, '', NULL, 0),
(3138, '祁连县', '0', 461, 0, '', 1, 0, '', NULL, 0),
(3139, '海晏县', '0', 461, 0, '', 1, 0, '', NULL, 0),
(3140, '刚察县', '0', 461, 0, '', 1, 0, '', NULL, 0),
(3141, '同仁县', '0', 462, 0, '', 1, 0, '', NULL, 0),
(3142, '尖扎县', '0', 462, 0, '', 1, 0, '', NULL, 0),
(3143, '泽库县', '0', 462, 0, '', 1, 0, '', NULL, 0),
(3144, '河南蒙古族自治县', '0', 462, 0, '', 1, 0, '', NULL, 0),
(3145, '共和县', '0', 463, 0, '', 1, 0, '', NULL, 0),
(3146, '同德县', '0', 463, 0, '', 1, 0, '', NULL, 0),
(3147, '贵德县', '0', 463, 0, '', 1, 0, '', NULL, 0),
(3148, '兴海县', '0', 463, 0, '', 1, 0, '', NULL, 0),
(3149, '贵南县', '0', 463, 0, '', 1, 0, '', NULL, 0),
(3150, '玛沁县', '0', 464, 0, '', 1, 0, '', NULL, 0),
(3151, '班玛县', '0', 464, 0, '', 1, 0, '', NULL, 0),
(3152, '甘德县', '0', 464, 0, '', 1, 0, '', NULL, 0),
(3153, '达日县', '0', 464, 0, '', 1, 0, '', NULL, 0),
(3154, '久治县', '0', 464, 0, '', 1, 0, '', NULL, 0),
(3155, '玛多县', '0', 464, 0, '', 1, 0, '', NULL, 0),
(3156, '玉树县', '0', 465, 0, '', 1, 0, '', NULL, 0),
(3157, '杂多县', '0', 465, 0, '', 1, 0, '', NULL, 0),
(3158, '称多县', '0', 465, 0, '', 1, 0, '', NULL, 0),
(3159, '治多县', '0', 465, 0, '', 1, 0, '', NULL, 0),
(3160, '囊谦县', '0', 465, 0, '', 1, 0, '', NULL, 0),
(3161, '曲麻莱县', '0', 465, 0, '', 1, 0, '', NULL, 0),
(3162, '格尔木市', '0', 466, 0, '', 1, 0, '', NULL, 0),
(3163, '德令哈市', '0', 466, 0, '', 1, 0, '', NULL, 0),
(3164, '乌兰县', '0', 466, 0, '', 1, 0, '', NULL, 0),
(3165, '都兰县', '0', 466, 0, '', 1, 0, '', NULL, 0),
(3166, '天峻县', '0', 466, 0, '', 1, 0, '', NULL, 0),
(3167, '兴庆区', '0', 467, 0, '', 1, 0, '', NULL, 0),
(3168, '西夏区', '0', 467, 0, '', 1, 0, '', NULL, 0),
(3169, '金凤区', '0', 467, 0, '', 1, 0, '', NULL, 0),
(3170, '永宁县', '0', 467, 0, '', 1, 0, '', NULL, 0),
(3171, '贺兰县', '0', 467, 0, '', 1, 0, '', NULL, 0),
(3172, '灵武市', '0', 467, 0, '', 1, 0, '', NULL, 0),
(3173, '大武口区', '0', 468, 0, '', 1, 0, '', NULL, 0),
(3174, '惠农区', '0', 468, 0, '', 1, 0, '', NULL, 0),
(3175, '平罗县', '0', 468, 0, '', 1, 0, '', NULL, 0),
(3176, '利通区', '0', 469, 0, '', 1, 0, '', NULL, 0),
(3177, '盐池县', '0', 469, 0, '', 1, 0, '', NULL, 0),
(3178, '同心县', '0', 469, 0, '', 1, 0, '', NULL, 0),
(3179, '青铜峡市', '0', 469, 0, '', 1, 0, '', NULL, 0),
(3180, '原州区', '0', 470, 0, '', 1, 0, '', NULL, 0),
(3181, '西吉县', '0', 470, 0, '', 1, 0, '', NULL, 0),
(3182, '隆德县', '0', 470, 0, '', 1, 0, '', NULL, 0),
(3183, '泾源县', '0', 470, 0, '', 1, 0, '', NULL, 0),
(3184, '彭阳县', '0', 470, 0, '', 1, 0, '', NULL, 0),
(3185, '沙坡头区', '0', 471, 0, '', 1, 0, '', NULL, 0),
(3186, '中宁县', '0', 471, 0, '', 1, 0, '', NULL, 0),
(3187, '海原县', '0', 471, 0, '', 1, 0, '', NULL, 0),
(3188, '天山区', '0', 472, 0, '', 1, 0, '', NULL, 0),
(3189, '沙依巴克区', '0', 472, 0, '', 1, 0, '', NULL, 0),
(3190, '新市区', '0', 472, 0, '', 1, 0, '', NULL, 0),
(3191, '水磨沟区', '0', 472, 0, '', 1, 0, '', NULL, 0),
(3192, '头屯河区', '0', 472, 0, '', 1, 0, '', NULL, 0),
(3193, '达坂城区', '0', 472, 0, '', 1, 0, '', NULL, 0),
(3194, '东山区', '0', 472, 0, '', 1, 0, '', NULL, 0),
(3195, '乌鲁木齐县', '0', 472, 0, '', 1, 0, '', NULL, 0),
(3196, '独山子区', '0', 473, 0, '', 1, 0, '', NULL, 0),
(3197, '克拉玛依区', '0', 473, 0, '', 1, 0, '', NULL, 0),
(3198, '白碱滩区', '0', 473, 0, '', 1, 0, '', NULL, 0),
(3199, '乌尔禾区', '0', 473, 0, '', 1, 0, '', NULL, 0),
(3200, '吐鲁番市', '0', 474, 0, '', 1, 0, '', NULL, 0),
(3201, '鄯善县', '0', 474, 0, '', 1, 0, '', NULL, 0),
(3202, '托克逊县', '0', 474, 0, '', 1, 0, '', NULL, 0),
(3203, '哈密市', '0', 475, 0, '', 1, 0, '', NULL, 0),
(3204, '巴里坤哈萨克自治县', '0', 475, 0, '', 1, 0, '', NULL, 0),
(3205, '伊吾县', '0', 475, 0, '', 1, 0, '', NULL, 0),
(3206, '昌吉市', '0', 476, 0, '', 1, 0, '', NULL, 0),
(3207, '阜康市', '0', 476, 0, '', 1, 0, '', NULL, 0),
(3208, '米泉市', '0', 476, 0, '', 1, 0, '', NULL, 0),
(3209, '呼图壁县', '0', 476, 0, '', 1, 0, '', NULL, 0),
(3210, '玛纳斯县', '0', 476, 0, '', 1, 0, '', NULL, 0),
(3211, '奇台县', '0', 476, 0, '', 1, 0, '', NULL, 0),
(3212, '吉木萨尔县', '0', 476, 0, '', 1, 0, '', NULL, 0),
(3213, '木垒哈萨克自治县', '0', 476, 0, '', 1, 0, '', NULL, 0),
(3214, '博乐市', '0', 477, 0, '', 1, 0, '', NULL, 0),
(3215, '精河县', '0', 477, 0, '', 1, 0, '', NULL, 0),
(3216, '温泉县', '0', 477, 0, '', 1, 0, '', NULL, 0),
(3217, '库尔勒市', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3218, '轮台县', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3219, '尉犁县', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3220, '若羌县', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3221, '且末县', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3222, '焉耆回族自治县', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3223, '和静县', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3224, '和硕县', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3225, '博湖县', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3226, '阿克苏市', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3227, '温宿县', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3228, '库车县', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3229, '沙雅县', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3230, '新和县', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3231, '拜城县', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3232, '乌什县', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3233, '阿瓦提县', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3234, '柯坪县', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3235, '阿图什市', '0', 480, 0, '', 1, 0, '', NULL, 0),
(3236, '阿克陶县', '0', 480, 0, '', 1, 0, '', NULL, 0),
(3237, '阿合奇县', '0', 480, 0, '', 1, 0, '', NULL, 0),
(3238, '乌恰县', '0', 480, 0, '', 1, 0, '', NULL, 0),
(3239, '喀什市', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3240, '疏附县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3241, '疏勒县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3242, '英吉沙县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3243, '泽普县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3244, '莎车县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3245, '叶城县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3246, '麦盖提县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3247, '岳普湖县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3248, '伽师县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3249, '巴楚县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3250, '塔什库尔干塔吉克自治县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3251, '和田市', '0', 482, 0, '', 1, 0, '', NULL, 0),
(3252, '和田县', '0', 482, 0, '', 1, 0, '', NULL, 0),
(3253, '墨玉县', '0', 482, 0, '', 1, 0, '', NULL, 0),
(3254, '皮山县', '0', 482, 0, '', 1, 0, '', NULL, 0),
(3255, '洛浦县', '0', 482, 0, '', 1, 0, '', NULL, 0),
(3256, '策勒县', '0', 482, 0, '', 1, 0, '', NULL, 0),
(3257, '于田县', '0', 482, 0, '', 1, 0, '', NULL, 0),
(3258, '民丰县', '0', 482, 0, '', 1, 0, '', NULL, 0),
(3259, '伊宁市', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3260, '奎屯市', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3261, '伊宁县', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3262, '察布查尔锡伯自治县', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3263, '霍城县', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3264, '巩留县', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3265, '新源县', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3266, '昭苏县', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3267, '特克斯县', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3268, '尼勒克县', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3269, '塔城市', '0', 484, 0, '', 1, 0, '', NULL, 0),
(3270, '乌苏市', '0', 484, 0, '', 1, 0, '', NULL, 0),
(3271, '额敏县', '0', 484, 0, '', 1, 0, '', NULL, 0),
(3272, '沙湾县', '0', 484, 0, '', 1, 0, '', NULL, 0),
(3273, '托里县', '0', 484, 0, '', 1, 0, '', NULL, 0),
(3274, '裕民县', '0', 484, 0, '', 1, 0, '', NULL, 0),
(3275, '和布克赛尔蒙古自治县', '0', 484, 0, '', 1, 0, '', NULL, 0),
(3276, '阿勒泰市', '0', 485, 0, '', 1, 0, '', NULL, 0),
(3277, '布尔津县', '0', 485, 0, '', 1, 0, '', NULL, 0),
(3278, '富蕴县', '0', 485, 0, '', 1, 0, '', NULL, 0),
(3279, '福海县', '0', 485, 0, '', 1, 0, '', NULL, 0),
(3280, '哈巴河县', '0', 485, 0, '', 1, 0, '', NULL, 0),
(3281, '青河县', '0', 485, 0, '', 1, 0, '', NULL, 0),
(3282, '吉木乃县', '0', 485, 0, '', 1, 0, '', NULL, 0),
(3358, '钓鱼岛', '', 0, 0, '', 1, 0, '', NULL, 0),
(3359, '钓鱼岛', '', 3358, 0, '', 1, 0, '', NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_log`
--

CREATE TABLE `v9_log` (
  `logid` int(10) UNSIGNED NOT NULL,
  `field` varchar(15) NOT NULL,
  `value` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `module` varchar(15) NOT NULL,
  `file` varchar(20) NOT NULL,
  `action` varchar(20) NOT NULL,
  `querystring` varchar(255) NOT NULL,
  `data` mediumtext NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_log`
--

INSERT INTO `v9_log` (`logid`, `field`, `value`, `module`, `file`, `action`, `querystring`, `data`, `userid`, `username`, `ip`, `time`) VALUES
(1, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, '', '127.0.0.1', '2016-12-22 23:45:32'),
(2, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, '', '127.0.0.1', '2016-12-22 23:45:39'),
(3, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'phpcms', '127.0.0.1', '2016-12-22 23:45:49'),
(4, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-22 23:47:21'),
(5, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-23 00:00:24'),
(6, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-23 00:00:33'),
(7, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-23 00:00:50'),
(8, '', 0, 'pay', '', 'payment', '?m=pay&c=payment&a=pay_list', '', 1, 'phpcms', '127.0.0.1', '2016-12-23 00:01:25'),
(9, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=category', '', 1, 'phpcms', '127.0.0.1', '2016-12-23 00:06:27'),
(10, '', 0, 'content', '', 'content', '?m=content&c=content&a=clear_data', '', 1, 'phpcms', '127.0.0.1', '2016-12-23 00:06:28'),
(11, '', 0, 'content', '', 'content', '?m=content&c=content&a=clear_data', '', 1, 'phpcms', '127.0.0.1', '2016-12-23 00:07:13'),
(12, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, '', '127.0.0.1', '2016-12-23 12:34:25'),
(13, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, '', '127.0.0.1', '2016-12-23 12:34:32'),
(14, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-23 12:42:56'),
(15, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-23 12:43:02'),
(16, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-23 12:47:33'),
(17, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-23 12:47:54'),
(18, '', 0, 'content', '', 'content', '?m=content&c=content&a=clear_data', '', 1, 'phpcms', '127.0.0.1', '2016-12-23 12:49:14'),
(19, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2016-12-25 22:33:33'),
(20, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2016-12-25 22:33:40'),
(21, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2016-12-25 22:33:41'),
(22, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2016-12-25 22:33:48'),
(23, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2016-12-25 22:33:50'),
(24, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2016-12-25 22:33:59'),
(25, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=category', '', 1, 'phpcms', '127.0.0.1', '2016-12-25 22:34:18'),
(26, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-25 22:34:42'),
(27, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-25 22:35:15'),
(28, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-25 22:36:26'),
(29, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-25 23:17:58'),
(30, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-25 23:19:03'),
(31, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2016-12-25 23:25:44'),
(32, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2016-12-25 23:25:52'),
(33, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-25 23:26:06'),
(34, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-25 23:26:09'),
(35, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-25 23:26:12'),
(36, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-25 23:26:15'),
(37, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-25 23:26:27'),
(38, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-25 23:27:02'),
(39, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-25 23:27:07'),
(40, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-25 23:27:18'),
(41, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-25 23:27:22'),
(42, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-25 23:27:30'),
(43, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-25 23:27:36'),
(44, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-25 23:27:42'),
(45, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-25 23:27:46'),
(46, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-25 23:27:49'),
(47, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-25 23:28:03'),
(48, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-25 23:28:11'),
(49, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-25 23:33:16'),
(50, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-25 23:33:22'),
(51, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-25 23:40:31'),
(52, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-25 23:41:48'),
(53, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-26 00:09:06'),
(54, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-26 00:09:47'),
(55, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-26 00:09:52'),
(56, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-26 00:09:59'),
(57, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-26 00:10:01'),
(58, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-26 00:10:16'),
(59, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-26 00:10:43'),
(60, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-26 00:11:00'),
(61, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-26 00:11:05'),
(62, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-26 00:11:59'),
(63, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-26 00:12:05'),
(64, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-26 00:12:18'),
(65, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-26 00:12:25'),
(66, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-26 00:12:28'),
(67, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-26 00:12:57'),
(68, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-26 00:13:06'),
(69, '', 0, 'content', '', 'content', '?m=content&c=content&a=add_othors', '', 1, 'phpcms', '127.0.0.1', '2016-12-26 00:13:08'),
(70, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-26 00:13:37'),
(71, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-26 00:21:13'),
(72, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-26 00:23:06'),
(73, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2016-12-26 00:58:13'),
(74, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2016-12-26 00:58:13'),
(75, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2016-12-26 00:58:14'),
(76, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2016-12-26 00:58:20'),
(77, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2016-12-29 17:31:13'),
(78, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2016-12-29 17:31:18'),
(79, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2016-12-29 17:32:21'),
(80, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2016-12-29 17:32:26'),
(81, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2016-12-29 18:34:43'),
(82, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2016-12-29 18:34:48'),
(83, '', 0, 'pay', '', 'payment', '?m=pay&c=payment&a=pay_list', '', 1, 'phpcms', '127.0.0.1', '2016-12-29 19:21:55'),
(84, '', 0, 'pay', '', 'payment', '?m=pay&c=payment&a=pay_list', '', 1, 'phpcms', '127.0.0.1', '2016-12-29 19:21:56'),
(85, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2016-12-30 21:51:25'),
(86, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2016-12-30 21:51:31'),
(87, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2016-12-31 13:40:54'),
(88, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2016-12-31 13:41:07'),
(89, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2016-12-31 13:41:09'),
(90, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2016-12-31 13:41:15'),
(91, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 13:52:12'),
(92, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 13:52:22'),
(93, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 13:52:28'),
(94, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 13:52:33'),
(95, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:13:38'),
(96, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:13:42'),
(97, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:13:53'),
(98, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:13:58'),
(99, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:14:10'),
(100, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:14:19'),
(101, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:14:25'),
(102, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:14:29'),
(103, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:16:03'),
(104, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:16:06'),
(105, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:16:11'),
(106, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:16:40'),
(107, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:17:10'),
(108, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:17:11'),
(109, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:17:30'),
(110, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:17:32'),
(111, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:17:37'),
(112, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:17:57'),
(113, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:17:59'),
(114, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:18:15'),
(115, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:25:38'),
(116, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:26:43'),
(117, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:29:14'),
(118, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:29:18'),
(119, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:29:48'),
(120, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:29:52'),
(121, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:29:57'),
(122, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:31:53'),
(123, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:31:59'),
(124, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:33:31'),
(125, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:33:39'),
(126, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:33:56'),
(127, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:46:49'),
(128, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:46:56'),
(129, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:47:01'),
(130, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:48:39'),
(131, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:48:48'),
(132, '', 0, 'content', '', 'content', '?m=content&c=content&a=clear_data', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:49:36'),
(133, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=category', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:49:37'),
(134, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:49:51'),
(135, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:50:16'),
(136, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:50:17'),
(137, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:54:30'),
(138, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:54:53'),
(139, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:55:20'),
(140, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:55:51'),
(141, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 14:56:05'),
(142, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 15:08:15'),
(143, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 15:08:37'),
(144, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 15:08:47'),
(145, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 15:08:52'),
(146, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 15:08:56'),
(147, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 15:09:20'),
(148, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 15:10:26'),
(149, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 15:10:40'),
(150, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 15:10:46'),
(151, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 15:46:32'),
(152, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 15:50:09'),
(153, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 15:50:11'),
(154, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 15:50:16'),
(155, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 15:50:18'),
(156, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 15:51:00'),
(157, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 15:51:03'),
(158, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 15:51:07'),
(159, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 15:51:10'),
(160, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 15:51:14'),
(161, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 15:51:18'),
(162, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 16:18:13'),
(163, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 16:18:21'),
(164, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 16:22:57'),
(165, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 16:23:03'),
(166, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 16:23:16'),
(167, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 16:23:29'),
(168, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 16:23:39'),
(169, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 16:23:57'),
(170, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 16:24:03'),
(171, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 16:24:09'),
(172, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 16:25:17'),
(173, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 16:26:49'),
(174, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 16:27:05'),
(175, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 16:28:37'),
(176, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 16:28:59'),
(177, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 16:55:48'),
(178, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 16:56:24'),
(179, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 16:56:31'),
(180, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 16:56:35'),
(181, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 16:57:13'),
(182, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 16:57:57'),
(183, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 16:58:06'),
(184, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 16:58:13'),
(185, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 16:58:24'),
(186, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:01:36'),
(187, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:01:46'),
(188, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:02:33'),
(189, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:02:35'),
(190, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:06:04'),
(191, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:06:10'),
(192, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:06:16'),
(193, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:09:40'),
(194, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:10:50'),
(195, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:10:51'),
(196, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:11:24'),
(197, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:11:25'),
(198, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:11:47'),
(199, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:11:54'),
(200, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:12:31'),
(201, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:12:32'),
(202, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:13:03'),
(203, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:13:04'),
(204, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:13:33'),
(205, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:13:44'),
(206, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:14:23'),
(207, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:14:24'),
(208, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:15:03'),
(209, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:15:12'),
(210, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:15:13'),
(211, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:15:44'),
(212, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:15:46'),
(213, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:16:26'),
(214, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:16:28'),
(215, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:16:54'),
(216, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:21:33'),
(217, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:21:55'),
(218, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:22:02'),
(219, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:22:08'),
(220, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:22:57'),
(221, '', 0, 'content', '', 'content', '?m=content&c=content&a=listorder', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:40:41'),
(222, '', 0, 'content', '', 'content', '?m=content&c=content&a=listorder', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:40:47'),
(223, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 17:44:40'),
(224, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 18:35:59'),
(225, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 18:36:12'),
(226, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 18:36:59'),
(227, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 18:43:33'),
(228, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 18:43:46'),
(229, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 18:43:51'),
(230, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 18:45:41'),
(231, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 18:45:57'),
(232, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 18:46:04'),
(233, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 18:46:23'),
(234, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 18:46:34'),
(235, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 18:46:52'),
(236, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 18:46:57'),
(237, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 18:47:14'),
(238, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 18:48:51'),
(239, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 18:57:06'),
(240, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 18:57:07'),
(241, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:13:00'),
(242, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:13:02'),
(243, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:15:02'),
(244, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:15:19'),
(245, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:15:21'),
(246, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:17:57'),
(247, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:18:04'),
(248, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:18:05'),
(249, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:19:06'),
(250, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:19:12'),
(251, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:19:17'),
(252, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:19:23'),
(253, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:19:28'),
(254, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:19:36'),
(255, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:19:40'),
(256, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:19:46'),
(257, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:19:54'),
(258, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:19:58'),
(259, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:20:05'),
(260, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:20:16'),
(261, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:20:19'),
(262, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:22:10'),
(263, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:22:24'),
(264, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:23:11'),
(265, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:24:15'),
(266, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:24:45'),
(267, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:25:05'),
(268, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 19:26:51'),
(269, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 20:39:19'),
(270, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 20:40:15'),
(271, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 20:42:22'),
(272, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 20:42:24'),
(273, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 20:43:27'),
(274, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 20:43:37'),
(275, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 20:43:42'),
(276, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 20:43:48'),
(277, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 20:43:53'),
(278, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 20:43:58'),
(279, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 20:44:03'),
(280, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 21:02:39'),
(281, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 21:02:48'),
(282, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 21:02:50'),
(283, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 21:02:50'),
(284, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 21:03:00'),
(285, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 21:03:01'),
(286, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 21:03:02'),
(287, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 21:03:12'),
(288, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 21:03:13'),
(289, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 21:05:00'),
(290, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 21:05:07'),
(291, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 21:05:29'),
(292, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 21:05:29'),
(293, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 21:05:57'),
(294, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 21:06:21'),
(295, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 21:06:33'),
(296, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 21:06:35'),
(297, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 21:09:36'),
(298, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 21:10:14'),
(299, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 21:11:35'),
(300, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 21:11:58'),
(301, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 21:12:58'),
(302, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 21:13:01'),
(303, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 21:13:55'),
(304, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2016-12-31 21:14:16'),
(305, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-01-07 00:31:29'),
(306, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-01-07 00:31:39'),
(307, '', 0, 'video', '', 'video', '?m=video&c=video&a=subscribe_list', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 01:24:06'),
(308, '', 0, 'video', '', 'video', '?m=video&c=video&a=open', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 01:24:07'),
(309, '', 0, 'video', '', 'video', '?m=video&c=video&a=open', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 01:24:08'),
(310, '', 0, 'video', '', 'video', '?m=video&c=video&a=open', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 01:24:10'),
(311, '', 0, 'video', '', 'video', '?m=video&c=video&a=import_ku6video', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 01:24:12'),
(312, '', 0, 'video', '', 'video', '?m=video&c=video&a=open', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 01:24:12'),
(313, '', 0, 'video', '', 'video', '?m=video&c=video&a=open', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 01:24:14'),
(314, '', 0, 'video', '', 'video', '?m=video&c=video&a=setting', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 01:24:16'),
(315, '', 0, 'video', '', 'video', '?m=video&c=video&a=open', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 01:24:17'),
(316, '', 0, 'video', '', 'video', '?m=video&c=video&a=open', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 01:24:20'),
(317, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-01-07 12:34:18'),
(318, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-01-07 12:34:25'),
(319, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:36:28'),
(320, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:45:02'),
(321, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:45:11'),
(322, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:45:58'),
(323, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:46:09'),
(324, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:46:43'),
(325, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:47:32'),
(326, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:47:43'),
(327, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:48:25'),
(328, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:48:46'),
(329, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:49:44'),
(330, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:49:50'),
(331, '', 0, 'content', '', 'content', '?m=content&c=content&a=add_othors', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:50:26'),
(332, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:50:37'),
(333, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:51:07'),
(334, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:51:20'),
(335, '', 0, 'content', '', 'content', '?m=content&c=content&a=add_othors', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:51:55'),
(336, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:52:07'),
(337, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:52:09'),
(338, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:52:34'),
(339, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:52:40'),
(340, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:54:24'),
(341, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:54:41'),
(342, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:54:45'),
(343, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:54:53'),
(344, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:54:57'),
(345, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:55:03'),
(346, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:55:06'),
(347, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:55:14'),
(348, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:55:17'),
(349, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:55:25'),
(350, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:59:18'),
(351, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:59:28'),
(352, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:59:31'),
(353, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:59:39'),
(354, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:59:43'),
(355, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:59:51'),
(356, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 12:59:54'),
(357, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 13:00:03'),
(358, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 13:00:31'),
(359, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 13:00:42'),
(360, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 13:00:46'),
(361, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 13:01:36'),
(362, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 13:04:00'),
(363, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 13:04:07'),
(364, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 13:04:33'),
(365, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 13:04:50'),
(366, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 13:06:52'),
(367, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 13:07:09'),
(368, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 13:07:11'),
(369, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 15:54:14'),
(370, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 15:54:37'),
(371, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:00:26'),
(372, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:02:47'),
(373, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:03:05'),
(374, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:06:18'),
(375, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:06:35'),
(376, '', 0, 'content', '', 'content', '?m=content&c=content&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:06:55'),
(377, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:06:57'),
(378, '', 0, 'template', '', 'file', '?m=template&c=file&a=edit_pc_tag', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:07:17'),
(379, '', 0, 'template', '', 'file', '?m=template&c=file&a=edit_pc_tag', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:07:21'),
(380, '', 0, 'member', '', 'member', '?m=member&c=member&a=manage', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:07:34'),
(381, '', 0, 'collection', '', 'node', '?m=collection&c=node&a=manage', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:07:59'),
(382, '', 0, 'comment', '', 'comment_admin', '?m=comment&c=comment_admin&a=listinfo', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:08:00'),
(383, '', 0, 'attachment', '', 'manage', '?m=attachment&c=manage&a=pullic_showthumbs', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:08:12'),
(384, '', 0, 'attachment', '', 'manage', '?m=attachment&c=manage&a=pullic_showthumbs', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:08:15'),
(385, '', 0, 'comment', '', 'comment_admin', '?m=comment&c=comment_admin&a=listinfo', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:16:25'),
(386, '', 0, 'content', '', 'content', '?m=content&c=content&a=clear_data', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:16:27'),
(387, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=category', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:16:29'),
(388, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:16:31'),
(389, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=show', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:16:32'),
(390, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=show', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:16:33'),
(391, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=show', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:16:34'),
(392, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=show', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:16:35'),
(393, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=show', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:16:35'),
(394, '', 0, 'pay', '', 'payment', '?m=pay&c=payment&a=pay_list', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:27:55'),
(395, '', 0, 'search', '', 'search_admin', '?m=search&c=search_admin&a=setting', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:27:59'),
(396, '', 0, 'search', '', 'search_admin', '?m=search&c=search_admin&a=createindex', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:28:00'),
(397, '', 0, 'search', '', 'search_admin', '?m=search&c=search_admin&a=setting', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:28:04'),
(398, '', 0, 'pay', '', 'payment', '?m=pay&c=payment&a=pay_list', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:47:46'),
(399, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=category', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:48:00'),
(400, '', 0, 'content', '', 'sitemodel', '?m=content&c=sitemodel&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 16:48:07'),
(401, '', 0, 'pay', '', 'payment', '?m=pay&c=payment&a=pay_list', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:12:52'),
(402, '', 0, 'pay', '', 'payment', '?m=pay&c=payment&a=pay_list', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:12:54'),
(403, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=category', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:13:51'),
(404, '', 0, 'comment', '', 'comment_admin', '?m=comment&c=comment_admin&a=listinfo', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:13:52'),
(405, '', 0, 'collection', '', 'node', '?m=collection&c=node&a=manage', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:13:53'),
(406, '', 0, 'pay', '', 'payment', '?m=pay&c=payment&a=pay_list', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:14:00'),
(407, '', 0, 'pay', '', 'payment', '?m=pay&c=payment&a=pay_list', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:14:01'),
(408, '', 0, 'pay', '', 'payment', '?m=pay&c=payment&a=pay_list', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:14:16'),
(409, '', 0, 'pay', '', 'payment', '?m=pay&c=payment&a=pay_list', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:15:14'),
(410, '', 0, 'dbsource', '', 'data', '?m=dbsource&c=data&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:15:17'),
(411, '', 0, 'dbsource', '', 'data', '?m=dbsource&c=data&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:15:19'),
(412, '', 0, 'dbsource', '', 'data', '?m=dbsource&c=data&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:15:21'),
(413, '', 0, 'dbsource', '', 'data', '?m=dbsource&c=data&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:15:25');
INSERT INTO `v9_log` (`logid`, `field`, `value`, `module`, `file`, `action`, `querystring`, `data`, `userid`, `username`, `ip`, `time`) VALUES
(414, '', 0, 'dbsource', '', 'data', '?m=dbsource&c=data&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:15:28'),
(415, '', 0, 'dbsource', '', 'data', '?m=dbsource&c=data&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:15:29'),
(416, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:16:03'),
(417, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:16:11'),
(418, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:17:21'),
(419, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=batch_edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:17:24'),
(420, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:17:40'),
(421, '', 0, 'content', '', 'sitemodel', '?m=content&c=sitemodel&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:18:17'),
(422, '', 0, 'attachment', '', 'manage', '?m=attachment&c=manage&a=dir', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:30:06'),
(423, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=show', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:30:16'),
(424, '', 0, 'member', '', 'member', '?m=member&c=member&a=manage', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:30:19'),
(425, '', 0, 'member', '', 'member_verify', '?m=member&c=member_verify&a=manage', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:30:20'),
(426, '', 0, 'member', '', 'member_setting', '?m=member&c=member_setting&a=manage', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:30:21'),
(427, '', 0, 'member', '', 'member_setting', '?m=member&c=member_setting&a=manage', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:30:31'),
(428, '', 0, 'member', '', 'member_setting', '?m=member&c=member_setting&a=manage', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:30:32'),
(429, '', 0, 'member', '', 'member_verify', '?m=member&c=member_verify&a=manage', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:30:33'),
(430, '', 0, 'member', '', 'member', '?m=member&c=member&a=manage', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:30:34'),
(431, '', 0, 'member', '', 'member_verify', '?m=member&c=member_verify&a=manage', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:30:35'),
(432, '', 0, 'member', '', 'member_verify', '?m=member&c=member_verify&a=manage', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:30:38'),
(433, '', 0, 'member', '', 'member_group', '?m=member&c=member_group&a=manage', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:30:39'),
(434, '', 0, 'member', '', 'member_model', '?m=member&c=member_model&a=manage', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:30:41'),
(435, '', 0, 'collection', '', 'node', '?m=collection&c=node&a=manage', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:30:52'),
(436, '', 0, 'comment', '', 'comment_admin', '?m=comment&c=comment_admin&a=listinfo', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:30:53'),
(437, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=category', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:30:54'),
(438, '', 0, 'content', '', 'content', '?m=content&c=content&a=clear_data', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:30:56'),
(439, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:30:57'),
(440, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:31:02'),
(441, '', 0, 'admin', '', 'release_point', '?m=admin&c=release_point&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:31:09'),
(442, '', 0, 'admin', '', 'release_point', '?m=admin&c=release_point&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:31:15'),
(443, '', 0, 'content', '', 'sitemodel', '?m=content&c=sitemodel&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:31:46'),
(444, '', 0, 'admin', '', 'position', '?m=admin&c=position&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:32:30'),
(445, '', 0, 'admin', '', 'position', '?m=admin&c=position&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:32:57'),
(446, '', 0, 'admin', '', 'role', '?m=admin&c=role&a=priv_setting', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:33:34'),
(447, '', 0, 'admin', '', 'role', '?m=admin&c=role&a=role_priv', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:33:34'),
(448, '', 0, 'admin', '', 'role', '?m=admin&c=role&a=role_priv', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:33:36'),
(449, '', 0, 'pay', '', 'payment', '?m=pay&c=payment&a=pay_list', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:34:11'),
(450, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:36:16'),
(451, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:36:47'),
(452, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:37:54'),
(453, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:42:12'),
(454, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:42:20'),
(455, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:42:33'),
(456, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:44:19'),
(457, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:45:03'),
(458, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:45:30'),
(459, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:45:34'),
(460, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:45:42'),
(461, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:45:58'),
(462, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:46:14'),
(463, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:46:18'),
(464, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:46:36'),
(465, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:46:55'),
(466, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:47:07'),
(467, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:47:11'),
(468, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:47:26'),
(469, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:47:29'),
(470, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:47:34'),
(471, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:48:44'),
(472, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:48:47'),
(473, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:48:53'),
(474, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:52:00'),
(475, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:52:13'),
(476, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:52:16'),
(477, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:52:31'),
(478, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:52:35'),
(479, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:52:44'),
(480, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:53:07'),
(481, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:53:10'),
(482, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:53:12'),
(483, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:53:16'),
(484, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:53:27'),
(485, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:53:35'),
(486, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:53:39'),
(487, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:53:47'),
(488, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:53:49'),
(489, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:53:59'),
(490, '', 0, 'content', '', 'content', '?m=content&c=content&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:54:15'),
(491, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:54:18'),
(492, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:54:28'),
(493, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:54:36'),
(494, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:54:54'),
(495, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:55:01'),
(496, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:55:06'),
(497, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:55:09'),
(498, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:55:12'),
(499, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 17:57:15'),
(500, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 18:01:55'),
(501, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 18:01:58'),
(502, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 18:02:04'),
(503, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 18:02:18'),
(504, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 18:09:54'),
(505, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 18:10:04'),
(506, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 18:15:15'),
(507, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-01-07 20:09:01'),
(508, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-01-07 20:09:12'),
(509, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-01-07 21:32:48'),
(510, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-01-07 21:32:54'),
(511, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:33:57'),
(512, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:51:36'),
(513, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:51:45'),
(514, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:52:17'),
(515, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:52:34'),
(516, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:52:42'),
(517, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:52:46'),
(518, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:53:52'),
(519, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:54:09'),
(520, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:54:13'),
(521, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:54:17'),
(522, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:54:24'),
(523, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:56:16'),
(524, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:56:20'),
(525, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:56:33'),
(526, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:56:48'),
(527, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:57:32'),
(528, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:57:35'),
(529, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:57:38'),
(530, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:58:10'),
(531, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:58:53'),
(532, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:58:57'),
(533, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:59:04'),
(534, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:59:19'),
(535, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:59:26'),
(536, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:59:35'),
(537, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 21:59:45'),
(538, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 22:00:01'),
(539, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 22:00:09'),
(540, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 22:00:29'),
(541, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 22:00:43'),
(542, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 22:00:51'),
(543, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 22:00:57'),
(544, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 22:01:05'),
(545, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 22:02:13'),
(546, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 22:02:23'),
(547, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 22:02:28'),
(548, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 22:02:35'),
(549, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 22:02:45'),
(550, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 22:03:51'),
(551, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 22:03:56'),
(552, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 22:03:58'),
(553, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 22:04:35'),
(554, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 22:04:43'),
(555, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 22:04:58'),
(556, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-07 22:05:08'),
(557, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-01-11 15:36:12'),
(558, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-01-11 15:36:12'),
(559, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-01-11 15:38:38'),
(560, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-01-11 15:38:48'),
(561, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-11 15:39:10'),
(562, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-11 15:39:25'),
(563, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-11 15:39:27'),
(564, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-11 15:39:43'),
(565, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-11 15:39:48'),
(566, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-11 15:39:49'),
(567, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-11 15:40:14'),
(568, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-01-11 15:40:15'),
(569, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-01-11 15:50:58'),
(570, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-01-11 15:51:05'),
(571, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-01-11 15:51:06'),
(572, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-01-11 15:51:12'),
(573, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-11 16:09:28'),
(574, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-11 20:01:58'),
(575, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-01-11 20:05:29'),
(576, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-01-11 20:22:29'),
(577, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-01-11 20:22:41'),
(578, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-01-11 23:16:07'),
(579, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-01-11 23:16:18'),
(580, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-12 16:19:00'),
(581, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-12 16:26:44'),
(582, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-12 16:39:34'),
(583, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-12 16:39:40'),
(584, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-12 16:39:41'),
(585, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-12 16:39:50'),
(586, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:39:56'),
(587, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:40:07'),
(588, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:40:09'),
(589, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:40:16'),
(590, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=category', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:40:23'),
(591, '', 0, 'attachment', '', 'address', '?m=attachment&c=address&a=update', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:40:40'),
(592, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:40:54'),
(593, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:40:57'),
(594, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:40:57'),
(595, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:40:57'),
(596, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:40:58'),
(597, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:40:58'),
(598, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:40:59'),
(599, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:40:59'),
(600, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:40:59'),
(601, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:41:00'),
(602, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:41:00'),
(603, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:41:01'),
(604, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:41:01'),
(605, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:41:02'),
(606, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:41:02'),
(607, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:41:03'),
(608, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:41:03'),
(609, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:41:04'),
(610, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:41:04'),
(611, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:41:04'),
(612, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:41:10'),
(613, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:41:10'),
(614, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:41:11'),
(615, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:41:11'),
(616, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:41:11'),
(617, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:41:12'),
(618, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:41:12'),
(619, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:41:13'),
(620, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:41:13'),
(621, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:41:13'),
(622, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:41:14'),
(623, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=show', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:41:15'),
(624, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=show', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:41:17'),
(625, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=show', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:41:17'),
(626, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=show', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 16:41:18'),
(627, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 17:51:22'),
(628, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 17:51:28'),
(629, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 17:51:46'),
(630, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 17:51:50'),
(631, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 17:52:05'),
(632, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 17:52:09'),
(633, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 17:52:23'),
(634, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 17:52:29'),
(635, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 17:52:30'),
(636, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 17:52:46'),
(637, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 17:54:19'),
(638, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 17:54:32'),
(639, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 17:58:43'),
(640, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 17:59:00'),
(641, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 17:59:32'),
(642, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 17:59:44'),
(643, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 18:00:00'),
(644, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 18:00:14'),
(645, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 18:00:21'),
(646, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 18:00:36'),
(647, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 18:01:14'),
(648, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 18:01:26'),
(649, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 18:01:32'),
(650, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 18:01:47'),
(651, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 18:01:58'),
(652, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 18:02:12'),
(653, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 18:02:21'),
(654, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 18:02:36'),
(655, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-12 18:14:33'),
(656, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-12 18:14:41'),
(657, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-12 18:14:42'),
(658, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-12 18:14:49'),
(659, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-12 18:14:50'),
(660, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-12 18:14:59'),
(661, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, '', '127.0.0.1', '2017-02-12 18:15:15'),
(662, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, '', '127.0.0.1', '2017-02-12 18:15:15'),
(663, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, '', '127.0.0.1', '2017-02-12 18:15:25'),
(664, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 18:16:57'),
(665, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 18:17:10'),
(666, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 18:17:59'),
(667, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-12 18:20:02'),
(668, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-25 14:00:31'),
(669, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-25 14:00:38'),
(670, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-25 14:00:40'),
(671, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-25 14:00:49'),
(672, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:04:31'),
(673, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:04:51'),
(674, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:04:54'),
(675, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:05:34'),
(676, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:05:49'),
(677, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:06:12'),
(678, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:06:28'),
(679, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:06:30'),
(680, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:08:18'),
(681, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:08:46'),
(682, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:08:47'),
(683, '', 0, 'link', '', 'link', '?m=link&c=link&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:09:25'),
(684, '', 0, 'link', '', 'link', '?m=link&c=link&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:09:32'),
(685, '', 0, 'link', '', 'link', '?m=link&c=link&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:09:36'),
(686, '', 0, 'link', '', 'link', '?m=link&c=link&a=add_type', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:09:40'),
(687, '', 0, 'link', '', 'link', '?m=link&c=link&a=add_type', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:10:09'),
(688, '', 0, 'link', '', 'link', '?m=link&c=link&a=add_type', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:10:10'),
(689, '', 0, 'link', '', 'link', '?m=link&c=link&a=add_type', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:10:34'),
(690, '', 0, 'link', '', 'link', '?m=link&c=link&a=add_type', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:10:36'),
(691, '', 0, 'link', '', 'link', '?m=link&c=link&a=add_type', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:10:54'),
(692, '', 0, 'link', '', 'link', '?m=link&c=link&a=add_type', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:10:56'),
(693, '', 0, 'link', '', 'link', '?m=link&c=link&a=add_type', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:11:23'),
(694, '', 0, 'link', '', 'link', '?m=link&c=link&a=add_type', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:11:25'),
(695, '', 0, 'pay', '', 'payment', '?m=pay&c=payment&a=pay_list', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:11:26'),
(696, '', 0, 'link', '', 'link', '?m=link&c=link&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:11:31'),
(697, '', 0, 'link', '', 'link', '?m=link&c=link&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:12:36'),
(698, '', 0, 'link', '', 'link', '?m=link&c=link&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:12:49'),
(699, '', 0, 'link', '', 'link', '?m=link&c=link&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:12:55'),
(700, '', 0, 'link', '', 'link', '?m=link&c=link&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:12:59'),
(701, '', 0, 'link', '', 'link', '?m=link&c=link&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:13:04'),
(702, '', 0, 'link', '', 'link', '?m=link&c=link&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:13:06'),
(703, '', 0, 'link', '', 'link', '?m=link&c=link&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:13:57'),
(704, '', 0, 'link', '', 'link', '?m=link&c=link&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:14:00'),
(705, '', 0, 'link', '', 'link', '?m=link&c=link&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:15:38'),
(706, '', 0, 'link', '', 'link', '?m=link&c=link&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:15:47'),
(707, '', 0, 'link', '', 'link', '?m=link&c=link&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:18:14'),
(708, '', 0, 'link', '', 'link', '?m=link&c=link&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:18:17'),
(709, '', 0, 'link', '', 'link', '?m=link&c=link&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:18:21'),
(710, '', 0, 'link', '', 'link', '?m=link&c=link&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:18:23'),
(711, '', 0, 'link', '', 'link', '?m=link&c=link&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:18:29'),
(712, '', 0, 'link', '', 'link', '?m=link&c=link&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:18:33'),
(713, '', 0, 'link', '', 'link', '?m=link&c=link&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:19:16'),
(714, '', 0, 'link', '', 'link', '?m=link&c=link&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:21:22'),
(715, '', 0, 'link', '', 'link', '?m=link&c=link&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:21:59'),
(716, '', 0, 'link', '', 'link', '?m=link&c=link&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:22:40'),
(717, '', 0, 'link', '', 'link', '?m=link&c=link&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:23:05'),
(718, '', 0, 'link', '', 'link', '?m=link&c=link&a=list_type', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:26:27'),
(719, '', 0, 'link', '', 'link', '?m=link&c=link&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:36:08'),
(720, '', 0, 'link', '', 'link', '?m=link&c=link&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:40:48'),
(721, '', 0, 'link', '', 'link', '?m=link&c=link&a=list_type', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:40:49'),
(722, '', 0, 'link', '', 'link', '?m=link&c=link&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:40:58'),
(723, '', 0, 'link', '', 'link', '?m=link&c=link&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:41:04'),
(724, '', 0, 'link', '', 'link', '?m=link&c=link&a=add_type', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:41:10'),
(725, '', 0, 'link', '', 'link', '?m=link&c=link&a=setting', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:41:11'),
(726, '', 0, 'link', '', 'link', '?m=link&c=link&a=list_type', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:41:12'),
(727, '', 0, 'link', '', 'link', '?m=link&c=link&a=add_type', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:41:15'),
(728, '', 0, 'link', '', 'link', '?m=link&c=link&a=setting', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:41:17'),
(729, '', 0, 'link', '', 'link', '?m=link&c=link&a=setting', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:41:20'),
(730, '', 0, 'link', '', 'link', '?m=link&c=link&a=list_type', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 14:41:23'),
(731, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-25 16:44:47'),
(732, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-25 16:44:56'),
(733, '', 0, 'link', '', 'link', '?m=link&c=link&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 16:54:15'),
(734, '', 0, 'link', '', 'link', '?m=link&c=link&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 16:54:37'),
(735, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 17:31:29'),
(736, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 17:35:38'),
(737, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-25 17:35:40'),
(738, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-26 11:49:40'),
(739, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-26 11:49:49'),
(740, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-26 22:20:18'),
(741, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, '', '127.0.0.1', '2017-02-26 22:54:36'),
(742, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, '', '127.0.0.1', '2017-02-26 22:54:37'),
(743, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, '', '127.0.0.1', '2017-02-26 22:54:38'),
(744, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, '', '127.0.0.1', '2017-02-26 22:54:42'),
(745, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-26 23:19:41'),
(746, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-26 23:19:43'),
(747, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-26 23:19:52'),
(748, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-26 23:19:54'),
(749, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-26 23:20:01'),
(750, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-02-26 23:22:14'),
(751, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-26 23:22:22'),
(752, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-26 23:22:22'),
(753, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-26 23:22:42'),
(754, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-26 23:22:43'),
(755, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-28 20:05:03'),
(756, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-02-28 20:05:09'),
(757, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:13:05'),
(758, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:14:03'),
(759, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:15:49'),
(760, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:16:09'),
(761, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:17:08'),
(762, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:17:52'),
(763, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:17:58'),
(764, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:18:49'),
(765, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:18:55'),
(766, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:20:12'),
(767, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:20:14'),
(768, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:22:40'),
(769, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:22:46'),
(770, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:22:48'),
(771, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:22:56'),
(772, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:23:05'),
(773, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:23:14'),
(774, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:23:16'),
(775, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:23:30'),
(776, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:23:52'),
(777, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:25:26'),
(778, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:25:38'),
(779, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:26:06'),
(780, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:26:14'),
(781, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:27:12'),
(782, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:29:46'),
(783, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:30:15'),
(784, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=listorder', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:30:42'),
(785, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:31:37'),
(786, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:32:11'),
(787, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:32:44'),
(788, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:33:11'),
(789, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:33:35'),
(790, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:40:45'),
(791, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:50:03'),
(792, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:50:30'),
(793, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:50:41'),
(794, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:50:47'),
(795, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:50:56'),
(796, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:51:02'),
(797, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:52:18'),
(798, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:54:01'),
(799, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:54:36'),
(800, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 20:55:06'),
(801, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:13:39'),
(802, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:14:03'),
(803, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:14:56'),
(804, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:15:22'),
(805, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=listorder', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:16:47'),
(806, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:18:38'),
(807, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:19:15'),
(808, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:44:19'),
(809, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:44:24'),
(810, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:44:34'),
(811, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:44:41'),
(812, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:44:48'),
(813, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:44:53'),
(814, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:45:02'),
(815, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:45:06'),
(816, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:45:15'),
(817, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:45:21'),
(818, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:48:08'),
(819, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:48:11'),
(820, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:48:18'),
(821, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:48:22'),
(822, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:48:29'),
(823, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:48:32'),
(824, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:48:40'),
(825, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:48:43'),
(826, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:48:52');
INSERT INTO `v9_log` (`logid`, `field`, `value`, `module`, `file`, `action`, `querystring`, `data`, `userid`, `username`, `ip`, `time`) VALUES
(827, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:48:54'),
(828, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:51:31'),
(829, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:51:35'),
(830, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:52:39'),
(831, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:53:01'),
(832, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=remove', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:53:49'),
(833, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:54:22'),
(834, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:54:42'),
(835, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:54:50'),
(836, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:54:58'),
(837, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=listorder', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:56:44'),
(838, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=remove', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:57:18'),
(839, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=remove', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:57:41'),
(840, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=remove', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:57:43'),
(841, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=remove', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:57:43'),
(842, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=remove', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:58:45'),
(843, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=remove', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:58:59'),
(844, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=remove', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:59:02'),
(845, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=remove', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:59:10'),
(846, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=remove', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 22:59:12'),
(847, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=batch_edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 23:01:05'),
(848, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=batch_edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 23:01:59'),
(849, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=batch_edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 23:02:07'),
(850, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=batch_edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 23:02:29'),
(851, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 23:03:17'),
(852, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 23:03:26'),
(853, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 23:03:34'),
(854, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 23:03:43'),
(855, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 23:03:53'),
(856, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 23:04:13'),
(857, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 23:05:17'),
(858, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 23:05:30'),
(859, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-02-28 23:05:34');

-- --------------------------------------------------------

--
-- 表的结构 `v9_member`
--

CREATE TABLE `v9_member` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `phpssouid` mediumint(8) UNSIGNED NOT NULL,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `encrypt` char(6) NOT NULL,
  `nickname` char(20) NOT NULL,
  `regdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `regip` char(15) NOT NULL DEFAULT '',
  `lastip` char(15) NOT NULL DEFAULT '',
  `loginnum` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `email` char(32) NOT NULL DEFAULT '',
  `groupid` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `areaid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `amount` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `point` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `modelid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `message` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `islock` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `vip` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `overduedate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `connectid` char(40) NOT NULL DEFAULT '',
  `from` char(10) NOT NULL DEFAULT '',
  `mobile` char(11) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_member_detail`
--

CREATE TABLE `v9_member_detail` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `birthday` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_member_group`
--

CREATE TABLE `v9_member_group` (
  `groupid` tinyint(3) UNSIGNED NOT NULL,
  `name` char(15) NOT NULL,
  `issystem` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `starnum` tinyint(2) UNSIGNED NOT NULL,
  `point` smallint(6) UNSIGNED NOT NULL,
  `allowmessage` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `allowvisit` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowpost` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowpostverify` tinyint(1) UNSIGNED NOT NULL,
  `allowsearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowupgrade` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `allowsendmessage` tinyint(1) UNSIGNED NOT NULL,
  `allowpostnum` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `allowattachment` tinyint(1) NOT NULL,
  `price_y` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `price_m` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `price_d` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `icon` char(30) NOT NULL,
  `usernamecolor` char(7) NOT NULL,
  `description` char(100) NOT NULL,
  `sort` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_member_group`
--

INSERT INTO `v9_member_group` (`groupid`, `name`, `issystem`, `starnum`, `point`, `allowmessage`, `allowvisit`, `allowpost`, `allowpostverify`, `allowsearch`, `allowupgrade`, `allowsendmessage`, `allowpostnum`, `allowattachment`, `price_y`, `price_m`, `price_d`, `icon`, `usernamecolor`, `description`, `sort`, `disabled`) VALUES
(8, '游客', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, '0.00', '0.00', '0.00', '', '', '', 0, 0),
(2, '新手上路', 1, 1, 50, 100, 1, 1, 0, 0, 0, 1, 0, 0, '50.00', '10.00', '1.00', '', '', '', 2, 0),
(6, '注册会员', 1, 2, 100, 150, 0, 1, 0, 0, 1, 1, 0, 0, '300.00', '30.00', '1.00', '', '', '', 6, 0),
(4, '中级会员', 1, 3, 150, 500, 1, 1, 0, 1, 1, 1, 0, 0, '500.00', '60.00', '1.00', '', '', '', 4, 0),
(5, '高级会员', 1, 5, 300, 999, 1, 1, 0, 1, 1, 1, 0, 0, '360.00', '90.00', '5.00', '', '', '', 5, 0),
(1, '禁止访问', 1, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, '0.00', '0.00', '0.00', '', '', '0', 0, 0),
(7, '邮件认证', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', '0.00', 'images/group/vip.jpg', '#000000', '', 7, 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_member_menu`
--

CREATE TABLE `v9_member_menu` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `name` char(40) NOT NULL DEFAULT '',
  `parentid` smallint(6) NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL DEFAULT '',
  `c` char(20) NOT NULL DEFAULT '',
  `a` char(20) NOT NULL DEFAULT '',
  `data` char(100) NOT NULL DEFAULT '',
  `listorder` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `display` enum('1','0') NOT NULL DEFAULT '1',
  `isurl` enum('1','0') NOT NULL DEFAULT '0',
  `url` char(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_member_menu`
--

INSERT INTO `v9_member_menu` (`id`, `name`, `parentid`, `m`, `c`, `a`, `data`, `listorder`, `display`, `isurl`, `url`) VALUES
(1, 'member_init', 0, 'member', 'index', 'init', 't=0', 0, '1', '', ''),
(2, 'account_manage', 0, 'member', 'index', 'account_manage', 't=1', 0, '1', '', ''),
(3, 'favorite', 0, 'member', 'index', 'favorite', 't=2', 0, '1', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `v9_member_verify`
--

CREATE TABLE `v9_member_verify` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `username` char(20) NOT NULL,
  `password` char(32) NOT NULL,
  `encrypt` char(6) NOT NULL,
  `nickname` char(20) NOT NULL,
  `regdate` int(10) UNSIGNED NOT NULL,
  `regip` char(15) NOT NULL,
  `email` char(32) NOT NULL,
  `modelid` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `point` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `amount` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `modelinfo` char(255) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `siteid` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `message` char(100) DEFAULT NULL,
  `mobile` char(11) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_member_vip`
--

CREATE TABLE `v9_member_vip` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_menu`
--

CREATE TABLE `v9_menu` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `name` char(40) NOT NULL DEFAULT '',
  `parentid` smallint(6) NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL DEFAULT '',
  `c` char(20) NOT NULL DEFAULT '',
  `a` char(20) NOT NULL DEFAULT '',
  `data` char(100) NOT NULL DEFAULT '',
  `listorder` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `display` enum('1','0') NOT NULL DEFAULT '1',
  `project1` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `project2` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `project3` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `project4` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `project5` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_menu`
--

INSERT INTO `v9_menu` (`id`, `name`, `parentid`, `m`, `c`, `a`, `data`, `listorder`, `display`, `project1`, `project2`, `project3`, `project4`, `project5`) VALUES
(1, 'sys_setting', 0, 'admin', 'setting', 'init', '', 1, '1', 0, 1, 1, 1, 1),
(2, 'module', 0, 'admin', 'module', 'init', '', 2, '1', 1, 1, 1, 1, 1),
(872, 'sync_release_point', 873, 'release', 'index', 'init', '', 3, '1', 1, 1, 1, 1, 1),
(4, 'content', 0, 'content', 'content', 'init', '', 4, '1', 1, 1, 1, 1, 1),
(5, 'members', 0, 'member', 'member', 'init', '', 5, '1', 1, 1, 1, 1, 1),
(6, 'userinterface', 0, 'template', 'style', 'init', '', 6, '1', 0, 1, 1, 1, 1),
(30, 'correlative_setting', 1, 'admin', 'admin', 'admin', '', 0, '1', 1, 1, 1, 1, 1),
(31, 'menu_manage', 977, 'admin', 'menu', 'init', '', 8, '1', 1, 1, 1, 1, 1),
(32, 'posid_manage', 975, 'admin', 'position', 'init', '', 7, '1', 1, 1, 1, 1, 1),
(29, 'module_list', 2, 'admin', 'module', '', '', 0, '1', 1, 1, 1, 1, 1),
(82, 'module_manage', 2, 'admin', 'module', '', '', 0, '1', 1, 1, 1, 1, 1),
(10, 'panel', 0, 'admin', 'index', 'public_main', '', 0, '1', 0, 1, 1, 1, 1),
(35, 'menu_add', 31, 'admin', 'menu', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(826, 'template_manager', 6, '', '', '', '', 0, '1', 1, 1, 1, 1, 1),
(54, 'admin_manage', 49, 'admin', 'admin_manage', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(43, 'category_manage', 975, 'admin', 'category', 'init', 'module=admin', 4, '1', 1, 1, 1, 1, 1),
(42, 'add_category', 43, 'admin', 'category', 'add', 's=0', 1, '1', 1, 1, 1, 1, 1),
(44, 'edit_category', 43, 'admin', 'category', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(45, 'badword_manage', 977, 'admin', 'badword', 'init', '', 10, '1', 1, 1, 1, 1, 1),
(46, 'posid_add', 32, 'admin', 'position', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(49, 'admin_setting', 1, 'admin', '', '', '', 0, '1', 1, 1, 1, 1, 1),
(50, 'role_manage', 49, 'admin', 'role', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(51, 'role_add', 50, 'admin', 'role', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(52, 'category_cache', 43, 'admin', 'category', 'public_cache', 'module=admin', 4, '1', 1, 1, 1, 1, 1),
(55, 'manage_member', 5, 'member', 'member', 'manage', '', 0, '1', 1, 1, 1, 1, 1),
(58, 'admin_add', 54, 'admin', 'admin_manage', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(59, 'model_manage', 975, 'content', 'sitemodel', 'init', '', 5, '1', 1, 1, 1, 1, 1),
(64, 'site_management', 30, 'admin', 'site', 'init', '', 2, '1', 1, 1, 1, 1, 1),
(81, 'member_add', 72, 'member', 'member', 'add', '', 2, '0', 1, 1, 1, 1, 1),
(62, 'add_model', 59, 'content', 'sitemodel', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(65, 'release_point_management', 30, 'admin', 'release_point', 'init', '', 3, '1', 1, 1, 1, 1, 1),
(66, 'badword_export', 45, 'admin', 'badword', 'export', '', 0, '1', 1, 1, 1, 1, 1),
(67, 'add_site', 64, 'admin', 'site', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(68, 'badword_import', 45, 'admin', 'badword', 'import', '', 0, '1', 1, 1, 1, 1, 1),
(812, 'member_group_manage', 76, 'member', 'member_group', 'manage', '', 0, '1', 1, 1, 1, 1, 1),
(74, 'member_verify', 55, 'member', 'member_verify', 'manage', 's=0', 3, '1', 1, 1, 1, 1, 1),
(76, 'manage_member_group', 5, 'member', 'member_group', 'manage', '', 0, '1', 1, 1, 1, 1, 1),
(77, 'manage_member_model', 5, 'member', 'member_model', 'manage', '', 0, '1', 1, 1, 1, 1, 1),
(78, 'member_group_add', 812, 'member', 'member_group', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(79, 'member_model_add', 813, 'member', 'member_model', 'add', '', 1, '0', 1, 1, 1, 1, 1),
(80, 'member_model_import', 77, 'member', 'member_model', 'import', '', 2, '0', 1, 1, 1, 1, 1),
(72, 'member_manage', 55, 'member', 'member', 'manage', '', 1, '1', 1, 1, 1, 1, 1),
(813, 'member_model_manage', 77, 'member', 'member_model', 'manage', '', 0, '1', 1, 1, 1, 1, 1),
(814, 'site_edit', 64, 'admin', 'site', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(815, 'site_del', 64, 'admin', 'site', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(816, 'release_point_add', 65, 'admin', 'release_point', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(817, 'release_point_del', 65, 'admin', 'release_point', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(818, 'release_point_edit', 65, 'admin', 'release_point', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(821, 'content_publish', 4, 'content', 'content', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(822, 'content_manage', 821, 'content', 'content', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(867, 'linkage', 977, 'admin', 'linkage', 'init', '', 13, '1', 1, 1, 1, 1, 1),
(827, 'template_style', 826, 'template', 'style', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(828, 'import_style', 827, 'template', 'style', 'import', '', 0, '0', 1, 1, 1, 1, 1),
(831, 'template_export', 827, 'template', 'style', 'export', '', 0, '0', 1, 1, 1, 1, 1),
(830, 'template_file', 827, 'template', 'file', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(832, 'template_onoff', 827, 'template', 'style', 'disable', '', 0, '0', 1, 1, 1, 1, 1),
(833, 'template_updatename', 827, 'template', 'style', 'updatename', '', 0, '0', 1, 1, 1, 1, 1),
(834, 'member_lock', 72, 'member', 'member', 'lock', '', 0, '0', 1, 1, 1, 1, 1),
(835, 'member_unlock', 72, 'member', 'member', 'unlock', '', 0, '0', 1, 1, 1, 1, 1),
(836, 'member_move', 72, 'member', 'member', 'move', '', 0, '0', 1, 1, 1, 1, 1),
(837, 'member_delete', 72, 'member', 'member', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(842, 'verify_ignore', 74, 'member', 'member_verify', 'manage', 's=2', 0, '1', 1, 1, 1, 1, 1),
(839, 'member_setting', 55, 'member', 'member_setting', 'manage', '', 4, '1', 1, 1, 1, 1, 1),
(841, 'verify_pass', 74, 'member', 'member_verify', 'manage', 's=1', 0, '1', 1, 1, 1, 1, 1),
(843, 'verify_delete', 74, 'member', 'member_verify', 'manage', 's=3', 0, '0', 1, 1, 1, 1, 1),
(844, 'verify_deny', 74, 'member', 'member_verify', 'manage', 's=4', 0, '1', 1, 1, 1, 1, 1),
(845, 'never_pass', 74, 'member', 'member_verify', 'manage', 's=5', 0, '1', 1, 1, 1, 1, 1),
(846, 'template_file_list', 827, 'template', 'file', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(847, 'template_file_edit', 827, 'template', 'file', 'edit_file', '', 0, '0', 1, 1, 1, 1, 1),
(848, 'file_add_file', 827, 'template', 'file', 'add_file', '', 0, '0', 1, 1, 1, 1, 1),
(850, 'listorder', 76, 'member', 'member_group', 'sort', '', 0, '0', 1, 1, 1, 1, 1),
(852, 'priv_setting', 50, 'admin', 'role', 'priv_setting', '', 0, '0', 1, 1, 1, 1, 1),
(853, 'role_priv', 50, 'admin', 'role', 'role_priv', '', 0, '0', 1, 1, 1, 1, 1),
(857, 'attachment_manage', 821, 'attachment', 'manage', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(868, 'special', 821, 'special', 'special', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(869, 'template_editor', 827, 'template', 'file', 'edit_file', '', 0, '0', 1, 1, 1, 1, 1),
(870, 'template_visualization', 827, 'template', 'file', 'visualization', '', 0, '0', 1, 1, 1, 1, 1),
(871, 'pc_tag_edit', 827, 'template', 'file', 'edit_pc_tag', '', 0, '0', 1, 1, 1, 1, 1),
(873, 'release_manage', 4, 'release', 'html', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(874, 'type_manage', 975, 'content', 'type_manage', 'init', '', 6, '1', 1, 1, 1, 1, 1),
(875, 'add_type', 874, 'content', 'type_manage', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(876, 'linkageadd', 867, 'admin', 'linkage', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(877, 'failure_list', 872, 'release', 'index', 'failed', '', 0, '1', 1, 1, 1, 1, 1),
(879, 'member_search', 72, 'member', 'member', 'search', '', 0, '0', 1, 1, 1, 1, 1),
(880, 'queue_del', 872, 'release', 'index', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(881, 'member_model_delete', 813, 'member', 'member_model', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(882, 'member_model_edit', 813, 'member', 'member_model', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(885, 'workflow', 977, 'content', 'workflow', 'init', '', 15, '1', 1, 1, 1, 1, 1),
(888, 'add_workflow', 885, 'content', 'workflow', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(889, 'member_modelfield_add', 813, 'member', 'member_modelfield', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(890, 'member_modelfield_edit', 813, 'member', 'member_modelfield', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(891, 'member_modelfield_delete', 813, 'member', 'member_modelfield', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(892, 'member_modelfield_manage', 813, 'member', 'member_modelfield', 'manage', '', 0, '0', 1, 1, 1, 1, 1),
(895, 'sitemodel_import', 59, 'content', 'sitemodel', 'import', '', 0, '1', 1, 1, 1, 1, 1),
(896, 'pay', 29, 'pay', 'payment', 'pay_list', 's=3', 0, '1', 1, 1, 1, 1, 1),
(897, 'payments', 896, 'pay', 'payment', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(898, 'paylist', 896, 'pay', 'payment', 'pay_list', '', 0, '1', 1, 1, 1, 1, 1),
(899, 'add_content', 822, 'content', 'content', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(900, 'modify_deposit', 896, 'pay', 'payment', 'modify_deposit', 's=1', 0, '1', 1, 1, 1, 1, 1),
(901, 'check_content', 822, 'content', 'content', 'pass', '', 0, '0', 1, 1, 1, 1, 1),
(902, 'dbsource', 29, 'dbsource', 'data', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(905, 'create_content_html', 873, 'content', 'create_html', 'show', '', 2, '1', 1, 1, 1, 1, 1),
(904, 'external_data_sources', 902, 'dbsource', 'dbsource_admin', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(906, 'update_urls', 873, 'content', 'create_html', 'update_urls', '', 1, '1', 1, 1, 1, 1, 1),
(960, 'node_add', 957, 'collection', 'node', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(909, 'fulltext_search', 29, 'search', 'search_type', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(910, 'manage_type', 909, 'search', 'search_type', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(911, 'search_setting', 909, 'search', 'search_admin', 'setting', '', 0, '1', 1, 1, 1, 1, 1),
(912, 'createindex', 909, 'search', 'search_admin', 'createindex', '', 0, '1', 1, 1, 1, 1, 1),
(913, 'add_search_type', 909, 'search', 'search_type', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(914, 'database_toos', 977, 'admin', 'database', 'export', '', 6, '1', 1, 1, 1, 1, 1),
(915, 'database_export', 914, 'admin', 'database', 'export', '', 0, '1', 1, 1, 1, 1, 1),
(916, 'database_import', 914, 'admin', 'database', 'import', '', 0, '1', 1, 1, 1, 1, 1),
(917, 'dbsource_add', 902, 'dbsource', 'dbsource_admin', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(918, 'dbsource_edit', 902, 'dbsource', 'dbsource_admin', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(919, 'dbsource_del', 902, 'dbsource', 'dbsource_admin', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(920, 'dbsource_data_add', 902, 'dbsource', 'data', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(921, 'dbsource_data_edit', 902, 'dbsource', 'data', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(922, 'dbsource_data_del', 902, 'dbsource', 'data', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(926, 'add_special', 868, 'special', 'special', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(927, 'edit_special', 868, 'special', 'special', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(928, 'special_list', 868, 'special', 'special', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(929, 'special_elite', 868, 'special', 'special', 'elite', '', 0, '0', 1, 1, 1, 1, 1),
(930, 'delete_special', 868, 'special', 'special', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(931, 'badword_add', 45, 'admin', 'badword', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(932, 'badword_edit', 45, 'admin', 'badword', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(933, 'badword_delete', 45, 'admin', 'badword', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(934, 'special_listorder', 868, 'special', 'special', 'listorder', '', 0, '0', 1, 1, 1, 1, 1),
(935, 'special_content_list', 868, 'special', 'content', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(936, 'special_content_add', 935, 'special', 'content', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(937, 'special_content_list', 935, 'special', 'content', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(938, 'special_content_edit', 935, 'special', 'content', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(939, 'special_content_delete', 935, 'special', 'content', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(940, 'special_content_listorder', 935, 'special', 'content', 'listorder', '', 0, '0', 1, 1, 1, 1, 1),
(941, 'special_content_import', 935, 'special', 'special', 'import', '', 0, '0', 1, 1, 1, 1, 1),
(942, 'history_version', 827, 'template', 'template_bak', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(943, 'restore_version', 827, 'template', 'template_bak', 'restore', '', 0, '0', 1, 1, 1, 1, 1),
(944, 'del_history_version', 827, 'template', 'template_bak', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(945, 'block', 821, 'block', 'block_admin', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(946, 'block_add', 945, 'block', 'block_admin', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(950, 'block_edit', 945, 'block', 'block_admin', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(951, 'block_del', 945, 'block', 'block_admin', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(952, 'block_update', 945, 'block', 'block_admin', 'block_update', '', 0, '0', 1, 1, 1, 1, 1),
(953, 'block_restore', 945, 'block', 'block_admin', 'history_restore', '', 0, '0', 1, 1, 1, 1, 1),
(954, 'history_del', 945, 'block', 'block_admin', 'history_del', '', 0, '0', 1, 1, 1, 1, 1),
(978, 'urlrule_manage', 977, 'admin', 'urlrule', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(957, 'collection_node', 821, 'collection', 'node', 'manage', '', 0, '1', 1, 1, 1, 1, 1),
(979, 'safe_config', 30, 'admin', 'setting', 'init', '&tab=2', 11, '1', 1, 1, 1, 1, 1),
(959, 'basic_config', 30, 'admin', 'setting', 'init', '', 10, '1', 1, 1, 1, 1, 1),
(961, 'position_edit', 32, 'admin', 'position', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(962, 'collection_node_edit', 957, 'collection', 'node', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(963, 'collection_node_delete', 957, 'collection', 'node', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(990, 'col_url_list', 957, 'collection', 'node', 'col_url_list', '', 0, '0', 1, 1, 1, 1, 1),
(965, 'collection_node_publish', 957, 'collection', 'node', 'publist', '', 0, '0', 1, 1, 1, 1, 1),
(966, 'collection_node_import', 957, 'collection', 'node', 'node_import', '', 0, '0', 1, 1, 1, 1, 1),
(967, 'collection_node_export', 957, 'collection', 'node', 'export', '', 0, '0', 1, 1, 1, 1, 1),
(968, 'collection_node_collection_content', 957, 'collection', 'node', 'col_content', '', 0, '0', 1, 1, 1, 1, 1),
(969, 'googlesitemap', 977, 'admin', 'googlesitemap', 'set', '', 11, '1', 1, 1, 1, 1, 1),
(970, 'admininfo', 10, 'admin', 'admin_manage', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(971, 'editpwd', 970, 'admin', 'admin_manage', 'public_edit_pwd', '', 1, '1', 1, 1, 1, 1, 1),
(972, 'editinfo', 970, 'admin', 'admin_manage', 'public_edit_info', '', 0, '1', 1, 1, 1, 1, 1),
(973, 'keylink', 977, 'admin', 'keylink', 'init', '', 12, '1', 1, 1, 1, 1, 1),
(974, 'add_keylink', 973, 'admin', 'keylink', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(975, 'content_settings', 4, 'content', 'content_settings', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(7, 'extend', 0, 'admin', 'extend', 'init_extend', '', 7, '1', 0, 1, 1, 1, 1),
(977, 'extend_all', 7, 'admin', 'extend_all', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(980, 'sso_config', 30, 'admin', 'setting', 'init', '&tab=3', 12, '1', 1, 1, 1, 1, 1),
(981, 'email_config', 30, 'admin', 'setting', 'init', '&tab=4', 13, '1', 1, 1, 1, 1, 1),
(982, 'module_manage', 82, 'admin', 'module', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(983, 'ipbanned', 977, 'admin', 'ipbanned', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(984, 'add_ipbanned', 983, 'admin', 'ipbanned', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(993, 'collection_content_import', 957, 'collection', 'node', 'import', '', 0, '0', 1, 1, 1, 1, 1),
(991, 'copy_node', 957, 'collection', 'node', 'copy', '', 0, '0', 1, 1, 1, 1, 1),
(992, 'content_del', 957, 'collection', 'node', 'content_del', '', 0, '0', 1, 1, 1, 1, 1),
(989, 'downsites', 977, 'admin', 'downservers', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(994, 'import_program_add', 957, 'collection', 'node', 'import_program_add', '', 0, '0', 1, 1, 1, 1, 1),
(995, 'import_program_del', 957, 'collection', 'node', 'import_program_del', '', 0, '0', 1, 1, 1, 1, 1),
(996, 'import_content', 957, 'collection', 'node', 'import_content', '', 0, '0', 1, 1, 1, 1, 1),
(997, 'log', 977, 'admin', 'log', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(998, 'add_page', 43, 'admin', 'category', 'add', 's=1', 2, '1', 1, 1, 1, 1, 1),
(999, 'add_cat_link', 43, 'admin', 'category', 'add', 's=2', 2, '1', 1, 1, 1, 1, 1),
(1000, 'count_items', 43, 'admin', 'category', 'count_items', '', 5, '1', 1, 1, 1, 1, 1),
(1001, 'cache_all', 977, 'admin', 'cache_all', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1002, 'create_list_html', 873, 'content', 'create_html', 'category', '', 0, '1', 1, 1, 1, 1, 1),
(1003, 'create_html_quick', 10, 'content', 'create_html_opt', 'index', '', 0, '1', 1, 1, 1, 1, 1),
(1004, 'create_index', 1003, 'content', 'create_html', 'public_index', '', 0, '1', 1, 1, 1, 1, 1),
(1005, 'scan', 977, 'scan', 'index', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1006, 'scan_report', 1005, 'scan', 'index', 'scan_report', '', 0, '1', 1, 1, 1, 1, 1),
(1007, 'md5_creat', 1005, 'scan', 'index', 'md5_creat', '', 0, '1', 1, 1, 1, 1, 1),
(1008, 'album_import', 868, 'special', 'album', 'import', '', 0, '1', 1, 1, 1, 1, 1),
(8, 'phpsso', 0, 'admin', 'phpsso', 'menu', '', 7, '1', 0, 1, 1, 1, 1),
(1011, 'edit_content', 822, 'content', 'content', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1012, 'push_to_special', 822, 'content', 'push', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(1023, 'delete_log', 997, 'admin', 'log', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1024, 'delete_ip', 983, 'admin', 'ipbanned', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1026, 'delete_keylink', 973, 'admin', 'keylink', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1027, 'edit_keylink', 973, 'admin', 'keylink', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1034, 'operation_pass', 74, 'member', 'member_verify', 'pass', '', 0, '0', 1, 1, 1, 1, 1),
(1035, 'operation_delete', 74, 'member', 'member_verify', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1039, 'operation_ignore', 74, 'member', 'member_verify', 'ignore', '', 0, '0', 1, 1, 1, 1, 1),
(1038, 'settingsave', 30, 'admin', 'setting', 'save', '', 0, '0', 1, 1, 1, 1, 1),
(1040, 'admin_edit', 54, 'admin', 'admin_manage', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1041, 'operation_reject', 74, 'member', 'member_verify', 'reject', '', 0, '0', 1, 1, 1, 1, 1),
(1042, 'admin_delete', 54, 'admin', 'admin_manage', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1043, 'card', 54, 'admin', 'admin_manage', 'card', '', 0, '0', 1, 1, 1, 1, 1),
(1044, 'creat_card', 54, 'admin', 'admin_manage', 'creat_card', '', 0, '0', 1, 1, 1, 1, 1),
(1045, 'remove_card', 54, 'admin', 'admin_manage', 'remove_card', '', 0, '0', 1, 1, 1, 1, 1),
(1049, 'member_group_edit', 812, 'member', 'member_group', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1048, 'member_edit', 72, 'member', 'member', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1050, 'role_edit', 50, 'admin', 'role', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1051, 'member_group_delete', 812, 'member', 'member_group', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1052, 'member_manage', 50, 'admin', 'role', 'member_manage', '', 0, '0', 1, 1, 1, 1, 1),
(1053, 'role_delete', 50, 'admin', 'role', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1054, 'member_model_export', 77, 'member', 'member_model', 'export', '', 0, '0', 1, 1, 1, 1, 1),
(1055, 'member_model_sort', 77, 'member', 'member_model', 'sort', '', 0, '0', 1, 1, 1, 1, 1),
(1056, 'member_model_move', 77, 'member', 'member_model', 'move', '', 0, '0', 1, 1, 1, 1, 1),
(1057, 'payment_add', 897, 'pay', 'payment', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(1058, 'payment_delete', 897, 'pay', 'payment', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1059, 'payment_edit', 897, 'pay', 'payment', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1060, 'spend_record', 896, 'pay', 'spend', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1061, 'pay_stat', 896, 'pay', 'payment', 'pay_stat', '', 0, '1', 1, 1, 1, 1, 1),
(1062, 'fields_manage', 59, 'content', 'sitemodel_field', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(1063, 'edit_model_content', 59, 'content', 'sitemodel', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1064, 'disabled_model', 59, 'content', 'sitemodel', 'disabled', '', 0, '0', 1, 1, 1, 1, 1),
(1065, 'delete_model', 59, 'content', 'sitemodel', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1066, 'export_model', 59, 'content', 'sitemodel', 'export', '', 0, '0', 1, 1, 1, 1, 1),
(1067, 'delete', 874, 'content', 'type_manage', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1068, 'edit', 874, 'content', 'type_manage', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1069, 'add_urlrule', 978, 'admin', 'urlrule', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(1070, 'edit_urlrule', 978, 'admin', 'urlrule', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1071, 'delete_urlrule', 978, 'admin', 'urlrule', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1072, 'edit_menu', 31, 'admin', 'menu', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1073, 'delete_menu', 31, 'admin', 'menu', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1074, 'edit_workflow', 885, 'content', 'workflow', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1075, 'delete_workflow', 885, 'content', 'workflow', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1076, 'creat_html', 868, 'special', 'special', 'html', '', 0, '1', 1, 1, 1, 1, 1),
(1093, 'connect_config', 30, 'admin', 'setting', 'init', '&tab=5', 14, '1', 1, 1, 1, 1, 1),
(1102, 'view_modelinfo', 74, 'member', 'member_verify', 'modelinfo', '', 0, '0', 1, 1, 1, 1, 1),
(1202, 'create_special_list', 868, 'special', 'special', 'create_special_list', '', 0, '1', 1, 1, 1, 1, 1),
(1240, 'view_memberlinfo', 72, 'member', 'member', 'memberinfo', '', 0, '0', 1, 1, 1, 1, 1),
(1239, 'copyfrom_manage', 977, 'admin', 'copyfrom', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1241, 'move_content', 822, 'content', 'content', 'remove', '', 0, '0', 1, 1, 1, 1, 1),
(1242, 'poster_template', 56, 'poster', 'space', 'poster_template', '', 0, '1', 1, 1, 1, 1, 1),
(1243, 'create_index', 873, 'content', 'create_html', 'public_index', '', 0, '1', 1, 1, 1, 1, 1),
(1244, 'add_othors', 822, 'content', 'content', 'add_othors', '', 0, '1', 1, 1, 1, 1, 1),
(1295, 'attachment_manager_dir', 857, 'attachment', 'manage', 'dir', '', 2, '1', 1, 1, 1, 1, 1),
(1296, 'attachment_manager_db', 857, 'attachment', 'manage', 'init', '', 1, '1', 1, 1, 1, 1, 1),
(1346, 'attachment_address_replace', 857, 'attachment', 'address', 'init', '', 3, '1', 1, 1, 1, 1, 1),
(1347, 'attachment_address_update', 857, 'attachment', 'address', 'update', '', 0, '0', 1, 1, 1, 1, 1),
(1348, 'delete_content', 822, 'content', 'content', 'delete', '', 0, '1', 1, 1, 1, 1, 1),
(1349, 'member_menu_manage', 977, 'member', 'member_menu', 'manage', '', 0, '1', 1, 1, 1, 1, 1),
(1350, 'member_menu_add', 1349, 'member', 'member_menu', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(1351, 'member_menu_edit', 1349, 'member', 'member_menu', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1352, 'member_menu_delete', 1349, 'member', 'member_menu', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1353, 'batch_show', 822, 'content', 'create_html', 'batch_show', '', 0, '1', 1, 1, 1, 1, 1),
(1354, 'pay_delete', 898, 'pay', 'payment', 'pay_del', '', 0, '0', 1, 1, 1, 1, 1),
(1355, 'pay_cancel', 898, 'pay', 'payment', 'pay_cancel', '', 0, '0', 1, 1, 1, 1, 1),
(1356, 'discount', 898, 'pay', 'payment', 'discount', '', 0, '0', 1, 1, 1, 1, 1),
(1360, 'category_batch_edit', 43, 'admin', 'category', 'batch_edit', '', 6, '1', 1, 1, 1, 1, 1),
(1500, 'listorder', 822, 'content', 'content', 'listorder', '', 0, '0', 1, 1, 1, 1, 1),
(1501, 'a_clean_data', 873, 'content', 'content', 'clear_data', '', 0, '1', 0, 0, 0, 0, 0),
(9, 'video', 0, 'video', 'video', 'init', '', 11, '1', 1, 1, 1, 1, 1),
(1589, 'video', 9, 'video', 'video', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1583, 'sub_delete', 1589, 'video', 'video', 'sub_del', '', 0, '0', 1, 1, 1, 1, 1),
(1582, 'subscribe_manage', 1589, 'video', 'video', 'subscribe_list', '', 0, '1', 1, 1, 1, 1, 1),
(1581, 'video_open', 1589, 'video', 'video', 'open', '', 0, '1', 1, 1, 1, 1, 1),
(1592, 'complete_info', 1581, 'video', 'video', 'complete_info', '', 0, '1', 1, 1, 1, 1, 1),
(1591, 'video_inputinfo', 1581, 'video', 'video', 'open', '', 0, '1', 1, 1, 1, 1, 1),
(1577, 'video_manage', 1589, 'video', 'video', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1590, 'player_manage', 1589, 'video', 'player', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1585, 'import_ku6_video', 1589, 'video', 'video', 'import_ku6video', '', 0, '1', 1, 1, 1, 1, 1),
(1579, 'video_edit', 1589, 'video', 'video', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1580, 'video_delete', 1589, 'video', 'video', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1578, 'video_upload', 1589, 'video', 'video', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(1593, 'video_stat', 1589, 'video', 'stat', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1586, 'video_store', 1589, 'video', 'video', 'video2content', '', 0, '0', 1, 1, 1, 1, 1),
(1594, 'comment', 29, 'comment', 'comment_admin', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1595, 'comment_manage', 821, 'comment', 'comment_admin', 'listinfo', '', 0, '1', 1, 1, 1, 1, 1),
(1596, 'comment_check', 1595, 'comment', 'check', 'checks', '', 0, '1', 1, 1, 1, 1, 1),
(1597, 'comment_list', 1594, 'comment', 'comment_admin', 'lists', '', 0, '0', 1, 1, 1, 1, 1),
(1598, 'link', 29, 'link', 'link', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1599, 'add_link', 1598, 'link', 'link', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(1600, 'edit_link', 1598, 'link', 'link', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1601, 'delete_link', 1598, 'link', 'link', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1602, 'link_setting', 1598, 'link', 'link', 'setting', '', 0, '1', 1, 1, 1, 1, 1),
(1603, 'add_type', 1598, 'link', 'link', 'add_type', '', 0, '1', 1, 1, 1, 1, 1),
(1604, 'list_type', 1598, 'link', 'link', 'list_type', '', 0, '1', 1, 1, 1, 1, 1),
(1605, 'check_register', 1598, 'link', 'link', 'check_register', '', 0, '1', 1, 1, 1, 1, 1),
(1606, 'formguide', 29, 'formguide', 'formguide', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1607, 'formguide_add', 1606, 'formguide', 'formguide', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(1608, 'formguide_edit', 1606, 'formguide', 'formguide', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1609, 'form_info_list', 1606, 'formguide', 'formguide_info', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(1610, 'formguide_disabled', 1606, 'formguide', 'formguide', 'disabled', '', 0, '0', 1, 1, 1, 1, 1),
(1611, 'formguide_delete', 1606, 'formguide', 'formguide', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1612, 'formguide_stat', 1606, 'formguide', 'formguide', 'stat', '', 0, '0', 1, 1, 1, 1, 1),
(1613, 'add_public_field', 1606, 'formguide', 'formguide_field', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(1614, 'list_public_field', 1606, 'formguide', 'formguide_field', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1615, 'module_setting', 1606, 'formguide', 'formguide', 'setting', '', 0, '0', 1, 1, 1, 1, 1),
(1616, 'tag', 826, 'tag', 'tag', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1617, 'add_tag', 1616, 'tag', 'tag', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(1618, 'edit_tag', 1616, 'tag', 'tag', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1619, 'delete_tag', 1616, 'tag', 'tag', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(1620, 'tag_lists', 1616, 'tag', 'tag', 'lists', '', 0, '0', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `v9_model`
--

CREATE TABLE `v9_model` (
  `modelid` smallint(5) UNSIGNED NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `name` char(30) NOT NULL,
  `description` char(100) NOT NULL,
  `tablename` char(20) NOT NULL,
  `setting` text NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `items` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `enablesearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `default_style` char(30) NOT NULL,
  `category_template` char(30) NOT NULL,
  `list_template` char(30) NOT NULL,
  `show_template` char(30) NOT NULL,
  `js_template` varchar(30) NOT NULL,
  `admin_list_template` char(30) NOT NULL,
  `member_add_template` varchar(30) NOT NULL,
  `member_list_template` varchar(30) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `type` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_model`
--

INSERT INTO `v9_model` (`modelid`, `siteid`, `name`, `description`, `tablename`, `setting`, `addtime`, `items`, `enablesearch`, `disabled`, `default_style`, `category_template`, `list_template`, `show_template`, `js_template`, `admin_list_template`, `member_add_template`, `member_list_template`, `sort`, `type`) VALUES
(1, 1, '文章模型', '', 'news', '', 0, 0, 1, 0, 'default', 'category', 'list', 'show', '', '', '', '', 0, 0),
(2, 1, '下载模型', '', 'download', '', 0, 0, 1, 0, 'default', 'category_download', 'list_download', 'show_download', '', '', '', '', 0, 0),
(3, 1, '图片模型', '', 'picture', '', 0, 0, 1, 0, 'default', 'category_picture', 'list_picture', 'show_picture', '', '', '', '', 0, 0),
(10, 1, '普通会员', '普通会员', 'member_detail', '', 0, 0, 1, 0, '', '', '', '', '', '', '', '', 0, 2),
(11, 1, '视频模型', '', 'video', '', 0, 0, 1, 0, 'default', 'category_video', 'list_video', 'show_video', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_model_field`
--

CREATE TABLE `v9_model_field` (
  `fieldid` mediumint(8) UNSIGNED NOT NULL,
  `modelid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `field` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `tips` text NOT NULL,
  `css` varchar(30) NOT NULL,
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `maxlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pattern` varchar(255) NOT NULL,
  `errortips` varchar(255) NOT NULL,
  `formtype` varchar(20) NOT NULL,
  `setting` mediumtext NOT NULL,
  `formattribute` varchar(255) NOT NULL,
  `unsetgroupids` varchar(255) NOT NULL,
  `unsetroleids` varchar(255) NOT NULL,
  `iscore` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `issystem` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `isunique` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `isbase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `issearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `isadd` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `isfulltext` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `isposition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `listorder` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `isomnipotent` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_model_field`
--

INSERT INTO `v9_model_field` (`fieldid`, `modelid`, `siteid`, `field`, `name`, `tips`, `css`, `minlength`, `maxlength`, `pattern`, `errortips`, `formtype`, `setting`, `formattribute`, `unsetgroupids`, `unsetroleids`, `iscore`, `issystem`, `isunique`, `isbase`, `issearch`, `isadd`, `isfulltext`, `isposition`, `listorder`, `disabled`, `isomnipotent`) VALUES
(1, 1, 1, 'catid', '栏目', '', '', 1, 6, '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'array (\n  \'defaultvalue\' => \'\',\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0),
(2, 1, 1, 'typeid', '类别', '', '', 0, 0, '', '', 'typeid', 'array (\n  \'minnumber\' => \'\',\n  \'defaultvalue\' => \'\',\n)', '', '', '', 0, 1, 0, 1, 1, 1, 0, 0, 2, 0, 0),
(3, 1, 1, 'title', '标题', '', 'inputtitle', 1, 80, '', '请输入标题', 'title', '', '', '', '', 0, 1, 0, 1, 1, 1, 1, 1, 4, 0, 0),
(4, 1, 1, 'thumb', '缩略图', '', '', 0, 100, '', '', 'image', 'array (\n  \'size\' => \'50\',\n  \'defaultvalue\' => \'\',\n  \'show_type\' => \'1\',\n  \'upload_maxsize\' => \'1024\',\n  \'upload_allowext\' => \'jpg|jpeg|gif|png|bmp\',\n  \'watermark\' => \'0\',\n  \'isselectimage\' => \'1\',\n  \'images_width\' => \'\',\n  \'images_height\' => \'\',\n)', '', '', '', 0, 1, 0, 0, 0, 1, 0, 1, 14, 0, 0),
(5, 1, 1, 'keywords', '关键词', '多关键词之间用空格或者“,”隔开', '', 0, 40, '', '', 'keyword', 'array (\r\n  \'size\' => \'100\',\r\n  \'defaultvalue\' => \'\',\r\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 1, 0, 7, 0, 0),
(6, 1, 1, 'description', '摘要', '', '', 0, 255, '', '', 'textarea', 'array (\r\n  \'width\' => \'98\',\r\n  \'height\' => \'46\',\r\n  \'defaultvalue\' => \'\',\r\n  \'enablehtml\' => \'0\',\r\n)', '', '', '', 0, 1, 0, 1, 0, 1, 1, 1, 10, 0, 0),
(7, 1, 1, 'updatetime', '更新时间', '', '', 0, 0, '', '', 'datetime', 'array (\r\n  \'dateformat\' => \'int\',\r\n  \'format\' => \'Y-m-d H:i:s\',\r\n  \'defaulttype\' => \'1\',\r\n  \'defaultvalue\' => \'\',\r\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 12, 0, 0),
(8, 1, 1, 'content', '内容', '<div class="content_attr"><label><input name="add_introduce" type="checkbox"  value="1" checked>是否截取内容</label><input type="text" name="introcude_length" value="200" size="3">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value="1" checked>是否获取内容第</label><input type="text" name="auto_thumb_no" value="1" size="2" class="">张图片作为标题图片\r\n</div>', '', 1, 999999, '', '内容不能为空', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'defaultvalue\' => \'\',\n  \'enablekeylink\' => \'1\',\n  \'replacenum\' => \'2\',\n  \'link_mode\' => \'0\',\n  \'enablesaveimage\' => \'1\',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 1, 0, 13, 0, 0),
(9, 1, 1, 'voteid', '添加投票', '', '', 0, 0, '', '', 'omnipotent', 'array (\n  \'formtext\' => \'<input type=\\\'text\\\' name=\\\'info[voteid]\\\' id=\\\'voteid\\\' value=\\\'{FIELD_VALUE}\\\' size=\\\'3\\\'> \r\n<input type=\\\'button\\\' value="选择已有投票" onclick="omnipotent(\\\'selectid\\\',\\\'?m=vote&c=vote&a=public_get_votelist&from_api=1\\\',\\\'选择已有投票\\\')" class="button">\r\n<input type=\\\'button\\\' value="新增投票" onclick="omnipotent(\\\'addvote\\\',\\\'?m=vote&c=vote&a=add&from_api=1\\\',\\\'添加投票\\\',0)" class="button">\',\n  \'fieldtype\' => \'mediumint\',\n  \'minnumber\' => \'1\',\n)', '', '', '', 0, 0, 0, 1, 0, 0, 1, 0, 21, 0, 0),
(10, 1, 1, 'pages', '分页方式', '', '', 0, 0, '', '', 'pages', '', '', '-99', '-99', 0, 0, 0, 1, 0, 0, 0, 0, 16, 0, 0),
(11, 1, 1, 'inputtime', '发布时间', '', '', 0, 0, '', '', 'datetime', 'array (\n  \'fieldtype\' => \'int\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'defaulttype\' => \'0\',\n)', '', '', '', 0, 1, 0, 0, 0, 0, 0, 1, 17, 0, 0),
(12, 1, 1, 'posids', '推荐位', '', '', 0, 0, '', '', 'posid', 'array (\n  \'cols\' => \'4\',\n  \'width\' => \'125\',\n)', '', '', '', 0, 1, 0, 1, 0, 0, 0, 0, 18, 0, 0),
(13, 1, 1, 'url', 'URL', '', '', 0, 100, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 50, 0, 0),
(14, 1, 1, 'listorder', '排序', '', '', 0, 6, '', '', 'number', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 51, 0, 0),
(15, 1, 1, 'status', '状态', '', '', 0, 2, '', '', 'box', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 55, 0, 0),
(16, 1, 1, 'template', '内容页模板', '', '', 0, 30, '', '', 'template', 'array (\n  \'size\' => \'\',\n  \'defaultvalue\' => \'\',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0),
(17, 1, 1, 'groupids_view', '阅读权限', '', '', 0, 0, '', '', 'groupid', 'array (\n  \'groupids\' => \'\',\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 19, 0, 0),
(18, 1, 1, 'readpoint', '阅读收费', '', '', 0, 5, '', '', 'readpoint', 'array (\n  \'minnumber\' => \'1\',\n  \'maxnumber\' => \'99999\',\n  \'decimaldigits\' => \'0\',\n  \'defaultvalue\' => \'\',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0),
(19, 1, 1, 'relation', '相关文章', '', '', 0, 0, '', '', 'omnipotent', 'array (\n  \'formtext\' => \'<input type=\\\'hidden\\\' name=\\\'info[relation]\\\' id=\\\'relation\\\' value=\\\'{FIELD_VALUE}\\\' style=\\\'50\\\' >\r\n<ul class="list-dot" id="relation_text"></ul>\r\n<div>\r\n<input type=\\\'button\\\' value="添加相关" onclick="omnipotent(\\\'selectid\\\',\\\'?m=content&c=content&a=public_relationlist&modelid={MODELID}\\\',\\\'添加相关文章\\\',1)" class="button" style="width:66px;">\r\n<span class="edit_content">\r\n<input type=\\\'button\\\' value="显示已有" onclick="show_relation({MODELID},{ID})" class="button" style="width:66px;">\r\n</span>\r\n</div>\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n)', '', '2,6,4,5,1,17,18,7', '', 0, 0, 0, 0, 0, 0, 1, 0, 15, 0, 0),
(20, 1, 1, 'allow_comment', '允许评论', '', '', 0, 0, '', '', 'box', 'array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'boxtype\' => \'radio\',\n  \'fieldtype\' => \'tinyint\',\n  \'minnumber\' => \'1\',\n  \'width\' => \'88\',\n  \'size\' => \'1\',\n  \'defaultvalue\' => \'1\',\n  \'outputtype\' => \'1\',\n  \'filtertype\' => \'0\',\n)', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0),
(21, 1, 1, 'copyfrom', '来源', '', '', 0, 100, '', '', 'copyfrom', 'array (\n  \'defaultvalue\' => \'\',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 8, 0, 0),
(80, 1, 1, 'username', '用户名', '', '', 0, 20, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 98, 0, 0),
(22, 2, 1, 'catid', '栏目', '', '', 1, 6, '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'array (\n  \'defaultvalue\' => \'\',\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0),
(23, 2, 1, 'typeid', '类别', '', '', 0, 0, '', '', 'typeid', 'array (\n  \'minnumber\' => \'\',\n  \'defaultvalue\' => \'\',\n)', '', '', '', 0, 1, 0, 1, 1, 1, 0, 0, 2, 1, 0),
(24, 2, 1, 'title', '标题', '', 'inputtitle', 1, 80, '', '请输入标题', 'title', '', '', '', '', 0, 1, 0, 1, 1, 1, 1, 1, 4, 0, 0),
(25, 2, 1, 'keywords', '关键词', '多关键词之间用空格或者“,”隔开', '', 0, 40, '', '', 'keyword', 'array (\r\n  \'size\' => \'100\',\r\n  \'defaultvalue\' => \'\',\r\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 1, 0, 7, 0, 0),
(26, 2, 1, 'description', '摘要', '', '', 0, 255, '', '', 'textarea', 'array (\r\n  \'width\' => \'98\',\r\n  \'height\' => \'46\',\r\n  \'defaultvalue\' => \'\',\r\n  \'enablehtml\' => \'0\',\r\n)', '', '', '', 0, 1, 0, 1, 0, 1, 1, 1, 10, 0, 0),
(27, 2, 1, 'updatetime', '更新时间', '', '', 0, 0, '', '', 'datetime', 'array (\r\n  \'dateformat\' => \'int\',\r\n  \'format\' => \'Y-m-d H:i:s\',\r\n  \'defaulttype\' => \'1\',\r\n  \'defaultvalue\' => \'\',\r\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 12, 0, 0),
(28, 2, 1, 'content', '内容', '<div class="content_attr"><label><input name="add_introduce" type="checkbox"  value="1" checked>是否截取内容</label><input type="text" name="introcude_length" value="200" size="3">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value="1" checked>是否获取内容第</label><input type="text" name="auto_thumb_no" value="1" size="2" class="">张图片作为标题图片\r\n</div>', '', 1, 999999, '', '内容不能为空', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'defaultvalue\' => \'\',\n  \'enablekeylink\' => \'1\',\n  \'replacenum\' => \'2\',\n  \'link_mode\' => \'0\',\n  \'enablesaveimage\' => \'1\',\n  \'height\' => \'\',\n  \'disabled_page\' => \'1\',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 1, 0, 13, 0, 0),
(29, 2, 1, 'thumb', '缩略图', '', '', 0, 100, '', '', 'image', 'array (\n  \'size\' => \'50\',\n  \'defaultvalue\' => \'\',\n  \'show_type\' => \'1\',\n  \'upload_maxsize\' => \'1024\',\n  \'upload_allowext\' => \'jpg|jpeg|gif|png|bmp\',\n  \'watermark\' => \'0\',\n  \'isselectimage\' => \'1\',\n  \'images_width\' => \'\',\n  \'images_height\' => \'\',\n)', '', '', '', 0, 1, 0, 0, 0, 1, 0, 1, 14, 0, 0),
(30, 2, 1, 'relation', '相关文章', '', '', 0, 0, '', '', 'omnipotent', 'array (\n  \'formtext\' => \'<input type=\\\'hidden\\\' name=\\\'info[relation]\\\' id=\\\'relation\\\' value=\\\'{FIELD_VALUE}\\\' style=\\\'50\\\' >\r\n<ul class="list-dot" id="relation_text"></ul>\r\n<div>\r\n<input type=\\\'button\\\' value="添加相关" onclick="omnipotent(\\\'selectid\\\',\\\'?m=content&c=content&a=public_relationlist&modelid={MODELID}\\\',\\\'添加相关文章\\\',1)" class="button" style="width:66px;">\r\n<span class="edit_content">\r\n<input type=\\\'button\\\' value="显示已有" onclick="show_relation({MODELID},{ID})" class="button" style="width:66px;">\r\n</span>\r\n</div>\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n)', '', '2,6,4,5,1,17,18,7', '', 0, 0, 0, 0, 0, 0, 1, 0, 15, 0, 0),
(31, 2, 1, 'pages', '分页方式', '', '', 0, 0, '', '', 'pages', '', '', '-99', '-99', 0, 0, 0, 1, 0, 0, 0, 0, 16, 1, 0),
(32, 2, 1, 'inputtime', '发布时间', '', '', 0, 0, '', '', 'datetime', 'array (\n  \'fieldtype\' => \'int\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'defaulttype\' => \'0\',\n)', '', '', '', 0, 1, 0, 0, 0, 0, 0, 1, 17, 0, 0),
(33, 2, 1, 'posids', '推荐位', '', '', 0, 0, '', '', 'posid', 'array (\n  \'cols\' => \'4\',\n  \'width\' => \'125\',\n)', '', '', '', 0, 1, 0, 1, 0, 0, 0, 0, 18, 0, 0),
(34, 2, 1, 'groupids_view', '阅读权限', '', '', 0, 0, '', '', 'groupid', 'array (\n  \'groupids\' => \'\',\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 19, 0, 0),
(35, 2, 1, 'url', 'URL', '', '', 0, 100, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 50, 0, 0),
(36, 2, 1, 'listorder', '排序', '', '', 0, 6, '', '', 'number', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 51, 0, 0),
(37, 2, 1, 'template', '内容页模板', '', '', 0, 30, '', '', 'template', 'array (\n  \'size\' => \'\',\n  \'defaultvalue\' => \'\',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0),
(38, 2, 1, 'allow_comment', '允许评论', '', '', 0, 0, '', '', 'box', 'array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'boxtype\' => \'radio\',\n  \'fieldtype\' => \'tinyint\',\n  \'minnumber\' => \'1\',\n  \'width\' => \'88\',\n  \'size\' => \'1\',\n  \'defaultvalue\' => \'1\',\n  \'outputtype\' => \'1\',\n  \'filtertype\' => \'0\',\n)', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0),
(39, 2, 1, 'status', '状态', '', '', 0, 2, '', '', 'box', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 55, 0, 0),
(40, 2, 1, 'readpoint', '阅读收费', '', '', 0, 5, '', '', 'readpoint', 'array (\n  \'minnumber\' => \'1\',\n  \'maxnumber\' => \'99999\',\n  \'decimaldigits\' => \'0\',\n  \'defaultvalue\' => \'\',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0),
(41, 2, 1, 'username', '用户名', '', '', 0, 20, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 98, 0, 0),
(42, 2, 1, 'downfiles', '本地下载', '', '', 0, 0, '', '', 'downfiles', 'array (\n  \'upload_allowext\' => \'rar|zip\',\n  \'isselectimage\' => \'0\',\n  \'upload_number\' => \'10\',\n  \'downloadlink\' => \'1\',\n  \'downloadtype\' => \'1\',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 8, 0, 0),
(43, 2, 1, 'downfile', '镜像下载', '', '', 0, 0, '', '', 'downfile', 'array (\n  \'downloadlink\' => \'1\',\n  \'downloadtype\' => \'1\',\n  \'upload_allowext\' => \'rar|zip\',\n  \'isselectimage\' => \'0\',\n  \'upload_number\' => \'1\',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 9, 0, 0),
(44, 2, 1, 'systems', '软件平台', '<select name=\'selectSystem\' onchange="ChangeInput(this,document.myform.systems,\'/\')">\r\n	<option value=\'WinXP\'>WinXP</option>\r\n	<option value=\'Vista\'>Windows 7</option>\r\n	<option value=\'Win2000\'>Win2000</option>\r\n	<option value=\'Win2003\'>Win2003</option>\r\n	<option value=\'Unix\'>Unix</option>\r\n	<option value=\'Linux\'>Linux</option>\r\n	<option value=\'MacOS\'>MacOS</option>\r\n</select>', '', 0, 100, '', '', 'text', 'array (\n  \'size\' => \'50\',\n  \'defaultvalue\' => \'Win2000/WinXP/Win2003\',\n  \'ispassword\' => \'0\',\n)', '', '', '', 0, 1, 0, 1, 0, 1, 1, 0, 14, 0, 0),
(45, 2, 1, 'copytype', '软件授权形式', '', '', 0, 15, '', '', 'box', 'array (\n  \'options\' => \'免费版|免费版\r\n共享版|共享版\r\n试用版|试用版\r\n演示版|演示版\r\n注册版|注册版\r\n破解版|破解版\r\n零售版|零售版\r\nOEM版|OEM版\',\n  \'boxtype\' => \'select\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n  \'cols\' => \'5\',\n  \'width\' => \'80\',\n  \'size\' => \'1\',\n  \'default_select_value\' => \'免费版\',\n)', '', '', '', 0, 1, 0, 1, 0, 1, 0, 0, 12, 0, 0),
(46, 2, 1, 'language', '软件语言', '', '', 0, 16, '', '', 'box', 'array (\n  \'options\' => \'英文|英文\r\n简体中文|简体中文\r\n繁体中文|繁体中文\r\n简繁中文|简繁中文\r\n多国语言|多国语言\r\n其他语言|其他语言\',\n  \'boxtype\' => \'select\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n  \'cols\' => \'5\',\n  \'width\' => \'80\',\n  \'size\' => \'1\',\n  \'default_select_value\' => \'简体中文\',\n)', '', '', '', 0, 1, 0, 1, 0, 1, 0, 0, 13, 0, 0),
(47, 2, 1, 'classtype', '软件类型', '', '', 0, 20, '', '', 'box', 'array (\n  \'options\' => \'国产软件|国产软件\r\n国外软件|国外软件\r\n汉化补丁|汉化补丁\r\n程序源码|程序源码\r\n其他|其他\',\n  \'boxtype\' => \'radio\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n  \'cols\' => \'5\',\n  \'width\' => \'80\',\n  \'size\' => \'1\',\n  \'default_select_value\' => \'国产软件\',\n)', '', '', '', 0, 1, 0, 1, 0, 1, 0, 0, 17, 0, 0),
(48, 2, 1, 'version', '版本号', '', '', 0, 20, '', '', 'text', 'array (\n  \'size\' => \'10\',\n  \'defaultvalue\' => \'\',\n  \'ispassword\' => \'0\',\n)', '', '', '', 0, 1, 0, 0, 0, 1, 1, 0, 13, 0, 0),
(49, 2, 1, 'filesize', '文件大小', '', '', 0, 10, '', '', 'text', 'array (\n  \'size\' => \'10\',\n  \'defaultvalue\' => \'未知\',\n  \'ispassword\' => \'0\',\n)', '', '', '', 0, 1, 0, 0, 0, 1, 1, 0, 14, 0, 0),
(50, 2, 1, 'stars', '评分等级', '', '', 0, 20, '', '', 'box', 'array (\n  \'options\' => \'★☆☆☆☆|★☆☆☆☆\r\n★★☆☆☆|★★☆☆☆\r\n★★★☆☆|★★★☆☆\r\n★★★★☆|★★★★☆\r\n★★★★★|★★★★★\',\n  \'boxtype\' => \'radio\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n  \'cols\' => \'5\',\n  \'width\' => \'88\',\n  \'size\' => \'1\',\n  \'default_select_value\' => \'★★★☆☆\',\n)', '', '', '', 0, 1, 0, 1, 0, 1, 0, 0, 17, 0, 0),
(51, 3, 1, 'allow_comment', '允许评论', '', '', 0, 0, '', '', 'box', 'array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'boxtype\' => \'radio\',\n  \'fieldtype\' => \'tinyint\',\n  \'minnumber\' => \'1\',\n  \'width\' => \'88\',\n  \'size\' => \'1\',\n  \'defaultvalue\' => \'1\',\n  \'outputtype\' => \'1\',\n  \'filtertype\' => \'0\',\n)', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0),
(52, 3, 1, 'template', '内容页模板', '', '', 0, 30, '', '', 'template', 'array (\n  \'size\' => \'\',\n  \'defaultvalue\' => \'\',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0),
(53, 3, 1, 'url', 'URL', '', '', 0, 100, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 50, 0, 0),
(54, 3, 1, 'listorder', '排序', '', '', 0, 6, '', '', 'number', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 51, 0, 0),
(55, 3, 1, 'posids', '推荐位', '', '', 0, 0, '', '', 'posid', 'array (\n  \'cols\' => \'4\',\n  \'width\' => \'125\',\n)', '', '', '', 0, 1, 0, 1, 0, 0, 0, 0, 18, 0, 0),
(56, 3, 1, 'groupids_view', '阅读权限', '', '', 0, 0, '', '', 'groupid', 'array (\n  \'groupids\' => \'\',\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 19, 0, 0),
(57, 3, 1, 'inputtime', '发布时间', '', '', 0, 0, '', '', 'datetime', 'array (\n  \'fieldtype\' => \'int\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'defaulttype\' => \'0\',\n)', '', '', '', 0, 1, 0, 0, 0, 0, 0, 1, 17, 0, 0),
(58, 3, 1, 'pages', '分页方式', '', '', 0, 0, '', '', 'pages', '', '', '-99', '-99', 0, 0, 0, 1, 0, 0, 0, 0, 16, 0, 0),
(59, 3, 1, 'relation', '相关组图', '', '', 0, 0, '', '', 'omnipotent', 'array (\n  \'formtext\' => \'<input type=\\\'hidden\\\' name=\\\'info[relation]\\\' id=\\\'relation\\\' value=\\\'{FIELD_VALUE}\\\' style=\\\'50\\\' >\r\n<ul class="list-dot" id="relation_text"></ul>\r\n<div>\r\n<input type=\\\'button\\\' value="添加相关" onclick="omnipotent(\\\'selectid\\\',\\\'?m=content&c=content&a=public_relationlist&modelid={MODELID}\\\',\\\'添加相关文章\\\',1)" class="button" style="width:66px;">\r\n<span class="edit_content">\r\n<input type=\\\'button\\\' value="显示已有" onclick="show_relation({MODELID},{ID})" class="button" style="width:66px;">\r\n</span>\r\n</div>\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n)', '', '2,6,4,5,1,17,18,7', '', 0, 0, 0, 0, 0, 0, 1, 0, 15, 0, 0),
(60, 3, 1, 'thumb', '缩略图', '', '', 0, 100, '', '', 'image', 'array (\n  \'size\' => \'50\',\n  \'defaultvalue\' => \'\',\n  \'show_type\' => \'1\',\n  \'upload_maxsize\' => \'1024\',\n  \'upload_allowext\' => \'jpg|jpeg|gif|png|bmp\',\n  \'watermark\' => \'0\',\n  \'isselectimage\' => \'1\',\n  \'images_width\' => \'\',\n  \'images_height\' => \'\',\n)', '', '', '', 0, 1, 0, 0, 0, 1, 0, 1, 14, 0, 0),
(61, 3, 1, 'content', '内容', '<div class="content_attr"><label><input name="add_introduce" type="checkbox"  value="1" checked>是否截取内容</label><input type="text" name="introcude_length" value="200" size="3">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value="1" checked>是否获取内容第</label><input type="text" name="auto_thumb_no" value="1" size="2" class="">张图片作为标题图片\r\n</div>', '', 0, 999999, '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'defaultvalue\' => \'\',\n  \'enablekeylink\' => \'1\',\n  \'replacenum\' => \'2\',\n  \'link_mode\' => \'0\',\n  \'enablesaveimage\' => \'1\',\n  \'height\' => \'\',\n  \'disabled_page\' => \'1\',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 1, 0, 13, 0, 0),
(62, 3, 1, 'updatetime', '更新时间', '', '', 0, 0, '', '', 'datetime', 'array (\r\n  \'dateformat\' => \'int\',\r\n  \'format\' => \'Y-m-d H:i:s\',\r\n  \'defaulttype\' => \'1\',\r\n  \'defaultvalue\' => \'\',\r\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 12, 0, 0),
(63, 3, 1, 'description', '摘要', '', '', 0, 255, '', '', 'textarea', 'array (\r\n  \'width\' => \'98\',\r\n  \'height\' => \'46\',\r\n  \'defaultvalue\' => \'\',\r\n  \'enablehtml\' => \'0\',\r\n)', '', '', '', 0, 1, 0, 1, 0, 1, 1, 1, 10, 0, 0),
(64, 3, 1, 'title', '标题', '', 'inputtitle', 1, 80, '', '请输入标题', 'title', '', '', '', '', 0, 1, 0, 1, 1, 1, 1, 1, 4, 0, 0),
(65, 3, 1, 'keywords', '关键词', '多关键词之间用空格或者“,”隔开', '', 0, 40, '', '', 'keyword', 'array (\r\n  \'size\' => \'100\',\r\n  \'defaultvalue\' => \'\',\r\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 1, 0, 7, 0, 0),
(66, 3, 1, 'typeid', '类别', '', '', 0, 0, '', '', 'typeid', 'array (\n  \'minnumber\' => \'\',\n  \'defaultvalue\' => \'\',\n)', '', '', '', 0, 1, 0, 1, 1, 1, 0, 0, 2, 0, 0),
(67, 3, 1, 'catid', '栏目', '', '', 1, 6, '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'array (\n  \'defaultvalue\' => \'\',\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0),
(68, 3, 1, 'status', '状态', '', '', 0, 2, '', '', 'box', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 55, 0, 0),
(69, 3, 1, 'readpoint', '阅读收费', '', '', 0, 5, '', '', 'readpoint', 'array (\n  \'minnumber\' => \'1\',\n  \'maxnumber\' => \'99999\',\n  \'decimaldigits\' => \'0\',\n  \'defaultvalue\' => \'\',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0),
(70, 3, 1, 'username', '用户名', '', '', 0, 20, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 98, 0, 0),
(71, 3, 1, 'pictureurls', '组图', '', '', 0, 0, '', '', 'images', 'array (\n  \'upload_allowext\' => \'gif|jpg|jpeg|png|bmp\',\n  \'isselectimage\' => \'1\',\n  \'upload_number\' => \'50\',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 15, 0, 0),
(72, 3, 1, 'copyfrom', '来源', '', '', 0, 0, '', '', 'copyfrom', 'array (\n  \'defaultvalue\' => \'\',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 8, 0, 0),
(73, 1, 1, 'islink', '转向链接', '', '', 0, 0, '', '', 'islink', '', '', '', '', 0, 1, 0, 0, 0, 1, 0, 0, 30, 0, 0),
(74, 2, 1, 'islink', '转向链接', '', '', 0, 0, '', '', 'islink', '', '', '', '', 0, 1, 0, 0, 0, 1, 0, 0, 30, 0, 0),
(75, 3, 1, 'islink', '转向链接', '', '', 0, 0, '', '', 'islink', '', '', '', '', 0, 1, 0, 0, 0, 1, 0, 0, 30, 0, 0),
(83, 10, 1, 'birthday', '生日', '', '', 0, 0, '', '生日格式错误', 'datetime', 'array (\n  \'fieldtype\' => \'date\',\n  \'format\' => \'Y-m-d\',\n  \'defaulttype\' => \'0\',\n)', '', '', '', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0),
(84, 11, 1, 'catid', '栏目', '', '', 1, 6, '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'array (\n  \'defaultvalue\' => \'\',\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0),
(85, 11, 1, 'typeid', '类别', '', '', 0, 0, '', '', 'typeid', 'array (\n  \'minnumber\' => \'\',\n  \'defaultvalue\' => \'\',\n)', '', '', '', 0, 1, 0, 1, 1, 1, 0, 0, 2, 0, 0),
(86, 11, 1, 'title', '标题', '', 'inputtitle', 1, 80, '', '请输入标题', 'title', 'array (\n)', '', '', '', 0, 1, 0, 1, 1, 1, 1, 1, 4, 0, 0),
(87, 11, 1, 'keywords', '关键词', '多关键词之间用空格或者“,”隔开', '', 0, 40, '', '', 'keyword', 'array (\n  \'size\' => \'100\',\n  \'defaultvalue\' => \'\',\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 1, 0, 7, 0, 0),
(88, 11, 1, 'description', '摘要', '', '', 0, 255, '', '', 'textarea', 'array (\n  \'width\' => \'98\',\n  \'height\' => \'46\',\n  \'defaultvalue\' => \'\',\n  \'enablehtml\' => \'0\',\n)', '', '', '', 0, 1, 0, 1, 0, 1, 1, 1, 10, 0, 0),
(89, 11, 1, 'updatetime', '更新时间', '', '', 0, 0, '', '', 'datetime', 'array (\n  \'dateformat\' => \'int\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'defaulttype\' => \'1\',\n  \'defaultvalue\' => \'\',\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 12, 0, 0),
(90, 11, 1, 'content', '内容', '<div class="content_attr"><label><input name="add_introduce" type="checkbox"  value="1" checked>是否截取内容</label><input type="text" name="introcude_length" value="200" size="3">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value="1" checked>是否获取内容第</label><input type="text" name="auto_thumb_no" value="1" size="2" class="">张图片作为标题图片\r\n</div>', '', 0, 999999, '', '内容不能为空', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'defaultvalue\' => \'\',\n  \'enablekeylink\' => \'1\',\n  \'replacenum\' => \'2\',\n  \'link_mode\' => \'0\',\n  \'enablesaveimage\' => \'1\',\n  \'height\' => \'\',\n  \'disabled_page\' => \'0\',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 1, 0, 13, 0, 0),
(91, 11, 1, 'thumb', '缩略图', '', '', 0, 100, '', '', 'image', 'array (\n  \'size\' => \'50\',\n  \'defaultvalue\' => \'\',\n  \'show_type\' => \'1\',\n  \'upload_maxsize\' => \'1024\',\n  \'upload_allowext\' => \'jpg|jpeg|gif|png|bmp\',\n  \'watermark\' => \'0\',\n  \'isselectimage\' => \'1\',\n  \'images_width\' => \'\',\n  \'images_height\' => \'\',\n)', '', '', '', 0, 1, 0, 0, 0, 1, 0, 1, 14, 0, 0),
(92, 11, 1, 'relation', '相关文章', '', '', 0, 0, '', '', 'omnipotent', 'array (\n  \'formtext\' => \'<input type=\\\'hidden\\\' name=\\\'info[relation]\\\' id=\\\'relation\\\' value=\\\'{FIELD_VALUE}\\\' style=\\\'50\\\' >\r\n<ul class="list-dot" id="relation_text"></ul>\r\n<div>\r\n<input type=\\\'button\\\' value="添加相关" onclick="omnipotent(\\\'selectid\\\',\\\'?m=content&c=content&a=public_relationlist&modelid={MODELID}\\\',\\\'添加相关文章\\\',1)" class="button" style="width:66px;">\r\n<span class="edit_content">\r\n<input type=\\\'button\\\' value="显示已有" onclick="show_relation({MODELID},{ID})" class="button" style="width:66px;">\r\n</span>\r\n</div>\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n)', '', '2,6,4,5,1,17,18,7', '', 0, 0, 0, 0, 0, 0, 1, 0, 15, 0, 0),
(93, 11, 1, 'pages', '分页方式', '', '', 0, 0, '', '', 'pages', 'array (\n)', '', '-99', '-99', 0, 0, 0, 1, 0, 0, 0, 0, 16, 0, 0),
(94, 11, 1, 'inputtime', '发布时间', '', '', 0, 0, '', '', 'datetime', 'array (\n  \'fieldtype\' => \'int\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'defaulttype\' => \'0\',\n)', '', '', '', 0, 1, 0, 0, 0, 0, 0, 1, 17, 0, 0),
(95, 11, 1, 'posids', '推荐位', '', '', 0, 0, '', '', 'posid', 'array (\n  \'cols\' => \'4\',\n  \'width\' => \'125\',\n)', '', '', '', 0, 1, 0, 1, 0, 0, 0, 0, 18, 0, 0),
(96, 11, 1, 'groupids_view', '阅读权限', '', '', 0, 100, '', '', 'groupid', 'array (\n  \'groupids\' => \'\',\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 19, 0, 0),
(97, 11, 1, 'url', 'URL', '', '', 0, 100, '', '', 'text', 'array (\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 50, 0, 0),
(98, 11, 1, 'listorder', '排序', '', '', 0, 6, '', '', 'number', 'array (\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 51, 0, 0),
(99, 11, 1, 'template', '内容页模板', '', '', 0, 30, '', '', 'template', 'array (\n  \'size\' => \'\',\n  \'defaultvalue\' => \'\',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0),
(100, 11, 1, 'allow_comment', '允许评论', '', '', 0, 0, '', '', 'box', 'array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'boxtype\' => \'radio\',\n  \'fieldtype\' => \'tinyint\',\n  \'minnumber\' => \'1\',\n  \'width\' => \'88\',\n  \'size\' => \'1\',\n  \'defaultvalue\' => \'1\',\n  \'outputtype\' => \'0\',\n)', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0),
(101, 11, 1, 'status', '状态', '', '', 0, 2, '', '', 'box', 'array (\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 55, 0, 0),
(102, 11, 1, 'readpoint', '阅读收费', '', '', 0, 5, '', '', 'readpoint', 'array (\n  \'minnumber\' => \'1\',\n  \'maxnumber\' => \'99999\',\n  \'decimaldigits\' => \'0\',\n  \'defaultvalue\' => \'\',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0),
(103, 11, 1, 'username', '用户名', '', '', 0, 20, '', '', 'text', 'array (\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 98, 0, 0),
(104, 11, 1, 'islink', '转向链接', '', '', 0, 0, '', '', 'islink', 'array (\n)', '', '', '', 0, 1, 0, 1, 0, 1, 0, 0, 20, 0, 0),
(105, 11, 1, 'video', '视频上传', '', '', 0, 0, '', '', 'video', 'array (\n  \'upload_allowext\' => \'flv|rm|mp4|rmv\',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 8, 0, 0),
(106, 11, 1, 'vision', '画质', '', '', 0, 0, '', '', 'box', 'array (\n  \'options\' => \'高清|1\r\n普通|2\',\n  \'boxtype\' => \'select\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n  \'width\' => \'80\',\n  \'size\' => \'1\',\n  \'defaultvalue\' => \'0\',\n  \'outputtype\' => \'1\',\n  \'filtertype\' => \'1\',\n)', '', '', '', 0, 1, 0, 1, 0, 1, 0, 0, 9, 0, 0),
(107, 11, 1, 'video_category', '视频分类', '', '', 0, 0, '', '', 'box', 'array (\n  \'options\' => \'喜剧|1\r\n爱情|2\r\n科幻|3\r\n剧情|4\r\n动作|5\r\n伦理|6\',\n  \'boxtype\' => \'select\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n  \'width\' => \'80\',\n  \'size\' => \'1\',\n  \'defaultvalue\' => \'1\',\n  \'outputtype\' => \'1\',\n  \'filtertype\' => \'1\',\n)', '', '', '', 0, 1, 0, 1, 0, 1, 0, 0, 9, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_module`
--

CREATE TABLE `v9_module` (
  `module` varchar(15) NOT NULL,
  `name` varchar(20) NOT NULL,
  `url` varchar(50) NOT NULL,
  `iscore` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `version` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL,
  `setting` mediumtext NOT NULL,
  `listorder` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `installdate` date NOT NULL DEFAULT '0000-00-00',
  `updatedate` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_module`
--

INSERT INTO `v9_module` (`module`, `name`, `url`, `iscore`, `version`, `description`, `setting`, `listorder`, `disabled`, `installdate`, `updatedate`) VALUES
('admin', 'admin', '', 1, '1.0', '', 'array (\n  \'admin_email\' => \'phpcms@phpcms.cn\',\n  \'adminaccessip\' => \'0\',\n  \'maxloginfailedtimes\' => \'8\',\n  \'maxiplockedtime\' => \'15\',\n  \'minrefreshtime\' => \'2\',\n  \'mail_type\' => \'1\',\n  \'mail_server\' => \'smtp.qq.com\',\n  \'mail_port\' => \'25\',\n  \'mail_user\' => \'phpcms.cn@foxmail.com\',\n  \'mail_auth\' => \'1\',\n  \'mail_from\' => \'phpcms.cn@foxmail.com\',\n  \'mail_password\' => \'\',\n  \'errorlog_size\' => \'20\',\n)', 0, 0, '2010-10-18', '2010-10-18'),
('member', '会员', '', 1, '1.0', '', '{"allowregister":"0","choosemodel":"0","enablemailcheck":"0","enablcodecheck":"0","mobile_checktype":"0","user_sendsms_title":"","registerverify":"0","showapppoint":"0","rmb_point_rate":"10","defualtpoint":"0","defualtamount":"0","showregprotocol":"0","regprotocol":"\\t\\t \\u6b22\\u8fce\\u60a8\\u6ce8\\u518c\\u6210\\u4e3aphpcms\\u7528\\u6237\\r\\n\\u8bf7\\u4ed4\\u7ec6\\u9605\\u8bfb\\u4e0b\\u9762\\u7684\\u534f\\u8bae\\uff0c\\u53ea\\u6709\\u63a5\\u53d7\\u534f\\u8bae\\u624d\\u80fd\\u7ee7\\u7eed\\u8fdb\\u884c\\u6ce8\\u518c\\u3002 \\r\\n1\\uff0e\\u670d\\u52a1\\u6761\\u6b3e\\u7684\\u786e\\u8ba4\\u548c\\u63a5\\u7eb3\\r\\n\\u3000\\u3000phpcms\\u7528\\u6237\\u670d\\u52a1\\u7684\\u6240\\u6709\\u6743\\u548c\\u8fd0\\u4f5c\\u6743\\u5f52phpcms\\u62e5\\u6709\\u3002phpcms\\u6240\\u63d0\\u4f9b\\u7684\\u670d\\u52a1\\u5c06\\u6309\\u7167\\u6709\\u5173\\u7ae0\\u7a0b\\u3001\\u670d\\u52a1\\u6761\\u6b3e\\u548c\\u64cd\\u4f5c\\u89c4\\u5219\\u4e25\\u683c\\u6267\\u884c\\u3002\\u7528\\u6237\\u901a\\u8fc7\\u6ce8\\u518c\\u7a0b\\u5e8f\\u70b9\\u51fb\\u201c\\u6211\\u540c\\u610f\\u201d \\u6309\\u94ae\\uff0c\\u5373\\u8868\\u793a\\u7528\\u6237\\u4e0ephpcms\\u8fbe\\u6210\\u534f\\u8bae\\u5e76\\u63a5\\u53d7\\u6240\\u6709\\u7684\\u670d\\u52a1\\u6761\\u6b3e\\u3002\\r\\n2\\uff0e phpcms\\u670d\\u52a1\\u7b80\\u4ecb\\r\\n\\u3000\\u3000phpcms\\u901a\\u8fc7\\u56fd\\u9645\\u4e92\\u8054\\u7f51\\u4e3a\\u7528\\u6237\\u63d0\\u4f9b\\u65b0\\u95fb\\u53ca\\u6587\\u7ae0\\u6d4f\\u89c8\\u3001\\u56fe\\u7247\\u6d4f\\u89c8\\u3001\\u8f6f\\u4ef6\\u4e0b\\u8f7d\\u3001\\u7f51\\u4e0a\\u7559\\u8a00\\u548cBBS\\u8bba\\u575b\\u7b49\\u670d\\u52a1\\u3002\\r\\n\\u3000\\u3000\\u7528\\u6237\\u5fc5\\u987b\\uff1a \\r\\n\\u3000\\u30001)\\u8d2d\\u7f6e\\u8bbe\\u5907\\uff0c\\u5305\\u62ec\\u4e2a\\u4eba\\u7535\\u8111\\u4e00\\u53f0\\u3001\\u8c03\\u5236\\u89e3\\u8c03\\u5668\\u4e00\\u4e2a\\u53ca\\u914d\\u5907\\u4e0a\\u7f51\\u88c5\\u7f6e\\u3002 \\r\\n\\u3000\\u30002)\\u4e2a\\u4eba\\u4e0a\\u7f51\\u548c\\u652f\\u4ed8\\u4e0e\\u6b64\\u670d\\u52a1\\u6709\\u5173\\u7684\\u7535\\u8bdd\\u8d39\\u7528\\u3001\\u7f51\\u7edc\\u8d39\\u7528\\u3002\\r\\n\\u3000\\u3000\\u7528\\u6237\\u540c\\u610f\\uff1a \\r\\n\\u3000\\u30001)\\u63d0\\u4f9b\\u53ca\\u65f6\\u3001\\u8be6\\u5c3d\\u53ca\\u51c6\\u786e\\u7684\\u4e2a\\u4eba\\u8d44\\u6599\\u3002 \\r\\n\\u3000\\u30002)\\u4e0d\\u65ad\\u66f4\\u65b0\\u6ce8\\u518c\\u8d44\\u6599\\uff0c\\u7b26\\u5408\\u53ca\\u65f6\\u3001\\u8be6\\u5c3d\\u3001\\u51c6\\u786e\\u7684\\u8981\\u6c42\\u3002\\u6240\\u6709\\u539f\\u59cb\\u952e\\u5165\\u7684\\u8d44\\u6599\\u5c06\\u5f15\\u7528\\u4e3a\\u6ce8\\u518c\\u8d44\\u6599\\u3002 \\r\\n\\u3000\\u30003)\\u7528\\u6237\\u540c\\u610f\\u9075\\u5b88\\u300a\\u4e2d\\u534e\\u4eba\\u6c11\\u5171\\u548c\\u56fd\\u4fdd\\u5b88\\u56fd\\u5bb6\\u79d8\\u5bc6\\u6cd5\\u300b\\u3001\\u300a\\u4e2d\\u534e\\u4eba\\u6c11\\u5171\\u548c\\u56fd\\u8ba1\\u7b97\\u673a\\u4fe1\\u606f\\u7cfb\\u7edf\\u5b89\\u5168\\u4fdd\\u62a4\\u6761\\u4f8b\\u300b\\u3001\\u300a\\u8ba1\\u7b97\\u673a\\u8f6f\\u4ef6\\u4fdd\\u62a4\\u6761\\u4f8b\\u300b\\u7b49\\u6709\\u5173\\u8ba1\\u7b97\\u673a\\u53ca\\u4e92\\u8054\\u7f51\\u89c4\\u5b9a\\u7684\\u6cd5\\u5f8b\\u548c\\u6cd5\\u89c4\\u3001\\u5b9e\\u65bd\\u529e\\u6cd5\\u3002\\u5728\\u4efb\\u4f55\\u60c5\\u51b5\\u4e0b\\uff0cphpcms\\u5408\\u7406\\u5730\\u8ba4\\u4e3a\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u53ef\\u80fd\\u8fdd\\u53cd\\u4e0a\\u8ff0\\u6cd5\\u5f8b\\u3001\\u6cd5\\u89c4\\uff0cphpcms\\u53ef\\u4ee5\\u5728\\u4efb\\u4f55\\u65f6\\u5019\\uff0c\\u4e0d\\u7ecf\\u4e8b\\u5148\\u901a\\u77e5\\u7ec8\\u6b62\\u5411\\u8be5\\u7528\\u6237\\u63d0\\u4f9b\\u670d\\u52a1\\u3002\\u7528\\u6237\\u5e94\\u4e86\\u89e3\\u56fd\\u9645\\u4e92\\u8054\\u7f51\\u7684\\u65e0\\u56fd\\u754c\\u6027\\uff0c\\u5e94\\u7279\\u522b\\u6ce8\\u610f\\u9075\\u5b88\\u5f53\\u5730\\u6240\\u6709\\u6709\\u5173\\u7684\\u6cd5\\u5f8b\\u548c\\u6cd5\\u89c4\\u3002\\r\\n3\\uff0e \\u670d\\u52a1\\u6761\\u6b3e\\u7684\\u4fee\\u6539\\r\\n\\u3000\\u3000phpcms\\u4f1a\\u4e0d\\u5b9a\\u65f6\\u5730\\u4fee\\u6539\\u670d\\u52a1\\u6761\\u6b3e\\uff0c\\u670d\\u52a1\\u6761\\u6b3e\\u4e00\\u65e6\\u53d1\\u751f\\u53d8\\u52a8\\uff0c\\u5c06\\u4f1a\\u5728\\u76f8\\u5173\\u9875\\u9762\\u4e0a\\u63d0\\u793a\\u4fee\\u6539\\u5185\\u5bb9\\u3002\\u5982\\u679c\\u60a8\\u540c\\u610f\\u6539\\u52a8\\uff0c\\u5219\\u518d\\u4e00\\u6b21\\u70b9\\u51fb\\u201c\\u6211\\u540c\\u610f\\u201d\\u6309\\u94ae\\u3002 \\u5982\\u679c\\u60a8\\u4e0d\\u63a5\\u53d7\\uff0c\\u5219\\u53ca\\u65f6\\u53d6\\u6d88\\u60a8\\u7684\\u7528\\u6237\\u4f7f\\u7528\\u670d\\u52a1\\u8d44\\u683c\\u3002\\r\\n4\\uff0e \\u670d\\u52a1\\u4fee\\u8ba2\\r\\n\\u3000\\u3000phpcms\\u4fdd\\u7559\\u968f\\u65f6\\u4fee\\u6539\\u6216\\u4e2d\\u65ad\\u670d\\u52a1\\u800c\\u4e0d\\u9700\\u77e5\\u7167\\u7528\\u6237\\u7684\\u6743\\u5229\\u3002phpcms\\u884c\\u4f7f\\u4fee\\u6539\\u6216\\u4e2d\\u65ad\\u670d\\u52a1\\u7684\\u6743\\u5229\\uff0c\\u4e0d\\u9700\\u5bf9\\u7528\\u6237\\u6216\\u7b2c\\u4e09\\u65b9\\u8d1f\\u8d23\\u3002\\r\\n5\\uff0e \\u7528\\u6237\\u9690\\u79c1\\u5236\\u5ea6\\r\\n\\u3000\\u3000\\u5c0a\\u91cd\\u7528\\u6237\\u4e2a\\u4eba\\u9690\\u79c1\\u662fphpcms\\u7684 \\u57fa\\u672c\\u653f\\u7b56\\u3002phpcms\\u4e0d\\u4f1a\\u516c\\u5f00\\u3001\\u7f16\\u8f91\\u6216\\u900f\\u9732\\u7528\\u6237\\u7684\\u6ce8\\u518c\\u4fe1\\u606f\\uff0c\\u9664\\u975e\\u6709\\u6cd5\\u5f8b\\u8bb8\\u53ef\\u8981\\u6c42\\uff0c\\u6216phpcms\\u5728\\u8bda\\u4fe1\\u7684\\u57fa\\u7840\\u4e0a\\u8ba4\\u4e3a\\u900f\\u9732\\u8fd9\\u4e9b\\u4fe1\\u606f\\u5728\\u4ee5\\u4e0b\\u4e09\\u79cd\\u60c5\\u51b5\\u662f\\u5fc5\\u8981\\u7684\\uff1a \\r\\n\\u3000\\u30001)\\u9075\\u5b88\\u6709\\u5173\\u6cd5\\u5f8b\\u89c4\\u5b9a\\uff0c\\u9075\\u4ece\\u5408\\u6cd5\\u670d\\u52a1\\u7a0b\\u5e8f\\u3002 \\r\\n\\u3000\\u30002)\\u4fdd\\u6301\\u7ef4\\u62a4phpcms\\u7684\\u5546\\u6807\\u6240\\u6709\\u6743\\u3002 \\r\\n\\u3000\\u30003)\\u5728\\u7d27\\u6025\\u60c5\\u51b5\\u4e0b\\u7aed\\u529b\\u7ef4\\u62a4\\u7528\\u6237\\u4e2a\\u4eba\\u548c\\u793e\\u4f1a\\u5927\\u4f17\\u7684\\u9690\\u79c1\\u5b89\\u5168\\u3002 \\r\\n\\u3000\\u30004)\\u7b26\\u5408\\u5176\\u4ed6\\u76f8\\u5173\\u7684\\u8981\\u6c42\\u3002 \\r\\n6\\uff0e\\u7528\\u6237\\u7684\\u5e10\\u53f7\\uff0c\\u5bc6\\u7801\\u548c\\u5b89\\u5168\\u6027\\r\\n\\u3000\\u3000\\u4e00\\u65e6\\u6ce8\\u518c\\u6210\\u529f\\u6210\\u4e3aphpcms\\u7528\\u6237\\uff0c\\u60a8\\u5c06\\u5f97\\u5230\\u4e00\\u4e2a\\u5bc6\\u7801\\u548c\\u5e10\\u53f7\\u3002\\u5982\\u679c\\u60a8\\u4e0d\\u4fdd\\u7ba1\\u597d\\u81ea\\u5df1\\u7684\\u5e10\\u53f7\\u548c\\u5bc6\\u7801\\u5b89\\u5168\\uff0c\\u5c06\\u5bf9\\u56e0\\u6b64\\u4ea7\\u751f\\u7684\\u540e\\u679c\\u8d1f\\u5168\\u90e8\\u8d23\\u4efb\\u3002\\u53e6\\u5916\\uff0c\\u6bcf\\u4e2a\\u7528\\u6237\\u90fd\\u8981\\u5bf9\\u5176\\u5e10\\u6237\\u4e2d\\u7684\\u6240\\u6709\\u6d3b\\u52a8\\u548c\\u4e8b\\u4ef6\\u8d1f\\u5168\\u8d23\\u3002\\u60a8\\u53ef\\u968f\\u65f6\\u6839\\u636e\\u6307\\u793a\\u6539\\u53d8\\u60a8\\u7684\\u5bc6\\u7801\\uff0c\\u4e5f\\u53ef\\u4ee5\\u7ed3\\u675f\\u65e7\\u7684\\u5e10\\u6237\\u91cd\\u5f00\\u4e00\\u4e2a\\u65b0\\u5e10\\u6237\\u3002\\u7528\\u6237\\u540c\\u610f\\u82e5\\u53d1\\u73b0\\u4efb\\u4f55\\u975e\\u6cd5\\u4f7f\\u7528\\u7528\\u6237\\u5e10\\u53f7\\u6216\\u5b89\\u5168\\u6f0f\\u6d1e\\u7684\\u60c5\\u51b5\\uff0c\\u7acb\\u5373\\u901a\\u77e5phpcms\\u3002\\r\\n7\\uff0e \\u514d\\u8d23\\u6761\\u6b3e\\r\\n\\u3000\\u3000\\u7528\\u6237\\u660e\\u786e\\u540c\\u610f\\u7f51\\u7ad9\\u670d\\u52a1\\u7684\\u4f7f\\u7528\\u7531\\u7528\\u6237\\u4e2a\\u4eba\\u627f\\u62c5\\u98ce\\u9669\\u3002 \\u3000\\u3000 \\r\\n\\u3000\\u3000phpcms\\u4e0d\\u4f5c\\u4efb\\u4f55\\u7c7b\\u578b\\u7684\\u62c5\\u4fdd\\uff0c\\u4e0d\\u62c5\\u4fdd\\u670d\\u52a1\\u4e00\\u5b9a\\u80fd\\u6ee1\\u8db3\\u7528\\u6237\\u7684\\u8981\\u6c42\\uff0c\\u4e5f\\u4e0d\\u62c5\\u4fdd\\u670d\\u52a1\\u4e0d\\u4f1a\\u53d7\\u4e2d\\u65ad\\uff0c\\u5bf9\\u670d\\u52a1\\u7684\\u53ca\\u65f6\\u6027\\uff0c\\u5b89\\u5168\\u6027\\uff0c\\u51fa\\u9519\\u53d1\\u751f\\u90fd\\u4e0d\\u4f5c\\u62c5\\u4fdd\\u3002\\u7528\\u6237\\u7406\\u89e3\\u5e76\\u63a5\\u53d7\\uff1a\\u4efb\\u4f55\\u901a\\u8fc7phpcms\\u670d\\u52a1\\u53d6\\u5f97\\u7684\\u4fe1\\u606f\\u8d44\\u6599\\u7684\\u53ef\\u9760\\u6027\\u53d6\\u51b3\\u4e8e\\u7528\\u6237\\u81ea\\u5df1\\uff0c\\u7528\\u6237\\u81ea\\u5df1\\u627f\\u62c5\\u6240\\u6709\\u98ce\\u9669\\u548c\\u8d23\\u4efb\\u3002 \\r\\n8\\uff0e\\u6709\\u9650\\u8d23\\u4efb\\r\\n\\u3000\\u3000phpcms\\u5bf9\\u4efb\\u4f55\\u76f4\\u63a5\\u3001\\u95f4\\u63a5\\u3001\\u5076\\u7136\\u3001\\u7279\\u6b8a\\u53ca\\u7ee7\\u8d77\\u7684\\u635f\\u5bb3\\u4e0d\\u8d1f\\u8d23\\u4efb\\u3002\\r\\n9\\uff0e \\u4e0d\\u63d0\\u4f9b\\u96f6\\u552e\\u548c\\u5546\\u4e1a\\u6027\\u670d\\u52a1 \\r\\n\\u3000\\u3000\\u7528\\u6237\\u4f7f\\u7528\\u7f51\\u7ad9\\u670d\\u52a1\\u7684\\u6743\\u5229\\u662f\\u4e2a\\u4eba\\u7684\\u3002\\u7528\\u6237\\u53ea\\u80fd\\u662f\\u4e00\\u4e2a\\u5355\\u72ec\\u7684\\u4e2a\\u4f53\\u800c\\u4e0d\\u80fd\\u662f\\u4e00\\u4e2a\\u516c\\u53f8\\u6216\\u5b9e\\u4f53\\u5546\\u4e1a\\u6027\\u7ec4\\u7ec7\\u3002\\u7528\\u6237\\u627f\\u8bfa\\u4e0d\\u7ecfphpcms\\u540c\\u610f\\uff0c\\u4e0d\\u80fd\\u5229\\u7528\\u7f51\\u7ad9\\u670d\\u52a1\\u8fdb\\u884c\\u9500\\u552e\\u6216\\u5176\\u4ed6\\u5546\\u4e1a\\u7528\\u9014\\u3002\\r\\n10\\uff0e\\u7528\\u6237\\u8d23\\u4efb \\r\\n\\u3000\\u3000\\u7528\\u6237\\u5355\\u72ec\\u627f\\u62c5\\u4f20\\u8f93\\u5185\\u5bb9\\u7684\\u8d23\\u4efb\\u3002\\u7528\\u6237\\u5fc5\\u987b\\u9075\\u5faa\\uff1a \\r\\n\\u3000\\u30001)\\u4ece\\u4e2d\\u56fd\\u5883\\u5185\\u5411\\u5916\\u4f20\\u8f93\\u6280\\u672f\\u6027\\u8d44\\u6599\\u65f6\\u5fc5\\u987b\\u7b26\\u5408\\u4e2d\\u56fd\\u6709\\u5173\\u6cd5\\u89c4\\u3002 \\r\\n\\u3000\\u30002)\\u4f7f\\u7528\\u7f51\\u7ad9\\u670d\\u52a1\\u4e0d\\u4f5c\\u975e\\u6cd5\\u7528\\u9014\\u3002 \\r\\n\\u3000\\u30003)\\u4e0d\\u5e72\\u6270\\u6216\\u6df7\\u4e71\\u7f51\\u7edc\\u670d\\u52a1\\u3002 \\r\\n\\u3000\\u30004)\\u4e0d\\u5728\\u8bba\\u575bBBS\\u6216\\u7559\\u8a00\\u7c3f\\u53d1\\u8868\\u4efb\\u4f55\\u4e0e\\u653f\\u6cbb\\u76f8\\u5173\\u7684\\u4fe1\\u606f\\u3002 \\r\\n\\u3000\\u30005)\\u9075\\u5b88\\u6240\\u6709\\u4f7f\\u7528\\u7f51\\u7ad9\\u670d\\u52a1\\u7684\\u7f51\\u7edc\\u534f\\u8bae\\u3001\\u89c4\\u5b9a\\u3001\\u7a0b\\u5e8f\\u548c\\u60ef\\u4f8b\\u3002\\r\\n\\u3000\\u30006)\\u4e0d\\u5f97\\u5229\\u7528\\u672c\\u7ad9\\u5371\\u5bb3\\u56fd\\u5bb6\\u5b89\\u5168\\u3001\\u6cc4\\u9732\\u56fd\\u5bb6\\u79d8\\u5bc6\\uff0c\\u4e0d\\u5f97\\u4fb5\\u72af\\u56fd\\u5bb6\\u793e\\u4f1a\\u96c6\\u4f53\\u7684\\u548c\\u516c\\u6c11\\u7684\\u5408\\u6cd5\\u6743\\u76ca\\u3002\\r\\n\\u3000\\u30007)\\u4e0d\\u5f97\\u5229\\u7528\\u672c\\u7ad9\\u5236\\u4f5c\\u3001\\u590d\\u5236\\u548c\\u4f20\\u64ad\\u4e0b\\u5217\\u4fe1\\u606f\\uff1a \\r\\n\\u3000\\u3000\\u30001\\u3001\\u717d\\u52a8\\u6297\\u62d2\\u3001\\u7834\\u574f\\u5baa\\u6cd5\\u548c\\u6cd5\\u5f8b\\u3001\\u884c\\u653f\\u6cd5\\u89c4\\u5b9e\\u65bd\\u7684\\uff1b\\r\\n\\u3000\\u3000\\u30002\\u3001\\u717d\\u52a8\\u98a0\\u8986\\u56fd\\u5bb6\\u653f\\u6743\\uff0c\\u63a8\\u7ffb\\u793e\\u4f1a\\u4e3b\\u4e49\\u5236\\u5ea6\\u7684\\uff1b\\r\\n\\u3000\\u3000\\u30003\\u3001\\u717d\\u52a8\\u5206\\u88c2\\u56fd\\u5bb6\\u3001\\u7834\\u574f\\u56fd\\u5bb6\\u7edf\\u4e00\\u7684\\uff1b\\r\\n\\u3000\\u3000\\u30004\\u3001\\u717d\\u52a8\\u6c11\\u65cf\\u4ec7\\u6068\\u3001\\u6c11\\u65cf\\u6b67\\u89c6\\uff0c\\u7834\\u574f\\u6c11\\u65cf\\u56e2\\u7ed3\\u7684\\uff1b\\r\\n\\u3000\\u3000\\u30005\\u3001\\u634f\\u9020\\u6216\\u8005\\u6b6a\\u66f2\\u4e8b\\u5b9e\\uff0c\\u6563\\u5e03\\u8c23\\u8a00\\uff0c\\u6270\\u4e71\\u793e\\u4f1a\\u79e9\\u5e8f\\u7684\\uff1b\\r\\n\\u3000\\u3000\\u30006\\u3001\\u5ba3\\u626c\\u5c01\\u5efa\\u8ff7\\u4fe1\\u3001\\u6deb\\u79fd\\u3001\\u8272\\u60c5\\u3001\\u8d4c\\u535a\\u3001\\u66b4\\u529b\\u3001\\u51f6\\u6740\\u3001\\u6050\\u6016\\u3001\\u6559\\u5506\\u72af\\u7f6a\\u7684\\uff1b\\r\\n\\u3000\\u3000\\u30007\\u3001\\u516c\\u7136\\u4fae\\u8fb1\\u4ed6\\u4eba\\u6216\\u8005\\u634f\\u9020\\u4e8b\\u5b9e\\u8bfd\\u8c24\\u4ed6\\u4eba\\u7684\\uff0c\\u6216\\u8005\\u8fdb\\u884c\\u5176\\u4ed6\\u6076\\u610f\\u653b\\u51fb\\u7684\\uff1b\\r\\n\\u3000\\u3000\\u30008\\u3001\\u635f\\u5bb3\\u56fd\\u5bb6\\u673a\\u5173\\u4fe1\\u8a89\\u7684\\uff1b\\r\\n\\u3000\\u3000\\u30009\\u3001\\u5176\\u4ed6\\u8fdd\\u53cd\\u5baa\\u6cd5\\u548c\\u6cd5\\u5f8b\\u884c\\u653f\\u6cd5\\u89c4\\u7684\\uff1b\\r\\n\\u3000\\u3000\\u300010\\u3001\\u8fdb\\u884c\\u5546\\u4e1a\\u5e7f\\u544a\\u884c\\u4e3a\\u7684\\u3002\\r\\n\\u3000\\u3000\\u7528\\u6237\\u4e0d\\u80fd\\u4f20\\u8f93\\u4efb\\u4f55\\u6559\\u5506\\u4ed6\\u4eba\\u6784\\u6210\\u72af\\u7f6a\\u884c\\u4e3a\\u7684\\u8d44\\u6599\\uff1b\\u4e0d\\u80fd\\u4f20\\u8f93\\u957f\\u56fd\\u5185\\u4e0d\\u5229\\u6761\\u4ef6\\u548c\\u6d89\\u53ca\\u56fd\\u5bb6\\u5b89\\u5168\\u7684\\u8d44\\u6599\\uff1b\\u4e0d\\u80fd\\u4f20\\u8f93\\u4efb\\u4f55\\u4e0d\\u7b26\\u5408\\u5f53\\u5730\\u6cd5\\u89c4\\u3001\\u56fd\\u5bb6\\u6cd5\\u5f8b\\u548c\\u56fd\\u9645\\u6cd5 \\u5f8b\\u7684\\u8d44\\u6599\\u3002\\u672a\\u7ecf\\u8bb8\\u53ef\\u800c\\u975e\\u6cd5\\u8fdb\\u5165\\u5176\\u5b83\\u7535\\u8111\\u7cfb\\u7edf\\u662f\\u7981\\u6b62\\u7684\\u3002\\u82e5\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u4e0d\\u7b26\\u5408\\u4ee5\\u4e0a\\u7684\\u6761\\u6b3e\\uff0cphpcms\\u5c06\\u53d6\\u6d88\\u7528\\u6237\\u670d\\u52a1\\u5e10\\u53f7\\u3002\\r\\n11\\uff0e\\u7f51\\u7ad9\\u5185\\u5bb9\\u7684\\u6240\\u6709\\u6743\\r\\n\\u3000\\u3000phpcms\\u5b9a\\u4e49\\u7684\\u5185\\u5bb9\\u5305\\u62ec\\uff1a\\u6587\\u5b57\\u3001\\u8f6f\\u4ef6\\u3001\\u58f0\\u97f3\\u3001\\u76f8\\u7247\\u3001\\u5f55\\u8c61\\u3001\\u56fe\\u8868\\uff1b\\u5728\\u5e7f\\u544a\\u4e2d\\u5168\\u90e8\\u5185\\u5bb9\\uff1b\\u7535\\u5b50\\u90ae\\u4ef6\\u7684\\u5168\\u90e8\\u5185\\u5bb9\\uff1bphpcms\\u4e3a\\u7528\\u6237\\u63d0\\u4f9b\\u7684\\u5546\\u4e1a\\u4fe1\\u606f\\u3002\\u6240\\u6709\\u8fd9\\u4e9b\\u5185\\u5bb9\\u53d7\\u7248\\u6743\\u3001\\u5546\\u6807\\u3001\\u6807\\u7b7e\\u548c\\u5176\\u5b83\\u8d22\\u4ea7\\u6240\\u6709\\u6743\\u6cd5\\u5f8b\\u7684\\u4fdd\\u62a4\\u3002\\u6240\\u4ee5\\uff0c\\u7528\\u6237\\u53ea\\u80fd\\u5728phpcms\\u548c\\u5e7f\\u544a\\u5546\\u6388\\u6743\\u4e0b\\u624d\\u80fd\\u4f7f\\u7528\\u8fd9\\u4e9b\\u5185\\u5bb9\\uff0c\\u800c\\u4e0d\\u80fd\\u64c5\\u81ea\\u590d\\u5236\\u3001\\u7be1\\u6539\\u8fd9\\u4e9b\\u5185\\u5bb9\\u3001\\u6216\\u521b\\u9020\\u4e0e\\u5185\\u5bb9\\u6709\\u5173\\u7684\\u6d3e\\u751f\\u4ea7\\u54c1\\u3002\\r\\n12\\uff0e\\u9644\\u52a0\\u4fe1\\u606f\\u670d\\u52a1\\r\\n\\u3000\\u3000\\u7528\\u6237\\u5728\\u4eab\\u7528phpcms\\u63d0\\u4f9b\\u7684\\u514d\\u8d39\\u670d\\u52a1\\u7684\\u540c\\u65f6\\uff0c\\u540c\\u610f\\u63a5\\u53d7phpcms\\u63d0\\u4f9b\\u7684\\u5404\\u7c7b\\u9644\\u52a0\\u4fe1\\u606f\\u670d\\u52a1\\u3002\\r\\n13\\uff0e\\u89e3\\u91ca\\u6743\\r\\n\\u3000\\u3000\\u672c\\u6ce8\\u518c\\u534f\\u8bae\\u7684\\u89e3\\u91ca\\u6743\\u5f52phpcms\\u6240\\u6709\\u3002\\u5982\\u679c\\u5176\\u4e2d\\u6709\\u4efb\\u4f55\\u6761\\u6b3e\\u4e0e\\u56fd\\u5bb6\\u7684\\u6709\\u5173\\u6cd5\\u5f8b\\u76f8\\u62b5\\u89e6\\uff0c\\u5219\\u4ee5\\u56fd\\u5bb6\\u6cd5\\u5f8b\\u7684\\u660e\\u6587\\u89c4\\u5b9a\\u4e3a\\u51c6\\u3002 ","registerverifymessage":" \\u6b22\\u8fce\\u60a8\\u6ce8\\u518c\\u6210\\u4e3aphpcms\\u7528\\u6237\\uff0c\\u60a8\\u7684\\u8d26\\u53f7\\u9700\\u8981\\u90ae\\u7bb1\\u8ba4\\u8bc1\\uff0c\\u70b9\\u51fb\\u4e0b\\u9762\\u94fe\\u63a5\\u8fdb\\u884c\\u8ba4\\u8bc1\\uff1a{click}\\r\\n\\u6216\\u8005\\u5c06\\u7f51\\u5740\\u590d\\u5236\\u5230\\u6d4f\\u89c8\\u5668\\uff1a{url}","forgetpassword":" phpcms\\u5bc6\\u7801\\u627e\\u56de\\uff0c\\u8bf7\\u5728\\u4e00\\u5c0f\\u65f6\\u5185\\u70b9\\u51fb\\u4e0b\\u9762\\u94fe\\u63a5\\u8fdb\\u884c\\u64cd\\u4f5c\\uff1a{click}\\r\\n\\u6216\\u8005\\u5c06\\u7f51\\u5740\\u590d\\u5236\\u5230\\u6d4f\\u89c8\\u5668\\uff1a{url}"}', 0, 0, '2010-09-06', '2010-09-06'),
('pay', '支付', '', 1, '1.0', '', '', 0, 0, '2010-09-06', '2010-09-06'),
('digg', '顶一下', '', 0, '1.0', '', '', 0, 0, '2010-09-06', '2010-09-06'),
('special', '专题', '', 0, '1.0', '', '', 0, 0, '2010-09-06', '2010-09-06'),
('content', '内容模块', '', 1, '1.0', '', '', 0, 0, '2010-09-06', '2010-09-06'),
('search', '全站搜索', '', 0, '1.0', '', 'array (\n  \'fulltextenble\' => \'1\',\n  \'relationenble\' => \'1\',\n  \'suggestenable\' => \'1\',\n  \'sphinxenable\' => \'0\',\n  \'sphinxhost\' => \'10.228.134.102\',\n  \'sphinxport\' => \'9312\',\n)', 0, 0, '2010-09-06', '2010-09-06'),
('scan', '木马扫描', 'scan', 0, '1.0', '', '', 0, 0, '2010-09-01', '2010-09-06'),
('attachment', '附件', 'attachment', 1, '1.0', '', '', 0, 0, '2010-09-01', '2010-09-06'),
('block', '碎片', '', 1, '1.0', '', '', 0, 0, '2010-09-01', '2010-09-06'),
('collection', '采集模块', 'collection', 1, '1.0', '', '', 0, 0, '2010-09-01', '2010-09-06'),
('dbsource', '数据源', '', 1, '', '', '', 0, 0, '2010-09-01', '2010-09-06'),
('template', '模板风格', '', 1, '1.0', '', '', 0, 0, '2010-09-01', '2010-09-06'),
('release', '发布点', '', 1, '1.0', '', '', 0, 0, '2010-09-01', '2010-09-06'),
('video', '视频库', '', 0, '1.0', '', '', 0, 0, '2012-09-28', '2012-09-28'),
('comment', '评论', 'comment/', 0, '1.0', '评论', '', 0, 0, '2016-12-22', '2016-12-22'),
('link', '友情链接', '', 0, '1.0', '', '{"1":{"is_post":"0","enablecheckcode":"0"}}', 0, 0, '2010-09-06', '2010-09-06'),
('formguide', '表单向导', 'formguide/', 0, '1.0', 'formguide', 'array (\n  \'allowmultisubmit\' => \'1\',\n  \'interval\' => \'30\',\n  \'allowunreg\' => \'0\',\n  \'mailmessage\' => \'用户向我们提交了表单数据，赶快去看看吧。\',\n)', 0, 0, '2010-10-20', '2010-10-20'),
('tag', '标签向导', 'tag/', 0, '1.0', '标签向导', '', 0, 0, '2016-12-22', '2016-12-22');

-- --------------------------------------------------------

--
-- 表的结构 `v9_news`
--

CREATE TABLE `v9_news` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `typeid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(80) NOT NULL DEFAULT '',
  `style` char(24) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `posids` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `islink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_news`
--

INSERT INTO `v9_news` (`id`, `catid`, `typeid`, `title`, `style`, `thumb`, `keywords`, `description`, `posids`, `url`, `listorder`, `status`, `sysadd`, `islink`, `username`, `inputtime`, `updatetime`) VALUES
(1, 11, 0, '一篇很长的文章啊', '', '', '文章', '这是一篇很长的文章', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=11&id=1', 0, 99, 1, 0, 'phpcms', 1482468453, 1482468474),
(42, 10, 0, '通知公告', '', 'http://communi.chenyimin.cn/uploadfile/2017/0212/20170212055203151.jpg', '通知公告', '通知公告通知公告通知公告通知公告通知公告', 1, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=10&id=42', 0, 99, 1, 0, 'phpcms', 1483782858, 1486893125),
(43, 10, 0, '通知公告5', '', 'http://communi.chenyimin.cn/uploadfile/2017/0212/20170212055144456.jpg', '通知公告', '通知公告通知公告通知公告', 1, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=10&id=43', 0, 99, 1, 0, 'phpcms', 1483782876, 1486893106),
(40, 10, 0, '通知公告', '', 'http://communi.chenyimin.cn/uploadfile/2017/0212/20170212055243134.jpg', '通知公告', '通知公告通知公告通知公告', 1, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=10&id=40', 0, 99, 1, 0, 'phpcms', 1483782720, 1486893166),
(41, 10, 0, '通知公告', '', 'http://communi.chenyimin.cn/uploadfile/2017/0212/20170212055221409.jpg', '通知公告', '通知公告通知公告通知公告通知公告', 1, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=10&id=41', 0, 99, 1, 0, 'phpcms', 1483782736, 1486893143),
(10, 32, 0, '学历生 UNDERGRATE STUDENTS', '', '', '学历', '学历生 UNDERGRATE STUDENTS', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=32&id=10', 0, 99, 1, 0, 'phpcms', 1483175380, 1483175450),
(11, 32, 0, '语言生 LANGUAGE STUDENTS', '', '', '语言', '语言生 LANGUAGE STUDENTS', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=32&id=11', 0, 99, 1, 0, 'phpcms', 1483175451, 1483175484),
(12, 32, 0, '交换生 EXCHAGE STUDENTS', '', '', '交换生 EXCHAGE STUDENTS', '交换生 EXCHAGE STUDENTS', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=32&id=12', 0, 99, 1, 0, 'phpcms', 1483175485, 1483175507),
(13, 33, 0, '2016年国际学生招生简章 2016 ADMISSION GCU', '', '', '国际学生 招生简章', '2016年国际学生招生简章 2016 ADMISSION GCU', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=33&id=13', 0, 99, 1, 0, 'phpcms', 1483175514, 1483175551),
(14, 33, 0, '外国留学生实习申请表 APPLICATION FOR GCU', '', '', '申请表 留学生 外国', '外国留学生实习申请表 APPLICATION FOR GCU', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=33&id=14', 0, 99, 1, 0, 'phpcms', 1483175552, 1483175583),
(15, 33, 0, '入学与签证指引 APPLICATION AND VISA GCU', '', '', '签证', '入学与签证指引 APPLICATION AND VISA GCU', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=33&id=15', 0, 99, 1, 0, 'phpcms', 1483175584, 1483175613),
(16, 34, 0, '学生手册 STUDENT HANDBOOK', '', '', '手册 学生', '学生手册 STUDENT HANDBOOK', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=34&id=16', 0, 99, 1, 0, 'phpcms', 1483175624, 1483175663),
(17, 34, 0, '办理居留许可指引 GUIDE OF APPLYING FOR RESIDENT', '', '', '', '办理居留许可指引 GUIDE OF APPLYING FOR RESIDENT', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=34&id=17', 1, 99, 1, 0, 'phpcms', 1483175664, 1483175712),
(18, 34, 0, '行前指引 PRE-DEPARTURE GUIDE', '', '', '行前指引 PRE-DEPARTURE GUIDE', '行前指引 PRE-DEPARTURE GUIDE', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=34&id=18', 2, 99, 1, 0, 'phpcms', 1483175713, 1483175744),
(19, 34, 0, '校外住宿申请表 APPLICATION FORM FOR LIVING-OFF', '', '', '申请表', '校外住宿申请表 APPLICATION FORM FOR LIVING-OFF', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=34&id=19', 3, 99, 1, 0, 'phpcms', 1483175746, 1483175786),
(20, 34, 0, '退宿申请流程 GUIDE OF CHECK-OUT FROM DORM', '', '', '流程', '退宿申请流程 GUIDE OF CHECK-OUT FROM DORM', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=34&id=20', 4, 99, 1, 0, 'phpcms', 1483175788, 1483175814),
(21, 35, 0, '广东省来粤留学生奖学金管理暂行方法', '', '', '广东省 留学生', '广东省来粤留学生', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=35&id=21', 0, 99, 1, 0, 'phpcms', 1483177480, 1483180559),
(22, 35, 0, '广东省政府来粤留学生奖学金申请表(一)', '', '', '广东省政府 申请表 奖学金', '广东省政府来粤留学生奖学金申请表(一)', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=35&id=22', 0, 99, 1, 0, 'phpcms', 1483180572, 1483180619),
(23, 42, 0, '这个是外教活动的内容', '', '', '外教 内容', '这个是外教活动的内容', 0, 'http://localhost/communi/index.php?m=content&c=index&a=show&catid=42&id=23', 0, 99, 1, 0, 'phpcms', 1483183330, 1483183344),
(24, 60, 0, '这里是一学期研习的标题', '', 'http://communi.chenyimin.cn/uploadfile/2017/0107/20170107124449301.jpg', '学期 标题', '一学期研习的内容', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=60&id=24', 0, 99, 1, 0, 'phpcms', 1483763788, 1483764358),
(25, 64, 0, 'IEEE认证一号文件', '', 'http://communi.chenyimin.cn/uploadfile/2017/0107/20170107124705408.jpg', '文件', '这是IEEE认证文件的内容，我测试下到底有没有内容的说', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=64&id=25', 0, 99, 1, 0, 'phpcms', 1483764403, 1483764452),
(26, 64, 0, 'IEEE认证二号文件', '', 'http://communi.chenyimin.cn/uploadfile/2017/0107/20170107124823136.jpg', '文件', 'IEEE认证二号文件的主要内容，这里显示老师要用的概要', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=64&id=26', 0, 99, 1, 0, 'phpcms', 1483764463, 1483764505),
(27, 63, 0, 'ABET国际认证的内容', '', 'http://communi.chenyimin.cn/uploadfile/2017/0107/20170107124927602.jpg', '国际认证 内容', '这里是ABET国际认证的基本内容，老师的概要就写在这里啦', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=63&id=27', 0, 99, 1, 0, 'phpcms', 1483764526, 1483764584),
(28, 63, 0, '国际认证添加多一条把', '', 'http://communi.chenyimin.cn/uploadfile/2017/0107/20170107125008664.jpg', '加多 国际认证', '国际认证的内容添加多几条啦', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=63&id=28', 0, 99, 1, 0, 'phpcms', 1483764590, 1483764637),
(29, 62, 0, '国际认证添加多一条把', '', 'http://communi.chenyimin.cn/uploadfile/2017/0107/20170107125008664.jpg', '加多 国际认证', '国际认证的内容添加多几条啦', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=62&id=29', 0, 99, 1, 0, 'phpcms', 1483764590, 1483764637),
(30, 58, 0, '港澳台合作统一模板', '', 'http://communi.chenyimin.cn/uploadfile/2017/0107/20170107125153913.jpg', '模板', '这里是港澳台合作的统一内概述', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=58&id=30', 0, 99, 1, 0, 'phpcms', 1483764667, 1483764727),
(31, 58, 0, '港澳台合作统一模板', '', 'http://communi.chenyimin.cn/uploadfile/2017/0107/20170107125153913.jpg', '模板', '这里是港澳台合作的统一内概述', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=58&id=31', 0, 99, 1, 0, 'phpcms', 1483764667, 1483764727),
(32, 59, 0, '港澳台合作统一模板', '', 'http://communi.chenyimin.cn/uploadfile/2017/0107/20170107125153913.jpg', '模板', '这里是港澳台合作的统一内概述', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=59&id=32', 0, 99, 1, 0, 'phpcms', 1483764667, 1483764727),
(33, 60, 0, '港澳台合作统一模板', '', 'http://communi.chenyimin.cn/uploadfile/2017/0107/20170107125153913.jpg', '模板', '这里是港澳台合作的统一内概述', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=60&id=33', 0, 99, 1, 0, 'phpcms', 1483764667, 1483764727),
(34, 61, 0, '港澳台合作统一模板', '', 'http://communi.chenyimin.cn/uploadfile/2017/0107/20170107125153913.jpg', '模板', '这里是港澳台合作的统一内概述', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=61&id=34', 0, 99, 1, 0, 'phpcms', 1483764667, 1483764727),
(35, 58, 0, '港澳台合作的二号文件', '', 'http://communi.chenyimin.cn/uploadfile/2017/0107/20170107125232662.jpg', '文件', '港澳台合作的二号文件的概述', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=58&id=35', 0, 99, 1, 0, 'phpcms', 1483764729, 1483764754),
(36, 65, 0, '招生简介文章', '', 'http://communi.chenyimin.cn/uploadfile/2017/0107/20170107010431243.jpg', '简介 文章', '招生简介文章招生简介文章招生简介文章招生简介文章招生简介文章招生简介文章招生简介文章内容', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=65&id=36', 0, 99, 1, 0, 'phpcms', 1483765447, 1483765473),
(37, 11, 0, '外事通讯文章', '', '', '外事 通讯 文章', '这是一篇外事通讯文章', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=11&id=37', 0, 99, 1, 0, 'phpcms', 1483775654, 1483775677);

-- --------------------------------------------------------

--
-- 表的结构 `v9_news_data`
--

CREATE TABLE `v9_news_data` (
  `id` mediumint(8) UNSIGNED DEFAULT '0',
  `content` mediumtext NOT NULL,
  `readpoint` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) NOT NULL,
  `paytype` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `relation` varchar(255) NOT NULL DEFAULT '',
  `voteid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `copyfrom` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_news_data`
--

INSERT INTO `v9_news_data` (`id`, `content`, `readpoint`, `groupids_view`, `paginationtype`, `maxcharperpage`, `template`, `paytype`, `relation`, `voteid`, `allow_comment`, `copyfrom`) VALUES
(1, '这是一篇很长的文章', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(10, '学历生 UNDERGRATE STUDENTS', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(11, '语言生 LANGUAGE STUDENTS', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(12, '交换生 EXCHAGE STUDENTS', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(13, '2016年国际学生招生简章 2016 ADMISSION GCU', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(14, '外国留学生实习申请表 APPLICATION FOR GCU', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(15, '入学与签证指引 APPLICATION AND VISA GCU', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(16, '学生手册 STUDENT HANDBOOK', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(17, '办理居留许可指引 GUIDE OF APPLYING FOR RESIDENT', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(18, '行前指引 PRE-DEPARTURE GUIDE', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(19, '校外住宿申请表 APPLICATION FORM FOR LIVING-OFF', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(20, '退宿申请流程 GUIDE OF CHECK-OUT FROM DORM', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(21, '广东省来粤留学生', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(22, '广东省政府来粤留学生奖学金申请表(一)', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(23, '这个是外教活动的内容', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(24, '一学期研习的内容,这里面应该有很多很重要的信息的，但是我也不知道该填写些什么？一学期研习是非常的重要的，你要尝试下么？', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(25, '这是IEEE认证文件的内容，我测试下到底有没有内容的说', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(26, 'IEEE认证二号文件的主要内容，这里显示老师要用的概要', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(27, '这里是ABET国际认证的基本内容，老师的概要就写在这里啦', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(28, '国际认证的内容添加多几条啦', 0, '', 0, 10000, '', 0, '62', 0, 1, '|0'),
(29, '国际认证的内容添加多几条啦', 0, '', 0, 10000, '', 0, '62', 0, 1, '|0'),
(30, '这里是港澳台合作的统一内概述', 0, '', 0, 10000, '', 0, '58|59|60|61', 0, 1, '|0'),
(31, '这里是港澳台合作的统一内概述', 0, '', 0, 10000, '', 0, '58|59|60|61', 0, 1, '|0'),
(32, '这里是港澳台合作的统一内概述', 0, '', 0, 10000, '', 0, '58|59|60|61', 0, 1, '|0'),
(33, '这里是港澳台合作的统一内概述', 0, '', 0, 10000, '', 0, '58|59|60|61', 0, 1, '|0'),
(34, '这里是港澳台合作的统一内概述', 0, '', 0, 10000, '', 0, '58|59|60|61', 0, 1, '|0'),
(35, '港澳台合作的二号文件的概述', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(36, '招生简介文章招生简介文章招生简介文章招生简介文章招生简介文章招生简介文章招生简介文章内容', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(37, '这是一篇外事通讯文章', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(42, '通知公告通知公告通知公告通知公告通知公告', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(43, '通知公告通知公告通知公告', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(40, '通知公告通知公告通知公告', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(41, '<img alt="" src="http://communi.chenyimin.cn/uploadfile/2017/0107/20170107060215152.jpg" style="width: 533px; height: 300px;" /><br />\r\n通知公告通知公告通知公告通知公告', 0, '', 0, 10000, '', 0, '', 0, 1, '|0');

-- --------------------------------------------------------

--
-- 表的结构 `v9_page`
--

CREATE TABLE `v9_page` (
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(160) NOT NULL,
  `style` varchar(24) NOT NULL,
  `keywords` varchar(40) NOT NULL,
  `content` text NOT NULL,
  `template` varchar(30) NOT NULL,
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_page`
--

INSERT INTO `v9_page` (`catid`, `title`, `style`, `keywords`, `content`, `template`, `updatetime`) VALUES
(54, '活动1', ';', '活动1', '活动1', '', 0),
(55, '活动2', ';', '活动2', '活动2', '', 0),
(56, '活动3', ';', '活动3', '活动3', '', 0),
(57, '活动4', ';', '活动4', '这个是活动4', '', 0),
(19, '这里就是机构介绍啦', ';', '机构 就是', '机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍到这里就结束了。。。这里有没显示？', '', 0),
(67, '这个是联系我们的标题啊', ';', '标题', '标题真的好长，我打的好累啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_pay_account`
--

CREATE TABLE `v9_pay_account` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `trade_sn` char(50) NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `contactname` char(50) NOT NULL,
  `email` char(40) NOT NULL,
  `telephone` char(20) NOT NULL,
  `discount` float(8,2) NOT NULL DEFAULT '0.00',
  `money` char(8) NOT NULL,
  `quantity` int(8) UNSIGNED NOT NULL DEFAULT '1',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `paytime` int(10) NOT NULL DEFAULT '0',
  `usernote` char(255) NOT NULL,
  `pay_id` tinyint(3) NOT NULL,
  `pay_type` enum('offline','recharge','selfincome','online') NOT NULL DEFAULT 'recharge',
  `payment` char(90) NOT NULL,
  `type` tinyint(3) NOT NULL DEFAULT '1',
  `ip` char(15) NOT NULL DEFAULT '0.0.0.0',
  `status` enum('succ','failed','error','progress','timeout','cancel','waitting','unpay') NOT NULL DEFAULT 'unpay',
  `adminnote` char(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_pay_payment`
--

CREATE TABLE `v9_pay_payment` (
  `pay_id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `pay_name` varchar(120) NOT NULL,
  `pay_code` varchar(20) NOT NULL,
  `pay_desc` text NOT NULL,
  `pay_method` tinyint(1) DEFAULT NULL,
  `pay_fee` varchar(10) NOT NULL,
  `config` text NOT NULL,
  `is_cod` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_online` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pay_order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `version` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_pay_spend`
--

CREATE TABLE `v9_pay_spend` (
  `id` int(10) UNSIGNED NOT NULL,
  `creat_at` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `logo` varchar(20) NOT NULL,
  `value` int(5) NOT NULL,
  `op_userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `op_username` char(20) NOT NULL,
  `msg` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_picture`
--

CREATE TABLE `v9_picture` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `typeid` smallint(5) UNSIGNED NOT NULL,
  `title` char(80) NOT NULL DEFAULT '',
  `style` char(24) NOT NULL DEFAULT '',
  `thumb` char(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  `posids` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `islink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_picture`
--

INSERT INTO `v9_picture` (`id`, `catid`, `typeid`, `title`, `style`, `thumb`, `keywords`, `description`, `posids`, `url`, `listorder`, `status`, `sysadd`, `islink`, `username`, `inputtime`, `updatetime`) VALUES
(1, 26, 0, '一学期交换美国', '', '', '美国 学期', '一学期交换美国', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=26&id=1', 0, 99, 1, 0, 'phpcms', 1483166019, 1483166928),
(2, 22, 0, '这个是中外办学项目', '', 'http://communi.chenyimin.cn/uploadfile/2017/0107/20170107061001849.jpg', '项目', '这个是中外办学项目这个是中外办学项目这个是中外办学项目这个是中外办学项目', 0, 'http://communi.chenyimin.cn/index.php?m=content&c=index&a=show&catid=22&id=2', 0, 99, 1, 0, 'phpcms', 1483172809, 1483783804);

-- --------------------------------------------------------

--
-- 表的结构 `v9_picture_data`
--

CREATE TABLE `v9_picture_data` (
  `id` mediumint(8) UNSIGNED DEFAULT '0',
  `content` text NOT NULL,
  `readpoint` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) NOT NULL,
  `paytype` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `relation` varchar(255) NOT NULL DEFAULT '',
  `pictureurls` mediumtext NOT NULL,
  `copyfrom` varchar(255) NOT NULL DEFAULT '',
  `allow_comment` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_picture_data`
--

INSERT INTO `v9_picture_data` (`id`, `content`, `readpoint`, `groupids_view`, `paginationtype`, `maxcharperpage`, `template`, `paytype`, `relation`, `pictureurls`, `copyfrom`, `allow_comment`) VALUES
(1, '一学期交换美国一学期交换美国一学期交换美国一学期交换美国', 0, '', 0, 10000, '', 0, '', '', '本站原创|0', 1),
(2, '这个是中外办学项目这个是中外办学项目这个是中外办学项目这个是中外办学项目', 0, '', 0, 10000, '', 0, '', '', '|0', 1);

-- --------------------------------------------------------

--
-- 表的结构 `v9_position`
--

CREATE TABLE `v9_position` (
  `posid` smallint(5) UNSIGNED NOT NULL,
  `modelid` smallint(5) UNSIGNED DEFAULT '0',
  `catid` smallint(5) UNSIGNED DEFAULT '0',
  `name` char(30) NOT NULL DEFAULT '',
  `maxnum` smallint(5) NOT NULL DEFAULT '20',
  `extention` char(100) DEFAULT NULL,
  `listorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `thumb` varchar(150) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_position`
--

INSERT INTO `v9_position` (`posid`, `modelid`, `catid`, `name`, `maxnum`, `extention`, `listorder`, `siteid`, `thumb`) VALUES
(1, 0, 0, '首页焦点图推荐', 20, NULL, 1, 1, ''),
(2, 0, 0, '首页头条推荐', 20, NULL, 4, 1, ''),
(13, 82, 0, '栏目页焦点图', 20, NULL, 0, 1, ''),
(5, 69, 0, '推荐下载', 20, NULL, 0, 1, ''),
(8, 30, 54, '图片频道首页焦点图', 20, NULL, 0, 1, ''),
(9, 0, 0, '网站顶部推荐', 20, NULL, 0, 1, ''),
(10, 0, 0, '栏目首页推荐', 20, NULL, 0, 1, ''),
(12, 0, 0, '首页图片推荐', 20, NULL, 0, 1, ''),
(14, 0, 0, '视频首页焦点图', 20, '', 0, 1, ''),
(15, 0, 0, '视频首页头条推荐', 20, '', 0, 1, ''),
(16, 0, 0, '视频首页每日热点', 20, '', 0, 1, ''),
(17, 0, 0, '视频栏目精彩推荐', 20, '', 0, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `v9_position_data`
--

CREATE TABLE `v9_position_data` (
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `posid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `module` char(20) DEFAULT NULL,
  `modelid` smallint(6) UNSIGNED DEFAULT '0',
  `thumb` tinyint(1) NOT NULL DEFAULT '0',
  `data` mediumtext,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `listorder` mediumint(8) DEFAULT '0',
  `expiration` int(10) NOT NULL,
  `extention` char(30) DEFAULT NULL,
  `synedit` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_position_data`
--

INSERT INTO `v9_position_data` (`id`, `catid`, `posid`, `module`, `modelid`, `thumb`, `data`, `siteid`, `listorder`, `expiration`, `extention`, `synedit`) VALUES
(43, 10, 1, 'content', 1, 1, '{"title":"\\u901a\\u77e5\\u516c\\u544a5","description":"\\u901a\\u77e5\\u516c\\u544a\\u901a\\u77e5\\u516c\\u544a\\u901a\\u77e5\\u516c\\u544a","thumb":"http:\\/\\/communi.chenyimin.cn\\/uploadfile\\/2017\\/0212\\/20170212055144456.jpg","inputtime":"1483782876","style":""}', 1, 43, 0, NULL, 0),
(42, 10, 1, 'content', 1, 1, '{"title":"\\u901a\\u77e5\\u516c\\u544a","description":"\\u901a\\u77e5\\u516c\\u544a\\u901a\\u77e5\\u516c\\u544a\\u901a\\u77e5\\u516c\\u544a\\u901a\\u77e5\\u516c\\u544a\\u901a\\u77e5\\u516c\\u544a","thumb":"http:\\/\\/communi.chenyimin.cn\\/uploadfile\\/2017\\/0212\\/20170212055203151.jpg","inputtime":"1483782858","style":""}', 1, 42, 0, NULL, 0),
(41, 10, 1, 'content', 1, 1, '{"title":"\\u901a\\u77e5\\u516c\\u544a","description":"\\u901a\\u77e5\\u516c\\u544a\\u901a\\u77e5\\u516c\\u544a\\u901a\\u77e5\\u516c\\u544a\\u901a\\u77e5\\u516c\\u544a","thumb":"http:\\/\\/communi.chenyimin.cn\\/uploadfile\\/2017\\/0212\\/20170212055221409.jpg","inputtime":"1483782736","style":""}', 1, 41, 0, NULL, 0),
(40, 10, 1, 'content', 1, 1, '{"title":"\\u901a\\u77e5\\u516c\\u544a","description":"\\u901a\\u77e5\\u516c\\u544a\\u901a\\u77e5\\u516c\\u544a\\u901a\\u77e5\\u516c\\u544a","thumb":"http:\\/\\/communi.chenyimin.cn\\/uploadfile\\/2017\\/0212\\/20170212055243134.jpg","inputtime":"1483782720","style":""}', 1, 40, 0, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_poster_201612`
--

CREATE TABLE `v9_poster_201612` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `spaceid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `area` char(40) NOT NULL,
  `ip` char(15) NOT NULL,
  `referer` char(120) NOT NULL,
  `clicktime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_queue`
--

CREATE TABLE `v9_queue` (
  `id` int(10) NOT NULL,
  `type` char(5) DEFAULT NULL,
  `siteid` smallint(5) UNSIGNED DEFAULT '0',
  `path` varchar(100) DEFAULT NULL,
  `status1` tinyint(1) DEFAULT '0',
  `status2` tinyint(1) DEFAULT '0',
  `status3` tinyint(1) DEFAULT '0',
  `status4` tinyint(1) DEFAULT '0',
  `times` int(10) UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_release_point`
--

CREATE TABLE `v9_release_point` (
  `id` mediumint(8) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `host` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `port` varchar(10) DEFAULT '21',
  `pasv` tinyint(1) DEFAULT '0',
  `ssl` tinyint(1) DEFAULT '0',
  `path` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_search`
--

CREATE TABLE `v9_search` (
  `searchid` int(10) UNSIGNED NOT NULL,
  `typeid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `adddate` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_search`
--

INSERT INTO `v9_search` (`searchid`, `typeid`, `id`, `adddate`, `data`, `siteid`) VALUES
(1, 1, 1, 1482468453, '一篇很长的文章啊 文章 文章 这是', 1),
(39, 1, 42, 1483782858, '通知公告 通知公告 ', 1),
(40, 1, 43, 1483782876, '通知公告5 通知公告 ', 1),
(37, 1, 40, 1483782720, '通知公告 通知公告 ', 1),
(38, 1, 41, 1483782736, '通知公告 通知公告 ', 1),
(6, 1, 6, 1482682146, '中荷双国交流 中荷双国交流 交流 部分 这个 内容 摘要', 1),
(7, 1, 7, 1482682201, '中荷双国交流 zzsfzdjf 交流 部分 摘要 这个', 1),
(8, 1, 8, 1482682243, '中新交流 中新 中新 交流 部分 这个 摘要', 1),
(9, 1, 9, 1482682386, '中新交流 中新 交流 中新 摘要', 1),
(10, 3, 1, 1483166019, '一学期交换美国 美国 学期 学期 交换 国美', 1),
(11, 3, 2, 1483172809, '这个是中外办学项目 项目 这个 办学 中外 项目', 1),
(12, 1, 10, 1483175380, '学历生 UNDERGRATE STUDENTS 学历 学历', 1),
(13, 1, 11, 1483175451, '语言生 LANGUAGE STUDENTS 语言 语言', 1),
(14, 1, 12, 1483175485, '交换生 EXCHAGE STUDENTS 交换生 EXCHAGE STUDENTS 交换', 1),
(15, 1, 13, 1483175514, '2016年国际学生招生简章 2016 ADMISSION GCU 国际学生 招生简章 招生简章 学生 国际', 1),
(16, 1, 14, 1483175552, '外国留学生实习申请表 APPLICATION FOR GCU 申请表 留学生 外国 留学生 申请表 实习 外国', 1),
(17, 1, 15, 1483175584, '入学与签证指引 APPLICATION AND VISA GCU 签证 签证 指引 入学', 1),
(18, 1, 16, 1483175624, '学生手册 STUDENT HANDBOOK 手册 学生 手册 学生', 1),
(19, 1, 17, 1483175664, '办理居留许可指引 GUIDE OF APPLYING FOR RESIDENT  许可 指引 办理', 1),
(20, 1, 18, 1483175713, '行前指引 PRE-DEPARTURE GUIDE 行前指引 PRE-DEPARTURE GUIDE 指引', 1),
(21, 1, 19, 1483175746, '校外住宿申请表 APPLICATION FORM FOR LIVING-OFF 申请表 申请表 住宿', 1),
(22, 1, 20, 1483175788, '退宿申请流程 GUIDE OF CHECK-OUT FROM DORM 流程 流程 申请', 1),
(23, 1, 21, 1483177480, '广东省来粤留学生奖学金管理暂行方法 广东省 留学生 广东省 留学生 方法 暂行 奖学金 管理', 1),
(24, 1, 22, 1483180572, '广东省政府来粤留学生奖学金申请表(一) 广东省政府 申请表 奖学金 奖学金 广东省 政府 申请表 留学生', 1),
(25, 1, 23, 1483183330, '这个是外教活动的内容 外教 内容 内容 外教 这个 活动', 1),
(26, 1, 24, 1483763788, '这里是一学期研习的标题 学期 标题 学期 这里 内容 重要 标题 非常 尝试 填写 但是 信息 应该 知道', 1),
(27, 1, 25, 1483764403, 'IEEE认证一号文件 文件 内容 文件 认证 有没有 到底 这是 测试 一号文件', 1),
(28, 1, 26, 1483764463, 'IEEE认证二号文件 文件 认证 显示 这里 老师 主要 内容 文件', 1),
(29, 1, 27, 1483764526, 'ABET国际认证的内容 国际认证 内容 内容 这里 基本 老师', 1),
(30, 1, 28, 1483764590, '国际认证添加多一条把 加多 国际认证 添加 内容', 1),
(31, 1, 30, 1483764667, '港澳台合作统一模板 模板 港澳台 统一 合作 这里 概述', 1),
(32, 1, 35, 1483764729, '港澳台合作的二号文件 文件 港澳台 合作 文件 概述', 1),
(33, 1, 36, 1483765447, '招生简介文章 简介 文章 文章 简介 招生 内容', 1),
(34, 1, 37, 1483775654, '外事通讯文章 外事 通讯 文章 文章 通讯 这是', 1);

-- --------------------------------------------------------

--
-- 表的结构 `v9_search_keyword`
--

CREATE TABLE `v9_search_keyword` (
  `keyword` char(20) NOT NULL,
  `pinyin` char(20) NOT NULL,
  `searchnums` int(10) UNSIGNED NOT NULL,
  `data` char(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_session`
--

CREATE TABLE `v9_session` (
  `sessionid` char(32) NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL,
  `lastvisit` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `roleid` tinyint(3) UNSIGNED DEFAULT '0',
  `groupid` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL,
  `c` char(20) NOT NULL,
  `a` char(20) NOT NULL,
  `data` char(255) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_session`
--

INSERT INTO `v9_session` (`sessionid`, `userid`, `ip`, `lastvisit`, `roleid`, `groupid`, `m`, `c`, `a`, `data`) VALUES
('d9j18k5tsok6d7kvqnd3g6q9d3', 1, '127.0.0.1', 1488295831, 1, 0, 'admin', 'index', 'public_session_life', 'code|s:0:"";userid|s:1:"1";roleid|s:1:"1";pc_hash|s:6:"gqtULw";lock_screen|i:0;');

-- --------------------------------------------------------

--
-- 表的结构 `v9_site`
--

CREATE TABLE `v9_site` (
  `siteid` smallint(5) UNSIGNED NOT NULL,
  `name` char(30) DEFAULT '',
  `dirname` char(255) DEFAULT '',
  `domain` char(255) DEFAULT '',
  `site_title` char(255) DEFAULT '',
  `keywords` char(255) DEFAULT '',
  `description` char(255) DEFAULT '',
  `release_point` text,
  `default_style` char(50) DEFAULT NULL,
  `template` text,
  `setting` mediumtext,
  `uuid` char(40) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_site`
--

INSERT INTO `v9_site` (`siteid`, `name`, `dirname`, `domain`, `site_title`, `keywords`, `description`, `release_point`, `default_style`, `template`, `setting`, `uuid`) VALUES
(1, '默认站点', '', 'http://communi.chenyimin.cn/', '国际交流中心', '国际交流中心', '国际交流中心', '', 'default', 'default', '{"upload_maxsize":"2048","upload_allowext":"jpg|jpeg|gif|bmp|png|doc|docx|xls|xlsx|ppt|pptx|pdf|txt|rar|zip|swf","watermark_enable":"0","watermark_minwidth":"300","watermark_minheight":"300","watermark_img":"statics\\/images\\/water\\/\\/mark.png","watermark_pct":"85","watermark_quality":"100","watermark_pos":"9"}', 'b1c7bc95-c85d-11e6-bb9c-f0761ccbeea9');

-- --------------------------------------------------------

--
-- 表的结构 `v9_special`
--

CREATE TABLE `v9_special` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `aid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` char(60) NOT NULL,
  `typeids` char(100) NOT NULL,
  `thumb` char(100) NOT NULL,
  `banner` char(100) NOT NULL,
  `description` char(255) NOT NULL,
  `url` char(100) NOT NULL,
  `ishtml` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ispage` tinyint(1) UNSIGNED NOT NULL,
  `filename` char(40) NOT NULL,
  `pics` char(100) NOT NULL,
  `voteid` char(60) NOT NULL,
  `style` char(20) NOT NULL,
  `index_template` char(40) NOT NULL,
  `list_template` char(40) NOT NULL,
  `show_template` char(60) NOT NULL,
  `css` text NOT NULL,
  `username` char(40) NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `listorder` smallint(5) UNSIGNED NOT NULL,
  `elite` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `isvideo` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_special_content`
--

CREATE TABLE `v9_special_content` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `specialid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `title` char(80) NOT NULL,
  `style` char(24) NOT NULL,
  `typeid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `thumb` char(100) NOT NULL,
  `keywords` char(40) NOT NULL,
  `description` char(255) NOT NULL,
  `url` char(100) NOT NULL,
  `curl` char(15) NOT NULL,
  `listorder` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `searchid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `islink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `isdata` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `videoid` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_special_c_data`
--

CREATE TABLE `v9_special_c_data` (
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(40) NOT NULL,
  `content` text NOT NULL,
  `paginationtype` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `maxcharperpage` mediumint(6) UNSIGNED NOT NULL DEFAULT '0',
  `style` char(20) NOT NULL,
  `show_template` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_sphinx_counter`
--

CREATE TABLE `v9_sphinx_counter` (
  `counter_id` int(11) UNSIGNED NOT NULL,
  `max_doc_id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_sso_admin`
--

CREATE TABLE `v9_sso_admin` (
  `id` smallint(6) NOT NULL,
  `username` char(20) NOT NULL,
  `password` char(32) NOT NULL,
  `encrypt` char(6) DEFAULT NULL,
  `issuper` tinyint(1) DEFAULT '0',
  `lastlogin` int(10) DEFAULT NULL,
  `ip` char(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_sso_admin`
--

INSERT INTO `v9_sso_admin` (`id`, `username`, `password`, `encrypt`, `issuper`, `lastlogin`, `ip`) VALUES
(1, 'phpcms', 'dab3edf65dcde470a780129685d2e736', 'vmriyE', 1, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `v9_sso_applications`
--

CREATE TABLE `v9_sso_applications` (
  `appid` smallint(6) UNSIGNED NOT NULL,
  `type` char(16) NOT NULL DEFAULT '',
  `name` char(20) NOT NULL DEFAULT '',
  `url` char(255) NOT NULL DEFAULT '',
  `authkey` char(255) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `apifilename` char(30) NOT NULL DEFAULT 'phpsso.php',
  `charset` char(8) NOT NULL DEFAULT '',
  `synlogin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_sso_applications`
--

INSERT INTO `v9_sso_applications` (`appid`, `type`, `name`, `url`, `authkey`, `ip`, `apifilename`, `charset`, `synlogin`) VALUES
(1, 'phpcms_v9', 'phpcms v9', 'http://localhost/communi/', '11aX6s9V46MFyvFqYG1OM5BHe7pN5Gw7', '', 'api.php?op=phpsso', 'utf-8', 1);

-- --------------------------------------------------------

--
-- 表的结构 `v9_sso_members`
--

CREATE TABLE `v9_sso_members` (
  `uid` int(10) UNSIGNED NOT NULL,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `random` char(8) NOT NULL DEFAULT '',
  `email` char(32) NOT NULL DEFAULT '',
  `regip` char(15) NOT NULL DEFAULT '',
  `regdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` char(15) NOT NULL DEFAULT '0',
  `lastdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `appname` char(15) NOT NULL,
  `type` enum('app','connect') DEFAULT NULL,
  `avatar` tinyint(1) NOT NULL DEFAULT '0',
  `ucuserid` mediumint(8) UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_sso_messagequeue`
--

CREATE TABLE `v9_sso_messagequeue` (
  `id` int(10) UNSIGNED NOT NULL,
  `operation` char(32) NOT NULL,
  `succeed` tinyint(1) NOT NULL DEFAULT '0',
  `totalnum` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `noticedata` mediumtext NOT NULL,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `appstatus` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_sso_session`
--

CREATE TABLE `v9_sso_session` (
  `sessionid` char(32) NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL,
  `lastvisit` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `roleid` tinyint(3) UNSIGNED DEFAULT '0',
  `groupid` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL,
  `c` char(20) NOT NULL,
  `a` char(20) NOT NULL,
  `data` char(255) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_sso_settings`
--

CREATE TABLE `v9_sso_settings` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_sso_settings`
--

INSERT INTO `v9_sso_settings` (`name`, `data`) VALUES
('denyemail', ''),
('denyusername', ''),
('creditrate', ''),
('sp4', ''),
('ucenter', '');

-- --------------------------------------------------------

--
-- 表的结构 `v9_tag`
--

CREATE TABLE `v9_tag` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `tag` text NOT NULL,
  `name` char(40) NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `module` char(20) NOT NULL,
  `action` char(20) NOT NULL,
  `data` text NOT NULL,
  `page` char(15) NOT NULL,
  `return` char(20) NOT NULL,
  `cache` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `num` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_template_bak`
--

CREATE TABLE `v9_template_bak` (
  `id` int(10) NOT NULL,
  `creat_at` int(10) UNSIGNED DEFAULT '0',
  `fileid` char(50) DEFAULT NULL,
  `userid` mediumint(8) DEFAULT NULL,
  `username` char(20) DEFAULT NULL,
  `template` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_times`
--

CREATE TABLE `v9_times` (
  `username` char(40) NOT NULL,
  `ip` char(15) NOT NULL,
  `logintime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `times` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_type`
--

CREATE TABLE `v9_type` (
  `typeid` smallint(5) UNSIGNED NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `module` char(15) NOT NULL,
  `modelid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `name` char(30) NOT NULL,
  `parentid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `typedir` char(20) NOT NULL,
  `url` char(100) NOT NULL,
  `template` char(30) NOT NULL,
  `listorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_type`
--

INSERT INTO `v9_type` (`typeid`, `siteid`, `module`, `modelid`, `name`, `parentid`, `typedir`, `url`, `template`, `listorder`, `description`) VALUES
(52, 1, 'search', 0, '专题', 0, 'special', '', '', 4, '专题'),
(1, 1, 'search', 1, '新闻', 0, '', '', '', 1, '新闻模型搜索'),
(2, 1, 'search', 2, '下载', 0, '', '', '', 3, '下载模型搜索'),
(3, 1, 'search', 3, '图片', 0, '', '', '', 2, '图片模型搜索'),
(53, 1, 'link', 0, '教学单位', 0, '', '', '', 0, '学校各教学单位的组织官网'),
(54, 1, 'link', 0, '职能部门', 0, '', '', '', 0, '学校职能部门的链接'),
(55, 1, 'link', 0, '友情链接', 0, '', '', '', 0, '最底部的友情链接 栏目'),
(56, 1, 'link', 0, '合作院校', 0, '', '', '', 0, '与外校合作院校的链接情况');

-- --------------------------------------------------------

--
-- 表的结构 `v9_urlrule`
--

CREATE TABLE `v9_urlrule` (
  `urlruleid` smallint(5) UNSIGNED NOT NULL,
  `module` varchar(15) NOT NULL,
  `file` varchar(20) NOT NULL,
  `ishtml` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `urlrule` varchar(255) NOT NULL,
  `example` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_urlrule`
--

INSERT INTO `v9_urlrule` (`urlruleid`, `module`, `file`, `ishtml`, `urlrule`, `example`) VALUES
(1, 'content', 'category', 1, '{$categorydir}{$catdir}/index.html|{$categorydir}{$catdir}/{$page}.html', 'news/china/1000.html'),
(6, 'content', 'category', 0, 'index.php?m=content&c=index&a=lists&catid={$catid}|index.php?m=content&c=index&a=lists&catid={$catid}&page={$page}', 'index.php?m=content&c=index&a=lists&catid=1&page=1'),
(11, 'content', 'show', 1, '{$year}/{$catdir}_{$month}{$day}/{$id}.html|{$year}/{$catdir}_{$month}{$day}/{$id}_{$page}.html', '2010/catdir_0720/1_2.html'),
(12, 'content', 'show', 1, '{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}.html|{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}_{$page}.html', 'it/product/2010/0720/1_2.html'),
(16, 'content', 'show', 0, 'index.php?m=content&c=index&a=show&catid={$catid}&id={$id}|index.php?m=content&c=index&a=show&catid={$catid}&id={$id}&page={$page}', 'index.php?m=content&c=index&a=show&catid=1&id=1'),
(17, 'content', 'show', 0, 'show-{$catid}-{$id}-{$page}.html', 'show-1-2-1.html'),
(18, 'content', 'show', 0, 'content-{$catid}-{$id}-{$page}.html', 'content-1-2-1.html'),
(30, 'content', 'category', 0, 'list-{$catid}-{$page}.html', 'list-1-1.html');

-- --------------------------------------------------------

--
-- 表的结构 `v9_video`
--

CREATE TABLE `v9_video` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `typeid` smallint(5) UNSIGNED NOT NULL,
  `title` char(80) NOT NULL DEFAULT '',
  `style` char(24) NOT NULL DEFAULT '',
  `thumb` char(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  `posids` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `islink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `vision` varchar(255) NOT NULL DEFAULT '',
  `video_category` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_video_content`
--

CREATE TABLE `v9_video_content` (
  `contentid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modelid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `videoid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `listorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_video_data`
--

CREATE TABLE `v9_video_data` (
  `id` mediumint(8) UNSIGNED DEFAULT '0',
  `content` text NOT NULL,
  `readpoint` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) NOT NULL,
  `paytype` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `relation` varchar(255) NOT NULL DEFAULT '',
  `video` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_video_store`
--

CREATE TABLE `v9_video_store` (
  `videoid` int(10) UNSIGNED NOT NULL,
  `title` char(60) NOT NULL,
  `vid` char(40) NOT NULL,
  `keywords` char(40) NOT NULL,
  `description` char(255) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `listorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `picpath` char(120) NOT NULL,
  `size` char(20) NOT NULL,
  `timelen` mediumint(9) NOT NULL DEFAULT '0',
  `userupload` tinyint(1) NOT NULL DEFAULT '0',
  `channelid` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_workflow`
--

CREATE TABLE `v9_workflow` (
  `workflowid` smallint(5) UNSIGNED NOT NULL,
  `siteid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `steps` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `workname` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `setting` text NOT NULL,
  `flag` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_workflow`
--

INSERT INTO `v9_workflow` (`workflowid`, `siteid`, `steps`, `workname`, `description`, `setting`, `flag`) VALUES
(1, 1, 1, '一级审核', '审核一次', '', 0),
(2, 1, 2, '二级审核', '审核两次', '', 0),
(3, 1, 3, '三级审核', '审核三次', '', 0),
(4, 1, 4, '四级审核', '四级审核', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `v9_admin`
--
ALTER TABLE `v9_admin`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `v9_admin_panel`
--
ALTER TABLE `v9_admin_panel`
  ADD UNIQUE KEY `userid` (`menuid`,`userid`);

--
-- Indexes for table `v9_admin_role`
--
ALTER TABLE `v9_admin_role`
  ADD PRIMARY KEY (`roleid`),
  ADD KEY `listorder` (`listorder`),
  ADD KEY `disabled` (`disabled`);

--
-- Indexes for table `v9_admin_role_priv`
--
ALTER TABLE `v9_admin_role_priv`
  ADD KEY `roleid` (`roleid`,`m`,`c`,`a`,`siteid`);

--
-- Indexes for table `v9_attachment`
--
ALTER TABLE `v9_attachment`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `authcode` (`authcode`);

--
-- Indexes for table `v9_attachment_index`
--
ALTER TABLE `v9_attachment_index`
  ADD KEY `keyid` (`keyid`),
  ADD KEY `aid` (`aid`);

--
-- Indexes for table `v9_badword`
--
ALTER TABLE `v9_badword`
  ADD PRIMARY KEY (`badid`),
  ADD UNIQUE KEY `badword` (`badword`),
  ADD KEY `usetimes` (`replaceword`,`listorder`),
  ADD KEY `hits` (`listorder`);

--
-- Indexes for table `v9_block`
--
ALTER TABLE `v9_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos` (`pos`),
  ADD KEY `type` (`type`),
  ADD KEY `siteid` (`siteid`);

--
-- Indexes for table `v9_block_history`
--
ALTER TABLE `v9_block_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v9_block_priv`
--
ALTER TABLE `v9_block_priv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blockid` (`blockid`),
  ADD KEY `roleid` (`roleid`,`siteid`);

--
-- Indexes for table `v9_cache`
--
ALTER TABLE `v9_cache`
  ADD PRIMARY KEY (`filename`,`path`);

--
-- Indexes for table `v9_category`
--
ALTER TABLE `v9_category`
  ADD PRIMARY KEY (`catid`),
  ADD KEY `module` (`module`,`parentid`,`listorder`,`catid`),
  ADD KEY `siteid` (`siteid`,`type`);

--
-- Indexes for table `v9_category_priv`
--
ALTER TABLE `v9_category_priv`
  ADD KEY `catid` (`catid`,`roleid`,`is_admin`,`action`),
  ADD KEY `siteid` (`siteid`);

--
-- Indexes for table `v9_collection_content`
--
ALTER TABLE `v9_collection_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nodeid` (`nodeid`,`siteid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `v9_collection_history`
--
ALTER TABLE `v9_collection_history`
  ADD PRIMARY KEY (`md5`,`siteid`);

--
-- Indexes for table `v9_collection_node`
--
ALTER TABLE `v9_collection_node`
  ADD PRIMARY KEY (`nodeid`),
  ADD KEY `siteid` (`siteid`);

--
-- Indexes for table `v9_collection_program`
--
ALTER TABLE `v9_collection_program`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siteid` (`siteid`),
  ADD KEY `nodeid` (`nodeid`);

--
-- Indexes for table `v9_comment`
--
ALTER TABLE `v9_comment`
  ADD PRIMARY KEY (`commentid`),
  ADD KEY `lastupdate` (`lastupdate`),
  ADD KEY `siteid` (`siteid`);

--
-- Indexes for table `v9_comment_check`
--
ALTER TABLE `v9_comment_check`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siteid` (`siteid`),
  ADD KEY `comment_data_id` (`comment_data_id`);

--
-- Indexes for table `v9_comment_data_1`
--
ALTER TABLE `v9_comment_data_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commentid` (`commentid`),
  ADD KEY `direction` (`direction`),
  ADD KEY `siteid` (`siteid`),
  ADD KEY `support` (`support`);

--
-- Indexes for table `v9_comment_setting`
--
ALTER TABLE `v9_comment_setting`
  ADD PRIMARY KEY (`siteid`);

--
-- Indexes for table `v9_comment_table`
--
ALTER TABLE `v9_comment_table`
  ADD PRIMARY KEY (`tableid`);

--
-- Indexes for table `v9_content_check`
--
ALTER TABLE `v9_content_check`
  ADD KEY `username` (`username`),
  ADD KEY `checkid` (`checkid`),
  ADD KEY `status` (`status`,`inputtime`);

--
-- Indexes for table `v9_copyfrom`
--
ALTER TABLE `v9_copyfrom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v9_datacall`
--
ALTER TABLE `v9_datacall`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `v9_dbsource`
--
ALTER TABLE `v9_dbsource`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siteid` (`siteid`);

--
-- Indexes for table `v9_download`
--
ALTER TABLE `v9_download`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`,`listorder`,`id`),
  ADD KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  ADD KEY `catid` (`catid`,`status`,`id`);

--
-- Indexes for table `v9_download_data`
--
ALTER TABLE `v9_download_data`
  ADD KEY `id` (`id`);

--
-- Indexes for table `v9_downservers`
--
ALTER TABLE `v9_downservers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v9_extend_setting`
--
ALTER TABLE `v9_extend_setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key` (`key`);

--
-- Indexes for table `v9_favorite`
--
ALTER TABLE `v9_favorite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `v9_hits`
--
ALTER TABLE `v9_hits`
  ADD PRIMARY KEY (`hitsid`);

--
-- Indexes for table `v9_ipbanned`
--
ALTER TABLE `v9_ipbanned`
  ADD PRIMARY KEY (`ipbannedid`);

--
-- Indexes for table `v9_keylink`
--
ALTER TABLE `v9_keylink`
  ADD PRIMARY KEY (`keylinkid`);

--
-- Indexes for table `v9_keyword`
--
ALTER TABLE `v9_keyword`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keyword` (`keyword`,`siteid`);

--
-- Indexes for table `v9_keyword_data`
--
ALTER TABLE `v9_keyword_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagid` (`tagid`,`siteid`);

--
-- Indexes for table `v9_link`
--
ALTER TABLE `v9_link`
  ADD PRIMARY KEY (`linkid`),
  ADD KEY `typeid` (`typeid`,`passed`,`listorder`,`linkid`);

--
-- Indexes for table `v9_linkage`
--
ALTER TABLE `v9_linkage`
  ADD PRIMARY KEY (`linkageid`,`keyid`),
  ADD KEY `parentid` (`parentid`,`listorder`);

--
-- Indexes for table `v9_log`
--
ALTER TABLE `v9_log`
  ADD PRIMARY KEY (`logid`),
  ADD KEY `module` (`module`,`file`,`action`),
  ADD KEY `username` (`username`,`action`);

--
-- Indexes for table `v9_member`
--
ALTER TABLE `v9_member`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `email` (`email`(20)),
  ADD KEY `phpssouid` (`phpssouid`);

--
-- Indexes for table `v9_member_detail`
--
ALTER TABLE `v9_member_detail`
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `v9_member_group`
--
ALTER TABLE `v9_member_group`
  ADD PRIMARY KEY (`groupid`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `listorder` (`sort`);

--
-- Indexes for table `v9_member_menu`
--
ALTER TABLE `v9_member_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listorder` (`listorder`),
  ADD KEY `parentid` (`parentid`),
  ADD KEY `module` (`m`,`c`,`a`);

--
-- Indexes for table `v9_member_verify`
--
ALTER TABLE `v9_member_verify`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `email` (`email`(20));

--
-- Indexes for table `v9_member_vip`
--
ALTER TABLE `v9_member_vip`
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `v9_menu`
--
ALTER TABLE `v9_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listorder` (`listorder`),
  ADD KEY `parentid` (`parentid`),
  ADD KEY `module` (`m`,`c`,`a`);

--
-- Indexes for table `v9_model`
--
ALTER TABLE `v9_model`
  ADD PRIMARY KEY (`modelid`),
  ADD KEY `type` (`type`,`siteid`);

--
-- Indexes for table `v9_model_field`
--
ALTER TABLE `v9_model_field`
  ADD PRIMARY KEY (`fieldid`),
  ADD KEY `modelid` (`modelid`,`disabled`),
  ADD KEY `field` (`field`,`modelid`);

--
-- Indexes for table `v9_module`
--
ALTER TABLE `v9_module`
  ADD PRIMARY KEY (`module`);

--
-- Indexes for table `v9_news`
--
ALTER TABLE `v9_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`,`listorder`,`id`),
  ADD KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  ADD KEY `catid` (`catid`,`status`,`id`);

--
-- Indexes for table `v9_news_data`
--
ALTER TABLE `v9_news_data`
  ADD KEY `id` (`id`);

--
-- Indexes for table `v9_page`
--
ALTER TABLE `v9_page`
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `v9_pay_account`
--
ALTER TABLE `v9_pay_account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `userid` (`userid`),
  ADD KEY `trade_sn` (`trade_sn`,`money`,`status`,`id`);

--
-- Indexes for table `v9_pay_payment`
--
ALTER TABLE `v9_pay_payment`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `pay_code` (`pay_code`);

--
-- Indexes for table `v9_pay_spend`
--
ALTER TABLE `v9_pay_spend`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `creat_at` (`creat_at`),
  ADD KEY `logo` (`logo`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `v9_picture`
--
ALTER TABLE `v9_picture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`,`listorder`,`id`),
  ADD KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  ADD KEY `catid` (`catid`,`status`,`id`);

--
-- Indexes for table `v9_picture_data`
--
ALTER TABLE `v9_picture_data`
  ADD KEY `id` (`id`);

--
-- Indexes for table `v9_position`
--
ALTER TABLE `v9_position`
  ADD PRIMARY KEY (`posid`);

--
-- Indexes for table `v9_position_data`
--
ALTER TABLE `v9_position_data`
  ADD KEY `posid` (`posid`),
  ADD KEY `listorder` (`listorder`);

--
-- Indexes for table `v9_poster_201612`
--
ALTER TABLE `v9_poster_201612`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`type`,`ip`);

--
-- Indexes for table `v9_queue`
--
ALTER TABLE `v9_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siteid` (`siteid`),
  ADD KEY `times` (`times`);

--
-- Indexes for table `v9_release_point`
--
ALTER TABLE `v9_release_point`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v9_search`
--
ALTER TABLE `v9_search`
  ADD PRIMARY KEY (`searchid`),
  ADD KEY `typeid` (`typeid`,`id`),
  ADD KEY `siteid` (`siteid`);
ALTER TABLE `v9_search` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `v9_search_keyword`
--
ALTER TABLE `v9_search_keyword`
  ADD UNIQUE KEY `keyword` (`keyword`),
  ADD UNIQUE KEY `pinyin` (`pinyin`);
ALTER TABLE `v9_search_keyword` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `v9_session`
--
ALTER TABLE `v9_session`
  ADD PRIMARY KEY (`sessionid`),
  ADD KEY `lastvisit` (`lastvisit`);

--
-- Indexes for table `v9_site`
--
ALTER TABLE `v9_site`
  ADD PRIMARY KEY (`siteid`);

--
-- Indexes for table `v9_special`
--
ALTER TABLE `v9_special`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disabled` (`disabled`,`siteid`);

--
-- Indexes for table `v9_special_content`
--
ALTER TABLE `v9_special_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specialid` (`specialid`,`typeid`,`isdata`),
  ADD KEY `typeid` (`typeid`,`isdata`);

--
-- Indexes for table `v9_special_c_data`
--
ALTER TABLE `v9_special_c_data`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `v9_sphinx_counter`
--
ALTER TABLE `v9_sphinx_counter`
  ADD PRIMARY KEY (`counter_id`);

--
-- Indexes for table `v9_sso_admin`
--
ALTER TABLE `v9_sso_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `v9_sso_applications`
--
ALTER TABLE `v9_sso_applications`
  ADD PRIMARY KEY (`appid`),
  ADD KEY `synlogin` (`synlogin`);

--
-- Indexes for table `v9_sso_members`
--
ALTER TABLE `v9_sso_members`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `email` (`email`),
  ADD KEY `ucuserid` (`ucuserid`);

--
-- Indexes for table `v9_sso_messagequeue`
--
ALTER TABLE `v9_sso_messagequeue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dateline` (`dateline`),
  ADD KEY `succeed` (`succeed`,`id`);

--
-- Indexes for table `v9_sso_session`
--
ALTER TABLE `v9_sso_session`
  ADD PRIMARY KEY (`sessionid`),
  ADD KEY `lastvisit` (`lastvisit`);

--
-- Indexes for table `v9_sso_settings`
--
ALTER TABLE `v9_sso_settings`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `v9_tag`
--
ALTER TABLE `v9_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v9_template_bak`
--
ALTER TABLE `v9_template_bak`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fileid` (`fileid`);

--
-- Indexes for table `v9_times`
--
ALTER TABLE `v9_times`
  ADD PRIMARY KEY (`username`,`isadmin`);

--
-- Indexes for table `v9_type`
--
ALTER TABLE `v9_type`
  ADD PRIMARY KEY (`typeid`),
  ADD KEY `module` (`module`,`parentid`,`siteid`,`listorder`);

--
-- Indexes for table `v9_urlrule`
--
ALTER TABLE `v9_urlrule`
  ADD PRIMARY KEY (`urlruleid`);

--
-- Indexes for table `v9_video`
--
ALTER TABLE `v9_video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`,`listorder`,`id`),
  ADD KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  ADD KEY `catid` (`catid`,`status`,`id`);

--
-- Indexes for table `v9_video_content`
--
ALTER TABLE `v9_video_content`
  ADD KEY `videoid` (`videoid`);

--
-- Indexes for table `v9_video_data`
--
ALTER TABLE `v9_video_data`
  ADD KEY `id` (`id`);

--
-- Indexes for table `v9_video_store`
--
ALTER TABLE `v9_video_store`
  ADD PRIMARY KEY (`videoid`),
  ADD KEY `videoid` (`videoid`,`status`);

--
-- Indexes for table `v9_workflow`
--
ALTER TABLE `v9_workflow`
  ADD PRIMARY KEY (`workflowid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `v9_admin`
--
ALTER TABLE `v9_admin`
  MODIFY `userid` mediumint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `v9_admin_role`
--
ALTER TABLE `v9_admin_role`
  MODIFY `roleid` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `v9_attachment`
--
ALTER TABLE `v9_attachment`
  MODIFY `aid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- 使用表AUTO_INCREMENT `v9_badword`
--
ALTER TABLE `v9_badword`
  MODIFY `badid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_block`
--
ALTER TABLE `v9_block`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_block_history`
--
ALTER TABLE `v9_block_history`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_block_priv`
--
ALTER TABLE `v9_block_priv`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_category`
--
ALTER TABLE `v9_category`
  MODIFY `catid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- 使用表AUTO_INCREMENT `v9_collection_content`
--
ALTER TABLE `v9_collection_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_collection_node`
--
ALTER TABLE `v9_collection_node`
  MODIFY `nodeid` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_collection_program`
--
ALTER TABLE `v9_collection_program`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_comment_check`
--
ALTER TABLE `v9_comment_check`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_comment_data_1`
--
ALTER TABLE `v9_comment_data_1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '评论ID';
--
-- 使用表AUTO_INCREMENT `v9_comment_table`
--
ALTER TABLE `v9_comment_table`
  MODIFY `tableid` mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '表ID号', AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `v9_copyfrom`
--
ALTER TABLE `v9_copyfrom`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_datacall`
--
ALTER TABLE `v9_datacall`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_dbsource`
--
ALTER TABLE `v9_dbsource`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_download`
--
ALTER TABLE `v9_download`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_downservers`
--
ALTER TABLE `v9_downservers`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_extend_setting`
--
ALTER TABLE `v9_extend_setting`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_favorite`
--
ALTER TABLE `v9_favorite`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_ipbanned`
--
ALTER TABLE `v9_ipbanned`
  MODIFY `ipbannedid` smallint(5) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_keylink`
--
ALTER TABLE `v9_keylink`
  MODIFY `keylinkid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_keyword`
--
ALTER TABLE `v9_keyword`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- 使用表AUTO_INCREMENT `v9_keyword_data`
--
ALTER TABLE `v9_keyword_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- 使用表AUTO_INCREMENT `v9_link`
--
ALTER TABLE `v9_link`
  MODIFY `linkid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `v9_linkage`
--
ALTER TABLE `v9_linkage`
  MODIFY `linkageid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3360;
--
-- 使用表AUTO_INCREMENT `v9_log`
--
ALTER TABLE `v9_log`
  MODIFY `logid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=860;
--
-- 使用表AUTO_INCREMENT `v9_member`
--
ALTER TABLE `v9_member`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_member_group`
--
ALTER TABLE `v9_member_group`
  MODIFY `groupid` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `v9_member_menu`
--
ALTER TABLE `v9_member_menu`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `v9_member_verify`
--
ALTER TABLE `v9_member_verify`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_menu`
--
ALTER TABLE `v9_menu`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1621;
--
-- 使用表AUTO_INCREMENT `v9_model`
--
ALTER TABLE `v9_model`
  MODIFY `modelid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `v9_model_field`
--
ALTER TABLE `v9_model_field`
  MODIFY `fieldid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- 使用表AUTO_INCREMENT `v9_news`
--
ALTER TABLE `v9_news`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- 使用表AUTO_INCREMENT `v9_pay_account`
--
ALTER TABLE `v9_pay_account`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_pay_payment`
--
ALTER TABLE `v9_pay_payment`
  MODIFY `pay_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_pay_spend`
--
ALTER TABLE `v9_pay_spend`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_picture`
--
ALTER TABLE `v9_picture`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `v9_position`
--
ALTER TABLE `v9_position`
  MODIFY `posid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- 使用表AUTO_INCREMENT `v9_poster_201612`
--
ALTER TABLE `v9_poster_201612`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_queue`
--
ALTER TABLE `v9_queue`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_release_point`
--
ALTER TABLE `v9_release_point`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_search`
--
ALTER TABLE `v9_search`
  MODIFY `searchid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- 使用表AUTO_INCREMENT `v9_site`
--
ALTER TABLE `v9_site`
  MODIFY `siteid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `v9_special`
--
ALTER TABLE `v9_special`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_special_content`
--
ALTER TABLE `v9_special_content`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_sso_admin`
--
ALTER TABLE `v9_sso_admin`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `v9_sso_applications`
--
ALTER TABLE `v9_sso_applications`
  MODIFY `appid` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `v9_sso_members`
--
ALTER TABLE `v9_sso_members`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_sso_messagequeue`
--
ALTER TABLE `v9_sso_messagequeue`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_tag`
--
ALTER TABLE `v9_tag`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_template_bak`
--
ALTER TABLE `v9_template_bak`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_type`
--
ALTER TABLE `v9_type`
  MODIFY `typeid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- 使用表AUTO_INCREMENT `v9_urlrule`
--
ALTER TABLE `v9_urlrule`
  MODIFY `urlruleid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- 使用表AUTO_INCREMENT `v9_video`
--
ALTER TABLE `v9_video`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_video_store`
--
ALTER TABLE `v9_video_store`
  MODIFY `videoid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `v9_workflow`
--
ALTER TABLE `v9_workflow`
  MODIFY `workflowid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
