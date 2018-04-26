-- MySQL dump 10.13  Distrib 5.5.35, for Linux (x86_64)
--
-- Host: localhost    Database: myblog
-- ------------------------------------------------------
-- Server version	5.5.35-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','PrjLkBD0XaUZYRw3zmEXb-O3NhV2Dn_Y','$2y$13$uSOeGGih.oj/R.YeIIGXxuzAMsPlD/WY/MHny646osrxAoCX7QVcq',NULL,'273890638@qq.com',10,1513906430,1513906430);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cats`
--

DROP TABLE IF EXISTS `cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `cat_name` varchar(255) DEFAULT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cats`
--

LOCK TABLES `cats` WRITE;
/*!40000 ALTER TABLE `cats` DISABLE KEYS */;
INSERT INTO `cats` VALUES (1,'php'),(2,'yii');
/*!40000 ALTER TABLE `cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feeds`
--

DROP TABLE IF EXISTS `feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feeds`
--

LOCK TABLES `feeds` WRITE;
/*!40000 ALTER TABLE `feeds` DISABLE KEYS */;
INSERT INTO `feeds` VALUES (1,1,'问问问问无',1514456763),(2,1,'DRGDGD',1514706422);
/*!40000 ALTER TABLE `feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('m000000_000000_base',1513905848),('m130524_201442_init',1513905871);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_extends`
--

DROP TABLE IF EXISTS `post_extends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_extends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `browser` int(11) NOT NULL DEFAULT '0',
  `collect` int(11) NOT NULL DEFAULT '0',
  `praise` int(11) NOT NULL DEFAULT '0',
  `comment` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_extends`
--

LOCK TABLES `post_extends` WRITE;
/*!40000 ALTER TABLE `post_extends` DISABLE KEYS */;
INSERT INTO `post_extends` VALUES (1,1,3,0,0,0),(2,2,12,0,0,0),(3,3,10,0,0,0),(4,4,3,0,0,0),(5,5,17,0,0,0),(6,6,3,0,0,0),(7,7,3,0,0,0),(8,9,3,0,0,0),(9,11,5,0,0,0),(10,12,3,0,0,0),(11,13,7,0,0,0),(12,14,2,0,0,0),(13,15,1,0,0,0),(14,16,2,0,0,0),(15,17,6,0,0,0),(16,18,132,0,0,0),(17,19,8,0,0,0),(18,20,13,0,0,0),(19,21,10,0,0,0),(20,22,10,0,0,0),(21,23,18,0,0,0),(22,24,35,0,0,0),(23,25,40,0,0,0),(24,26,30,0,0,0),(25,27,75,0,0,0),(26,28,65,0,0,0),(27,29,12,0,0,0),(28,30,1,0,0,0),(29,31,4,0,0,0),(30,32,5,0,0,0);
/*!40000 ALTER TABLE `post_extends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `summary` varchar(255) DEFAULT NULL COMMENT '摘要',
  `content` text COMMENT '内容',
  `label_img` varchar(255) DEFAULT NULL COMMENT '标签图',
  `cat_id` int(11) DEFAULT NULL COMMENT '分类id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `is_valid` tinyint(1) DEFAULT '0' COMMENT '是否有效 0-未发布 1-已发布',
  `created_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `updated_at` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (18,'git用法','* windows安装\r\n    \r\n    https://git-for-windows.github.io/\r\n\r\n* 创建SSH Key：\r\n    \r\n    `$ ss','* windows安装\r\n    \r\n    https://git-for-windows.github.io/\r\n\r\n* 创建SSH Key：\r\n    \r\n    `$ ssh-keygen -t rsa -C \"youremail@example.com\"`\r\n\r\n* git version `git`安装版本查看\r\n* git init    初始化一个GIT仓库，创建唯一一个master分支\r\n* git add readme.txt        把文件修改添加到暂存区\r\n* git commit -m \"what\"      把暂存区的所有内容提交到当前分支\r\n* git status      查看仓库当前的状态\r\n* cat readme.txt  // 查看内容\r\n* git diff         查看做个哪些修改\r\n* git log         显示从最近到最远的提交日志\r\n* git log --pretty=oneline  显示较少日志\r\n* HEAD表示当前版本  HEAD^ 上一个版本   HEAD^^上上一个版本    \r\n* HEAD~100往上100个版本\r\n* git reset --hard HEAD^ 从当前版本回退到上一个版本\r\n* git reset --hard 51c102  到commit id为51c102的版本\r\n* git reflog       记录每一次命令，可以查到commit id\r\n* git checkout -b temp HEAD@{3} 从`HEAD@{3}`切换到新建分支`temp`\r\n* `git checkout -b 本地分支名x origin/远程分支名x` 拉取远程分支，在本地新建分支x,并自动切换到该本地分支x\r\n* git branch temp 新建分支temp\r\n* git checkout temp 切换到分支temp\r\n* git merge temp 将temp合并回当前分支\r\n* git branch -d temp 删除分支temp\r\n* git branch -r 查看所有远程分支\r\n* git diff HEAD -- readme.txt   查看工作区和版本库里面最新版本的区别\r\n* git checkout -- readme.txt    未到暂存区回撤   rm删除后恢复\r\n* git reset HEAD readme.txt     回退暂存区修改到工作区\r\n* rm test.txt   删除\r\n* git rm test.txt   git commit -m \"\" 从版本库中删除\r\n* $ ssh-keygen -t rsa -C \"youremail@example.com\"  创建SSH Key\r\n* 添加远程仓库git remote add origin git@github.com:michaelliao/learngit.git\r\n* $ git push -u origin master \r\n* git remote -v 显示远程库详细信息\r\n* Git和其他版本控制系统如SVN的一个不同之处就是有暂存区的概念\r\n* `git fetch origin 远程分支名:本地分支名` 拉取远程分支，在本地新建分支，但不自动切换到该本地分支\r\n* 在任何时候，你可以用--abort参数来终止rebase的行动，并且\"mywork\" 分支会回到rebase开始前的状态。`git rebase --abort`\r\n* 添加当前目录的所有文件到暂存区` git add .`\r\n* 查看远程分支，远程分支会用红色表示出来`git branch -a`\r\n* 删除远程仓库 `git remote rm 库`\r\n*****\r\n\r\n## 问题：fatal: refusing to merge unrelated histories\r\n\r\n解决：添加`--allow-unrelated-histories`，这个问题在2.9.0之后的版本才出现的，以前的版本可以正常工作。例：`$git pull origin master--allow-unrelated-histories`\r\n\r\n## 问题：error: failed to push some refs to \'git@github.com:zrong/quick-cocos2d-x.git\'\r\n解决：删除远程分支命令`$ git push 【你的远程仓库在本地的别名】【空格】【冒号】【你的分支名字】`,如果删除分支是默认分支便会出现此问题\r\n\r\n## 问题：git从远程的分支获取最新的版本到本地命令：   \r\n`git fetch`：相当于是从远程获取最新版本到本地，不会自动merge\r\n\r\n    git fetch origin master   \r\n    git log -p master..origin/master   \r\n    git merge origin/master   \r\n        \r\n以上命令的含义：\r\n首先从远程的origin的master主分支下载最新的版本到origin/master分支上    \r\n然后比较本地的master分支和origin/master分支的差别   \r\n最后进行合并\r\n    \r\n上述过程其实可以用以下更清晰的方式来进行：\r\n\r\n    git fetch origin master:tmp   \r\n    git diff tmp   \r\n    git merge tmp\r\n    \r\n从远程获取最新的版本到本地的tmp分支上之后再进行比较合并\r\n    \r\n`git pull`：相当于是从远程获取最新版本并merge到本地\r\n    \r\n    git pull origin master\r\n        \r\n上述命令其实相当于git fetch 和 git merge   \r\n在实际使用中，git fetch更安全一些   \r\n因为在merge前，我们可以查看更新情况，然后再决定是否合并\r\n\r\n## Git冲突：commit your changes or stash them before you can merge. 解决办法\r\n\r\n1. 保留本地的修改的改法\r\n    * 直接commit本地的修改\r\n    * 通过git stash\r\n    \r\n    ```\r\n    git stash\r\n    git pull\r\n    git stash pop\r\n    ```\r\n    \r\n    通过git stash将工作区恢复到上次提交的内容，同时备份本地所做的修改，之后就可以正常git pull了，git pull完成后，执行git stash pop将之前本地做的修改应用到当前工作区。\r\n\r\n    `git stash`: 备份当前的工作区的内容，从最近的一次提交中读取相关内容，让工作区保证和上次提交的内容一致。同时，将当前的工作区内容保存到Git栈中。\r\n\r\n    `git stash pop`: 从Git栈中读取最近一次保存的内容，恢复工作区的相关内容。由于可能存在多个Stash的内容，所以用栈来管理，pop会从最近的一个stash中读取内容并恢复。\r\n\r\n    git stash list: 显示Git栈内的所有备份，可以利用这个列表来决定从那个地方恢复。\r\n\r\n    `git stash clear`: 清空Git栈。此时使用gitg等图形化工具会发现，原来stash的哪些节点都消失了。\r\n    \r\n 2. 放弃本地修改的改法\r\n   \r\n    ```\r\n    git reset --hard\r\n    git pull\r\n    ```\r\n\r\n##  `.gitignore`只能忽略那些原来没有被track的文件，如果某些文件已经被纳入了版本管理中，则修改.gitignore是无效的。那么解决方法就是先把本地缓存删除（改变成未track状态），然后再提交：\r\n    \r\n    git rm -r --cached .\r\n    git add .\r\n    git commit -m \'update .gitignore\'\r\n   \r\n## windows使用git时出现：warning: LF will be replaced by CRLF\r\n    \r\n    rm -rf .git  // 删除.git  \r\n    git config --global core.autocrlf false  //禁用自动转换然后重新执行\r\n    git init    \r\n    git add .  \r\n    ','',0,4,'arangda',1,1517645037,1517645037),(19,'NumPy库','# NumPy库\r\n* 下载NumPy https://pypi.python.org/pypi/numpy\r\n* `import numpy as np`\r\n* 整个NumPy库','# NumPy库\r\n* 下载NumPy https://pypi.python.org/pypi/numpy\r\n* `import numpy as np`\r\n* 整个NumPy库的基础是ndarray(N-dimensional array,N维数组)对象，数据类型由另外一个叫做dtype(data-type,数据类型)的NumPy对象来指定，数组的维数和元素数量由数组的型(shape)来确定，数组的维统称为轴(axes),轴的数量被称作秩(rank)。\r\n* a.dtype 获取ndarray数据类型\r\n* a.ndim  轴数量\r\n* a.size  数组长度\r\n* a.shape 型\r\n* a.itemsize 数组中每个元素的长度为几个字节\r\n* 自带的数组创建方法   \r\n    np.zeros((3,3)),np.ones(3.3)这两个函数默认使用float64数据类型创建数组   \r\n    np.arange(4,10)   \r\n    np.arange(4,10,5)第三个参数是间隔差距，可以是浮点型   \r\n    np.arange(0,12).reshape(3,4)   \r\n    np.linspace(0,10,5) 第三个参数是把前两个数字指定范围分成几个部分   \r\n    np.random.random(3)\r\n* 矩阵积\r\n* 自增和自减运算符 结果赋给参与运算的数组自身\r\n* 通用函数\r\n* 聚合函数\r\n* 索引机制\r\n* 切片操作\r\n* for item in A.flat\r\n* np.apply_along_axis(np.mean,axis=0,arr=A)\r\n* 条件和布尔数组\r\n* 形状变换   \r\n    a.ravel() 二维数组变为一维数组   \r\n    a.shape = (12)\r\n    a.transpose() 交换行列位置的矩阵转置\r\n* 连接数组   \r\n    vstack    垂直入栈   \r\n    hstack    水平入栈   \r\n    column_stack()   \r\n    row_stack()\r\n* 数组切分   \r\n    水平切分 hsplit()   \r\n    垂直切分 vsplit()   \r\n    split()\r\n* 常用概念    \r\n    数组切片操作返回的对象只是原数组的视图   \r\n    如果想为原数组生成一份完整的副本，从而得到一个不同的数组，使用copy()函数即可\r\n    ##### 向量化\r\n    ##### 广播机制\r\n    \r\n* 结构化数组\r\n* 数组数据文件的读写\r\n','',0,4,'arangda',1,1520677060,1520677060),(20,'nginx + Gunicorn部署django','### nginx安装\r\n    \r\n    yum install nginx\r\n    \r\n增加此站的nginx配置文件\r\n```\r\nserver {\r\n    charset','### nginx安装\r\n    \r\n    yum install nginx\r\n    \r\n增加此站的nginx配置文件\r\n```\r\nserver {\r\n    charset utf-8;\r\n    listen 80;\r\n    server_name blog.arangda.com; \r\n\r\n    location /static { \r\n        alias /var/www/blogproject/static; \r\n    }\r\n\r\n    location / { \r\n        proxy_set_header Host $host;\r\n        proxy_pass http://unix:/tmp2/blog.arangda.com.socket;\r\n    }\r\n}\r\n```\r\n### 使用 Gunicorn\r\n\r\nGunicorn 一般用来管理多个进程，有进程挂了Gunicorn 可以把它拉起来，防止服务器长时间停止服务，还可以动态调整 worker 的数量，请求多的时候增加 worker 的数量，请求少的时候减少。\r\n\r\n在虚拟环境下，安装 Gunicorn：\r\n    \r\n    (py3_env) pip install gunicorn\r\n    \r\n用 Gunicorn 启动服务器进程：\r\n\r\n    (py3_env)  /var/ENVS/py3_env/bin/gunicorn --bind unix:/tmp2/blog.arangda.com.socket blogproject.wsgi:application\r\n    \r\n浏览器输入域名，可以看到访问成功了！\r\n    \r\n### supervisor管理进程\r\n\r\n安装supervisor\r\n    \r\n    pip install supervisor\r\n    \r\n生成supervisor默认配置文件,如在python2.7虚拟环境中\r\n    \r\n    echo_supervisord_conf > /etc/supervisord.conf\r\n\r\n\r\n打开supervisord.conf在底部添加如下代码\r\n```    \r\n[program:blogproject]\r\ncommand=/var/ENVS/py3_env/bin/gunicorn --bind unix:/tmp2/blog.arangda.com.socket blogproject.wsgi:application\r\ndirectory=/var/www/blogproject\r\nstartsecs=0\r\nstopwaitsecs=0\r\nautostart=true\r\nautorestart=true\r\n```\r\n\r\n启动supervisor\r\n\r\n    supervisord -c /etc/supervisord.conf\r\n\r\n或者启动，停止，重启supervisor管理的某个程序或所有程序\r\n\r\n    supervisorctl -c /etc/supervisord.conf [start|stop|restart] [program-name|all]','',0,4,'arangda',1,1520677245,1520677245),(21,'wamp(win10+apache+mysql+php)','### php安装\r\n\r\nTS：Thread Safe 线程安全， 执行时会进行线程（Thread）安全检查\r\nNTS：Non Thread Safe 非线程安全， 在执行时不进行','### php安装\r\n\r\nTS：Thread Safe 线程安全， 执行时会进行线程（Thread）安全检查\r\nNTS：Non Thread Safe 非线程安全， 在执行时不进行线程（Thread）安全检查\r\n\r\n我使用Apache+PHP的模式下，一般是把PHP作为一个Module load到apache中，那么以apache父进程-多子进程的工作模式，是需要进行线程安全检查的，所以如果是以这种方式执行php，选择ts版本\r\n\r\n那么如果是使用fastcgi，比如说用php-fpm管理php执行，则不需要进行线程安全检查，则选择nts版本的php\r\n\r\n* 复制php.ini-development,改为php.ini\r\n* 修改   \r\n```       \r\n; On windows:\r\nextension_dir = \"D:/webapp/php56/ext\"\r\n```\r\n### apache安装\r\n\r\n* httpd.conf中添加或修改\r\n```\r\nServerRoot E:\\webapp\\apache24\r\nLoadModule php5_module \"D:/webapp/php56/php5apache2_4.dll\"\r\nAddHandler application/x-httpd-php .php\r\nPHPIniDir \"D:/webapp/php56\"\r\nDirectoryIndex index.php index.html\r\nDocumentRoot \"${SRVROOT}/htdocs\"\r\n<Directory \"${SRVROOT}/htdocs\">  都修改为自己项目地址如：F：/www\r\n```\r\n* 安装\r\n        \r\n    安装/卸载命令（以管理员身份运行CMD）\r\n\r\n    安装命令：`\"J:\\apache\\Apache24\\bin\\httpd.exe\" -k install -n apache`\r\n\r\n 启动Apache时提示错误“Cannot load php5apache2_2.dll into server”,\r\n 我的php版本为 VC11 x64 Thread Safe ,下载vc11对应的Visual Studio 2012 x64,安装后OK\r\n### mysql安装\r\n* 在E:\\webapp\\mysql-5.7.19下新建my.ini，配置如下:\r\n```\r\n[mysql]\r\n# 设置mysql客户端默认字符集\r\ndefault-character-set=utf8 \r\n[mysqld]\r\n#设置3306端口\r\nport = 3306 \r\n# 设置mysql的安装目录\r\nbasedir=E:\\webapp\\mysql-5.7.19\r\n# 设置mysql数据库的数据的存放目录\r\ndatadir=E:\\webapp\\mysql-5.7.19\\data\r\n# 允许最大连接数\r\nmax_connections=200\r\n# 服务端使用的字符集默认为8比特编码的latin1字符集\r\ncharacter-set-server=utf8\r\n# 创建新表时将使用的默认存储引擎\r\ndefault-storage-engine=INNODB \r\n#log-error=D:\\mysql\\mysql_log_err.txt\r\n#log=D:\\mysql\\mysql_log.txt\r\n#log-bin=d:/log/mysql/mysql_log_bin\r\n#log-slow-queries= D:\\mysql\\mysql_log_slow.txt\r\n```\r\n* D:\\webapp\\mysql-5.7.19\\bin加入系统变量\r\n* mysqld --initialize-insecure  生成data\r\n* msvcr120.dll   百度搜索并安装\r\n* msvcp120.dll\r\n* mysqld 无法正常启动0xc000007b  安装DirectX 9.0c   安装之后还是出问题，下载一个DirectX Repair V3.5修复工具修复一下就可以\r\n* mysqld.exe -install mysql  \r\n* net start mysql  启动\r\n* 设置密码，新安装的root是没有密码，`mysql -u root` 进入mysql，执行语句：`set password = password(\'123456\');`设置密码\r\n* mysqld -remove','',0,4,'arangda',1,1520677281,1520677281),(22,'虚拟环境Virtualenv','# 虚拟环境Virtualenv\r\n`virtualenv`是一个用于隔离Python环境的工具\r\n\r\n建议安装`virtualenv-1.9`及以后版本\r\n\r\n使用`pip`安装','# 虚拟环境Virtualenv\r\n`virtualenv`是一个用于隔离Python环境的工具\r\n\r\n建议安装`virtualenv-1.9`及以后版本\r\n\r\n使用`pip`安装`virtualenv`,我们建议使用`pip1.3`及以后版本\r\n\r\n我们建议不使用`easy_install`安装virtualenv当使用`setuptools < 0.9.7`\r\n\r\n### 安装方法\r\n1. 方法一 \r\n\r\n        $[sudo] pip install virtualenv\r\n2. 方法二   \r\n\r\n        $[sudo] pip install https://github.com/pypa/virtualenv/tarball/develop\r\n3. 方法三   \r\n\r\n        $ curl -O https://pypi.python.org/packages/source/v/virtualenv/virtualenv-X.X.tar.gz\r\n        $ tar xvfz virtualenv-X.X.tar.gz\r\n        $ cd virtualenv-X.X\r\n        $ [sudo] python setup.py install\r\n4. 方法四\r\n\r\n        $ curl -O https://pypi.python.org/packages/source/v/virtualenv/virtualenv-X.X.tar.gz\r\n        $ tar xvfz virtualenv-X.X.tar.gz\r\n        $ cd virtualenv-X.X\r\n        $ python virtualenv.py myVE\r\n        \r\n### 命令：\r\n* `https://www.python.org/downloads/` 下载python\r\n* 安装python2.7和python3.5，目录分别为`D:\\Python27`和`D:\\Python35`\r\n* 用py2.7的pip安装virtualenv\r\n\r\n        D:\\Python27\\Scripts\\pip.exe install virtualenv\r\n* 建立两个目录，分别作为py2和py3的工作环境\r\n\r\n        D:\\ENVS\\py2_env\r\n        D:\\ENVS\\py3_env\r\n* 用virtualenv为两个工作目录创建虚拟环境\r\n\r\n        D:\\Python27\\Scripts\\virtualenv -p D:\\Python27\\python.exe D:\\ENVS\\py2_env\r\n        D:\\Python27\\Scripts\\virtualenv -p D:\\Python35\\python.exe D:\\ENVS\\py3_env\r\n\r\n* `virtualenv env\' 创建隔离环境env(可指定目录)\r\n* `环境目录\\Scripts\\activate` 进入隔离环境\r\n        \r\n    `D:\\ENVS\\py2_env\\Scripts\\activate` 到py2_env下工作\r\n    `D:\\ENVS\\py3_env\\Scripts\\activate` 到py3_env下工作\r\n* `deactivate` 退出隔离环境\r\n* 安装django\r\n        \r\n        pip install django==1.10.6\r\n\r\n* 安装MySQLdb\r\n\r\n        pip install mysql-python 或者 pip install mysqlclient\r\n    提示\"Microsoft Visual C++ 9.0 is required\"\r\n    \r\n        pip install PyMySQL\r\n    在项目的`__init__.py`中添加   \r\n        \r\n        import pymysql\r\n        pymysql.install_as_MySQLdb()\r\n    \r\n* 安装markdown\r\n    \r\n        pip install markdown\r\n\r\n### centos下virtualenv\r\n\r\n* 下载Pyrhon3.5.4\r\n* tar zxvf Python-3.5.4.tgz 解压\r\n* 编译安装\r\n    \r\n        cd Python-3.5.4\r\n        ./configure --prefix=/usr/local/python35\r\n        make && make install\r\n\r\n    注意： 这里我们使用的是make altinstall，如果使用make install，你将会看到在系统中有两个不同版本的Python在/usr/bin/目录中。这将会导致很多问题，而且不好处理。\r\n    \r\n* 出现 gcc:Internal error:Killed (program cc1) \r\n    \r\n    系统没有交换分区, 编译过程中内存耗尽, 导致了编译中断 …\r\n    解决方式也很简单, 就是增加一个交换分区:\r\n\r\n    1. 创建分区文件, 大小 2G\r\n        \r\n            dd if=/dev/zero of=/swapfile bs=1k count=2048000\r\n    \r\n    2. 生成 swap 文件系统\r\n\r\n            mkswap /swapfile\r\n            \r\n    3. 激活 swap 文件\r\n\r\n            swapon /swapfile\r\n\r\n    这样就木有问题了, 但是这样并不能在系统重启的时候自动挂载交换分区, 这样我们就需要修改 fstab.\r\n    修改 /etc/fstab 文件, 新增如下内容:\r\n\r\n        /swapfile  swap  swap    defaults 0 0\r\n        \r\n    这样每次重启系统的时候就会自动加载 swap 文件了.\r\n    \r\n* 3.5.4版本的python安装目录 `/usr/local/python35/`\r\n    \r\n    2.7.13版本的python安装目录  `usr/local/python27`\r\n\r\n* 安装virtualenv  `pip install virtualenv`\r\n    \r\n    \r\n* 创建虚拟环境 `/var/ENVS/py2_env`和`/var/ENVS/py3_env`\r\n\r\n        * virtualenv -p /usr/local/python35/bin/python3 /var/ENVS/py3_env\r\n        * virtualenv -p /usr/local/python27/bin/python /var/ENVS/py2_env\r\n       遇到问题：virtualenv :command not found\r\n       解决:/usr/local/python27/bin/virtualenv -p /usr/local/python35/bin/python3 /var/ENVS/py3_env\r\n\r\n* 激活环境\r\n    \r\n    source /var/ENVS/py3_env/bin/activate\r\n\r\n* 激活本地虚拟环境，进入项目的根目录，运行`pip freeze > requirements.txt`\r\n    这时在根目录下生成requirements.txt的文本文件，其内容记录了项目的全部依赖\r\n\r\n* 在服务器上进入根目录，运行`pip install -r requirements.txt`,安装项目全部依赖','',0,4,'arangda',1,1520677317,1520677317),(23,'apache + mod_wsgi部署django','### apache + mod_wsgi部署django\r\n```\r\nLoadModule wsgi_module modules/mod_wsgi.so\r\n```\r\n```\r\n','### apache + mod_wsgi部署django\r\n```\r\nLoadModule wsgi_module modules/mod_wsgi.so\r\n```\r\n```\r\n<VirtualHost *:80>\r\n	WSGIScriptAlias / /var/www/blogproject/blogproject/wsgi.py\r\n    ServerName blog.arangda.com\r\n	Alias /static/ /var/www/blogproject/static/\r\n	<Directory /var/www/blogproject/static>\r\n		Order allow,deny\r\n        Allow from all\r\n	</Directory>\r\n	<Directory /var/www/blogproject/blogproject>\r\n	<Files wsgi.py>\r\n		Order allow,deny\r\n        Allow from all\r\n	</Files>\r\n	</Directory>\r\n</VirtualHost>\r\n```','',0,4,'arangda',1,1520677765,1520677765),(24,'Markdown','## 区块元素  \r\n\r\n### 标题\r\n类Atx形式则是在行首插入1到6个`#`，对应到标题1到6阶\r\n### 区块引用 Blockquotes\r\n区块引用 在每行的最前面加上`','## 区块元素  \r\n\r\n### 标题\r\n类Atx形式则是在行首插入1到6个`#`，对应到标题1到6阶\r\n### 区块引用 Blockquotes\r\n区块引用 在每行的最前面加上`>`\r\n>This is a blockquote with two paragraphs. Lorem ipsum dolor sit amet,\r\nconsectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.\r\nVestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.\r\n### 列表\r\n无序列表使用星号，加号或是减号作为列表标记：\r\n* Red\r\n* Green\r\n* Blue\r\n有序列表则使用数字接着一个英文句点\r\n1. Bird\r\n2. McHale\r\n3. Parish\r\n\r\n### 代码区块\r\n\r\nMarkdown会用`<pre>`和`<code>`标签来把代码区块包起来   \r\n缩进4个空格或者1个制表符就可以建立代码区块   \r\n或者，您可以使用 3 个反引号在代码块之前和之后，像这样：\r\n\r\n ```\r\n这是一个代码块\r\n ```\r\n\r\n若要使添加的代码块高亮，将代码语言的名称添加到紧随反引号之后：\r\n\r\n```javascript\r\nvar oldUnload = window.onbeforeunload;\r\nwindow.onbeforeunload = function() {\r\n    saveCoverage();\r\n    if (oldUnload) {\r\n        return oldUnload.apply(this, arguments);\r\n    }\r\n};\r\n```        \r\n注意：在代码块中插入代码块的Markdown格式时，需要在反引号之前添加空格，否则呈现的布局会超出你的预期。\r\n\r\n支持所有常见的编码语言，包括 C、 c++、 Java、 Scala，Python 和 JavaScript。\r\n\r\n### 分隔线\r\n可以在一行中用三个以上的星号，减号，底线来建立一个分隔线，行内不能有其他东西。可以在星号或者减号中间插入空格。\r\n## 区段元素\r\n### 链接\r\nmarkdown语法说明[点击查看](http://www.appinn.com/markdown \"markdown语法说明\")\r\n\r\nfrom [Google][1] than from [Yahoo][]\r\n\r\n[1]: http://google.com \"Google\" \r\n[yahoo]: http://search.yahoo.com \"Yahoo Search\"\r\n    markdown语法说明[点击查看](http://www.appinn.com/markdown \"markdown语法说明\")\r\n    \r\n    from [Google][1] than from [Yahoo][]\r\n    [1]: http://google.com \"Google\" \r\n    [yahoo]: http://search.yahoo.com \"Yahoo Search\"\r\n\r\n### 强调\r\n使用( * )或者( _ )作为标记强调字词的符号，\r\n用`*`或`_`包围的字词会转成`<em>`标签包围，用两个`*`或`_`包起来的话，则会被转成`<strong>`\r\n\r\n### 代码\r\n如果要标记一小段行内代码，可以用(`)包起来\r\n\r\n### 图片\r\n\r\n    ![Alt text](/path/to/img.jpg)\r\n\r\n    ![Alt text](/path/to/img.jpg \"Optional title\")\r\n\r\n### 表格\r\n|每天 |主食 |价格 |\r\n|- | :-: | -:\r\n| 周一|面<br>食|$6|\r\n| 周二|鸡|$8|\r\n\r\n语法说明： \r\n1. 不管是哪种方式，第一行为表头，第二行分隔表头和主体部分，第三行开始每一行代表一个表格行； \r\n2. 列与列之间用管道符号 “|” 隔开，原生方式的表格每一行的两边也要有管道符。 \r\n3. 可在第二行指定不同列单元格内容的对齐方式，默认为左对齐，在 “-” 右边加上 “:” 为右对齐，在 “-” 两侧同时加上 “:” 为居中对齐。\r\n\r\n### 反斜杠\r\n    \\* literal asterisks \\*\r\nMarkdown 支持以下这些符号前面加上反斜杠来帮助插入普通的符号：\r\n```\r\n\\   反斜线\r\n`   反引号\r\n*   星号\r\n_   底线\r\n{}  花括号\r\n[]  方括号\r\n()  括弧\r\n#   井字号\r\n+   加号\r\n-   减号\r\n.   英文句点\r\n!   惊叹号\r\n```','',0,4,'arangda',1,1520677794,1520677794),(25,'在ubuntu上设置samba共享文件夹','1. 安装samba\r\n    * sudo apt-get install samba\r\n    * 无法定位软件包 samba\r\n    * sudo apt-get upda','1. 安装samba\r\n    * sudo apt-get install samba\r\n    * 无法定位软件包 samba\r\n    * sudo apt-get update 暂时不能解析域名，原因是dns没有配置，解决办法，加入dns服务器地址\r\n        * vi /etc/resolv.conf  加入如：nameserver 8.8.8.8\r\n2. 配置\r\n    * cp  /etc/samba/smb.conf  /etc/samba/smb.conf.bak   备份配置文件\r\n3. 打开/etc/samba/smb.conf 配置文件\r\n    * [share]\r\n          path = /home/arangda\r\n          available = yes\r\n          browseable = yes\r\n          writable = yes\r\n          public = yes\r\n    如果给目录指定用户，先创建用户\r\n```\r\n    root@worker:/home# userdel spark \r\n    root@worker:/home# useradd -r -m -s /bin/bash spark \r\n    root@worker:/home# passwd spark \r\n```\r\n    再对samba添加用户密码\r\n    smbpasswd -a arangda 添加用户，设置密码\r\n    然后如下设置\r\n    * [arangda]\r\n          path = /var/www\r\n          available = yes\r\n          browseable = no\r\n          writable = yes\r\n          public = no\r\n          valid user = arangda\r\n4. 重启samba\r\n    * sudo service smbd restart\r\n5. 在windows中，\\\\172.16.5.88\\share 进行访问','',0,4,'arangda',1,1521535687,1522581797),(26,'apache中添加新站的配置','1. 在ports.conf中添加端口\r\n2. 在/etc/apache2/sites-available/guahao.conf中配置VirtualHost\r\n3. ln -s ','1. 在ports.conf中添加端口\r\n2. 在/etc/apache2/sites-available/guahao.conf中配置VirtualHost\r\n3. ln -s /etc/apache2/sites-.....\r\n4. service apache2 restart','',0,4,'arangda',1,1521623634,1522565021),(27,'git fatal: Out of memory, malloc failed','设置交换空间大小（我的是这么解决的）\r\n0. 查看内存使用情况和swap的大小\r\n1. 关闭swap swapoff -a\r\n2. 设置swap的大小  dd if=/dev/ze','设置交换空间大小（我的是这么解决的）\r\n0. 查看内存使用情况和swap的大小\r\n1. 关闭swap swapoff -a\r\n2. 设置swap的大小  dd if=/dev/zero of=/swapfile bs=1M count=5120\r\n    >bs指的是Block Size，就是每一块的大小。这里的例子是1M，意思就是count是以1M为单位的。\r\n    count是告诉程序，新的swapfile要多少个block。新的swap文件是5G大小。\r\n    >注意：可能需要点时间完成此步，耐心等待完成。\r\n3. 将增大后的文件变为swap文件 mkswap /swapfile\r\n4. 重新打开swap   swapon /swapfile\r\n5. 让swap在启动的时候，自动生效。打开/etc/fstab文件，加上以下命令。然后保存。\r\n        `/swapfile swap swap defaults 0 0`\r\n        或者执行下面命令\r\n        `echo\"/swapfile swap swap defaults 0 0\" >>/etc/fstab`\r\n6.再次查看swap大小\r\n        free -m ','',0,4,'arangda',1,1522033978,1522285235),(28,'安装配置samba服务器','1. 安装samba服务\r\n\r\n```\r\n#yum install samba -y\r\n```\r\n\r\n2. 修改配置文件\r\n\r\n```\r\n# cd /etc/samba\r\n# cp','1. 安装samba服务\r\n\r\n```\r\n#yum install samba -y\r\n```\r\n\r\n2. 修改配置文件\r\n\r\n```\r\n# cd /etc/samba\r\n# cp smb.conf smb.conf.bak 备份\r\n# vim smb.conf \r\n```\r\n   \r\n   * 这里才是与密码有关的设定项目！\r\n    security = share\r\n   * 分享的资源设定方面：\r\n```\r\n[temp]                            #分享资源名称\r\ncomment    = Temporary file space  #简单的解释此资源\r\npath      = /tmp                  #实际 Linux 分享的目录\r\nwritable  = yes                  #是否可写入？在此例为是的\r\nbrowseable = yes                  #能不能被浏览到资源名称\r\nguest ok  = yes                  #单纯分享时，让用户随意登入的设定值\r\n\r\n```\r\n\r\n\r\n修改完成后，保存退出。\r\n\r\n3. testparm 检查 smb.conf 的语法是否正确\r\n    \r\n    `testparm`\r\n   \r\n   当出现有一下这句话时`Loaded services file OK.`说明当前配置正确，如有错误根据提示修改直到无误。\r\n\r\n4.启动服务并查看端口\r\n\r\n```\r\n#/etc/init.d/smb start\r\n#netstat -tplnu | grep smb\r\n``` \r\n\r\n5. 打开失败，查看防火墙\r\n\r\n    * service iptables status\r\n    \r\n6. nmap 172.16.3.34 80 查看端口是否可用\r\n   或者 telnet ip port   测试','',0,4,'arangda',1,1522285535,1522285535),(29,'mysql主从数据库同步','0. MySQL从3.23.15版本以后提供数据库复制（replication）功能，利用该功能可以实现两个数据库同步、主从模式、互相备份模式的功能。本文档主要阐述了如何在linu','0. MySQL从3.23.15版本以后提供数据库复制（replication）功能，利用该功能可以实现两个数据库同步、主从模式、互相备份模式的功能。本文档主要阐述了如何在linux系统中利用mysql的replication进行双机热备的配置。数据库同步复制功能的设置都在MySQL的配置文件中体现\r\n\r\n1. A: 172.16.5.88（主,MASTER）\r\n   B: 172.16.5.100(从,SLAVE)\r\n2. 配置A主(master) B从(slave)模式\r\n3. 配置MASTER\r\n* 增加一个用户同步使用的账号：\r\n    \r\n    `GRANT FILE ON *.* TO \'backup\'@\'172.16.5.100\' IDENTIFIED BY \'1234\';`\r\n    `GRANT REPLICATION SLAVE ON *.* TO \'backup\'@\'172.16.5.100\' IDENTIFIED BY \'1234\';`\r\n* 增加一个数据库作为同步数据库：\r\n    `create database test;`\r\n* 创建一个表结构：\r\n    `create table mytest (username varchar(20),password varchar(20));`\r\n*  `find / -name my.cnf`找到mysql配置文件`/etc/mysql/mysql.conf.d/mysqld.cnf`\r\n* 在mysqld.cnf中加入\r\nserver-id = 1      #Server 标识\r\nlog-bin = ****  #默认\r\nbinlog-do-db=test  #指定需要日志的数据库\r\n* 重启数据库服务，`service mysql restart`,查看server-id:`show variables like \'server_id\'`,发现server-id的value值是0，那是因为mysqld.cnf编辑时候权限设置为了777，改成644后重启就生效了。\r\n*  查看主服务器二进制日志名和偏移量\r\n`show master status \\G`\r\n\r\n4. 配置从数据库\r\n    * 在mysqld.cnf中加入\r\n    `server-id=2`\r\n    `relay-log=/var/lib/mysql/relay-log`\r\n    * 在从服务器上指定master,启动slave线程\r\n\r\n    ```\r\n    mysql> stop slave;\r\n    mysql> CHANGE MASTER TO MASTER_HOST=\'172.16.5.88\',\r\n        -> MASTER_USER=\'backup\',\r\n        -> MASTER_PASSWORD=\'1234\',\r\n        -> MASTER_LOG_FILE=\'mysql-bin.000001\',\r\n        -> MASTER_LOG_POS=154;\r\n    mysql> start slave;\r\n    ```\r\n\r\n    * 在从服务器上执行show slave status\\G 查询从服务器状态。\r\n    备注：Slave_IO_Running和Slave_SQL_Running都为yes才表示同步成功\r\n    \r\n5. Last_SQL_Error: Could not executeUpdate_rows event on table eip_fileservice.T_FILE_LOCATION; Can\'t find recordin \'T_FILE_LOCATION\', Error_code: 1032; handler error HA_ERR_KEY_NOT_FOUND; theevent\'s master log master1-bin.001025, end_log_pos 713922982\r\n注：这个问题因为时间精力有限没有解决，以后有空再研究吧','',0,4,'arangda',1,1524451155,1524452353),(30,'织梦编辑器设置中文字体','1. dedecms程序 include/ckeditor/下找到config.js文件\r\n2. config.font_names = \'宋体/宋体;黑体/黑体;仿宋/仿宋;楷体','1. dedecms程序 include/ckeditor/下找到config.js文件\r\n2. config.font_names = \'宋体/宋体;黑体/黑体;仿宋/仿宋;楷体/楷体;隶书/隶书;幼圆/幼圆;微软雅黑/微软雅黑;\' + config.font_names;\r\n粘贴到下面的{ }里面\r\nCKEDITOR.editorConfig = function( config )\r\n{\r\n}\r\n3. 清除浏览器历史记录，ok\r\n4. 替换中文之后，可能会出现中文字体乱码,根据织梦版本将config.js编码改成utf-8或者gb2312\r\n\r\n','',1,4,'arangda',1,1524472760,1524472760),(31,'多个织梦站点文章页和列表页共用上传图片','\r\n1. /include/extend.func.php增加函数：\r\n```\r\n//文章页用\r\nfunction replaceurl($newurl)\r\n{\r\n	$newurl','\r\n1. /include/extend.func.php增加函数：\r\n```\r\n//文章页用\r\nfunction replaceurl($newurl)\r\n{\r\n	$newurl=str_replace(\'src=\"/uploads/allimg/\',\'src=\"http://bd.xafkyy.cn/uploads/allimg/\',$newurl);\r\n	return $newurl;\r\n}\r\n\r\n//列表页用，获取缩略图\r\nfunction litimg($str_pic)\r\n{\r\n    $str_sub= \'http://bd.xafkyy.cn\'.$str_pic;\r\n    return $str_sub;\r\n}\r\n\r\n```\r\n2. 修改文章页模板：将调用文章内容的标签：{dede:field.body/}改为：{dede:field.body function=\'replaceurl(@me)\' /}\r\n生成文章，图片显示了。\r\n3. 列表页模板中调用：[field:litpic function=litimg(\'@me\')/]\r\n\r\n{dede:field name=\'litpic\' function=\"bigimg(@me)\"/}\r\n\r\n','',0,4,'arangda',1,1524472848,1524472848),(32,'织梦登录页验证码不显示','1. ` ; extension=php_gd2.dl  ` 开启php.ini中此项\r\n2.  `var_dump(gd_info());` 是否打印出gd库信息\r\n3.  ap','1. ` ; extension=php_gd2.dl  ` 开启php.ini中此项\r\n2.  `var_dump(gd_info());` 是否打印出gd库信息\r\n3.  apt-get install php7.0-gd 安装GD库\r\n4.  重启apache','',0,4,'arangda',1,1524472990,1524472990);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relation_post_tags`
--

DROP TABLE IF EXISTS `relation_post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relation_post_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `post_id` int(11) DEFAULT NULL COMMENT '文章id',
  `tag_id` int(11) DEFAULT NULL COMMENT '标签id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relation_post_tags`
--

LOCK TABLES `relation_post_tags` WRITE;
/*!40000 ALTER TABLE `relation_post_tags` DISABLE KEYS */;
INSERT INTO `relation_post_tags` VALUES (22,18,14),(29,25,19);
/*!40000 ALTER TABLE `relation_post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `tag_name` varchar(255) DEFAULT NULL COMMENT '标签名称',
  `post_num` int(11) NOT NULL DEFAULT '0' COMMENT '关联文章数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (14,'git',1),(19,'samba',1);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'test','l_7xweIfu9SsSeYSS94jz0_0VsoTVpC0','$2y$13$0Rw2IXUzKcLALM7E0ysd6.2zY07TdUvQuffSHaEPgIIMmcX7xJPYG',NULL,'1989513003@qq.com',10,1513914013,1513914013),(3,'赵伟','h14OfvZLoc-J2o-_t4el8B0pgCI9c3Uk','$2y$13$3hevJLdlca78MUIb9kuxYOG7CqNjd7GYt0UeOJjQq4EPbR68Q9kQi',NULL,'198455@qq.com',10,1514961400,1514961400),(4,'arangda','d5LLFW4MDHCi96XO9_-rKY9De5B3Y98i','$2y$13$UQpcnOgJAtaYdvoc1yXF1.xoh1U0LwIdynsj.BuQsiMOY2jj9boOq',NULL,'273890638@qq.com',10,1517221229,1517221229);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-26 13:56:31
