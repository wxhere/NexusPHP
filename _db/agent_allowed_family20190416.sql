-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- 主机: localhost:3306
-- 生成日期: 2019 年 04 月 16 日 00:55
-- 服务器版本: 5.6.43-log
-- PHP 版本: 5.6.33

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `www`
--

-- --------------------------------------------------------

--
-- 表的结构 `agent_allowed_family`
--

CREATE TABLE IF NOT EXISTS `agent_allowed_family` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `family` varchar(50) NOT NULL DEFAULT '',
  `start_name` varchar(100) NOT NULL DEFAULT '',
  `peer_id_pattern` varchar(200) NOT NULL,
  `peer_id_match_num` tinyint(3) unsigned NOT NULL,
  `peer_id_matchtype` enum('dec','hex') NOT NULL DEFAULT 'dec',
  `peer_id_start` varchar(20) NOT NULL,
  `agent_pattern` varchar(200) NOT NULL,
  `agent_match_num` tinyint(3) unsigned NOT NULL,
  `agent_matchtype` enum('dec','hex') NOT NULL DEFAULT 'dec',
  `agent_start` varchar(100) NOT NULL,
  `exception` enum('yes','no') NOT NULL DEFAULT 'no',
  `allowhttps` enum('yes','no') NOT NULL DEFAULT 'no',
  `comment` varchar(200) NOT NULL DEFAULT '',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- 转存表中的数据 `agent_allowed_family`
--

INSERT INTO `agent_allowed_family` (`id`, `family`, `start_name`, `peer_id_pattern`, `peer_id_match_num`, `peer_id_matchtype`, `peer_id_start`, `agent_pattern`, `agent_match_num`, `agent_matchtype`, `agent_start`, `exception`, `allowhttps`, `comment`, `hits`) VALUES
(1, 'Azureus 2.5.0.4', 'Azureus 2.5.0.4', '/^-AZ2504-/', 0, 'dec', '-AZ2504-', '/^Azureus 2.5.0.4/', 0, 'dec', 'Azureus 2.5.0.4', 'no', 'yes', '', 0),
(2, 'Azureus 3.x', 'Azureus 3.0.5.0', '/^-AZ3([0-9])([0-9])([0-9])-/', 3, 'dec', '-AZ3050-', '/^Azureus 3\\.([0-9])\\.([0-9])\\.([0-9])/', 3, 'dec', 'Azureus 3.0.5.0', 'no', 'yes', '', 0),
(3, 'Azureus 4.0', 'Azureus 4.0.0.0', '/^-AZ4([0-9])([0-9])([0-9])-/', 3, 'dec', '-AZ4000-', '/^Azureus 4\\.([0-9])\\.([0-9])\\.([0-9])/', 3, 'dec', 'Azureus 4.0.0.0', 'no', 'yes', '', 0),
(4, 'Azureus 4.x', 'Vuze 4.0.0.2', '/^-AZ4([0-9])([0-9])([0-9])-/', 3, 'dec', '-AZ4002-', '/^Azureus 4\\.([0-9])\\.([0-9])\\.([0-9])/', 3, 'dec', 'Azureus 4.0.0.2', 'no', 'yes', '', 0),
(5, 'Azureus 5.0', 'Azureus 5.0.0.0', '/^-AZ5([0-9])([0-9])([0-9])-/', 3, 'dec', '-AZ5000-', '/^Azureus 5\\.([0-9])\\.([0-9])\\.([0-9])/', 3, 'dec', 'Azureus 5.0.0.0', 'no', 'yes', '', 0),
(6, 'BitComet 1.56.3.13', 'BitComet 1.56.3.13', '/^-BC01([0-9])([0-9])-/', 2, 'dec', '-BC0156-', '/^BitComet\\/1\\.([0-9]+)\\.([0-9]+)\\.([0-9]+)/', 3, 'dec', 'BitComet/1.56.3.13', 'no', 'yes', '', 0),
(7, 'BitRocket 0.x', 'BitRocket 0.3.3(32)', '/^-BR0([0-9])([1-9][0-9]*)-/', 2, 'dec', '-BR0332-', '/^BitRocket\\/0\\.([0-9])\\.([0-9])\\(([1-9][0-9]*)\\) libtorrent\\/0\\.([1-9][0-9]*)\\.(0|[1-9][0-9]*)\\.(0|[1-9][0-9]*)/', 6, 'dec', 'BitRocket/0.3.3(32) libtorrent/0.13.0.0', 'no', 'yes', '', 0),
(8, 'Bittorrent 6.x', 'Bittorrent 6.0.1', '/^M6-([0-9])-([0-9])--/', 2, 'dec', 'M6-0-1--', '/^BitTorrent\\/6([0-9])([0-9])([0-9])/', 3, 'dec', 'BitTorrent/6010', 'no', 'yes', '', 0),
(9, 'Deluge 1.3.13', 'Deluge 1.3.13', '/^-DE1([0-9A-E])([0-9A-E])([0-9A-E])-/', 3, 'dec', '-DE13D0-', '/^Deluge 1.([0-9]).([0-9])([0-9])/', 2, 'dec', 'Deluge 1.3.13', 'no', 'yes', '', 0),
(10, 'Deluge 1.x', 'Deluge 1.1.6', '/^-DE1([0-9])([0-9])([0-9])-/', 3, 'dec', '-DE1160-', '/^Deluge 1\\.([0-9])\\.([0-9])/', 2, 'dec', 'Deluge 1.1.6', 'no', 'yes', 'Deluge 1.1.6', 0),
(11, 'MLDonkey 2.9.x', 'MLDonkey 2.9.2', '/^-ML2\\.9\\.([0-9])-/', 1, 'dec', '-ML2.9.2-', '/^MLDonkey\\/2\\.9\\.([0-9])/', 1, 'dec', 'MLDonkey/2.9.2', 'no', 'yes', '', 0),
(12, 'qBittorrent v3.x', 'qBittorrent v3.3', '/-qB3([0-9A-F])([0-9A-F])([0-9A-F])-/', 3, 'hex', '-qB3300-', '/^qBittorrent v3.([0-9]+).([0-9]+)/', 2, 'dec', 'qBittorrent v3.3.0', 'no', 'yes', '', 0),
(13, 'qBittorrent4.x.x', 'qBittorrent4.x.x', '/-qB4([0-9A-F])([0-9A-F])([0-9A-F])-/', 3, 'hex', '-qB4010-', '/^qBittorrent\\/4\\.([0-9]+)\\.([0-9]+)/', 2, 'dec', 'qBittorrent/4.0.1', 'no', 'yes', '', 0),
(14, 'RTorrent 0.x(with libtorrent 0.x)', 'rTorrent 0.8.0 (with libtorrent 0.12.0)', '/^-lt([0-9A-E])([0-9A-E])([0-9A-E])([0-9A-E])-/', 4, 'hex', '-lt0C00-', '/^rtorrent\\/0\\.([0-9])\\.([0-9])\\/0\\.([1-9][0-9]*)\\.(0|[1-9][0-9]*)/', 4, 'dec', 'rtorrent/0.8.0/0.12.0', 'no', 'yes', '', 0),
(15, 'Rufus 0.x', 'Rufus 0.6.9', '', 0, 'dec', '', '/^Rufus\\/0\\.([0-9])\\.([0-9])/', 2, 'dec', 'Rufus/0.6.9', 'no', 'no', '', 0),
(16, 'SymTorrent', '', '', 0, 'dec', '', '/^SymTorrent/', 0, 'dec', 'SymTorrent', 'no', 'no', '', 0),
(17, 'Transmission 2.0', 'Transmission 2.0.0', '/^-TR2([0-9])([0-9])([0-9])-/', 3, 'dec', '-TR2000-', '/^Transmission\\/2\\.([0-9])([0-9])/', 2, 'dec', 'Transmission/2.00', 'no', 'yes', '', 0),
(18, 'Transmission1.x', 'Transmission 1.06 (build 5136)', '/^-TR1([0-9])([0-9])([0-9])-/', 3, 'dec', '-TR1060-', '/^Transmission\\/1\\.([0-9])([0-9])/', 3, 'dec', 'Transmission/1.06', 'no', 'yes', '', 0),
(19, 'Transmission2.x', 'Transmission 2.0', '/^-TR2([0-9])([0-9])([0-9])-/', 3, 'dec', '-TR2000-', '/^Transmission\\/2\\.([0-9])([0-9])/', 3, 'dec', 'Transmission/2.00', 'no', 'yes', '', 0),
(20, 'uTorrent 1.6.1', 'uTorrent 1.6.1', '/^-UT1610-/', 0, 'dec', '-UT1610-', '/^uTorrent\\/1610/', 0, 'dec', 'uTorrent/1610', 'no', 'no', '', 0),
(21, 'uTorrent 1.7.x', 'uTorrent 1.7.5', '/^-UT17([0-9])([0-9])-/', 2, 'dec', '-UT1750-', '/^uTorrent\\/17([0-9])([0-9])/', 2, 'dec', 'uTorrent/1750', 'no', 'yes', '', 0),
(22, 'uTorrent 1.8', 'uTorrent 1.8.5.0', '/^-UT18([5-9])([0-9])-/', 2, 'dec', '-UT1850-', '/^uTorrent\\/18([5-9])([0-9])/', 2, 'dec', 'uTorrent/1850', 'no', 'yes', '', 0),
(23, 'uTorrent 1.8.x', 'uTorrent 1.8.0', '/^-UT18([0-9])([0-9])-/', 2, 'dec', '-UT1800-', '/^uTorrent\\/18([0-9])([0-9])/', 2, 'dec', 'uTorrent/1800', 'no', 'yes', '', 0),
(24, 'uTorrent 1.8xB', 'uTorrent 1.80 Beta (build 9137)', '/^-UT18([0-9])B-/', 1, 'dec', '-UT180B-', '/^uTorrent\\/18([0-9])B\\(([1-9][0-9]*)\\)/', 2, 'dec', 'uTorrent/180B(9137)', 'no', 'yes', '', 0),
(25, 'uTorrent 2.0', 'uTorrent 2.0.0.0', '/^-UT2([0-9])([0-9])([0-9])-/', 3, 'dec', '-UT2000-', '/^uTorrent\\/2([0-9])([0-9])([0-9])/', 3, 'dec', 'uTorrent/2000', 'no', 'yes', '', 0),
(26, 'uTorrent 2.x.x', 'uTorrent 2.0(build 17624)', '/^-UT2([0-9])([0-9])([0-9])-/', 3, 'dec', '-UT2000-', '/^uTorrent\\/2([0-9])([0-9])([0-9])/', 3, 'dec', 'uTorrent/2000', 'no', 'yes', '', 0),
(27, 'uTorrent 3.0', 'uTorrent 3.0.0.0', '/^-UT3([0-9])([0-9])([0-9])-/', 3, 'dec', '-UT3000-', '/^uTorrent\\/3([0-9])([0-9])([0-9])/', 3, 'dec', 'uTorrent/3000', 'yes', 'yes', '', 0),
(28, 'uTorrent 3.4', 'uTorrent 3.4.0', '/^-UT3([0-9])([0-9])-/', 2, 'dec', '-UT340-', '/^uTorrent\\/3([0-9])([0-9])/', 2, 'dec', 'uTorrent/340', 'no', 'yes', '', 0),
(29, 'uTorrent 3.4.2', 'uTorrent 3.4.2', '/^-UT3([0-9])([0-9])([0-9])-/', 3, 'dec', '-UT3420-', '/^uTorrent\\/3([0-9])([0-9])/', 2, 'dec', 'uTorrent/342', 'no', 'yes', '', 0),
(30, 'uTorrent 3.4.3', 'uTorrent 3.4.3', '/^-UT3([0-9])([0-9])([0-9])-/', 3, 'dec', '-UT3430-', '/^uTorrent\\/3([0-9])([0-9])/', 2, 'dec', 'uTorrent/343', 'no', 'yes', '', 0),
(31, 'uTorrent 3.4.4', 'uTorrent 3.4.4', '/^-UT3([0-9])([0-9])([0-9])-/', 3, 'dec', '-UT3440-', '/^uTorrent\\/3([0-9])([0-9])/', 2, 'dec', 'uTorrent/344', 'no', 'yes', '', 0),
(32, 'uTorrent 3.5', 'uTorrent 3.5.0', '/^-UT35[0-9][0-9A-Za-z]-/', 2, 'dec', '-UT3500-', '/^uTorrent\\/35([0-9])/', 1, 'dec', 'uTorrent/350', 'no', 'yes', '', 0),
(33, 'uTorrent 3.x', 'uTorrent/3000', '/^-UT3([0-9])([0-9])([0-9])-/', 3, 'dec', '-UT3000-', '/^uTorrent\\/3([0-9])([0-9])([0-9])/', 3, 'dec', 'uTorrent/3000', 'no', 'yes', '', 0),
(34, 'uTorrentMac 1.0', 'uTorrentMac 1.0.0.0', '/^-UM1([0-9])([0-9])([0-9B])-/', 3, 'dec', '-UM1000-', '/^uTorrentMac\\/1([0-9])([0-9])([0-9B])/', 3, 'dec', 'uTorrentMac/1000', 'no', 'yes', '', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
