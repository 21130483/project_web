create database project_web
go

use project_web
go


--use master
--drop database project_web

create table users(
userID INT,
email VARCHAR(50),
phoneNumbers INT,
fullName NVARCHAR(40),
password VARCHAR(40),
dateOfBirth DATE,
gender NVARCHAR(10),
role NVARCHAR(20),
access NVARCHAR(20),

PRIMARY KEY (userID),

)

create table products(
productID INT,
name NVARCHAR(40),
category NVARCHAR(40),
trademark NVARCHAR(40),
origin NVARCHAR(40),
content NVARCHAR(200),
price INT,
sale INT,
orderedNumbers INT,
quantity INT,
dateAdded DATE,

PRIMARY KEY (productID),
)

create table wishes(
userID INT,
productID INT,
)

create table purchases(
userID INT,
productID INT,
quantity INT,
status NVARCHAR(40),
orderDate DATE,
receivedDate DATE,
starNumber INT,
content NVARCHAR(100),
dateRated DATE,
)

create table address(
userID INT,
city NVARCHAR(40),
district NVARCHAR(40),
ward NVARCHAR(40),
detail NVARCHAR(100),
)


create table voucher(
voucherID INT,
name NVARCHAR(40),
type NVARCHAR(20),
sale INT,
expiredDate DATE,
condition INT,

PRIMARY KEY (voucherID),
)


create table vouchers(
voucherID INT,
userID INT,
quantity INT,
)

create table verify(
userID INT,
code INT,
exipiredTime DATETIME,
)



ALTER TABLE wishes ADD FOREIGN KEY (userID) REFERENCES users(userID)
ALTER TABLE wishes ADD FOREIGN KEY (productID) REFERENCES products(productID)

ALTER TABLE purchases ADD FOREIGN KEY (userID) REFERENCES users(userID)
ALTER TABLE purchases ADD FOREIGN KEY (productID) REFERENCES products(productID)

ALTER TABLE address ADD FOREIGN KEY (userID) REFERENCES users(userID)

ALTER TABLE vouchers ADD FOREIGN KEY (userID) REFERENCES users(userID)
ALTER TABLE vouchers ADD FOREIGN KEY (voucherID) REFERENCES voucher(voucherID)

ALTER TABLE verify ADD FOREIGN KEY (userID) REFERENCES users(userID)