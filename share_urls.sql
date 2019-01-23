/*
Navicat MySQL Data Transfer

Source Server         : hsz
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : myblog

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-01-23 14:53:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `share_urls`
-- ----------------------------
DROP TABLE IF EXISTS `share_urls`;
CREATE TABLE `share_urls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `describe` varchar(500) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `views_num` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of share_urls
-- ----------------------------
INSERT INTO `share_urls` VALUES ('1', '阮一峰', 'good', 'http://www.ruanyifeng.com/home.html', '3', '6');
INSERT INTO `share_urls` VALUES ('2', '搜狗翻译', '好用', 'http://fanyi.sogou.com/', '8', '4');
INSERT INTO `share_urls` VALUES ('3', '谷歌翻译', '较好', 'http://translate.google.cn/', '8', '4');
INSERT INTO `share_urls` VALUES ('4', '什么是真正的程序员', '文章略长，但是耐心读完，你肯定会受益良多！', 'https://www.cnblogs.com/xueweihan/p/5220513.html', '4', '2');
INSERT INTO `share_urls` VALUES ('5', 'php学习路线0', '', 'https://www.cnblogs.com/phpisgood/p/6956363.html', '4', '0');
INSERT INTO `share_urls` VALUES ('6', 'php经验2', '', 'https://www.jb51.net/article/93317.htm', '4', '0');
INSERT INTO `share_urls` VALUES ('7', 'php经验3', '', 'https://www.cnblogs.com/bluealine/p/8117972.html', '4', '0');
INSERT INTO `share_urls` VALUES ('8', 'php学习4', '', 'https://blog.csdn.net/dream_successor/article/details/79730270', '4', '0');
INSERT INTO `share_urls` VALUES ('9', 'php资源', '', 'https://github.com/CraryPrimitiveMan/awesome-php-zh_CN', '1', '0');
INSERT INTO `share_urls` VALUES ('10', '开源中国', '', 'https://www.oschina.net/', '3', '0');
INSERT INTO `share_urls` VALUES ('11', 'laravel-china.org', '', 'https://laravel-china.org/', '2', '0');
INSERT INTO `share_urls` VALUES ('12', '30秒系列', '', 'https://github.com/30-seconds/30-seconds-of-code', '4', '0');
INSERT INTO `share_urls` VALUES ('14', 'Best-websites-a-programmer-should-visit', '', 'https://github.com/sdmg15/Best-websites-a-programmer-should-visit', '4', '0');
INSERT INTO `share_urls` VALUES ('15', '爱站', '', 'https://www.aizhan.com/', '8', '0');
INSERT INTO `share_urls` VALUES ('16', '百度网站支持', '', 'https://ziyuan.baidu.com/', '8', '0');
INSERT INTO `share_urls` VALUES ('17', 'edabit', '通过交互模式学会编码', 'https://edabit.com/', '8', '0');
INSERT INTO `share_urls` VALUES ('19', '《温故知新PHP》1.0', '', 'https://github.com/TIGERB/easy-tips', '1', '0');
INSERT INTO `share_urls` VALUES ('20', 'laravel', '', 'https://www.golaravel.com/', '2', '0');
INSERT INTO `share_urls` VALUES ('21', '腾讯课堂', '', 'https://ke.qq.com/', '8', '0');
INSERT INTO `share_urls` VALUES ('22', '算法动画', '', 'https://www.codelike.in/', '8', '0');
INSERT INTO `share_urls` VALUES ('23', '句子迷', '', 'https://www.juzimi.com', '3', '1');
INSERT INTO `share_urls` VALUES ('24', '阿拉丁', '', 'https://www.aldwx.com/', '3', '2');
INSERT INTO `share_urls` VALUES ('25', '微小宝', '超好用的微信编辑器、多账号管理和微信爆文，百万公众号首选, 公众号助手', 'http://www.wxb.com/', '8', '0');
INSERT INTO `share_urls` VALUES ('26', '花瓣', '花瓣网,帮你收集,发现网络上你喜欢的事物.你可以用它收集灵感,保存有用的素材,计划旅行,晒晒自己想要的东西', 'http://huaban.com/', '3', '0');
INSERT INTO `share_urls` VALUES ('27', '微擎与web开发文档', '', 'https://www.kancloud.cn/logoove/we7/683424', '2', '0');
INSERT INTO `share_urls` VALUES ('28', '视觉中国', '', 'https://www.vcg.com/', '3', '2');
INSERT INTO `share_urls` VALUES ('29', '微擎开发手册', '', 'https://www.kancloud.cn/donknap/we7/136556', '2', '0');
INSERT INTO `share_urls` VALUES ('30', '千图网', '', 'http://www.58pic.com/', '8', '0');
INSERT INTO `share_urls` VALUES ('31', 'Transfonter', '', 'https://transfonter.org/', '8', '0');
INSERT INTO `share_urls` VALUES ('32', 'Love2.io', '做最好的技术文档分享平台', 'https://love2.io', '3', '0');
INSERT INTO `share_urls` VALUES ('33', '韩天峰', '', 'http://rango.swoole.com/', '3', '0');
INSERT INTO `share_urls` VALUES ('34', '白狼栈', '', 'http://www.manks.top/', '1', '0');
INSERT INTO `share_urls` VALUES ('35', 'superSlide', '', 'http://www.superslide2.com/', '8', '0');
INSERT INTO `share_urls` VALUES ('36', 'getYii', '致力打造 Yii 中国第一社区', 'https://getyii.com/', '2', '0');
INSERT INTO `share_urls` VALUES ('37', 'Restlet Client', 'api', 'https://client.restlet.com/', '1', '0');
INSERT INTO `share_urls` VALUES ('38', 'php学习指南', '', 'https://github.com/CodeMan-lol/php', '4', '1');
INSERT INTO `share_urls` VALUES ('39', 'lulublog', '', 'https://www.lulublog.cn/', '1', '0');
INSERT INTO `share_urls` VALUES ('40', 'Yii教程', '', 'http://www.fancyecommerce.com/', '2', '0');
INSERT INTO `share_urls` VALUES ('41', '深入理解Yii2.0', '', 'http://www.digpage.com/', '2', '0');
INSERT INTO `share_urls` VALUES ('42', '微信公众平台', '', 'https://mp.weixin.qq.com/', '8', '0');
INSERT INTO `share_urls` VALUES ('43', '方倍工作室', '微信公众号开发', 'http://www.cnblogs.com/txw1958/', '5', '0');
INSERT INTO `share_urls` VALUES ('44', 'django官方教程', '', 'https://docs.djangoproject.com/en/1.10/intro/', '6', '0');
INSERT INTO `share_urls` VALUES ('45', 'django博客', '', 'http://zmrenwu.com/category/django-blog-tutorial/', '6', '0');
INSERT INTO `share_urls` VALUES ('46', 'django', '', 'http://www.nowamagic.net/academy/part/13/286/', '6', '0');
INSERT INTO `share_urls` VALUES ('47', '网易云课堂', '', 'http://study.163.com/', '8', '0');
INSERT INTO `share_urls` VALUES ('48', '网易公开课', '', 'https://open.163.com/', '8', '0');
INSERT INTO `share_urls` VALUES ('49', '计算机电子书', '', 'https://github.com/justjavac/free-programming-books-zh_CN', '8', '0');
INSERT INTO `share_urls` VALUES ('50', '前端基础进阶', '', 'http://www.jianshu.com/p/cd3fee40ef59', '5', '0');
INSERT INTO `share_urls` VALUES ('51', 'javascript秘密花园', '', 'http://bonsaiden.github.io/JavaScript-Garden/zh/', '5', '0');
INSERT INTO `share_urls` VALUES ('52', '慕课网', '', 'http://www.imooc.com/', '3', '0');
INSERT INTO `share_urls` VALUES ('53', '码农周刊', '', 'http://weekly.manong.io/issues/', '3', '0');
INSERT INTO `share_urls` VALUES ('54', '极客学院', '', 'http://wiki.jikexueyuan.com/list/javascript/', '3', '0');
INSERT INTO `share_urls` VALUES ('55', 'jobbole_js', '', 'http://web.jobbole.com/category/javascript-2/', '5', '0');
INSERT INTO `share_urls` VALUES ('56', '吕大豹', '', 'http://www.cnblogs.com/lvdabao', '5', '0');
INSERT INTO `share_urls` VALUES ('57', 'ECharts Gallery', '', 'http://gallery.echartsjs.com/', '5', '0');
INSERT INTO `share_urls` VALUES ('58', 'ECMAScript 6入门', '', 'http://es6.ruanyifeng.com/', '5', '0');
INSERT INTO `share_urls` VALUES ('59', 'JavaScript标准参考教程', '', 'http://javascript.ruanyifeng.com/', '5', '0');
INSERT INTO `share_urls` VALUES ('60', '前端资源汇总', '', 'https://www.jianshu.com/p/6cb49271cd2a#', '5', '0');
INSERT INTO `share_urls` VALUES ('61', 'ocks', '', 'https://bl.ocks.org/', '5', '0');
INSERT INTO `share_urls` VALUES ('62', '简书', '', 'http://www.jianshu.com/', '3', '0');
INSERT INTO `share_urls` VALUES ('63', 'codewars', '', 'https://www.codewars.com', '8', '0');
INSERT INTO `share_urls` VALUES ('64', 'infoq_js', '', 'https://www.infoq.cn/topic/javascript', '5', '0');
INSERT INTO `share_urls` VALUES ('65', 'D3.js', '', 'https://d3js.org/', '5', '0');
INSERT INTO `share_urls` VALUES ('66', 'MDN', '', 'https://developer.mozilla.org/zh-CN/', '5', '0');
INSERT INTO `share_urls` VALUES ('67', 'Babel', 'The compiler for next generation JavaScript', 'https://babeljs.io/', '5', '0');
INSERT INTO `share_urls` VALUES ('68', 'JSLint', 'JSLint, The JavaScript Code Quality Tool', 'http://www.jslint.com/', '5', '0');
INSERT INTO `share_urls` VALUES ('69', 'chinadaily', '', 'http://www.chinadaily.com.cn/', '3', '0');
INSERT INTO `share_urls` VALUES ('70', 'TED演讲', '', 'https://www.ted.com', '3', '0');
INSERT INTO `share_urls` VALUES ('71', 'segmentfault', 'SegmentFault 思否 为开发者提供问答、学习与交流编程知识的平台，创造属于开发者的时代！', 'https://segmentfault.com/', '3', '0');
INSERT INTO `share_urls` VALUES ('72', '凹凸实验室', '', 'https://aotu.io/index.html', '5', '0');
INSERT INTO `share_urls` VALUES ('73', '掘金', '掘金是一个帮助开发者成长的社区，是给开发者用的 Hacker News，给设计师用的 Designer News，和给产品经理用的 Medium。掘金的技术文章由稀土上聚集的技术大牛和极客共同编辑为你筛选出最优质的干货，其中包括：Android、iOS、前端、后端等方面的内容。用户每天都可以在这里找到技术世界的头条内容。与此同时，掘金内还有沸点、掘金翻译计划、线下活动、专栏文章等内容。即使你是 GitHub、StackOverflow、开源中国的用户，我们相信你也可以在这里有所收获。', 'https://gold.xitu.io/', '3', '0');
INSERT INTO `share_urls` VALUES ('74', 'Laruence', '惠新宸(Laruence)的博客. 主要分享关于PHP语言, PHP扩展, Zend引擎, PHP Runtime的相关技术,新闻和最新动态. 以及记录对互联网行业的思考和分析。', 'http://www.laruence.com/', '1', '0');
INSERT INTO `share_urls` VALUES ('75', '廖雪峰', '', 'http://www.liaoxuefeng.com/', '3', '0');
INSERT INTO `share_urls` VALUES ('76', '小胡子哥', '', 'https://www.barretlee.com/entry/', '5', '1');
INSERT INTO `share_urls` VALUES ('77', '张鑫旭', '', 'http://www.zhangxinxu.com/wordpress/', '5', '0');
INSERT INTO `share_urls` VALUES ('78', '撒玛利亚人', '', 'http://www.cnblogs.com/dolphinX/', '5', '0');
INSERT INTO `share_urls` VALUES ('79', 'OurJS', '', 'http://ourjs.com/', '5', '0');
INSERT INTO `share_urls` VALUES ('80', 'Linux公社', '', 'https://www.linuxidc.com/', '7', '0');
