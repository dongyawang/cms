-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 18, 2021 at 07:23 AM
-- Server version: 5.6.40
-- PHP Version: 5.3.21

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tbhdya03`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_about`
--

CREATE TABLE IF NOT EXISTS `cms_about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci COMMENT '内容',
  `time_create` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_about`
--

INSERT INTO `cms_about` (`id`, `content`, `time_create`) VALUES
(1, '<p class="MsoNormal" style="line-height:11.0pt;">\r\n	<span lang="EN-US" style="font-family:;" "=""><span style="font-size:14px;"><br />\r\n</span></span> \r\n</p>\r\n<p class="MsoNormal" style="line-height:11.0pt;">\r\n	<span lang="EN-US" style="font-family:;" "=""><span style="font-size:14px;"><br />\r\n</span></span> \r\n</p>\r\n<p class="MsoNormal" style="line-height:11.0pt;">\r\n	<span lang="EN-US" style="line-height:1.5;" "=""><span style="font-size:14px;line-height:1.5;">Shenzhen Talent Electronics Co., Ltd.\r\nestablished in Jul. 2019, its predecessor HongKong Talent Electronics Co., Ltd.\r\nfounded in May 2012.&nbsp;</span></span> \r\n</p>\r\n<p class="MsoNormal" style="line-height:11.0pt;">\r\n	<span lang="EN-US" "=""><span style="font-size:14px;line-height:1.5;">Since establishment, we adhere to Honesty First and Create\r\nValues for Customers &amp; Suppliers company philosophy.</span><span style="line-height:1.5;">&nbsp;</span></span><span style="font-size:14px;">We currently provide&nbsp;</span>\r\n</p>\r\n<p class="MsoNormal" style="line-height:11.0pt;">\r\n	<span style="font-size:14px;">high quality\r\nproducts and perfect services for companies from USA, Canada, Europe and Sri\r\nLanka etc.</span> \r\n</p>\r\n<p class="MsoNormal" style="line-height:11.0pt;">\r\n	<span lang="EN-US" style="font-family:;" "=""><span style="font-size:14px;line-height:1.5;"><br />\r\n</span></span> \r\n</p>\r\n<p class="MsoNormal" style="line-height:11.0pt;">\r\n	<span lang="EN-US" style="font-family:;" "=""><span style="font-size:14px;line-height:1.5;">Our products cover LED power supply,\r\nlighting products, Electric &amp; Electrical correlated products.</span><span style="line-height:1.5;">&nbsp;</span></span><span style="font-size:14px;line-height:1.5;">Lighting products include commercial&nbsp;</span> \r\n</p>\r\n<p class="MsoNormal" style="line-height:11.0pt;">\r\n	<span style="font-size:14px;line-height:1.5;">lighting, residential lighting and project lighting products, covering indoor\r\n&amp; outdoor power supply,&nbsp;</span><span lang="EN-US" "=""><span style="font-size:14px;line-height:1.5;">landscape &amp; construction luminaries.</span><span style="line-height:1.5;">&nbsp;</span></span> \r\n</p>\r\n<p class="MsoNormal" style="line-height:11.0pt;">\r\n	<span style="font-size:14px;line-height:1.5;">At the&nbsp;</span><span style="font-size:14px;">request of customers, we began\r\nto provide Sourcing, New product development, Pre-shipment inspection and Shipments\r\nconsolidation&nbsp;</span> \r\n</p>\r\n<p class="MsoNormal" style="line-height:11.0pt;">\r\n	<span lang="EN-US" style="font-family:;" "=""><span style="font-size:14px;line-height:1.5;">services since Jan. 2019.</span><o:p></o:p></span> \r\n</p>\r\n<p class="MsoNormal" style="line-height:11.0pt;">\r\n	<span lang="EN-US" style="font-family:;" "=""><span style="font-size:14px;line-height:1;"><br />\r\n</span></span> \r\n</p>\r\n<p class="MsoNormal" style="line-height:11.0pt;">\r\n	<span lang="EN-US" style="font-family:;" "=""><span style="font-size:14px;line-height:1.5;">In this fast-paced world, we believe\r\nin mutually beneficial business development.</span><span style="line-height:1.5;">&nbsp;</span></span><span style="font-size:14px;line-height:1.5;">As a company we are extremely customer\r\ndriven, which&nbsp;</span> \r\n</p>\r\n<p class="MsoNormal" style="line-height:11.0pt;">\r\n	<span style="font-size:14px;line-height:1.5;">enable us to develop innovative and reliable products along with\r\nsuperior services for&nbsp;</span><span lang="EN-US" "=""><span style="font-size:14px;line-height:1.5;">our customers.</span><span style="line-height:1.5;">&nbsp;</span></span><span style="font-size:14px;line-height:1.5;">We are constantly looking for and&nbsp;</span> \r\n</p>\r\n<p class="MsoNormal" style="line-height:11.0pt;">\r\n	<span style="font-size:14px;line-height:1.5;">developing new creative products. Let us offer you a perfect solution!</span> \r\n</p>', '2019-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `cms_config`
--

CREATE TABLE IF NOT EXISTS `cms_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_website` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网站名称',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网站邮箱',
  `icp` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备案号',
  `time_create` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_contactus`
--

CREATE TABLE IF NOT EXISTS `cms_contactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `tel` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '电话',
  `fax` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '传真',
  `qq` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'QQ',
  `postal` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮政编码',
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系地址',
  `website` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '公司网址',
  `icp` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_website` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qita` text COLLATE utf8_unicode_ci,
  `time_create` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_contactus`
--

INSERT INTO `cms_contactus` (`id`, `email`, `tel`, `fax`, `qq`, `postal`, `address`, `website`, `icp`, `name_website`, `qita`, `time_create`) VALUES
(1, 'info@talent-electech.com', '+86 1868 2295 289', '+86 755 0000 0000', '645817541', '518112', 'No.1011, 333 Jihua Rd., Shuijing Community, Jihua St., Longgang District, Shenzhen China 518112', 'www.dongyawang.com', '粤ICP备1000000号', 'TALENT ELECTECH', '<p>\r\n	<span style="line-height:1;font-family:Arial;font-size:14px;" "=""><strong><img alt="" src="/editor/attached/image/20150630/20150630232559_64983.gif" /><br />\r\n</strong></span> \r\n</p>\r\n<p>\r\n	<strong style="font-family:Arial;font-size:14px;"></strong> \r\n</p>\r\n<p>\r\n	<span style="font-size:14px;line-height:1;"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:14px;line-height:1;">Shenzhen Talent Electronics Co., Ltd.&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style="line-height:1;"><span style="font-size:14px;line-height:1;">E</span><span style="line-height:1;font-size:14px;">-mail:&nbsp;info@talent-electech.com</span></span> \r\n</p>\r\n<p>\r\n	<span style="line-height:1;font-size:14px;">Tel:&nbsp;+86&nbsp;1868&nbsp;229&nbsp;5289</span> \r\n</p>\r\n<p>\r\n	<span style="line-height:1;font-size:14px;">Website:&nbsp;www.talent-electech.com&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style="line-height:1;font-size:14px;">Address:&nbsp;</span><span style="line-height:1;font-size:14px;"><span style="line-height:1;">No.1011, 333 Jihua Rd., Shuijing Community, Jihua St., Longgang District, Shenzhen China 518112</span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style="line-height:1.5;"><span style="color:#E53333;">ONLY OFFICIAL </span><span style="color:#E53333;">USD PAYMENT ACCOUNT</span>:&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:14px;"><span style="line-height:1.5;">Beneficiary: Shenzhen Talent Electronics Co., Ltd.</span><br />\r\n<span style="line-height:1.5;"> Bank Name: Bank of China</span><br />\r\n<span style="line-height:1.5;"> Account No: 749 772 532 611</span><br />\r\n<span style="line-height:1.5;"> Swift Code: BKCHCNBJ45A&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><br />\r\n<span style="line-height:1.5;"> Beneficiary Address: No.1011, 333 Jihua Rd., Shuijing Community, Jihua St., Longgang District, Shenzhen China 518112</span><br />\r\n<span style="line-height:1.5;"> Bank Address: No.101-105, Huangjia Commercial Plaza, Minzhi Rd., Minzhi Sub-District, Longhua District, Shenzhen China 518131</span> </span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	Thank&nbsp;you&nbsp;for&nbsp;visiting&nbsp;our&nbsp;website,&nbsp;pls&nbsp;feel&nbsp;free&nbsp;to&nbsp;contact&nbsp;us&nbsp;if&nbsp;interest&nbsp;any&nbsp;products&nbsp;or&nbsp;would&nbsp;like&nbsp;to&nbsp;know&nbsp;more&nbsp;about&nbsp;us.&nbsp;Thank&nbsp;you.&nbsp;\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '2021-01-18');

-- --------------------------------------------------------

--
-- Table structure for table `cms_links`
--

CREATE TABLE IF NOT EXISTS `cms_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rank` int(100) DEFAULT '0',
  `time_create` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `cms_links`
--

INSERT INTO `cms_links` (`id`, `name`, `url`, `note`, `rank`, `time_create`) VALUES
(13, 'LEDInside', 'http://www.ledinside.com/', '', 1, '2016-05-03 03:12:10');

-- --------------------------------------------------------

--
-- Table structure for table `cms_message`
--

CREATE TABLE IF NOT EXISTS `cms_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户姓名',
  `tel` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '电话',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户地址',
  `qq` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户qq',
  `sex` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '性别',
  `content` text COLLATE utf8_unicode_ci COMMENT '留言内容',
  `time_create` date DEFAULT NULL COMMENT '留言时间',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `tel` (`tel`),
  KEY `id` (`id`),
  KEY `tel_2` (`tel`),
  KEY `email` (`email`),
  KEY `address` (`address`),
  KEY `tel_3` (`tel`),
  KEY `email_2` (`email`),
  KEY `address_2` (`address`),
  KEY `qq` (`qq`),
  KEY `sex` (`sex`),
  KEY `time_create` (`time_create`),
  KEY `id_2` (`id`),
  KEY `username_2` (`username`),
  KEY `tel_4` (`tel`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=255 ;

--
-- Dumping data for table `cms_message`
--

INSERT INTO `cms_message` (`id`, `username`, `tel`, `email`, `address`, `qq`, `sex`, `content`, `time_create`) VALUES
(59, 'tadalafil le prix', '28315142760', 'ashgnccb@zhzuapzi.com', 'bUUTJZPlEyuc', '422203809', '', 'Schultz discusses what the best type of sunscreen is. <a href="http://www.cialispharmaciefr24.com/acheter-cialis-pas-cher-en-pharmacie">acheter cialis pas cher en pharmacie</a> [url="http://www.cialispharmaciefr24.com/acheter-cialis-pas-cher-en-pharmacie"]acheter cialis pas cher en pharmacie[/url] http://www.cialispharmaciefr24.com/acheter-cialis-pas-cher-en-pharmacie acheter cialis pas cher en pharmacie <a href="http://www.cialispharmaciefr24.com/tadalafil-5-mg-uruguay">tadalafil 5 mg uruguay</a> [url="http://www.cialispharmaciefr24.com/tadalafil-5-mg-uruguay"]tadalafil 5 mg uruguay[/url] http://www.cialispharmaciefr24.com/tadalafil-5-mg-uruguay tadalafil 5 mg uruguay <a href="http://www.cialispharmaciefr24.com/achat-cialis-pharmacie-andorre">achat cialis pharmacie andorre</a> [url="http://www.cialispharmaciefr24.com/achat-cialis-pharmacie-andorre"]achat cialis pharmacie andorre[/url] http://www.cialispharmaciefr24.com/achat-cialis-pharmacie-andorre achat cialis pharmacie andorre ', '2015-07-22'),
(60, 'gjsjivcew', '34717804109', 'wjsntk@jbjyia.com', 'gzgxopRmRtJJINtlcc', '774704197', '', 'qJ5zfS  <a href="http://ycvngroodqpg.com/">ycvngroodqpg</a>, [url=http://wttxkojvloly.com/]wttxkojvloly[/url], [link=http://cnhchegtiayl.com/]cnhchegtiayl[/link], http://hqfqubjybglk.com/', '2015-07-26'),
(61, '', '', '', '', '', '', '', '2015-07-26'),
(62, '', '', '', '', '', '', '', '2015-09-01'),
(63, '', '', '', '', '', '', '', '2015-09-01'),
(64, '', '', '', '', '', '', '', '2015-10-12'),
(65, '呜呜呜', '', '', '', '', '', '呜呜呜', '2015-11-03'),
(66, '', '', '', '', '', '', '', '2015-11-19'),
(67, 'avruemoq', '53920763534', 'tzbbfw@cquika.com', 'http://xzqbughgyczm.com/', 'VpfBGmTydQhhIHNp', '', 'hLLIxa  <a href="http://urdfdnlgtyrf.com/">urdfdnlgtyrf</a>, [url=http://shxyujzbxbgv.com/]shxyujzbxbgv[/url], [link=http://hdlcyeutmscj.com/]hdlcyeutmscj[/link], http://wvrosklrkebc.com/', '2016-04-07'),
(68, '', '', '', '', '', '', '', '2016-04-07'),
(69, 'rxfcqugkp', '84351919875', 'eavmcm@mroxof.com', 'http://rzvurvckayud.com/', 'BNRqdfUVZQQzzItCNk', '', 'zwe0KI  <a href="http://phgbalyewmaw.com/">phgbalyewmaw</a>, [url=http://eyawdeloxrkx.com/]eyawdeloxrkx[/url], [link=http://vkefuxumufyn.com/]vkefuxumufyn[/link], http://exyfegyrkfws.com/', '2016-04-14'),
(70, '', '', '', '', '', '', '', '2016-04-14'),
(71, 'adf', 'asdf', 'adf', 'asdf', 'asdf', '', 'asdf', '2016-05-02'),
(72, 'JimmiXS', '54664936179', 'jimos4581rt@hotmail.com', 'jVbGYrwqBhxvfIW', '826560022', '', 'B2vtTb http://www.FyLitCl7Pf7kjQdDUOLQOuaxTXbj5iNG.com', '2016-08-10'),
(73, '', '', '', '', '', '', '', '2016-08-10'),
(74, 'Barnypok', '69377997754', 'jfvynms4281rt@hotmail.com', 'MRpsWMuUFCE', '927745215', '', 'OvQ8Zo http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com', '2016-12-28'),
(75, '', '', '', '', '', '', '', '2016-12-28'),
(76, 'Barnypok', '98928692794', 'jfvynms4281rt@hotmail.com', 'AYSFFOHIMuPq', '988790165', '', 'L8p2ej http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com', '2016-12-30'),
(77, '', '', '', '', '', '', '', '2016-12-30'),
(78, 'Barnypok', '64707209276', 'jfvynms4281rt@hotmail.com', 'dWRpWkzeft', '423607979', '', '9YLWs2 http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com', '2016-12-31'),
(79, '', '', '', '', '', '', '', '2016-12-31'),
(80, 'Barnypok', '23932201622', 'jfvynms4281rt@hotmail.com', 'dtCtraGMgvwMGG', '689564775', '', '2Rkcm6 http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com', '2017-01-04'),
(81, '', '', '', '', '', '', '', '2017-01-04'),
(82, 'Sadie', '88214331865', 'iagnfkharofs@gmail.com', 'http://tinyurl.com/jrzbwl7#MrFKovL', '34227-3872', '', 'breast actives tinyurl.com/zc7veqr#xbgwlhs  is part of 3 step natural system based on all natural ingredients. safe to use; no extensive doctors appointments or expensive surgery; all naturalwbr \r\n~>>>>>  http://tinyurl.com/jrzbwl7#LiTJikH', '2017-01-06'),
(83, 'Clara', '84212797221', 'ycrkmdzarofs@gmail.com', 'http://tinyurl.com/gmpvbzc#FzOCdmQ', '21525-9758', '', 'purely inspired weight loss garcinia cambogia tinyurl.com/gtrykfr#GtMKzjY tablets, 60 count  customer reviews  21 reviews  3 out of 5. 3.0 stars. 21 reviews  1-20 of 21 total reviews. \r\n--->>>>>>  tinyurl.com/h6pvto3#FlIWtgE', '2017-01-08'),
(84, 'Shayna', '83712295367', 'ulywrrfarofs@gmail.com', 'http://myfreemp3.review/search/bury-the-hatchet-mp3/#MpTIzbL', '80506-4310', '', 'the secret life of walter mitty mp3 - myfreemp3.review/search/the-secret-life-of-walter-mitty-mp3/\r\n download free music', '2017-01-10'),
(85, '', '', '', '', '', '', '', '2017-02-14'),
(86, '', '', '', '', '', '', '', '2017-02-15'),
(87, 'SailipFug', '83957339584', 'r8974jjil@gmail.com', 'http://undeclaiming.xyz', '231243276', '', 'http://undeclaiming.xyz <a href="http://undeclaiming.xyz">norsk kasino</a> http://undeclaiming.xyz - norsk kasino', '2017-05-11'),
(88, 'Barnypok', '40100949802', 'ecrev22vtv@hotmail.com', 'xwKkWbAXxYkDo', '385162777', '', '5Wnxhh http://www.LnAJ7K8QSpkiStk3sLL0hQP6MO2wQ8gO.com', '2017-07-08'),
(89, '', '', '', '', '', '', '', '2017-07-08'),
(90, 'ngfeqfeukfs', 'CBbaQnEfvkKTzgwH', 'lntjpj@mypryb.com', 'http://wtjljhjhamrg.com/', 'hFSznIsuje', '', 'TitWxb  <a href="http://ozxouuyndbcj.com/">ozxouuyndbcj</a>, [url=http://iojjorghgnhk.com/]iojjorghgnhk[/url], [link=http://qahskubkzoso.com/]qahskubkzoso[/link], http://waaxfhpmnele.com/', '2017-08-24'),
(91, '', '', '', '', '', '', '', '2017-08-24'),
(92, 'ypmtbykqok', 'HfdGjxvAwp', 'vloqxg@vxffxl.com', 'XlEQkJmXpocStEr', 'gDLfpIyurtSNSlkZLr', '', '4xYaIJ  <a href="http://sjixtzjilzue.com/">sjixtzjilzue</a>, [url=http://avomeptrnntn.com/]avomeptrnntn[/url], [link=http://zttqrqooqxiu.com/]zttqrqooqxiu[/link], http://dkgxaskicnbe.com/', '2017-08-26'),
(93, '', '', '', '', '', '', '', '2017-08-26'),
(94, 'dkgjldowpc', 'kELQyrWrkHX', 'gwymit@bvvhxf.com', 'yucAlHApNfn', 'vKruQJnT', '', 'aLz4wU  <a href="http://loyhrpujvfvu.com/">loyhrpujvfvu</a>, [url=http://soexhloycwji.com/]soexhloycwji[/url], [link=http://uxrzbqyigntj.com/]uxrzbqyigntj[/link], http://mdzyexnwookh.com/', '2017-09-05'),
(95, '', '', '', '', '', '', '', '2017-09-05'),
(96, 'nhqrtsRhype', '86457245144', 'lzfsmbjosl@mailstome.today', 'http://paydayloans2017.com', '', '', 'payday installment loans <a href="http://paydayloans2017.com"> what is a payday loan</a> &lt;a href=&quot;http://paydayloans2017.com&quot;&gt; payday loans online&lt;/a&gt; http://paydayloans2017.com - online payday loans  payday installment loans', '2017-09-06'),
(97, 'JimmiNu', '84926558207', 'ec12342vtv@hotmail.com', 'CuQafenNOFfpZAhEQu', '472707237', '', 'WCVm7y http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com', '2017-09-09'),
(98, '', '', '', '', '', '', '', '2017-09-09'),
(99, 'nqpdpyRhype', '83178516319', 'wlkxcwpgcw@mailstome.today', 'http://paydayloans2017.com', '', '', 'direct lender payday loans <a href="http://paydayloans2017.com"> payday loan</a> &lt;a href=&quot;http://paydayloans2017.com&quot;&gt; online payday loans no credit check&lt;/a&gt; http://paydayloans2017.com - payday loans online  bad credit payday loans', '2017-09-14'),
(100, 'Washhandy', '82915298237', 'briltlefe@gmail.com', 'http://royalgamesvulkan.ru', '341811526', '', 'http://fjdhgksf76w444.com hi everyone', '2017-09-29'),
(101, 'Washhandy', '84735969821', 'briltlefe@gmail.com', 'http://royalgamesvulkan.ru', '341811526', '', 'http://fjdhgksf76w444.com hi everyone', '2017-10-04'),
(102, 'JimmiNi', '51709658223', 'jimosa4ccf2@hotmail.com', 'cAgvkrPnIGxTN', '552614087', '', '7v1ZcV http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com', '2017-10-23'),
(103, '', '', '', '', '', '', '', '2017-10-23'),
(104, 'Edward', '18682265286', '645817541@qq.com', 'Sz', '645817541', '', 'We interest your cv12V drivder. Thank you. ', '2017-11-02'),
(105, '', '', '', '', '', '', '', '2017-11-02'),
(106, '', '', '', '', '', '', '', '2017-11-02'),
(107, 'lxpovasuz', 'YkroNsczp', 'aeakkp@vpofpu.com', 'ahoMqikvWm', 'nxUgpjoZX', '', 'U2rRYM  <a href="http://uevsqxqnwrmw.com/">uevsqxqnwrmw</a>, [url=http://jiejiczxtrxl.com/]jiejiczxtrxl[/url], [link=http://xurloyoxjhkc.com/]xurloyoxjhkc[/link], http://grnsokuxikpl.com/', '2017-12-03'),
(108, '', '', '', '', '', '', '', '2017-12-03'),
(109, 'GoldenTabs', '97376639666', 'support@goldentabs.com', 'kHPtuxfgShGIrBV', '791885438', '', 'Mvr6dP https://goldentabs.com/', '2018-01-08'),
(110, '', '', '', '', '', '', '', '2018-01-08'),
(111, 'GoldenTabs', '19921612287', 'support@goldentabs.com', 'jgeyTAWvCPUmfiCfGPd', '185463899', '', 'J15Qzx https://goldentabs.com/', '2018-01-08'),
(112, '', '', '', '', '', '', '', '2018-01-08'),
(113, 'Barneyxcq', '85030149316', 'jimosa4xf2@hotmail.com', 'EXToRRAXTyA', '172635281', '', 'tMemQ4 http://www.LnAJ7K8QSpfMO2wQ8gO.com', '2018-02-17'),
(114, '', '', '', '', '', '', '', '2018-02-17'),
(115, '', '', '', '', '', '', '', '2018-04-03'),
(116, '', '', '', '', '', '', '', '2018-04-03'),
(117, 'GuestGuala', '85865485846', 'samburton202@aol.co.uk', 'http://temresults2018.com/', '256826537', '', 'guest test post \r\n<a href=" http://temresults2018.com/ ">bbcode</a> \r\n<a href="http://temresults2018.com/">html</a> \r\nhttp://temresults2018.com/ simple', '2018-04-06'),
(118, 'oycuuea', 'hjLosPCWgUzCgRA', 'lqtdfx@yuddpk.com', 'gVIgAMEiqN', 'xycWtaHxy', '', 'Jetnu9  <a href="http://adqzflqfszlf.com/">adqzflqfszlf</a>, [url=http://dzrazwhcobbx.com/]dzrazwhcobbx[/url], [link=http://ffjwwefmqcon.com/]ffjwwefmqcon[/link], http://xwklozkcssuy.com/', '2018-04-06'),
(119, '', '', '', '', '', '', '', '2018-04-06'),
(120, 'prapbms', 'JlIOpuqpBoeBXdzYH', 'zvwofl@kevpzl.com', 'aLkjYRLjbfLfmHiAY', 'YdCOuhwsbeqBCTmlCPD', '', 'Xiabaq  <a href="http://ramzxfhdguli.com/">ramzxfhdguli</a>, [url=http://dvnyrxebytbe.com/]dvnyrxebytbe[/url], [link=http://eclqvftlrejb.com/]eclqvftlrejb[/link], http://uteslwdakmmu.com/', '2018-04-23'),
(121, '', '', '', '', '', '', '', '2018-04-23'),
(122, 'Judi', '27172604294', 'support@genericpharmacydrug.com', 'iKxBsEZUwbPoWctvvMC', '953139156', '', '16KsNo https://www.genericpharmacydrug.com', '2018-05-12'),
(123, '', '', '', '', '', '', '', '2018-05-12'),
(124, 'Groulupeter', '82325162162', 'hnhrsClubbarledievile@1000xbetslots.xyz', 'https://cbdoilamericano.com/#', '67547577', '', 'https://cbdoilamericano.com/# is cbd oil legal \r\n<a href="https://cbdoilamericano.com/#">cbd</a> \r\n<a href="https://cbdoilamericano.com/#">cbd stocks</a>', '2018-12-10'),
(125, 'SusanSkarl', '81613755675', 'susanSog@topazpro.xyz', 'http://www.private.vip-dating.icu/7/510.php', '791818128', '', 'dating places in lahore\r\nfree online dating eau claire\r\nelectrical hook up lead\r\n \r\n<a href=http://www.fresh.my-dating.icu/3/87.php>dating houses uk</a>\r\n<a href=http://www.private.adult-dating.icu/6/521.php>hollywood dating sites</a>\r\n<a href=http://www.anonim.dating-find.icu/5/460.php>online dating asking for first date</a>\r\n<a href=http://www.find-dating.icu/3/396.php>miami dating events</a>\r\n<a href=http://www.private.dating-finder.icu/3/139.php>dating in fife scotland</a>\r\n \r\nfind friends dating match\r\nnigeria dating forum\r\n', '2019-01-02'),
(126, 'Jessicatib', '85147329436', 'jessicaTed@topazpro.xyz', 'http://www.last.datingguru.icu/15/804.php', '567584718', '', 'free interracial relationship dating sites\r\nsample dating headline\r\nonline dating waiting too long to meet\r\n \r\n<a href=http://www.adult.muslim-dating.icu/9/691.php>free christian dating site</a>\r\n<a href=http://www.anonim.datingguruguide.icu/3/160.php>help with dating problems</a>\r\n<a href=http://www.last.doctor-dating.icu/8/584.php>maroc dating site</a>\r\n<a href=http://www.free.datingguruguide.icu/3/230.php>duggar dating rules</a>\r\n<a href=http://www.adult.dating-links.icu/13/787.php>matchmaking in destiny pvp</a>\r\n \r\nagentii de matchmaking\r\nasian dating queens ny\r\n', '2019-01-13'),
(127, 'CarolVof', '83145514484', 'carolruh@topazpro.xyz', 'http://www.fresh.dating-experts.icu/8/638.php', '962777757', '', 'dating lybach com\r\nkendall jenner dating life\r\namravati online dating\r\n \r\n<a href=http://www.fresh.ultimatedating.icu/3/83.php>about grouper dating</a>\r\n<a href=http://www.last.my-dating.icu/6/501.php>online local dating service</a>\r\n<a href=http://www.extra.vip-dating.icu/20/979.php>what are the best dating sites australia</a>\r\n<a href=http://www.free.datingguruguide.icu/13/756.php>gay dating signals</a>\r\n<a href=http://www.adult.video-dating.icu/10/633.php>geelong dating websites</a>\r\n \r\ncraigslist dating conway sc\r\nkrystal walter matchmaking\r\n', '2019-01-18'),
(128, 'qcrvhjgjif', '45615052301', 'gtzpzi@hewrmr.com', 'DlKVxKKqtH', '271361860', '', 'PrnDRf  <a href="http://rkblbygwnzzz.com/">rkblbygwnzzz</a>, [url=http://ogynernxqtgs.com/]ogynernxqtgs[/url], [link=http://ytlqwfukhpwo.com/]ytlqwfukhpwo[/link], http://fbkmybpblsqr.com/', '2019-01-22'),
(129, '', '', '', '', '', '', '', '2019-01-22'),
(130, 'CarlJah', '82921558569', 'pdonaghy@probbox.com ', 'http://buspar10.com/ ', '59561011', '', '<a href="http://buspar10.com/">buspar 10 mg</a> ', '2019-02-23'),
(131, 'PaulJah', '87493875373', 'ayana@probbox.com ', 'https://buspar10.com/ ', '95406643', '', '<a href="https://buspar10.com/">buspirone 10 mg</a> ', '2019-02-23'),
(132, 'JudyJah', '84929153521', 'mbjoy@probbox.com ', 'https://buspar10.com/ ', '96242088', '', '<a href="https://buspar10.com/">buspar</a> ', '2019-02-23'),
(133, 'MaryJah', '86386343141', 'promo4@probbox.com ', 'https://buspar10.com/ ', '55273750', '', '<a href="https://buspar10.com/">buspar</a> ', '2019-02-24'),
(134, 'LisaJah', '88311871229', 'azialeighw@probbox.com ', 'https://buspar10.com/ ', '47268487', '', '<a href="https://buspar10.com/">buspar online</a> ', '2019-02-24'),
(135, 'AlanJah', '81161295971', 'ebdozier@probbox.com ', 'https://buspar10.com/ ', '75641039', '', '<a href="https://buspar10.com/">buspar 10 mg</a> ', '2019-02-24'),
(136, 'Barbarajep', '87223356833', 'barbaraSnini@topazpro.xyz', 'http://zavesa-zasovglazok.icu', '533922887', '', 'балконный блок \r\nустановка внутренней входной двери \r\nhttp://home-doorroom.icu \r\nвходная дверь пвх рехау \r\nокно пластиковый цена \r\nhttp://dveri-domzamok.icu \r\nкупить металлическую дверь в новополоцке \r\nпроизводители входных дверей беларусь \r\nhttp://doorhomeroom.icu \r\nскрипит металлическая дверь \r\nмежкомнатные двери статус \r\nhttp://zavesidverjfurnitura.icu \r\nвходные двери металлические с установкой \r\nокна двери цена \r\nhttp://furnitura-dverjzavesi.icu', '2019-02-24'),
(137, 'AmyJah', '85852826931', 'velimirg@probbox.com ', 'http://buspar10.com/ ', '21786419', '', '<a href="http://buspar10.com/">buspirone 5 mg</a> ', '2019-02-25'),
(138, 'MarkJah', '89151685475', 'aagea@probbox.com ', 'https://buspar10.com/ ', '44489018', '', '<a href="https://buspar10.com/">buspar 10mg</a> ', '2019-02-25'),
(139, 'CarlJah', '87156431623', 'carlena@probbox.com ', 'http://buspar10.com/ ', '64502932', '', '<a href="http://buspar10.com/">buspirone 10 mg</a> ', '2019-02-25'),
(140, 'PaulJah', '89681386243', 'cristinairb@probbox.com ', 'https://buspar10.com/ ', '84158981', '', '<a href="https://buspar10.com/">buspar 10 mg</a> ', '2019-02-25'),
(141, 'JudyJah', '82668737376', 'michaelreid@probbox.com ', 'https://buspar10.com/ ', '98998626', '', '<a href="https://buspar10.com/">buspar</a> ', '2019-02-26'),
(142, 'MaryJah', '82227622732', 'helga@probbox.com ', 'https://buspar10.com/ ', '11614577', '', '<a href="https://buspar10.com/">cost of buspar</a> ', '2019-02-26'),
(143, 'LisaJah', '82464269475', 'cfitzpatrick@probbox.com ', 'https://buspar10.com/ ', '54681683', '', '<a href="https://buspar10.com/">cost of buspar</a> ', '2019-02-27'),
(144, 'AlanJah', '82657427316', 'claudia92565@probbox.com ', 'https://buspar10.com/ ', '45850284', '', '<a href="https://buspar10.com/">buspar 10 mg</a> ', '2019-02-27'),
(145, 'AmyJah', '89173245598', 'n210@probbox.com ', 'http://buspar10.com/ ', '41978588', '', '<a href="http://buspar10.com/">buspirone 10mg</a> ', '2019-02-27'),
(146, 'MarkJah', '88394291231', 'kwest162@probbox.com ', 'https://buspar10.com/ ', '82930286', '', '<a href="https://buspar10.com/">buspar 10mg</a> ', '2019-02-27'),
(147, 'CarlJah', '87664534658', 'yolandareefer@probbox.com ', 'http://buspar10.com/ ', '23800071', '', '<a href="http://buspar10.com/">buspar 10 mg</a> ', '2019-02-28'),
(148, 'PaulJah', '84644384281', 'rockih@probbox.com ', 'https://buspar10.com/ ', '87539508', '', '<a href="https://buspar10.com/">buspar 10 mg</a> ', '2019-02-28'),
(149, 'JudyJah', '88496588961', 'dp62l@probbox.com ', 'https://buspar10.com/ ', '70037154', '', '<a href="https://buspar10.com/">buspirone 5 mg</a> ', '2019-03-01'),
(150, 'JustinaPousa', '88167836379', 'justinafaw@pro-expert.online', 'https://seomafia.by/contacts', '535844974', '', 'seo продвижение и раскрутка сайта \r\nпродвижение web сайтов оптимизация \r\nhttps://seomafia.by/uslugi/prodvijenie-saita.html \r\nпоисковое продвижение сайтов в google \r\nуслуги сео продвижения сайта \r\nhttps://seomafia.by/po-teme/kak-raskrutit-sait-samomu.html \r\nпродвижение англоязычных сайтов \r\nпродвижение промо сайта \r\nhttps://seomafia.by/po-teme/kak-raskrutit-sait-samomu.html \r\nпродвижение и оптимизация сайтов минск \r\nпоисковое продвижение сайта компании', '2019-03-01'),
(151, 'MaryJah', '81867637538', 'mikeshawen@probbox.com ', 'https://buspar10.com/ ', '76492012', '', '<a href="https://buspar10.com/">buspar</a> ', '2019-03-01'),
(152, 'LisaJah', '83715212662', 'fatumasahra@probbox.com ', 'https://buspar10.com/ ', '50181428', '', '<a href="https://buspar10.com/">buspar online</a> ', '2019-03-01'),
(153, 'AlanJah', '88594174543', 'robe8ada@probbox.com ', 'https://buspar10.com/ ', '99871864', '', '<a href="https://buspar10.com/">generic buspar</a> ', '2019-03-01'),
(154, 'AmyJah', '88423783811', 'longjhon23@probbox.com ', 'http://buspar10.com/ ', '40313969', '', '<a href="http://buspar10.com/">buspar 10 mg</a> ', '2019-03-02'),
(155, 'MarkJah', '87745244232', 'elane@probbox.com ', 'https://buspar10.com/ ', '17755287', '', '<a href="https://buspar10.com/">buspirone 10 mg</a> ', '2019-03-02'),
(156, 'StacyHorix', '87732917361', 'stacysnics@topazpro.xyz', 'http://glazokzavesazasov.icu', '288641842', '', 'дверная ручка на входную дверь \r\nдвери противодымные металлические купить могилев \r\nhttp://room-door-home.icu \r\nдвери пвх межкомнатные отзывы \r\nвходные двери металлические установка \r\nhttp://shpingalet-dverdoma.icu \r\nвходные строительные двери \r\nзаменить замок в металлической двери \r\nhttp://dverjfurniturazavesi.icu \r\nизготовление металлических дверей спб \r\nснип установка дверей межкомнатных \r\nhttp://shpingaletdver-doma.icu \r\nвходные металлические двери купить \r\nвходная пвх дверь купить \r\nhttp://shpingalet-domadver.icu', '2019-03-14'),
(157, 'DonnaCaf', '84197519581', 'donnaclarm@topazpro.xyz', 'http://homedoor-room.icu', '938545941', '', 'раздвижные межкомнатные двери установка видео \r\nзаказать входную дверь в квартиру \r\nhttp://dveri-domzamok.icu \r\nаксессуары для межкомнатных дверей \r\nоткрытая входная дверь \r\nhttp://domzamok-dveri.icu \r\nкак облагородить входную дверь \r\nметаллическая дверь флоренция \r\nhttp://zavesazasovglazok.icu \r\nвходная деревянная дверь своими руками \r\nвходные деревянные двери видео \r\nhttp://door-roomhome.icu \r\nмежкомнатные двери тренд \r\nдвери капри \r\nhttp://doorroomhome.icu', '2019-04-11'),
(158, 'Privats http://google.com', '83814311683', 'o-skovorodina@mail.ru', 'http://google.com', '126447456', '', 'Privats http://google.com', '2019-04-11'),
(159, 'Privats http://google.com', '82597319466', 'sofiya.kusina@mail.ru', 'http://google.com', '126447456', '', 'Privats http://google.com', '2019-04-13'),
(160, 'Privta http://google.com', '82373759199', 'evaldenberg@mail.ru', 'http://google.com', '126447456', '', 'Privta http://google.com', '2019-04-17'),
(161, 'You win http://inlink.work/fezx/', '82918763237', 'tarnopolskiy.vladlen@mail.ru', 'http://google.com', '126447456', '', 'You win http://inlink.work/fezx/', '2019-04-18'),
(162, 'Privets http://google.com', '82395158926', 'tavisapel1984@mail.ru', 'http://google.com', '126447456', '', 'Privets http://google.com', '2019-04-24'),
(163, 'Privetas http://google.com', '84851649862', 'gena.bachenkov.88@mail.ru', 'http://google.com', '126447456', '', 'Privetas http://google.com', '2019-04-25'),
(164, 'Prived http://google.com', '84214857823', 'manchuk.ksyu@mail.ru', 'http://google.com', '126447456', '', 'Prived http://google.com', '2019-04-28'),
(165, 'Zdarovo https://google.com', '87359252489', 'slablyuk.liza@mail.ru', 'http://google.com', '126447456', '', 'Zdarovo https://google.com', '2019-05-08'),
(166, 'Zdarovo https://google.com', '83339962913', 'fragunabbas1972@mail.ru', 'http://google.com', '126447456', '', 'Zdarovo https://google.com', '2019-05-10'),
(167, 'w0n3m1o8', '82473452768', 'jbzcdyha@gmail.com', 'https://buyessayy.us/', '833652905', '', '<a href=" https://buyessayy.us/ ">best website to buy essays</a>, buy my essay \r\nbuy an essay cheap, <a href=" https://buyessayy.us/ ">buy custom essay online</a> \r\nhttps://buyessayy.us/', '2019-06-17'),
(168, 'd7x3t6i1', '89255411867', 'rewobvjn@gmail.com', 'https://buyessayy.us/', '684177514', '', '<a href=" https://buyessayy.us/ ">cheap essays to buy</a>, buy essays cheap \r\nbuy college essays online - <a href=" https://buyessayy.us/ ">buy essay online safe</a> \r\nhttps://buyessayy.us/', '2019-06-27'),
(169, 'wewtiev https://google.com', '86346187473', 'tieprovvema1974@mail.ru', 'http://google.com', '126447456', '', 'wewtiev https://google.com', '2019-07-25'),
(170, 'JasonJah', '81441617766', 'becker8603@probbox.com ', 'https://cafergot1.com/ ', '44562553', '', '<a href="https://cafergot1.com/">cafergot tablets</a> ', '2019-07-30'),
(171, 'fdsaiev https://google.com', '82767866487', 'clarartechve1978@mail.ru', 'http://google.com', '126447456', '', 'fdsaiev https://google.com', '2019-07-31'),
(172, 'JasonJah', '85385895177', 'melloney1@probbox.com ', 'https://cafergot1.com/ ', '89616205', '', '<a href="https://cafergot1.com/">cafergot</a> ', '2019-07-31'),
(173, 'JasonJah', '83379424664', 'bjarterudi@probbox.com ', 'https://cafergot1.com/ ', '74640399', '', '<a href="https://cafergot1.com/">cafergot</a> ', '2019-08-02'),
(174, 'JasonJah', '83368966593', 'patrickdebiez@probbox.com ', 'https://cafergot1.com/ ', '76874404', '', '<a href="https://cafergot1.com/">cafergot</a> ', '2019-08-03'),
(175, 'JasonJah', '86464422442', 'mara@probbox.com ', 'https://cafergot1.com/ ', '11988925', '', '<a href="https://cafergot1.com/">buy cafergot</a> ', '2019-08-05'),
(176, 'JasonJah', '89869681637', 'carly@probbox.com ', 'https://cafergot1.com/ ', '95393641', '', '<a href="https://cafergot1.com/">cafergot pills</a> ', '2019-08-06'),
(177, 'fkaakiev https://google.com', '85315513743', 'reititati1977@mail.ru', 'http://google.com', '126447456', '', 'fkaakiev https://google.com', '2019-08-06'),
(178, 'JasonJah', '85745538177', 'love@probbox.com ', 'https://cafergot1.com/ ', '20555186', '', '<a href="https://cafergot1.com/">cafergot internet pharmacy</a> ', '2019-08-07'),
(179, 'fkdakiev https://google.com', '89164827288', 'lipumnoyreu1977@mail.ru', 'http://google.com', '126447456', '', 'fkdakiev https://google.com', '2019-08-09'),
(180, 'JasonJah', '86834439586', 'josepiell@probbox.com ', 'https://cafergot1.com/ ', '68813381', '', '<a href="https://cafergot1.com/">cafergot tablets</a> ', '2019-08-09'),
(181, 'fgrqqkiev https://google.com', '85542346518', 'mingsunfale1970@mail.ru', 'http://google.com', '126447456', '', 'fgrqqkiev https://google.com', '2019-08-09'),
(182, 'JasonJah', '81659218685', 'psampson952@probbox.com ', 'https://cafergot1.com/ ', '48506366', '', '<a href="https://cafergot1.com/">cafergot</a> ', '2019-08-10'),
(183, 'JasonJah', '84998673222', 'vacutti@probbox.com ', 'https://cafergot1.com/ ', '87181602', '', '<a href="https://cafergot1.com/">cafergot</a> ', '2019-08-12'),
(184, 'JasonJah', '87253718857', 'rasheeda@probbox.com ', 'https://cafergot1.com/ ', '61308232', '', '<a href="https://cafergot1.com/">cafergot tablets</a> ', '2019-08-13'),
(185, 'JasonJah', '82798578518', 'brooke@probbox.com ', 'https://cafergot1.com/ ', '35974021', '', '<a href="https://cafergot1.com/">cafergot tablets</a> ', '2019-08-15'),
(186, 'qwrqqkiev https://google.com', '83885639355', 'letasesli1983@mail.ru', 'http://google.com', '126447456', '', 'qwrqqkiev https://google.com', '2019-08-16'),
(187, 'JasonJah', '87393141563', 'mattlaciburns@probbox.com ', 'https://cafergot1.com/ ', '95540981', '', '<a href="https://cafergot1.com/">cafergot</a> ', '2019-08-16'),
(188, 'raranda', '81957535583', 'elosbnfea@qmails.co', '', '', '', 'Cialis online overnight <a href="http://cialisndbrx.com/#">buy cialis online</a> cialis tadalafil 20mg <a href="http://cialischmrx.com/#">buy cheap cialis online</a> tadalafil api cialis generic <a href="http://cialischbrx.com/#">buy generic cialis online</a> indian viagra for women cialis generic <a href="http://cialisdbrx.com/#">buy cheap cialis online</a> is there viagra for females <a href="http://chviagranrxusa.com/#">buy generic viagra online</a>', '2019-08-17'),
(189, 'JasonJah', '88347785496', 'brittny@probbox.com ', 'https://cafergot1.com/ ', '92908370', '', '<a href="https://cafergot1.com/">generic cafergot</a> ', '2019-08-17'),
(190, 'Ewerdar https://google.com', '83654719653', 'reibostioprof1971@mail.ru', 'https://google.com', '242658433', '', 'Ewerdar https://google.com', '2019-08-21'),
(191, 'zislaxY', '87958478421', 'lgaerfkls0@qmails.pro', '', '', '', 'Discount buy generic cialis online <a href="http://www.cialisongen.com/#">generic cialis</a> lowest viagra prices cialis levitra <a href="https://cialisnorxs.com/#">cheap cialis</a> national payday loan <a href="http://paydaysonlinemoney.com/#">loans for bad credit</a>', '2019-08-27'),
(192, 'Prerdar https://google.com', '82567175186', 'reibostioprof1971@mail.ru', 'http://google.com', '167635128', '', 'Prerdar https://google.com', '2019-08-27'),
(193, 'warkenny', '85837985659', 'lgaerfkls0@qmails.co', '', '', '', '<a href="http://cialiishb.com/#">buy generic cialis online</a> <a href="http://cialisdbrx.com/#">generic cialis</a> <a href="http://cialisherrx.com/#">buy cialis online</a> <a href="http://cashpaydayusloans.com/#">quick cash advance online</a> <a href="http://cialischbrx.com/#">generic cialis online</a> ', '2019-08-28'),
(194, 'boxolve', '86924548591', 'lgaerfkls2@qmails.co', '', '', '', '<a href="http://viagramrxgeneric.com/#">cheap viagra online</a> <a href="http://calismdmrxonline.com/#">buy generic cialis</a> <a href="http://cialischmrx.com/#">cialis</a> <a href="http://paydaymycreditloan.com/#">payday loans online</a> <a href="http://chviagranrxusa.com/#">buy viagra online</a> ', '2019-08-28'),
(195, 'erywoke', '83885429658', 'lgaerfkls1@qmails.co', '', '', '', '<a href="http://mrxcialisrx.com/#">buy generic cialis</a> <a href="http://cashpaydayusloans.com/#">same day loans</a> <a href="http://cialismnrx.com/#">generic cialis</a> <a href="http://viagralx.com/#">viagra online</a> <a href="http://cialisdbrx.com/#">generic cialis online</a> ', '2019-08-28'),
(196, 'Incify', '82526919212', 'lgaerfkls0@qmails.pro', '', '', '', 'Low cost cialis generic <a href="http://www.cialisongen.com/#">cialis online</a> cialis 40 mg tablets cialis <a href="https://cialisnorxs.com/#">generic cialis</a> get a loan now <a href="http://paydaysonlinemoney.com/#">fast cash</a>', '2019-08-28'),
(197, 'Mawsstub', '86836413172', 'lgaerfkls1@qmails.pro', '', '', '', 'Buy cialis no rx <a href="http://www.cialisongen.com/#">buy generic cialis online</a> xatral cialis online pharmacy cialis <a href="https://cialisnorxs.com/#">generic cialis online</a> loans online with monthly payments <a href="http://paydaysonlinemoney.com/#">payday loans online</a>', '2019-08-28'),
(198, 'Wourgeof', '83326148161', 'lgaerfkls2@qmails.pro', '', '', '', 'Cialis online canadian pharmacy cialis <a href="http://www.cialisongen.com/#">generic cialis online</a> generic cialis 20mg best buy california <a href="https://cialisnorxs.com/#">cheap cialis</a> personal loan fast <a href="http://paydaysonlinemoney.com/#">loans for bad credit</a>', '2019-08-28'),
(199, 'Cimure', '87268688748', 'lgaerfkls0@qmails.pro', '', '', '', 'Buy cialis online no prescription <a href="http://cialisgenbrx.com/#">generic cialis online</a> cialis pills discount <a href="https://cialisrxche.com/#">generic cialis</a> how can i get a loan with bad credit <a href="http://paydaystip.com/#">personal loans</a>', '2019-09-03'),
(200, 'mubborb', '82363689931', 'lgaerfkls1@qmails.pro', '', '', '', 'Viagra half dose cialis pills <a href="http://cialisgenbrx.com/#">generic cialis online</a> order cialis tadalafil <a href="https://cialisrxche.com/#">buy cialis online</a> payday loans sc <a href="http://paydaystip.com/#">cash advance</a>', '2019-09-03'),
(201, 'ReopSype', '82367351131', 'lgaerfkls2@qmails.pro', '', '', '', 'Viagra shipped overnight cialis generic <a href="http://cialisgenbrx.com/#">cialis online</a> cialis generic cheap viagra <a href="https://cialisrxche.com/#">cheap cialis</a> bad credit payday loan <a href="http://paydaystip.com/#">payday loans online</a>', '2019-09-03'),
(202, 'Abseque', '85522614972', 'oskudfert0@qmails.co', '', '', '', 'Ingredient in viagra <a href="http://chviagranrxusa.com/#">viagra coupon</a> order cialis online without a prescription alpha blockers cialis <a href="http://cialismnrx.com/#">cialis online</a>', '2019-09-04'),
(203, 'ReopSype', '87736483872', 'oskudfert1@qmails.pro', '', '', '', 'Proper dose cialis 20mg <a href="http://cialischbrx.com/#">cheap cialis online</a> price for cialis online pharmacy <a href="http://cialisknfrx.com/#">cheap cialis online</a>', '2019-09-04'),
(204, 'Stairty', '83549791291', 'oskudfert2@qmails.pro', '', '', '', 'Buy cialis online canada buy <a href="http://mrxcialisrx.com/#">buy cheap cialis coupon</a> what happens when you take viagra <a href="http://viagramrxgeneric.com/#">buy cheap viagra</a>', '2019-09-04'),
(205, 'scoopay', '85174864981', 'oskudfert0@qmails.pro', '', '', '', 'Purchase cheap cialis soft tabs <a href="http://cialischmrx.com/#">generic cialis</a> buy cialis pills <a href="http://cialisdbrx.com/#">buy generic cialis online</a>', '2019-09-04'),
(206, 'couctPal', '88861847296', 'oskudfert1@qmails.co', '', '', '', 'Best price buy cialis online <a href="http://cialisherrx.com/#">buy cialis online</a> buy cialis online in florida <a href="http://cialismdmarx.com/#">buy cialis online</a>', '2019-09-04'),
(207, 'qwrqqkiev https://google.com', '85323672876', 'stolbeachfhochnie1989@mail.ru', 'http://google.com', '126447456', '', 'qwrqqkiev https://google.com', '2019-09-06'),
(208, 'alcono', '86343695773', 'oskudfert2@qmails.co', '', '', '', 'Order cialis online without prescription <a href="http://cialismrxcialis.com/#">buy cheap cialis online</a> viagra u apotekama <a href="http://genviagramdmrx.com/#">generic viagra online</a>', '2019-09-11'),
(209, 'Broari', '82533847584', 'plsolserq0@qmails.pro', '', '', '', 'Generic cialis vs brand cialis <a href="http://bmorelan.com/#">Buy Generic Cialis Online</a> buy cialis singapore <a href="http://discgolfmadness.com/#">online cialis</a> cialis online overnight delivery <a href="http://highbluewave.com/#">generic cialis</a> cheap cialis online <a href="http://beiradapraia.com.br/#">cialis online</a> cialis canadian pharmacy cheap buy <a href="http://fpdvermont.org/#">cheap cialis online</a> cialis generic dosage ', '2019-09-13'),
(210, 'Fousymn', '84726768342', 'plsolserq1@qmails.pro', '', '', '', 'Buy cialis online usa <a href="http://bcsalaska.com/#">buy cialis cheap</a> lowest price generic cialis online pharmacy <a href="http://apteka-nektar.ru/#">buy cialis generic</a> generic 10 mg cialis 20mg <a href="http://frommydiamondeye.com/#">cialis cheap</a> walmart pharmacy viagra cialis pills <a href="http://carbarnofcolumbia.com/#">Buy Generic Cialis Online</a> generic cialis sale <a href="http://apt6d.com/#">cialis generic</a> cialis for cheap ', '2019-09-13'),
(211, 'jonfume', '84198739919', 'plsolserq2@qmails.pro', '', '', '', 'Viagra dejstvo cialis 20mg <a href="http://pickleball247.com/#">cialis online</a> benefits of cialis generic drugs <a href="http://newyearideas.info/#">generic cialis</a> ordering cialis <a href="http://brandlaureate.org/#">cialis cost</a> cialis pills ingredients <a href="http://chromaphase.com/#">buy generic cialis online</a> order cialis <a href="http://drivesentinel.co.uk/#">cheap cialis online</a> metformin expiration cialis generic pills used ', '2019-09-13'),
(212, 'Irrins', '85454859453', 'oskudfert0@qmails.co', '', '', '', 'Pills that work like viagra <a href="http://chviagranrxusa.com/#">viagra coupon</a> reductil online without prescription cialis 20mg <a href="http://cialismnrx.com/#">buy cialis</a>', '2019-09-14'),
(213, 'gockiz', '89856592553', 'oskudfert1@qmails.co', '', '', '', 'Cialis price <a href="http://cialisherrx.com/#">buy cialis online</a> walgreens cialis online pharmacy <a href="http://cialismdmarx.com/#">buy cialis</a>', '2019-09-14'),
(214, 'frsdiev https://google.com', '88323847397', 'mensbelothest1980@mail.ru', 'http://google.com', '126447456', '', 'frsdiev https://google.com', '2019-09-15'),
(215, 'Fordelt', '81467592797', 'oskudfert1@qmails.co', '', '', '', 'Cialis canadian pharmacy cheap <a href="http://cialisherrx.com/#">buy cialis online</a> vicodin identify buy cialis online buy <a href="http://cialismdmarx.com/#">buy cialis online</a>', '2019-09-18'),
(216, 'warkenny', '89811626244', 'oskudfert0@qmails.co', '', '', '', 'Viagra where to buy <a href="http://chviagranrxusa.com/#">viagra online</a> woman and cialis pharmacy <a href="http://cialismnrx.com/#">cheap cialis online</a>', '2019-09-18'),
(217, 'Fambify', '82458157973', 'oskudfert2@qmails.co', '', '', '', 'Legitimate cialis generic <a href="http://cialismrxcialis.com/#">cialis online</a> why viagra is used <a href="http://genviagramdmrx.com/#">generic viagra online</a>', '2019-09-18'),
(218, 'herfix', '88978754581', 'plsolserq1@qmails.pro', '', '', '', 'Mail order cialis online pharmacy order <a href="http://a1-autopartsglasgow.com/#">buy cialis cheap</a> mixing cialis generic viag <a href="http://ebizclass.com/#">Buy Generic Cialis Online</a> benefits of cialis generic drugs <a href="http://bestk.net/#">cialis cheap</a> safely buying cialis overseas <a href="http://100halloweencards.com/#">cialis generic</a> cheap cialis brand name <a href="http://cymaxcomputers.co.uk/#">cialis online</a> what dog cialis pills look like ', '2019-09-19'),
(219, 'Tooddef', '82463839275', 'plsolserq0@qmails.pro', '', '', '', 'Shelf life cialis online pharmacy <a href="http://abirphoto.com/#">cialis cost</a> how long does cialis 20mg cialis <a href="http://automenta.com/#">online cialis</a> best place to buy cialis online <a href="http://4ginthebox.com/#">cheap generic cialis</a> how to buy cialis generic drugs <a href="http://defendtheinter.net/#">cialis</a> prices cialis soft tabs <a href="http://cosmeticgid.com/#">cialis</a> professional cialis pharmacy ', '2019-09-19'),
(220, 'raranda', '87777813679', 'plsolserq2@qmails.pro', '', '', '', 'Cost cialis generic drugs <a href="http://capstr.at/#">buy cialis online cheap</a> male enhancement cialis generic generic <a href="http://brandlaureate.org/#">cheap cialis online</a> buy cialis online without a rx cialis <a href="http://camprv.com/#">buy cialis</a> cialis 5mg tablets cialis <a href="http://cadentfinancial.com/#">Buy Generic Cialis Online</a> order generic cialis <a href="http://chilecitonews.com/#">buy generic cialis</a> benefits of cialis generic drugs ', '2019-09-20'),
(221, 'orarePak', '84316945226', 'oskudfert2@qmails.co', '', '', '', 'Cialis pills cheap <a href="http://cialismrxcialis.com/#">buy cheap cialis</a> street value of viagra <a href="http://genviagramdmrx.com/#">viagra coupon</a>', '2019-09-20'),
(222, 'Fraurib', '88586556528', 'oskudfert0@qmails.co', '', '', '', 'Who is the woman in the viagra commercial <a href="http://chviagranrxusa.com/#">viagra coupon</a> 5mg cialis generic <a href="http://cialismnrx.com/#">buy cialis</a>', '2019-09-20'),
(223, 'Bodylono', '86676455974', 'oskudfert1@qmails.co', '', '', '', 'Comprare price cialis generic <a href="http://cialisherrx.com/#">buy cialis online</a> cialis tablet side effects <a href="http://cialismdmarx.com/#">cialis</a>', '2019-09-20'),
(224, 'ciffigh', '86779598176', 'oskudfert2@qmails.pro', '', '', '', 'How much is viagra at walmart cialis generic <a href="http://mrxcialisrx.com/#">buy cialis online</a> viagra commercial girl <a href="http://viagramrxgeneric.com/#">buy viagra online</a>', '2019-09-23'),
(225, 'Grinny', '84828727954', 'oskudfert0@qmails.pro', '', '', '', 'Soft tabs cialis generic levitra <a href="http://cialischmrx.com/#">cheap cialis online</a> buy tadalafil canada cialis <a href="http://cialisdbrx.com/#">cheap cialis</a>', '2019-09-23'),
(226, 'mubborb', '89917333476', 'oskudfert1@qmails.pro', '', '', '', 'Canada cialis generic maintain an erection cialis <a href="http://cialischbrx.com/#">cheap cialis online</a> buy cialis professional <a href="http://cialisknfrx.com/#">cialis online</a>', '2019-09-23'),
(227, 'Vedogaro', '83932877661', 'oskudfert2@qmails.co', '', '', '', 'Cheap cialis <a href="http://cialismrxcialis.com/#">buy cialis</a> buying viagra without a prescription <a href="http://genviagramdmrx.com/#">viagra</a>', '2019-09-23'),
(228, 'Jeatalaf', '86183875196', 'oskudfert0@qmails.co', '', '', '', 'Viagra 100mg generic <a href="http://chviagranrxusa.com/#">buy viagra online</a> most effective cialis pills <a href="http://cialismnrx.com/#">cheap cialis</a>', '2019-09-23'),
(229, 'Wharcalp', '89716765688', 'oskudfert1@qmails.co', '', '', '', 'Search cialis generic cialis <a href="http://cialisherrx.com/#">cialis</a> viagra levitra cialis generic drugs <a href="http://cialismdmarx.com/#">cialis online</a>', '2019-09-23'),
(230, 'Incotner', '81617769225', 'oskudfert1@qmails.co', '', '', '', 'Natural forms of viagra cialis pills cialis <a href="http://cialisherrx.com/#">cheap cialis</a> order cheap cialis <a href="http://cialismdmarx.com/#">buy cialis</a>', '2019-09-26'),
(231, 'Extend', '81241521598', 'oskudfert2@qmails.pro', '', '', '', 'Sale cialis generic <a href="http://mrxcialisrx.com/#">buy cheap cialis coupon</a> viagra actress <a href="http://viagramrxgeneric.com/#">buy viagra online</a>', '2019-09-26'),
(232, 'Pamabunk', '83647151466', 'oskudfert0@qmails.pro', '', '', '', 'How long does cialis 20mg <a href="http://cialischmrx.com/#">order cialis</a> order cheap cialis <a href="http://cialisdbrx.com/#">buy generic cialis</a>', '2019-09-26'),
(233, 'choorma', '88794328984', 'oskudfert2@qmails.co', '', '', '', 'Generic cialis daily use cheap <a href="http://cialismrxcialis.com/#">buy cialis online</a> viagra vs cialis vs levitra <a href="http://genviagramdmrx.com/#">viagra online</a>', '2019-09-26'),
(234, 'Mimisicy', '87573251475', 'oskudfert0@qmails.co', '', '', '', 'Viagra gag gift <a href="http://chviagranrxusa.com/#">cheap viagra</a> pics of cialis pills <a href="http://cialismnrx.com/#">cialis</a>', '2019-09-26'),
(235, 'scoopay', '86796731919', 'oskudfert1@qmails.pro', '', '', '', 'Cialis online prices <a href="http://cialischbrx.com/#">cheap cialis online</a> get cialis presN?riN€tion and order cialis online <a href="http://cialisknfrx.com/#">generic cialis</a>', '2019-09-26'),
(236, 'fjlk222k https://google.com', '89518845573', 'myotammysynth1989@mail.ru', 'http://google.com', '126447456', '', 'fjlk222k https://google.com', '2019-10-04'),
(237, 'fsskjhk222k https://google.com', '84689676563', 'hallhighhose1986@mail.ru', 'http://google.com', '126447456', '', 'fsskjhk222k https://google.com', '2019-10-09'),
(238, 'Hellenvicky', '87265688169', 'lisadontate@gmail.com', '', '325238565', '', 'Hello, I apologize for this letter, but I have no other choice! \r\n \r\nThis is a 4-year-old girl Lisa Filameshina! \r\nhttps://sun9-7.userapi.com/c848620/v848620572/b2c87/xpLF8Ynpc_0.jpg \r\nLisa has retinoblastoma (retinal cancer). Her eye needs urgent treatment! In the Swiss clinic «Hospital Ophtalmique Jules-Gonin» (Lausanne) they guarantee the preservation of the organ so important for the future life of the child. \r\n \r\nIt is necessary to collect  $9000 before October 31. \r\n \r\nWe will be grateful for any amount of money! \r\n \r\nI beg you help! \r\n \r\nThat is wallet address for payment bitcoin :157CfZ3qhHpRWKbzqoroUAxTMgDhhmPfPt \r\n \r\nI give the payment details in bitcoins, since another transfer is problematic in our country. \r\n \r\nSorry again.', '2019-10-20'),
(239, 'fdsssk222k https://google.com', '83613152621', 'backnegdistni1972@mail.ru', 'https://google.com', '378454213', '', 'fdsssk222k https://google.com', '2019-10-21'),
(240, 'You win 2491 $ get here http://prizeemail.online#id897', '84632337963', 'james.goldsmith@aol.com', 'https://google.com', '122433464', '', 'You win 2491 $ get here http://prizeemail.online#id245', '2019-10-23'),
(241, 'grfsfhhasf https://google.com', '81937154568', 'reitorfazu1983@mail.ru', '', '132353531', '', 'grfsfhhasf https://google.com', '2019-12-03'),
(242, 'khkkhfka https://google.com', '86111766475', 'geosubcisur1981@mail.ru', 'https://google.com', '264561317', '', 'daddkdad https://google.com', '2019-12-08'),
(243, 'ddkdhhh https://google.com', '84376134948', 'clovadphovers7@mail.ru', 'https://google.com', '285462816', '', 'hhffshd https://google.com', '2019-12-21'),
(244, 'abzzzd кликай https://google.com', '85688524491', 'fangregentpho6@bk.ru', '', '132353531', '', 'szazbf кликай https://google.com', '2020-01-29'),
(245, 'fsffdff кликай https://google.com', '85539685124', 'wrenisdana10@inbox.ru', 'https://google.com', '285462816', '', 'hdkfhdd кликай https://google.com', '2020-02-11'),
(246, 'dkhkjdh кликай https://google.com', '84746494131', 'feihelpmistti11@inbox.ru', 'https://google.com', '285462816', '', 'dhhdkkh кликай https://google.com', '2020-02-16'),
(247, 'fhfjffs кликай https://google.com', '85962228921', 'sthejoltrafer7@bk.ru', 'https://google.com', '285462816', '', 'hffhjff кликай https://google.com', '2020-02-25'),
(248, 'sfdfdsh кликай https://google.com', '88535744995', 'preamuninan7@mail.ru', 'https://google.com', '285462816', '', 'ffhsfhh кликай https://google.com', '2020-02-27'),
(249, 'KennethMug', '88977415175', 's.z.y.m.a.n.skiashley5@gmail.com', 'http://www.studiomerliniortodonzia.it/cgi-bin/avanafil.htm ', '341371453', '', 'vitamin b pills  <a href= http://www.studiomerliniortodonzia.it/cgi-bin/testosterone.htm >studiomerliniortodonzia.it/cgi-bin/testosterone.htm</a>  mold remediation jacksonville ', '2020-02-28'),
(250, 'eboxtop', '85357182784', 'omuwuquw@fhasdf.sadsdskfm.com', 'http://mewkid.net/when-is-xaxlop/', '9630396', '', 'http://mewkid.net/when-is-xaxlop/ - Amoxicillin 500mg Capsules <a href="http://mewkid.net/when-is-xaxlop/">Buy Amoxicillin</a> czr.xzmv.talent-electech.com.gcb.md http://mewkid.net/when-is-xaxlop/', '2020-04-11'),
(251, 'ulihkamiti', '88239475776', 'avayiv@fhasdf.sadsdskfm.com', 'http://mewkid.net/when-is-xaxlop/', '60588922', '', 'http://mewkid.net/when-is-xaxlop/ - Amoxicillin Online <a href="http://mewkid.net/when-is-xaxlop/">Amoxicillin Online</a> mna.ljsi.talent-electech.com.lqz.zf http://mewkid.net/when-is-xaxlop/', '2020-04-11'),
(252, 'Hi Im Natali. My sexy photo here https://linktr.ee/sexynatali28', '85652695647', 'amirbegpikushin1994730iibx@mail.ru', 'https://google.com', '132353531', '', 'Hi Im Natali. My sexy photo here https://linktr.ee/sexynatali28', '2020-04-11'),
(253, 'Get 7 580 dollars here https://pay24.today/vlg8', '84158389956', 'samar96144@gmail.com', 'https://google.com', '132353531', '', 'Get 7 580 dollars here https://pay24.today/vlg8', '2020-04-15'),
(254, 'Abermotmut', '88588451921', 'sygedinafe@gmx.com', 'http://albu.com/arabian-porn-tubes.html', '521628628', '', 'squirting nude women  <a href=" http://albu.com/big-tidis.html ">big tidis</a>  huge african boobs  <a href=" http://albu.com/daily-free-picture-porn.html ">daily free picture porn</a>  sex with sweet teen  http://albu.com/mature-moms-porn-com.html  sex xxx sex vedio ', '2020-05-20');

-- --------------------------------------------------------

--
-- Table structure for table `cms_news_list`
--

CREATE TABLE IF NOT EXISTS `cms_news_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '新闻标题',
  `content` text COLLATE utf8_unicode_ci COMMENT '新闻内容',
  `time_create` date NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='新闻表' AUTO_INCREMENT=89 ;

--
-- Dumping data for table `cms_news_list`
--

INSERT INTO `cms_news_list` (`id`, `type`, `title`, `content`, `time_create`) VALUES
(70, '行业新闻', '浅析LED屏与工程投影舞台应用', '在最近一段时间中，LED显示屏与工程投影机在如火如荼的舞台应用中成为了热门设备，<a href="http://www.admaimai.com/magazine/detail7_2844.htm" target="_blank">今天</a>我们就来讲一讲两种设备的相同点和不同点。\r\n<p>\r\n	　　一、技术比拼\r\n</p>\r\n<p>\r\n	　　1.成像原理决定应用方式\r\n</p>\r\n<p>\r\n	　　1）LED显示屏——自发光：\r\n</p>\r\n<p>\r\n	　　LED显示屏是基于发光二极管技术，采用灯珠直接发光，这种自发光原理决定了LED显示屏可以实现真正的黑色，在色彩和对比度等方面也拥有出色的表现。LED屏画面仅限于屏幕范围内。\r\n</p>\r\n<p>\r\n	　　基于其自发光的特性，LED显示屏适合应用在演员距离较近的舞台背景、对黑色表现力要求较高的演出场合。\r\n</p>\r\n<p>\r\n	　　2）工程投影机——反射成像：\r\n</p>\r\n<p>\r\n	　　工程投影机是利用光线反射而成像，投影屏幕在反射来自投影机的光线外，也会不可避免地反射部分<a href="http://www.admaimai.com/magazine/detail7_8625.htm" target="_blank">环境</a>光线，因此，较难实现真正的纯黑色画面。工程投影机通过融合、叠加等手段可以实现超大画面。\r\n</p>\r\n<p>\r\n	　　基于其反射成像原理，工程投影机适宜应用于对黑色没有严苛要求的演出，以及需要超大画面的演出场合。\r\n</p>\r\n<p>\r\n	　　2.技术指标决定应用效果\r\n</p>\r\n<p>\r\n	　　1）像素：LED屏的分辨率通常取决于像素间距。像素间距越小分辨率越高，当然价格也会越昂贵。工程投影机则是以单台机器的<a href="http://www.admaimai.com/magazine/detail7_6269.htm" target="_blank">物理</a>像素数定义，不同的运用方式会使系统分辨率变化。因此，二者的分辨率水平更多取决于工程的具体方案。\r\n</p>\r\n<p>\r\n	　　2）亮度：无疑，LED显示屏的高亮度使其具备绝对优势，甚至可以满足户外日光直射下的观看需求。而工程投影机单台亮度相对较低，且价格随亮度\r\n增加呈几何级增长，光源寿命也会下降。单工程投影机可通过多台叠加等方式增强亮度，单这种方式会增加系统复杂性，降低稳定性，同时增加成本。近年来出现的\r\n激光光源投影机，在亮度方面实现了大幅提升，但价格仍较为昂贵。\r\n</p>\r\n<p>\r\n	　　3）对比度：正是得益于自发光原理，LED显示屏可实现真正黑色，对比度更为出色。投影机则无法实现完全的黑色，对比度稍逊色。\r\n</p>\r\n<p>\r\n	　　4）色彩：受对比度影响，LED屏在色彩方面表现不错。传统工程投影机处于劣势，激光投影机与LED屏相当。但在需要环境光照明的应用中，LED屏的色彩和对比度优势显著。\r\n</p>\r\n<p>\r\n	　　5）成本：LED屏系统成本取决于屏幕面积、像素间距等因素。工程投影系统取决于投影机数量、单台价位等因素。目前激光光源投影机价格与小间距LED屏相当。\r\n</p>\r\n<p>\r\n	　　二、应用灵活性\r\n</p>\r\n<p>\r\n	　　1）LED屏：采用模块化设计，运输、拆装较为方便。此外，<a href="http://www.admaimai.com/magazine/detail7_5279.htm" target="_blank">车</a>载LED屏移动灵活，可实现快速舞台背景部署。与多台投影机需要多点部署支架相比，系统更加简洁。\r\n</p>\r\n<p>\r\n	　　2）工程投影：单台投影机可以收纳至天花板等处，屏幕也可卷起，LED却无法收纳。此外，工程投影机可在演员身上或道具等难以<a href="http://www.admaimai.com/magazine/detail7_5574.htm" target="_blank">安装</a>LED屏的位置投射成像。\r\n</p>\r\n<p>\r\n	　　在看过LED显示屏与工程投影机的具体区别之后，相信您对于如何进行选择也有了新的认识了吧。更多<a target="_blank" href="http://www.admaimai.com/Equipment/">广告设备采购</a>请继续关注<a target="_blank" href="http://www.admaimai.com/">广告网</a>。\r\n</p>', '2015-05-30'),
(78, '公司新闻', 'Soni Electronics take part in LEDforum 2015 Guangzhou', '<p>\r\n	<span style="white-space:nowrap;"><span style="font-family:Arial;font-size:14px;line-height:1.5;">On Jun. 11 2015,&nbsp;</span><span style="font-family:Arial;font-size:14px;line-height:1.5;">Soni Electronics take part in LEDforum 2015 Guangzhou.&nbsp;</span></span>\r\n</p>\r\n<p>\r\n	<span style="white-space:nowrap;"><span style="font-family:Arial;font-size:14px;line-height:1.5;">Listen to latest</span><span style="font-family:Arial;font-size:14px;line-height:1.5;">&nbsp;industrial news, exchange views with other companies about the market current situations, existing</span><span style="font-family:Arial;font-size:14px;line-height:1.5;"> problems and future development trend.&nbsp;</span></span>\r\n</p>\r\n<p>\r\n	<span style="white-space:nowrap;"><span style="font-family:Arial;font-size:14px;line-height:1.5;"></span><br />\r\n</span>\r\n</p>\r\n<p>\r\n	<span style="white-space:nowrap;"><img src="/editor/attached/image/20150620/20150620224230_35180.png" alt="" /><br />\r\n</span>\r\n</p>', '2015-06-20'),
(81, '行业新闻', 'Hand hold and wearable devices will be new focus of LED market', '<p class="ecxMsoNormal" style="font-size:16px;line-height:normal;font-family:微软雅黑, sans-serif;white-space:normal;font-stretch:normal;padding:0px !important;">\r\n	<span lang="EN-US" style="font-family:Arial;font-size:14px;line-height:1.5;"><span style="font-family:Arial;font-size:14px;line-height:1.5;">Hand hold and wearable devices, a new focus of LED market.&nbsp;</span></span><span style="font-family:Arial;font-size:14px;line-height:1.5;">Smart lighting control will be a new trend. Digital lighting will become the connection between IOT and Smart city.</span>\r\n</p>\r\n<p class="ecxMsoNormal" style="font-size:16px;line-height:normal;font-family:微软雅黑, sans-serif;white-space:normal;font-stretch:normal;padding:0px !important;">\r\n	<span style="font-family:Arial;font-size:14px;line-height:1.5;">Globally, the LED lighting field will face industry reshuffle. More industrial resources will be taken by a few big companies.</span>\r\n</p>\r\n<p class="ecxMsoNormal" style="font-size:16px;line-height:normal;font-family:微软雅黑, sans-serif;white-space:normal;font-stretch:normal;padding:0px !important;">\r\n	<span style="font-family:Arial;font-size:14px;line-height:1.5;">The globally requirement will continue to grow.&nbsp;</span><span style="font-family:Arial;font-size:14px;line-height:1.5;">Replacement retrofit and commercial lighting are the main drivers of SSL for the coming years.</span>\r\n</p>', '2015-06-20'),
(72, '行业新闻', 'LED照明如何重塑品牌？', '在如今的市场中，成为<a href="http://www.admaimai.com/magazine/detail7_5814.htm" target="_blank">消费</a>的主体的80后和90后能够和父辈的人选择不一样，更愿意做出个性化的选择。所以企业需要思考如何把是一个新鲜的、充满<a href="http://www.admaimai.com/magazine/detail7_7003.htm" target="_blank">活力</a>的<a href="http://www.admaimai.com/magazine/detail7_4469.htm" target="_blank">品</a>牌出现在大<a href="http://www.admaimai.com/magazine/detail7_4301.htm" target="_blank">家</a>眼前。\r\n<p style="text-align:center;">\r\n	<img alt="" src="http://image1.admaimai.com/uploadfiles/1%282740%29.png" height="317" width="526" />\r\n</p>\r\n<p>\r\n	　　不光是LED照明行业，一些老牌的企业比如麦当劳、东风日产、<a href="http://www.admaimai.com/magazine/detail7_8127.htm" target="_blank">大众汽</a><a href="http://www.admaimai.com/magazine/detail7_5279.htm" target="_blank">车</a>、微软等都面临品牌年轻化的考验。他们需要更懂80和90后的需求才能赢得未来的市场竞争。\r\n</p>\r\n<p>\r\n	　　品牌年轻化由几个方面组成，第一是产品，不仅设计年轻化，科技还要前瞻化，因为<a href="http://www.admaimai.com/magazine/detail7_4030.htm" target="_blank">年轻人</a>喜欢前沿的东西，产品是非常重要的。\r\n</p>\r\n<p>\r\n	　　第二，营销手段，两个方面，一方面是内容，一方面是营销渠道，要注重数字化营销和社交媒体的营销，品牌的内容营销是很重要的，但是内容营销必须符合年轻的消费者听得懂的语言，可能看得到的所感兴趣的方式，所以营销渠道很重要。\r\n</p>\r\n<p>\r\n	　　第三，经销商进行营销的时候也要针对客户进行不同话术的营销，因为年轻消费者所需要带给自己的感受和过去不一样，过去是显<a href="http://www.admaimai.com/magazine/detail7_5911.htm" target="_blank">富</a>或者是<a href="http://www.admaimai.com/magazine/detail7_6620.htm" target="_blank">社会</a>身份，而现在的消费者要时尚、体验、独一无二。从经销商网络当中也要把这些信息传达给消费者，要对经销商进行品牌年轻化的<a href="http://www.admaimai.com/magazine/detail7_3288.htm" target="_blank">培训</a>，只有影响他们才能最终影响终端消费者。\r\n</p>\r\n<p>\r\n	　　品牌年轻化尽管是一个宏观的战略，需要多个层面体系化的推进，但以年轻化的产品作为支点来撬动沉稳的品牌形象，打破以往的沉闷，无疑是战略的核\r\n心，并且可以起到四两拨千斤的作用。比如一直坚持“拥抱年轻”的东风日产，携手华人青年全面开启“寻找未知的自己”之旅，通过年轻故事展示、青年民意调\r\n查、校园行以及纪录片拍摄等系列活动，搭建一个展现自<a href="http://www.admaimai.com/magazine/detail7_9115.htm" target="_blank">我的</a>平台，与年青人一同寻找理想和价值。\r\n</p>\r\n<p>\r\n	　　当下，90后的偶像鹿晗赢得了很多品牌商的青睐，他们希望以此占据90后的消费市场。除了让形象代言人年轻化以外，品牌年轻化的具体策略还包括：用年轻人的语言去交流、产品包装要有节奏地更新换代、在团队中增加年轻人的头脑、定期收集年轻群体的市场反馈等等。\r\n</p>\r\n<p>\r\n	　　以往，LED照明企业宣传的方式是说教和自卖自夸，在社交媒体迅速<a href="http://www.admaimai.com/magazine/detail7_3889.htm" target="_blank">发展</a>的形式下，这种说教式的广告效果将会越来越弱。企业需要真正重视移动互联网的发展，通过有趣的活动策划，调动粉丝参与、分享、互动，让消费者在感到好玩的同时传播了品牌。此外，有针对性的故事传播也是品牌年轻化的重要途径。\r\n</p>', '2015-05-30'),
(73, '行业新闻', 'LED产业或将迎来新色彩质量标准', '最近业界内出现一则消息称，LED行业或将迎来新的新色彩质量标准。那么<a href="http://www.admaimai.com/magazine/detail7_2844.htm" target="_blank">今天</a>我们就来讲一下LED行业的色彩标准知识：\r\n<p>\r\n	　　CRI的缺点在于对高饱和度的颜色还原性评价不高，而高饱和度的光源又是高端零售行业常有的应用。\r\n</p>\r\n<p>\r\n	　　图1：CRI\r\n</p>\r\n<p style="text-align:center;">\r\n	<img alt="" src="http://image1.admaimai.com/uploadfiles/1%2834504%29.jpg" height="253" width="450" />\r\n</p>\r\n<p>\r\n	　　为了解决这个问题，几年之前U美国国<a href="http://www.admaimai.com/magazine/detail7_4301.htm" target="_blank">家</a>标准与技术机构(NIST)推出了Color quality scale(CQS)标准。但是在2012年，CIE技术委员会（TC）1-69否决了采用CQS标准，继续使用CRI。\r\n</p>\r\n<p>\r\n	　　图2：CQS\r\n</p>\r\n<p style="text-align:center;">\r\n	<img alt="" src="http://image1.admaimai.com/uploadfiles/2%286763%29.jpg" height="253" width="450" />\r\n</p>\r\n<p>\r\n	　　与此同时，还有新的标准在推出。伦斯勒理工学院（RPI）的照明研究中心（LRC）提出利用色域指数Gamut Area \r\nIndex（GAI），可以和CRI一起来表征光对色彩的还原，GAI通过对色域，饱和度，明亮度三维来准确的表达色彩。从一维的点对点的比较，变成二维\r\n面的比较。CRI(显色指数)是用来描述照明中色彩的一致性，通过与参考源对比颜色覆盖范围非常有限且对比结果不同。而GAI(色域指数)是用来描述照明\r\n中色彩饱和度/色度。两者的结合可以更加准确表达色彩。\r\n</p>\r\n<p>\r\n	　　图3：GAI\r\n</p>\r\n<p style="text-align:center;">\r\n	<img alt="" src="http://image1.admaimai.com/uploadfiles/3%283532%29.jpg" height="253" width="450" />\r\n</p>\r\n　　从上面的分析中我们可以得知，如果更加完善的色彩质量标准正式出台，整个LED行业将向更加以人为中心的高<a href="http://www.admaimai.com/magazine/detail7_4469.htm" target="_blank">品</a>质光源推进。', '2015-05-30'),
(71, '行业新闻', '剖析LED屏行业发展与竞争点', '从最近几年的<a href="http://www.admaimai.com/magazine/detail7_8509.htm" target="_blank">数据</a>之中可以看出，我国LED显示屏市场得到了持续的增长，并取得了惊人成绩。下面让我们来看具体内容：\r\n<p>\r\n	　　2013年，我国LED显示应用行业市场总额270亿元人民币。2014年，受益于小间距产<a href="http://www.admaimai.com/magazine/detail7_4469.htm" target="_blank">品</a>和广告<a href="http://www.admaimai.com/magazine/detail7_4590.htm" target="_blank">传媒</a>市场的<a href="http://www.admaimai.com/magazine/detail7_3889.htm" target="_blank">发展</a>，全国LED显示应用行业市场销售规模较2013年度有新的增长，全年市场总量达到300亿元左右，增长幅度在10到15%。国内LED显示屏进入新的增长期，预计到2015年末，<a href="http://www.admaimai.com/magazine/detail7_4497.htm" target="_blank">中国</a>内销和出口市场规模达322亿元人民币。\r\n</p>\r\n<p style="text-align:center;">\r\n	<img alt="" src="http://image1.admaimai.com/uploadfiles/1%282768%29.png" height="378" width="555" />\r\n</p>\r\n<p>\r\n	　　WTO保护到期，对LED显示行业的影响\r\n</p>\r\n<p>\r\n	　　对于中国人来说，我们赶上了一个最好的<a href="http://www.admaimai.com/magazine/detail7_6236.htm" target="_blank">时代</a>。当上一轮改革开放的红利释放殆尽，该拿走的都被拿走了。而一个崭新的时代即将到来!以“互联网”为工具，以大众<a href="http://www.admaimai.com/magazine/detail7_7613.htm" target="_blank">创业</a>为形式，正在塑造崭新的<a href="http://www.admaimai.com/magazine/detail7_5568.htm" target="_blank">经济</a>结构!而具备新知识、新理念、新思维的人将正式登上历史舞台!LED显示屏行业也需顺应时事发展，学习新的知识，吸取新的理念，用思维开拓更加广阔的市场2015年将会是一个行业角逐的关键之年。\r\n</p>\r\n<p>\r\n	　　2001年中国就加入了<a href="http://www.admaimai.com/magazine/detail7_4799.htm" target="_blank">世界</a>贸易组织(WTO)，当时中国就应该跟世界接轨，国门向全世界打开，可是当时我们国<a href="http://www.admaimai.com/magazine/detail7_4301.htm" target="_blank">家</a>的国情不合适，<a href="http://www.admaimai.com/magazine/detail7_7531.htm" target="_blank">电脑</a>普\r\n及不了，中国领导人就向世贸组织申请了15年的保护期，用这15年的时间来调整中国的经济结构，那么15的保护期，就在今年的7月份(公元2015年)，\r\n保护期已经到了，国门必须打开，这是铁的事实，这个勿容置疑。国门打开对于LED行业有何影响呢？至少会发生两件事情：\r\n</p>\r\n<p>\r\n	　　一、允许外资企业进入到中国的所有行业，包括国家管制的金融、证券、交通、<a href="http://www.admaimai.com/magazine/detail7_5799.htm" target="_blank">钢铁</a>厂等等，都允许外资的进入，以后投标项目都不允许国家参与，只允许个人财团参加；允许外资企业进入到中国的所有行业，当然海外的大型的LED显示屏厂家也将有机会进驻我国LED显示屏行业，海外LED显示屏企业拥有雄厚的<a href="http://www.admaimai.com/magazine/detail7_7129.htm" target="_blank">资本</a>及\r\n先进的技术，在这样的一种形势下，我国LED显示屏市场将会被进一步瓜分，将会给我国LED显示屏企业带来更大的挑战，我国LED显示屏企业如果不注重企\r\n业自身实力的打造，将会在这样的洪流下被冲垮，当然这对于我国的LED显示屏企业来说也算是一种机遇，因为在这样的压力下，LED显示屏企业唯有不断创新\r\n研发，提高自身技术水平，从而赢得市场的主动权。\r\n</p>\r\n<p>\r\n	　　二、关乎生存问题，海关的关税减免或者为零，也就是说从今年(公元2015年)的7月份开始，所有进出口的商品将全部免除海关的关税。\r\n</p>\r\n<p>\r\n	　　因为以前我国的海关的关税很高，所有进口商品，将全部加上海关的关税，最低的也是100%，最高的420%，也就是说100元的商品进入到中国。那么将从今年的7月份开始，全世界的商品将会陆续的进入中国，LED显示屏产品也不会例外。\r\n</p>\r\n<p>\r\n	　　不仅仅如此，所有的进出口商品还都存在着代理费，也就是代理商的费用，比如说一级代理商，二级代理商，然后才能进入到经销商的手中，经销商再加上自己的店面费、人工费、装修费最后还有加价费，所以它的价格非常非常高的，老<a href="http://www.admaimai.com/magazine/detail7_4582.htm" target="_blank">百姓</a>一般是接受不起的。\r\n</p>\r\n<p>\r\n	　　那么将从今年的7月份开始，全世界的商品将会陆续的进入中国，免除所有的费用在中国的市场上，以很低廉的价格上市，直接会进入到老百姓的<a href="http://www.admaimai.com/magazine/detail7_5382.htm" target="_blank">家庭</a>，那它对中国所有的行业，都是一个很大的冲击！\r\n</p>\r\n<p>\r\n	　　对于LED显示屏企业来说，海关的关税减免或者为零，国外的LED显示屏产品进入<a href="http://www.admaimai.com/magazine/detail7_3947.htm" target="_blank">中国市场</a>，\r\n将可以以相对于目前而言更为低廉的价格出售，凭借着其本身的品牌知名度，这将会给我国LED显示屏市场带来一次大的震荡，没有技术实力的企业将会陷入无休\r\n止的价格战中甚至走向灭亡，如何在竞争中不被淘汰，创新的优质产品是支撑的关键，此外，我国LED显示屏企业也需更为注重品牌建设，打造出一个世界知名的\r\nLED显示屏品牌。\r\n</p>\r\n<p>\r\n	　　其次，对于LED采购商而言，大量的LED显示屏产品在海关的关税减免或者为零进入中国市场，LED采购商们将能够买到价格实惠的国外知名的LED显示屏产品，特别是对于LED显示屏品牌要求及保质期长的户外传媒公司而言这将是一个大的实惠。\r\n</p>\r\n<p>\r\n	　　国内LED显示行业竞争升级\r\n</p>\r\n<p>\r\n	　　出了WTO保护到期的影响，来自LED显示行业本身的影响也不可小觑。LED显示行业市场巨大吸引了一大批企业参与，同时也加剧了企业间的竞争，技术、解决方案、客户体验等，LED显示屏竞争升级。\r\n</p>\r\n<p>\r\n	　　以小间距LED崛起为契机，LED显示屏行业展现出了巨大的市场增长潜力，无论是出于对企业自身市场拓展的考虑还是基于整个大屏显示行业前瞻性\r\n布局的需要，进军LED显示行业都成为了必然的趋势，不仅有传统LED显示企业的积极并购，从业企业数量的激增让LED显示屏行业的企业群体逐步有了明显\r\n的阵营划分。\r\n</p>\r\n<p>\r\n	　　从长远发展来看，企业群体有望形成以关键控制系统技术研发为主的技术开发型企业，以规模化、标准化生产为主的产品制造型企业，以市场应用推广为\r\n主的技术服务型企业，以满足专业市场需求为主的专业应用型企业等等。不同的市场定位，意味着不同的市场切入点以及市场运作模式，在这种情况下，企业如果想\r\n要脱颖而出，进行产品价格、解决方案提供、服务质量等单一因素的比拼，已经很难产生预期的价值，综合实力才是制胜的关键，反映到具体的市场推广层面，品牌\r\n价值无疑成为最有力的佐证。\r\n</p>\r\n<p>\r\n	　　鉴于小间距LED显示屏将“登堂入室”视为了重要的发展<a href="http://www.admaimai.com/magazine/detail7_6115.htm" target="_blank">目标</a>，LED显示屏不再是专属于户外应用的独立体系，开始迅速融入商用大屏圈之外，小间距LED显示屏在与液晶拼接、单体显示器的竞争中正在扮演越来越重要的角色。在性能提升和价格下降等因素的综合作用下，小间距LED屏在商用领域的应用优势也将日益凸显。\r\n</p>\r\n<p>\r\n	　　可以预见的是，未来LED显示屏市场的拓展中，企业的自我升级，除了传统的技术创新、服务完善之外，还要肩负自我品牌形象营销以及行业技术推广普及的重任，市场准入门槛会进一步提升，强者恒强，将成为行业发展的重要特质。\r\n</p>', '2015-05-30'),
(69, '行业新闻', '2015年全球LED全产业链发展趋势', '<span style="color:#FF0000;">（一）总体发展展望</span>\r\n<p>\r\n	　<span style="color:#0000FF;">　1．全球情况</span>\r\n</p>\r\n<p>\r\n	　　<span style="color:#339966;">（1）产业结构</span>\r\n</p>\r\n<p>\r\n	　　根据研究机构DIGITIMES Research的预测，2015年全球高亮度LED产值达137亿美元，将比2014年增长7.5%。总LED使用颗数将达1860亿颗，年增长率为32.6%。其中，LED<span class="hrefStyle"><a href="http://lighting.ofweek.com" target="_blank" title="照明">照明</a></span>为使用量年增率最高者的应用产品，同比增长率达65%。\r\n</p>\r\n<p>\r\n　从下游应用看，2015年电视用LED背光出货量将出现负增长，LED背光应用的主要成长动力来自侧光式LED在电视中的应用比重的提升，4K背光电视\r\n出货量的倍数成长，以及OLED曲面电视及量子点电视逐渐兴起。背光LED中，屏幕朝大尺寸及高精细度发展的智能型手机、小间距显示屏及车用LED等三类\r\n应用将延续2014年出货量的正向成长态势，使用量年增长率介于 13%-24%之间。\r\n</p>\r\n<p>\r\n	　　LED光源在平板、笔记本、显示器中的使用量呈现负增长趋势。其中，平板受到大屏幕手机及智能手表等可穿戴设备的冲击，出货量将进一步减少，导致2015年LED使用量呈现9.8%的负增长，预计将是LED背光应用中衰退幅度最大的应用类别。\r\n</p>\r\n<p>\r\n	　　2015年LED照明应用占比将达49.3%，比2014年高出9.9个百分点。其中，以公共照明市场中LED灯管使用的光源占比较高，产业规模占比将达37.4%。其次，LED灯泡将朝平价化发展，该类光源占比达32.5%。\r\n</p>\r\n<p>\r\n	　<span style="color:#339966;">　（2）区域结构</span>\r\n</p>\r\n<p>\r\n	　　从区域分布看，欧洲地区的市场份额最大，占23%，2015年LED照明市场规模将达59.11亿美元。虽然没有大规模补贴政策，但其高昂的电价及光文化的差异，使得LED在商用照明与户外建筑照明市场需求提升。\r\n</p>\r\n<p>\r\n	　　中国市场规模预计达到53.97亿美元，占有21%的市场份额。2015年，受惠于照明市场需求的稳定成长，中国照明市场不论是国内需求与海外出口将会更持续提升。但受供应厂商众多的影响，产品价格竞争加剧。\r\n</p>\r\n<p>\r\n	　　美国地区排名第三，市场规模预计为48.83亿美元，占有19%的市场份额。由于美国持续推广环保署的能源之星计划与DLC认证，促使厂商积极推进产品认证，以期获得补贴。\r\n</p>\r\n<p>\r\n	　　日本LED照明市场占有9%的市场份额，市场规模为23.13亿美元。日本在商务用LED照明市场逐渐打开，如学校、医院、连锁店等，工业与户外照明则有待开发。\r\n</p>\r\n<p>\r\n	　　其他新兴市场包括亚洲其他地区、中东与印度、及拉丁美洲则占有28%的市场份额。这些地区市场发展的主要驱动力包括人口数量、政策推动与项目推广，新兴地区的应用市场将于2015年进一步打开。\r\n</p>\r\n<p>\r\n	　<span style="color:#0000FF;">　2．我国情况</span>\r\n</p>\r\n<p>\r\n　2015年，我国LED行业将延续2014年上升势头，迎来新一轮的增长。预计2015年，国内LED产业将继续保持高速增长，产业规模达4500亿\r\n元，增长率达到40%左右。未来三年里，其中LED户外照明将会成为LED照明增长最快的细分领域，2015年户外照明中国LED市场规模更将接近150\r\n亿元。\r\n</p>', '2015-05-30'),
(84, '公司新闻', 'Shenzhen Talent ElecTech attend LFI Philadelphia 2019', '<p>\r\n	Shenzhen Talent ElecTech attend LFI Philadelphia 2019, during this trip to USA, we attaned LFI 2019, and visited customers in&nbsp;<a>Los</a>&nbsp;<a>Angeles</a><a>,&nbsp;Kentucky and Boston.&nbsp;</a> \r\n</p>\r\n<p>\r\n	Thank you for your attention.&nbsp;\r\n</p>\r\n<p>\r\n	<a><br />\r\n</a>\r\n</p>\r\n<p>\r\n	<img src="/editor/attached/image/20190803/20190803215646_31772.jpg" alt="" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '2019-08-03'),
(85, '公司新闻', 'Shenzhen Talent ElecTech attend ICFF New York 2019', '<p>\r\n	<p style="color:#505050;font-family:Arial, Verdana, sans-serif;white-space:normal;background-color:#F4F4F4;">\r\n		Shenzhen Talent ElecTech attend ICFF New York&nbsp;2019, ICFF is one of the most important exhibition for modern design in North America.&nbsp;\r\n	</p>\r\n	<p style="color:#505050;font-family:Arial, Verdana, sans-serif;white-space:normal;background-color:#F4F4F4;">\r\n		We met new customers there. Thank you for your attention.&nbsp;\r\n	</p>\r\n</p>\r\n<p>\r\n	<span style="white-space:nowrap;"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<img src="/editor/attached/image/20190803/20190803220315_98286.jpg" alt="" /> \r\n</p>', '2019-08-03'),
(86, '公司新闻', 'Shenzhen Talent ElecTech attend NeoCon Chicago 2019', '<p>\r\n	Shenzhen Talent ElecTech attend NeoCon Chicago 2019, we brought new produts in the market and customers interest our products.&nbsp;\r\n</p>\r\n<p>\r\n	Thank you for your attention.&nbsp;\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src="/editor/attached/image/20190803/20190803221754_96592.jpg" alt="" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '2019-08-03'),
(87, '公司新闻', 'Shenzhen Talent ElecTech attend Shanghai Smart Home Technology Show　', '<p>\r\n	<span style="font-size:12px;line-height:2;">Shenzhen Talent ElecTech attend Shanghai Smart Home Technology Show during Sep. 03-05, 2019.&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:12px;line-height:2;">Smart home is entering our life in a fast step, smart power distribution network is a basic tool to realize smart home.&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:12px;line-height:2;"> We go with the up to date technology and keep pace with era development.&nbsp; </span><span style="font-size:12px;line-height:2;">Thank you for your attention</span> \r\n</p>\r\n<p>\r\n	<img src="/editor/attached/image/20190906/20190906105540_92813.png" alt="" />\r\n</p>', '2019-09-06'),
(88, '公司新闻', 'Shenzhen Talent ElecTech attend Furniture China 2019', '<p>\r\n	<span style="line-height:1.5;">Shenzhen Talent ElecTech attend Furniture China 2019 in Shanghai during Sep. 09-12, 2019.&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style="line-height:1.5;">Furniture China Show is one of the most important platform for&nbsp;design, finished furniture&nbsp;global purchase&nbsp;and material &amp; component.&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style="line-height:1.5;">Furniture lighting and furniture power distribution are two important aspects, we talk to manufacturers to know about product new designs and features.&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style="line-height:1.5;">Only keeping leaning the products and knowing the market changes, can we provide professional suggestions and reliable products to customers.&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style="line-height:1.5;">Thank you for your attention.&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style="line-height:1.5;"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style="line-height:1.5;"><img src="/editor/attached/image/20190912/20190912193551_40723.png" alt="" /><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '2019-09-12');

-- --------------------------------------------------------

--
-- Table structure for table `cms_news_type`
--

CREATE TABLE IF NOT EXISTS `cms_news_type` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rank` int(100) NOT NULL DEFAULT '0',
  `time_create` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cms_news_type`
--

INSERT INTO `cms_news_type` (`id`, `name`, `rank`, `time_create`) VALUES
(3, '公司新闻', 1, '2012-04-10 17:36:37'),
(4, '行业新闻', 2, '2012-04-10 17:36:56');

-- --------------------------------------------------------

--
-- Table structure for table `cms_post`
--

CREATE TABLE IF NOT EXISTS `cms_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_content` text COLLATE utf8_unicode_ci,
  `time_create` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_post`
--

INSERT INTO `cms_post` (`id`, `post_content`, `time_create`) VALUES
(1, '<span style="font-family:Arial;">Talent ElecTech, create value for customers.&nbsp;</span>', '2019-08-02 15:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `cms_product`
--

CREATE TABLE IF NOT EXISTS `cms_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品标题',
  `description` text COLLATE utf8_unicode_ci COMMENT '产品描述',
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品类别',
  `image_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品图片',
  `time_create` datetime NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- Dumping data for table `cms_product`
--

INSERT INTO `cms_product` (`id`, `title`, `description`, `type`, `image_name`, `time_create`) VALUES
(3, 'LED Track Light Series', '<p>\r\n	<img src="/editor/attached/image/20150712/20150712000105_82020.png" alt="" /> \r\n</p>\r\n<p>\r\n	<img src="/editor/attached/image/20150711/20150711234531_29742.png" alt="" /> \r\n</p>\r\n<p>\r\n	<br />\r\n<br />\r\n<img src="/editor/attached/image/20150713/20150713153752_33999.png" alt="" /><br />\r\n<span style="font-size:small;"><span style="line-height:normal;"><br />\r\n</span></span> \r\n</p>\r\n<p>\r\n	<span style="font-size:small;"><span style="line-height:normal;"><br />\r\n</span></span> \r\n</p>\r\n<p>\r\n	<span style="font-size:small;"><span style="line-height:normal;"><br />\r\n</span></span> \r\n</p>\r\n<p>\r\n	<span style="font-size:small;"><span style="line-height:normal;"><br />\r\n</span></span> \r\n</p>\r\n<p>\r\n	<span style="font-size:small;"><span style="line-height:normal;"><br />\r\n</span></span> \r\n</p>\r\n<br />', '开发类', '2017-02-15-14-35-14-318317-x10.png', '2017-02-15 14:35:14'),
(4, 'LED Downlight Series', '<p>\r\n	<img src="/editor/attached/image/20150711/20150711232033_91982.png" alt="" /> \r\n</p>\r\n<p>\r\n	<img src="/editor/attached/image/20150711/20150711232056_77343.png" alt="" /> \r\n</p>\r\n<p>\r\n	<img src="/editor/attached/image/20150711/20150711232552_94539.png" alt="" />\r\n</p>', '开发类', '2017-02-15-14-34-10-710463-x9.png', '2017-02-15 14:34:10'),
(6, 'Light Source Series', '<p>\r\n	<img src="/editor/attached/image/20150710/20150710184650_59584.png" alt="" /> \r\n</p>\r\n<p>\r\n	<img src="/editor/attached/image/20150710/20150710191003_34595.png" alt="" /> \r\n</p>\r\n<p>\r\n	<img src="/editor/attached/image/20150710/20150710185013_36685.png" alt="" /> \r\n</p>', '开发类', '2015-06-21-0-05-31-547798-LED BULB.jpg', '2015-07-13 13:46:19'),
(7, 'LED Ceiling Light Series', '<p>\r\n	<img src="/editor/attached/image/20150710/20150710180134_36430.png" alt="" /> \r\n</p>\r\n<p>\r\n	<img src="/editor/attached/image/20150710/20150710180158_20151.png" alt="" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src="/editor/attached/image/20150710/20150710180216_89140.png" alt="" /> \r\n</p>', '开发类', '2015-06-20-23-56-37-240118-LED CEILINGT LIGHT.jpg', '2015-07-10 18:02:43'),
(8, 'LED Strip Series', '<p>\r\n	<img src="/editor/attached/image/20150710/20150710172400_55433.png" alt="" />\r\n</p>\r\n<p>\r\n	<img src="/editor/attached/image/20150710/20150710172428_89777.png" alt="" />\r\n</p>\r\n<p>\r\n	<img src="/editor/attached/image/20150710/20150710172454_50619.png" alt="" />\r\n</p>', '开发类', '2017-02-15-14-32-44-766001-x6.jpg', '2017-02-15 14:32:44'),
(9, 'LED Tube Light Series', '<p>\r\n	<img src="/editor/attached/image/20150720/20150720223742_44233.png" alt="" />\r\n</p>\r\n<p align="left">\r\n	<span style="font-family:Arial;line-height:1;"><span style="color:#E53333;"><img src="/editor/attached/image/20150710/20150710153256_19283.png" alt="" /><br />\r\n</span></span> \r\n</p>\r\n<p align="left">\r\n	<span style="font-family:Arial;line-height:1;"><span style="color:#E53333;"><img src="/editor/attached/image/20150710/20150710160151_78334.png" alt="" /><br />\r\n</span></span> \r\n</p>\r\n<p align="left">\r\n	<br />\r\n</p>', '开发类', '2017-02-15-14-29-39-105006-x5.jpg', '2017-02-15 14:29:39'),
(10, 'LED Panel Light Series', '<p>\r\n	<img src="/editor/attached/image/20150710/20150710162443_49778.png" alt="" style="line-height:1;" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src="/editor/attached/image/20150710/20150710121633_64140.png" alt="" /><br />\r\n<img src="/editor/attached/image/20150710/20150710162543_46403.png" alt="" /> \r\n</p>\r\n<span><span style="line-height:1;"></span><span style="line-height:1;"></span></span>', '开发类', '2017-02-15-14-28-51-841994-x4.png', '2017-02-15 14:28:51'),
(17, 'LED Flood Light Series', '<p>\r\n	<img src="/editor/attached/image/20150713/20150713152643_34364.png" alt="" />\r\n</p>\r\n<p>\r\n	<img src="/editor/attached/image/20150713/20150713113020_56049.png" alt="" /> \r\n</p>\r\n<p>\r\n	<img src="/editor/attached/image/20150713/20150713150038_40970.png" alt="" /> \r\n</p>', '开发类', '2017-02-15-14-25-27-975271-x3.png', '2017-02-15 14:25:27'),
(18, 'LED Module Series', '<p>\r\n	<img src="/editor/attached/image/20150713/20150713120435_34886.png" alt="" /> \r\n</p>\r\n<p>\r\n	<img src="/editor/attached/image/20150713/20150713110010_28344.png" alt="" /> \r\n</p>\r\n<p>\r\n	<img src="/editor/attached/image/20150713/20150713124202_31409.png" alt="" />\r\n</p>', '开发类', '2015-07-13-12-54-48-715269-4-PCS-LED-Module-Waterproof-SMD3528-LED-Module.jpg', '2015-07-13 12:54:48'),
(19, 'LED Power Supply Series', '<p>\r\n	<img alt="" src="/editor/attached/image/20180505/20180505164404_59041.jpg" /> \r\n</p>\r\n<p>\r\n	<img alt="" src="/editor/attached/image/20180505/20180505164440_92480.jpg" /> \r\n</p>\r\n<p>\r\n	<img alt="" src="/editor/attached/image/20180505/20180505170726_56504.jpg" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src="/editor/attached/image/20190528/20190528091046_77074.png" alt="" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src="/editor/attached/image/20190528/20190528091105_39442.png" alt="" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src="/editor/attached/image/20190528/20190528091126_63584.png" alt="" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src="/editor/attached/image/20190528/20190528091138_47866.png" alt="" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src="/editor/attached/image/20190528/20190528095206_70725.png" alt="" />\r\n</p>', '开发类', '2018-05-06-11-58-05-716764-DRL.JPG', '2019-05-28 09:52:12'),
(21, 'Downlight & Cabinet', '<p>\r\n	<img alt="" src="/editor/attached/image/20180505/20180505173647_35028.jpg" />\r\n</p>\r\n<p>\r\n	<img alt="" src="/editor/attached/image/20180505/20180505173714_74846.jpg" />\r\n</p>\r\n<p>\r\n	<img alt="" src="/editor/attached/image/20180505/20180505173731_17076.jpg" />\r\n</p>\r\n<p>\r\n	<img alt="" src="/editor/attached/image/20180505/20180505173753_55514.jpg" />\r\n</p>', '开发类', '2018-05-06-11-56-59-947732-DL.JPG', '2018-05-06 11:56:59'),
(22, 'Inground & Wall series', '<p>\r\n	<img alt="" src="/editor/attached/image/20180505/20180505181208_33764.jpg" /> \r\n</p>\r\n<p>\r\n	<img alt="" src="/editor/attached/image/20180505/20180505181226_69045.jpg" /> \r\n</p>\r\n<p>\r\n	<img alt="" src="/editor/attached/image/20180505/20180505181250_99254.jpg" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img alt="" src="/editor/attached/image/20180505/20180505181316_35607.jpg" /> \r\n</p>\r\n<p>\r\n	<img alt="" src="/editor/attached/image/20180505/20180505181336_27415.jpg" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img alt="" src="/editor/attached/image/20180505/20180505181406_81749.jpg" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img alt="" src="/editor/attached/image/20180505/20180505181444_21636.jpg" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img alt="" src="/editor/attached/image/20180505/20180505181601_20434.jpg" /> \r\n</p>\r\n<p>\r\n	<img alt="" src="/editor/attached/image/20180505/20180505181622_24357.jpg" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img alt="" src="/editor/attached/image/20180505/20180505181644_83180.jpg" /> \r\n</p>\r\n<p>\r\n	<img alt="" src="/editor/attached/image/20180505/20180505181819_61893.jpg" /> \r\n</p>\r\n<p>\r\n	<img alt="" src="/editor/attached/image/20180505/20180505181840_23490.jpg" /> \r\n</p>\r\n<p>\r\n	<img alt="" src="/editor/attached/image/20180505/20180505181908_22740.jpg" />&nbsp;\r\n</p>', '开发类', '2018-05-06-12-04-48-869642-IL .jpg', '2018-05-06 12:04:48'),
(23, 'Power track', '<img src="/editor/php/../attached/image/20190408/20190408213442_46533.jpg" alt="" /><br />\r\n<img src="/editor/php/../attached/image/20190408/20190408213444_45778.jpg" alt="" /><br />\r\n<img src="/editor/php/../attached/image/20190408/20190408213445_95862.jpg" alt="" /><br />\r\n<img src="/editor/php/../attached/image/20190408/20190408213450_64345.jpg" alt="" /><br />', '开发类', '2019-04-08-21-39-40-816243-AA.JPG', '2019-05-28 20:24:49'),
(24, 'Lighting control & Wiring device', '<p>\r\n	<img src="/editor/attached/image/20190528/20190528101158_74362.png" alt="" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src="/editor/attached/image/20190528/20190528101211_38081.png" alt="" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src="/editor/attached/image/20190528/20190528101222_13385.png" alt="" /> \r\n</p>', 'Lighting control & Wiring devices', '2019-07-06-17-00-33-858743-22.JPG', '2019-07-06 17:00:33'),
(25, 'Furniture power socket', '<img src="/editor/php/../attached/image/20190706/20190706155650_58953.png" alt="" /><br />\r\n<img src="/editor/php/../attached/image/20190706/20190706155654_14789.png" alt="" /><br />\r\n<img src="/editor/php/../attached/image/20190706/20190706155657_35159.png" alt="" /><br />\r\n<img src="/editor/php/../attached/image/20190706/20190706155700_86005.png" alt="" /><br />\r\n<br />', '开发类', '2019-07-06-16-58-29-296017-11.JPG', '2019-07-06 16:58:29');

-- --------------------------------------------------------

--
-- Table structure for table `cms_product_type`
--

CREATE TABLE IF NOT EXISTS `cms_product_type` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `rank` int(100) DEFAULT '0',
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_create` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=53 ;

--
-- Dumping data for table `cms_product_type`
--

INSERT INTO `cms_product_type` (`id`, `rank`, `name`, `time_create`) VALUES
(51, 4, '咨询类', '2012-04-26 10:51:52'),
(50, 3, '管理类', '2012-04-26 10:51:37'),
(49, 2, '开发类', '2012-04-26 10:51:23'),
(48, 1, '设计类', '2012-04-26 10:51:09'),
(52, 0, 'Lighting control & Wiring devices', '2019-05-28 10:10:23');

-- --------------------------------------------------------

--
-- Table structure for table `cms_recruitment_list`
--

CREATE TABLE IF NOT EXISTS `cms_recruitment_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `time_create` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `cms_recruitment_list`
--

INSERT INTO `cms_recruitment_list` (`id`, `type`, `title`, `content`, `time_create`) VALUES
(6, '业务部', 'Product manager', 'Product manager&nbsp;', '2019-08-02 22:04:22'),
(9, '业务部', 'Sales Engineer', 'We have an exciting opportunity for a Sales Engineer. This is a great opportunity to join a dynamic team in a fast growing organization.\nIn this role, you will actively participate in the sales, design, quotation, submittal and order closing process in a firm that cultivates a close-knit and collaborative corporate culture.\nWe will look for you to showcase your intuitive interpersonal skills, outstanding organizational abilities, and proven leadership to streamline processes, and maximize workflow. \nResponsibilities:\nExperienced in LED sales and system design and be comfortable with audio, video, streaming, control and solutions\nIdentify and develop opportunities, collaborate with the sales team to provide solutions, drive business direct and assist in closing the sale\nAbility to hunt into new accounts, develop and maintain business within existing accounts and manage complex sales situations\nBusiness forecasting, pipeline development and management skills are required\nMust develop an executive annual plan for new business development and growth of existing accounts\nQualifications:\nRequires a minimum BA degree or equivalent and 5+ years successfully selling LED industry\nAn aggressive, motivated self-starter with an established skill set in consultative solution\nExcellent presentation skills and confidence in presenting to large groups\nMust have demonstrated negotiation skills and be a strong closer\nExcellent networking and communications skills\nUnderstanding of large business organizations and their buying cycles\nBenefits \nWe offer a strong base salary with uncapped commission as well as a incentive package including: Medical, Life Insurance, Paid Vacation, Holidays and more.', '2019-08-02 22:04:08');

-- --------------------------------------------------------

--
-- Table structure for table `cms_recruitment_type`
--

CREATE TABLE IF NOT EXISTS `cms_recruitment_type` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `rank` int(100) NOT NULL DEFAULT '0',
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_create` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `cms_recruitment_type`
--

INSERT INTO `cms_recruitment_type` (`id`, `rank`, `name`, `time_create`) VALUES
(4, 1, '技术部', '2012-04-08 17:01:06'),
(5, 2, '管理部', '2012-04-08 17:01:27'),
(6, 3, '业务部', '2012-04-08 17:01:41'),
(7, 4, '施工部', '2012-04-15 16:47:40');

-- --------------------------------------------------------

--
-- Table structure for table `xcenter_user`
--

CREATE TABLE IF NOT EXISTS `xcenter_user` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '管理员名',
  `userpwd` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码',
  `random` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '随机数',
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_create` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `xcenter_user`
--

INSERT INTO `xcenter_user` (`id`, `username`, `userpwd`, `random`, `type`, `time_create`) VALUES
(7, 'admin', '2c7398d4654223ec75074c403ba1876e', 'JQCP0G', '总管理员', '2013-07-30 17:26:00'),
(10, 'edward', '8b9b4156eaaa2023262461ca868194bf', 'PCKwAU', '总管理员', '2015-06-09 14:46:00'),
(11, 'test', 'fb4c6315596053f5d0a5038f03f70a88', 'CSeXoa', '总管理员', '2016-04-27 07:07:10');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
