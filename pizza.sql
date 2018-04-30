CREATE DATABASE pizza DEFAULT CHARACTER SET utf8;
USE pizza;
CREATE TABLE category (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
INSERT INTO category VALUES (1,'pizza');
INSERT INTO category VALUES (2,'snack');
INSERT INTO category VALUES (3,'drink');

CREATE TABLE user (
  id int(11) NOT NULL AUTO_INCREMENT,
  userName varchar(255) DEFAULT NULL,
  fname varchar(255) DEFAULT NULL,
  lname varchar(255) DEFAULT NULL,
  password varchar(255) DEFAULT NULL,
  address varchar(255) DEFAULT NULL,
  phone int(11) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE order_ (
  id int(11) NOT NULL AUTO_INCREMENT,
  orderCode varchar(255) DEFAULT NULL,
  userMessage varchar(255) DEFAULT NULL,
  date datetime DEFAULT NULL,
  uid int(11) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_order_user FOREIGN KEY (uid) REFERENCES user (id)

) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE product (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255) DEFAULT NULL,
  price float DEFAULT NULL,
  cid int(11) DEFAULT NULL,
  PRIMARY KEY (id),
   CONSTRAINT fk_product_category FOREIGN KEY (cid) REFERENCES category (id)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
INSERT INTO product VALUES (1,'Hawaii Pizza',15,1);
INSERT INTO product VALUES (2,'Fries',3,2);
INSERT INTO product VALUES (3,'Coke',3,3);

CREATE TABLE productimage (
  id int(11) NOT NULL AUTO_INCREMENT,
  pid int(11) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_productimage_product FOREIGN KEY (pid) REFERENCES product (id)

) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
INSERT INTO productimage VALUES (1,1);
INSERT INTO productimage VALUES (2,2);
INSERT INTO productimage VALUES (3,3);

CREATE TABLE review (
  id int(11) NOT NULL AUTO_INCREMENT,
  content varchar(4000) DEFAULT NULL,
  uid int(11) DEFAULT NULL,
  pid int(11) DEFAULT NULL,
  createDate datetime DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_review_product FOREIGN KEY (pid) REFERENCES product (id),
  CONSTRAINT fk_review_user FOREIGN KEY (uid) REFERENCES user (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE orderitem (
  id int(11) NOT NULL AUTO_INCREMENT,
  pid int(11) DEFAULT NULL,
  oid int(11) DEFAULT NULL,
  uid int(11) DEFAULT NULL,
  number int(11) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_orderitem_user FOREIGN KEY (uid) REFERENCES user (id),
  CONSTRAINT fk_orderitem_product FOREIGN KEY (pid) REFERENCES product (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
