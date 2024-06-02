-- hanfu.address definition

-- Drop table

-- DROP TABLE hanfu.address;

CREATE TABLE hanfu.address (
	id BIGINT NOT NULL,
	addtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	userid BIGINT NOT NULL,
	address VARCHAR(200) NOT NULL,
	name VARCHAR(200) NOT NULL,
	phone VARCHAR(200) NOT NULL,
	isdefault VARCHAR(200) NOT NULL,
	CONSTRAINT `PRIMARY` PRIMARY KEY (id)
);


-- hanfu.cart definition

-- Drop table

-- DROP TABLE hanfu.cart;

CREATE TABLE hanfu.cart (
	id BIGINT NOT NULL,
	addtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	tablename VARCHAR(200) DEFAULT fuzhuangzhanshi,
	userid BIGINT NOT NULL,
	goodid BIGINT NOT NULL,
	goodname VARCHAR(200),
	picture VARCHAR(200),
	buynumber INT NOT NULL,
	price FLOAT,
	discountprice FLOAT,
	CONSTRAINT `PRIMARY` PRIMARY KEY (id)
);


-- hanfu.chat definition

-- Drop table

-- DROP TABLE hanfu.chat;

CREATE TABLE hanfu.chat (
	id BIGINT NOT NULL,
	addtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	userid BIGINT NOT NULL,
	adminid BIGINT,
	ask LONGTEXT,
	reply LONGTEXT,
	isreply INT,
	CONSTRAINT `PRIMARY` PRIMARY KEY (id)
);


-- hanfu.config definition

-- Drop table

-- DROP TABLE hanfu.config;

CREATE TABLE hanfu.config (
	id BIGINT NOT NULL,
	name VARCHAR(100) NOT NULL,
	value VARCHAR(100),
	CONSTRAINT `PRIMARY` PRIMARY KEY (id)
);


-- hanfu.discussfuzhuangzhanshi definition

-- Drop table

-- DROP TABLE hanfu.discussfuzhuangzhanshi;

CREATE TABLE hanfu.discussfuzhuangzhanshi (
	id BIGINT NOT NULL,
	addtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	refid BIGINT NOT NULL,
	userid BIGINT NOT NULL,
	nickname VARCHAR(200),
	content LONGTEXT NOT NULL,
	reply LONGTEXT,
	CONSTRAINT `PRIMARY` PRIMARY KEY (id)
);


-- hanfu.discussyonghuxiangce definition

-- Drop table

-- DROP TABLE hanfu.discussyonghuxiangce;

CREATE TABLE hanfu.discussyonghuxiangce (
	id BIGINT NOT NULL,
	addtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	refid BIGINT NOT NULL,
	userid BIGINT NOT NULL,
	nickname VARCHAR(200),
	content LONGTEXT NOT NULL,
	reply LONGTEXT,
	CONSTRAINT `PRIMARY` PRIMARY KEY (id)
);


-- hanfu.forum definition

-- Drop table

-- DROP TABLE hanfu.forum;

CREATE TABLE hanfu.forum (
	id BIGINT NOT NULL,
	addtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	title VARCHAR(200),
	content LONGTEXT NOT NULL,
	parentid BIGINT,
	userid BIGINT NOT NULL,
	username VARCHAR(200),
	isdone VARCHAR(200),
	CONSTRAINT `PRIMARY` PRIMARY KEY (id)
);


-- hanfu.fuzhuangleibie definition

-- Drop table

-- DROP TABLE hanfu.fuzhuangleibie;

CREATE TABLE hanfu.fuzhuangleibie (
	id BIGINT NOT NULL,
	addtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	fuzhuangleibie VARCHAR(200) NOT NULL,
	CONSTRAINT `PRIMARY` PRIMARY KEY (id)
);


-- hanfu.fuzhuangzhanshi definition

-- Drop table

-- DROP TABLE hanfu.fuzhuangzhanshi;

CREATE TABLE hanfu.fuzhuangzhanshi (
	id BIGINT NOT NULL,
	addtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	fuzhuangbianhao VARCHAR(200),
	fuzhuangmingcheng VARCHAR(200),
	fuzhuangleibie VARCHAR(200),
	fuzhuangyanse VARCHAR(200),
	fuzhuangjieshao LONGTEXT,
	fuzhuangtupian VARCHAR(200),
	thumbsupnum INT DEFAULT 0,
	crazilynum INT DEFAULT 0,
	clicktime DATETIME,
	clicknum INT DEFAULT 0,
	price FLOAT NOT NULL,
	CONSTRAINT `PRIMARY` PRIMARY KEY (id)
);
CREATE UNIQUE INDEX fuzhuangbianhao ON hanfu.fuzhuangzhanshi (fuzhuangbianhao);


-- hanfu.hanfuzhishi definition

-- Drop table

-- DROP TABLE hanfu.hanfuzhishi;

CREATE TABLE hanfu.hanfuzhishi (
	id BIGINT NOT NULL,
	addtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	wenzhangbiaoti VARCHAR(200),
	fengmiantupian VARCHAR(200),
	fabushijian DATETIME,
	wenzhangneirong LONGTEXT,
	faburen VARCHAR(200),
	clicktime DATETIME,
	clicknum INT DEFAULT 0,
	CONSTRAINT `PRIMARY` PRIMARY KEY (id)
);


-- hanfu.orders definition

-- Drop table

-- DROP TABLE hanfu.orders;

CREATE TABLE hanfu.orders (
	id BIGINT NOT NULL,
	addtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	orderid VARCHAR(200) NOT NULL,
	tablename VARCHAR(200) DEFAULT fuzhuangzhanshi,
	userid BIGINT NOT NULL,
	goodid BIGINT NOT NULL,
	goodname VARCHAR(200),
	picture VARCHAR(200),
	buynumber INT NOT NULL,
	price FLOAT DEFAULT 0 NOT NULL,
	discountprice FLOAT DEFAULT 0,
	total FLOAT DEFAULT 0 NOT NULL,
	discounttotal FLOAT DEFAULT 0,
	`type` INT DEFAULT 1,
	status VARCHAR(200),
	address VARCHAR(200),
	CONSTRAINT `PRIMARY` PRIMARY KEY (id)
);
CREATE UNIQUE INDEX orderid ON hanfu.orders (orderid);


-- hanfu.storeup definition

-- Drop table

-- DROP TABLE hanfu.storeup;

CREATE TABLE hanfu.storeup (
	id BIGINT NOT NULL,
	addtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	userid BIGINT NOT NULL,
	refid BIGINT,
	tablename VARCHAR(200),
	name VARCHAR(200) NOT NULL,
	picture VARCHAR(200) NOT NULL,
	CONSTRAINT `PRIMARY` PRIMARY KEY (id)
);


-- hanfu.token definition

-- Drop table

-- DROP TABLE hanfu.token;

CREATE TABLE hanfu.token (
	id BIGINT NOT NULL,
	userid BIGINT NOT NULL,
	username VARCHAR(100) NOT NULL,
	tablename VARCHAR(100),
	`role` VARCHAR(100),
	token VARCHAR(200) NOT NULL,
	addtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	expiratedtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	CONSTRAINT `PRIMARY` PRIMARY KEY (id)
);


-- hanfu.users definition

-- Drop table

-- DROP TABLE hanfu.users;

CREATE TABLE hanfu.users (
	id BIGINT NOT NULL,
	username VARCHAR(100) NOT NULL,
	password VARCHAR(100) NOT NULL,
	`role` VARCHAR(100) DEFAULT 管理员,
	addtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	CONSTRAINT `PRIMARY` PRIMARY KEY (id)
);


-- hanfu.yonghu definition

-- Drop table

-- DROP TABLE hanfu.yonghu;

CREATE TABLE hanfu.yonghu (
	id BIGINT NOT NULL,
	addtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	zhanghao VARCHAR(200) NOT NULL,
	mima VARCHAR(200) NOT NULL,
	xingming VARCHAR(200) NOT NULL,
	xingbie VARCHAR(200),
	shouji VARCHAR(200),
	youxiang VARCHAR(200),
	zhaopian VARCHAR(200),
	dizhi VARCHAR(200),
	money FLOAT DEFAULT 0,
	CONSTRAINT `PRIMARY` PRIMARY KEY (id)
);
CREATE UNIQUE INDEX zhanghao ON hanfu.yonghu (zhanghao);


-- hanfu.yonghuxiangce definition

-- Drop table

-- DROP TABLE hanfu.yonghuxiangce;

CREATE TABLE hanfu.yonghuxiangce (
	id BIGINT NOT NULL,
	addtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	xiangcemingcheng VARCHAR(200) NOT NULL,
	fengmiantu VARCHAR(200),
	jianshu VARCHAR(200),
	xiangcetupian LONGTEXT,
	fabushijian DATETIME,
	zhanghao VARCHAR(200),
	xingming VARCHAR(200),
	thumbsupnum INT DEFAULT 0,
	crazilynum INT DEFAULT 0,
	CONSTRAINT `PRIMARY` PRIMARY KEY (id)
);