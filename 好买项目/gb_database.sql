SET NAMES UTF8;
DROP DATABASE IF EXISTS gb;
CREATE DATABASE gb CHARSET=UTF8;
USE gb;
/**用户信息表**/
CREATE TABLE gb_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname  VARCHAR(32),
	upwd   VARCHAR(32),
	email  VARCHAR(64),
	phone  VARCHAR(16),
	use_name VARCHAR(32),
	gender INT,
	avatar VARCHAR(128)
);
/*首页轮播图*/
CREATE TABLE gb_index_pic_carouse(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	src VARCHAR(128),
	title VARCHAR(64),
	href VARCHAR(128)
);
/*首页商品*/
CREATE TABLE gb_index_product_list(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(64),
	detail VARCHAR(128),
	price DECIMAL(8,2),
	p_pic VARCHAR(128),
	href VARCHAR(128)
);
/*购物车*/
CREATE TABLE gb_shoppingcart(
	sid INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT,
	product_id INT,
	count INT,
	is_checked BOOLEAN
);
/*分类列表*/
CREATE TABLE gb_family_list(
	fid INT PRIMARY KEY AUTO_INCREMENT,
	fname VARCHAR(64)
);
/*商品详情*/
CREATE TABLE gb_detail(
	lid INT PRIMARY KEY AUTO_INCREMENT,
	family_id INT,
	title VARCHAR(128),
	subhead VARCHAR(128),
	price DECIMAL(8,2),
	spec VARCHAR(128)
);
/*商品详情图片*/
CREATE TABLE gb_productDetails_pic(
	tid INT PRIMARY KEY AUTO_INCREMENT,
	simg VARCHAR(128),
	mimg VARCHAR(128),
	gimg VARCHAR(128)
);
/*********************插入数据********************/
#用户名插入数据
INSERT INTO gb_user VALUES
(NULL,'GB123','123456','123456@qq.com','12345678914','张三',1,NULL),
(NULL,'GB567','145456','1232446@qq.com','12345678928','李玉',0,NULL),
(NULL,'GB255','154156','12254546@qq.com','12345675828','罗马',1,NULL);
#首页轮播图插入数据
INSERT INTO gb_index_pic_carouse VALUES
(NULL,'','这是首页轮播图1','#'),
(NULL,'','这是首页轮播图2','#'),
(NULL,'','这是首页轮播图3','#');
#首页商品插入数据
INSERT INTO gb_index_product_list VALUES
(NULL,'商品1','快来看一看',998.5,'','#'),
(NULL,'商品2','快来瞧一瞧',1253.1,'','#'),
(NULL,'商品3','快来瞅一瞅',1475.6,'','#');
#购物车插入数据
INSERT INTO gb_shoppingcart VALUES
(NULL,2,2,2,1),
(NULL,3,1,1,0),
(NULL,1,3,5,1);
#产品分类插入数据
INSERT INTO gb_family_list VALUES
(NULL,'数码产品'),
(NULL,'服装'),
(NULL,'家具');
#商品详情图片插入
INSERT INTO gb_productDetails_pic VALUES
(NULL,'','',''),
(NULL,'','',''),
(NULL,'','','');
#商品详情
INSERT INTO gb_detail VALUES
(NULL,1,'这是一个很好的产品','你值得拥有',255.8,'255*138'),
(NULL,3,'这是一个很nice的产品','你配拥有',2521.8,'253*188'),
(NULL,2,'这是一个很good的产品','你拥有',254.8,'145*13');