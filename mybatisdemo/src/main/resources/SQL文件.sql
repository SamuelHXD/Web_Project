CREATE DATABASE ssmdemo;

DROP TABLE IF EXISTS tb_user;
CREATE TABLE tb_user (
	id VARCHAR(32) NOT NULL,
	user_name VARCHAR(32) DEFAULT NULL,
	upassword VARCHAR(32) DEFAULT NULL,
	uname VARCHAR(32) DEFAULT NULL,
	age INT(10) DEFAULT NULL,
	sex INT(2) DEFAULT NULL,
	birthday DATE DEFAULT NULL,
	created DATETIME DEFAULT NULL,
	updated DATETIME DEFAULT NULL,
	PRIMARY KEY (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

INSERT INTO ssmdemo.tb_user ( user_name, upassword, uname, age, sex, birthday, created, updated) VALUES ( °Æzpc°Ø,°Æ123456°Ø,°Æ≈Ù≥Ã°Ø, °Æ22°Ø, °Æ1°Ø, °Æ1990-09-02°Ø, SYSDATE(), SYSDATE());
INSERT INTO ssmdemo.tb_user ( user_name, upassword, uname, age, sex, birthday, created, updated) VALUES ( °Æhj°Ø,°Æ123456°Ø,°Ææ≤æ≤°Ø, °Æ22°Ø, °Æ1°Ø, °Æ1993-09-05°Ø, SYSDATE(), SYSDATE());

SELECT * FROM tb_user

INSERT INTO ssmdemo.`tb_user`(id,user_name, upassword, uname, age, sex, birthday, created, updated) VALUES (1,'zpc','123456','≈Ù≥Ã','22', '1', NOW(), NOW(), NOW());
INSERT INTO ssmdemo.`tb_user`(id,user_name, upassword, uname, age, sex, birthday, created, updated) VALUES ( 2,'hj', '123456', 'æ≤æ≤', '22', '1', '1993-09-05', SYSDATE(), SYSDATE());
