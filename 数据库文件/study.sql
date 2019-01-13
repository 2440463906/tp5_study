-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-10-26 09:09:08
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `study`
--

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE `article` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `desc` text NOT NULL COMMENT '概要',
  `content` text NOT NULL,
  `top` int(11) NOT NULL DEFAULT '0' COMMENT '文章作用',
  `create_time` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `hot` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`id`, `title`, `desc`, `content`, `top`, `create_time`, `uid`, `hot`) VALUES
(31, '讨论帖', '欢迎各位同学前来一起讨论学习。', '欢迎各位同学前来一起讨论学习。', 9, 1540439503, 36, 0),
(32, '我叫小白胖', '我叫小白胖', '<span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span></span>', 0, 1540440327, 36, 0),
(33, '讨论帖', '欢迎各位同学前来一起讨论学习。', '欢迎各位同学前来一起讨论学习。', 9, 1540440400, 37, 0),
(34, '怎么报到呀', '安徽新华学院怎么报到呀', '安徽新华学院怎么报到呀，安徽新华', 0, 1540440700, 37, 25),
(35, '讨论帖', '欢迎各位同学前来一起讨论学习。', '欢迎各位同学前来一起讨论学习。', 9, 1540440799, 38, 0);

-- --------------------------------------------------------

--
-- 表的结构 `attention`
--

CREATE TABLE `attention` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL COMMENT '我的id',
  `uid` int(11) NOT NULL COMMENT '他的id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='关注表';

--
-- 转存表中的数据 `attention`
--

INSERT INTO `attention` (`id`, `mid`, `uid`) VALUES
(9, 37, 36),
(10, 38, 37),
(11, 38, 36);

-- --------------------------------------------------------

--
-- 表的结构 `class`
--

CREATE TABLE `class` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `cname` varchar(20) NOT NULL DEFAULT '新建班级',
  `introd` text COMMENT '班级简介'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `class`
--

INSERT INTO `class` (`id`, `uid`, `cname`, `introd`) VALUES
(9, 36, '网络工程', '计算机网络工程师'),
(10, 36, '网络工程2班', '计算机网络工程2班'),
(15, 37, '网络工程2班', '计算机网络工程2班'),
(12, 38, '网络工程', '计算机网络工程师'),
(14, 37, '网络工程', '计算机网络工程师');

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE `comment` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `aid` int(10) NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `comment`
--

INSERT INTO `comment` (`id`, `uid`, `aid`, `comment`) VALUES
(22, 37, 34, '这你都不知道'),
(23, 37, 33, '111');

-- --------------------------------------------------------

--
-- 表的结构 `swork`
--

CREATE TABLE `swork` (
  `int` int(20) NOT NULL,
  `grade` varchar(10) DEFAULT NULL COMMENT 'abcde',
  `uid` int(20) NOT NULL,
  `wid` int(20) NOT NULL,
  `comment` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `swork`
--

INSERT INTO `swork` (`int`, `grade`, `uid`, `wid`, `comment`) VALUES
(1, NULL, 37, 6, NULL),
(2, NULL, 37, 7, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `twork`
--

CREATE TABLE `twork` (
  `id` int(20) NOT NULL,
  `title` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `cname` varchar(50) NOT NULL,
  `uid` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `twork`
--

INSERT INTO `twork` (`id`, `title`, `content`, `cname`, `uid`) VALUES
(6, '计算机导论', '计算机导论实验报告', '网络工程', 36),
(7, '计算机', '计算机实验报告', '网络工程', 36);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `nickname` varchar(20) NOT NULL DEFAULT '昵称' COMMENT '昵称',
  `email` varchar(50) NOT NULL,
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `rank` int(11) NOT NULL COMMENT '等级 教师0 学生1',
  `sex` int(11) NOT NULL COMMENT '性别 男1 女0',
  `autograph` varchar(50) NOT NULL DEFAULT '这个人很懒，什么都没留下……' COMMENT '个性签名',
  `face` varchar(200) DEFAULT NULL COMMENT '头像',
  `state` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nickname`, `email`, `create_time`, `rank`, `sex`, `autograph`, `face`, `state`) VALUES
(36, '章娟', '698d51a19d8a121ce581499d7b701668', '章娟', '11aaaa1@qq.com', 1540439503, 0, 0, '我不是很懒……', '361540440181.png', 0),
(37, '李正', '698d51a19d8a121ce581499d7b701668', '李正', '11aaaa1@qq.com', 1540440400, 1, 1, '这个人很懒，什么都没留下……', '371540470190.png', 0),
(38, '跳与白胖', '698d51a19d8a121ce581499d7b701668', '跳与白胖', '11aaaa1@qq.com', 1540440799, 1, 0, '这个人很懒，什么都没留下……', '381540476328.png', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attention`
--
ALTER TABLE `attention`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `swork`
--
ALTER TABLE `swork`
  ADD PRIMARY KEY (`int`);

--
-- Indexes for table `twork`
--
ALTER TABLE `twork`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `article`
--
ALTER TABLE `article`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- 使用表AUTO_INCREMENT `attention`
--
ALTER TABLE `attention`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `class`
--
ALTER TABLE `class`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- 使用表AUTO_INCREMENT `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- 使用表AUTO_INCREMENT `swork`
--
ALTER TABLE `swork`
  MODIFY `int` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `twork`
--
ALTER TABLE `twork`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
