CREATE DATABASE SCM;
USE SCM;
Show tables;
select count(*) from furniture;
select * from furniture;
ALTER TABLE furniture
ADD COLUMN TotalShippingCost varchar(100);

DROP TABLE furniture;

SELECT * FROM Medical;
SELECT * FROM Food;
SELECT * FROM Apparel;



select * from apparel;
select count(*) FROM Electronics;
SHOW TABLES;
SELECT * FROM apparel;

select `Order ID`,Customer_Name from
apparel;

select * from electronics;
select * from food;
select * from furniture;
select count(*) from medical;

ALTER TABLE apparel
DROP column MyUnknownColumn;


DROP TABLE Apparel;
DROP TABLE Electronics;
drop table food;
drop table furniture;
drop table medical;

create table Apparel(
Order_ID INT primary key,
Order_Date DATE,
Customer_Name varchar(70),
Product_ID INT unique,
Product varchar(80),
Quantity_Ordered INT,
Unit_Price varchar(60),
Total_Shipping_Cost varchar(50),
Revenue varchar(60),
Net_Profit varchar(70),
Gross_Profit varchar(80),
Order_Status varchar(90) default "Delivered/InTransit/Cancelled",
Delivery_Date DATE,
Shipping_Mode varchar(70),
Back_Order_Status varchar(50) default "Yes/No"
);
select ProductID
FROM apparel
WHERE ProductID= P4662;
select * FROM apparel;

ALTER TABLE apparel
CHANGE `Order ID` Order_ID varchar(80) unique;

ALTER TABLE apparel
CHANGE Product_ID ProductID varchar(80) UNIQUE;

INSERT INTO apparel
values ("ab424e92",'1/13/2024',"Kelsey Hayes",'P4662',"Messenger Bag",'6',"$151 ",
'$258','$906','$390','$648',"Delivered",'1/20/2024',"Road","No");
desc apparel;

SELECT * FROM apparel
where ProductID= 'P4662';

ALTER table apparel
change ProductID Product_ID varchar(80) unique;




SHOW COLUMNS FROM Apparel;
ALTER TABLE Apparel MODIFY COLUMN `Order ID` VARCHAR(50);

DELETE FROM apparel
WHERE ProductID='P4662';

ALTER TABLE apparel
change column ProductID Product_ID varchar(50) primary KEY;

show tables;
select * from electronics;
desc electronics;
ALTER TABLE Electronics
change Order_ID OrderID varchar(80) primary key;

alter table electronics
change ProductID ProductID varchar(80) UNIQUE;
DESC electronics;



ALTER TABLE Apparel 
ADD CONSTRAINT OrderIDs 
FOREIGN KEY (Order_ID) REFERENCES Electronics(OrderID);

alter table apparel
ADD constraint ProductIDs
foreign key (ProductID) references Electronics(ProductID);


SET FOREIGN_KEY_CHECKS=0;

select * FROM apparel;

SELECT * FROM Food;
desc food;
alter table food
change Order_ID Order_ID varchar(80) primary key;
alter table food
change ProductID ProductID varchar(80) unique;

insert INTO FOOD
VALUES
("e47f1221",'5/11/2024',"Michele Campos",'P8340',"Crab","77",'$446','$34,342 ','$1,848','$32,494 ','$30,646','$24',"Delivered",'8/5/2024',
"Road",'Yes');
sHOW tables;
delete from food
where ProductID ="P8340";
 
 select * from furniture;
 ALTER TABLE Furniture
 change Order_ID OrderID varchar(80) primary key;
 
 alter table furniture
 change ProductID ProductID varchar(80) unique;
 select * from electronics;
 select * FROM Food;
ALTER TABLE FOOD
add constraint IDs
foreign key (Order_ID) references Electronics(OrderID);

ALTER TABLE electronics
add constraint PIDs
foreign key (ProductID)  references Food(ProductId);

SELECT * FROM Medical;
drop table medical;

select * FROM Medical;
desc Furniture;
desc medical;
alter table medical
change `Order ID` OrderID varchar(80) primary key;

ALTER TABLE Medical
change ProductID ProductID varchar(80) unique;

ALTER TABLE Medical
add constraint Idno
foreign key (OrderID) references Furniture(OrderID);

Alter table furniture
add constraint IDsOfProducts
foreign key (ProductID) references Medical(ProductID);