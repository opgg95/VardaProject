use varda;
drop table review;
drop table cart;
drop table orderdetail;
drop table ordermaster;
drop table customer;
drop table product;

select *
from product;

delete from product;

CREATE TABLE product (
  pd_Id varchar(255) PRIMARY KEY,
  pd_Name varchar(255),
  pd_Img blob,
  pd_SubImg blob,
  pd_Price integer,
  pd_Tag varchar(255),
  pd_Descrip varchar(255)
);

alter table product add gender int;
alter table product add skinType int;
alter table product add pdType int;




CREATE TABLE customer (
  c_Id varchar(255) PRIMARY KEY,
  c_Name varchar(255),
  c_Pwd varchar(255),
  c_Phone1 varchar(255),
  c_Phone2 varchar(255),
  c_Phone3 varchar(255),
  c_Email1 varchar(255),
  c_Email2 varchar(255),
  postcode varchar(255),
  address varchar(255),
  detailAdd varchar(255),
  extraAdd varchar(255)
);

CREATE TABLE ordermaster (
  od_Num varchar(255) PRIMARY KEY,
  c_Id varchar(255),
  od_Add varchar(255),
  od_Phone varchar(255),
  od_Sum integer,
  od_Date timestamp
);

CREATE TABLE orderdetail (
  od_Num varchar(255) PRIMARY KEY,
  od_Order varchar(255),
  pd_Id varchar(255),
  od_Price integer
);

CREATE TABLE cart (
  c_Id varchar(255) PRIMARY KEY,
  pd_Id varchar(255),
  pd_Price integer
);

CREATE TABLE review(
	pd_Id varchar(255) PRIMARY KEY,
    c_Id varchar(255),
    applyScore integer,
    stimulationScore integer,
    satisfactionScore integer,
    content varchar(255),
    write_date timestamp
);


ALTER TABLE ordermaster ADD FOREIGN KEY (c_Id) REFERENCES customer (c_Id);

ALTER TABLE cart ADD FOREIGN KEY (c_Id) REFERENCES customer (c_Id);

ALTER TABLE orderdetail ADD FOREIGN KEY (od_Num) REFERENCES ordermaster (od_Num);

ALTER TABLE cart ADD FOREIGN KEY (pd_Id) REFERENCES product (pd_Id);

ALTER TABLE review ADD FOREIGN KEY (pd_Id) REFERENCES product (pd_Id);

ALTER TABLE review ADD FOREIGN KEY (c_Id) REFERENCES customer (c_Id);