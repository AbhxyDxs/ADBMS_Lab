create database TriggerTest;
use TriggerTest;

create table Product (
	PID int primary key,
    PName varchar (20),
    Price numeric (6,2),
    QtyInStock int
);

create table Sale (
	SaleID int primary key,
    DeliveryAddress varchar(20)
);

create table SaleItem(
	PID int,
    SaleID int,
    Qty INT,
    primary key(PID,SaleID),
    foreign key (PID) references Product(PID),
    foreign key (SaleID) references Sale(SaleID)
);

DELIMITER //
CREATE TRIGGER UpdateAvailableQty AFTER INSERT ON SaleItem FOR EACH ROW
BEGIN
	UPDATE Product SET Product.QtyInStock=Product.QtyInStock-NEW.Qty
    WHERE Product.PID=NEW.PID;
END //
DELIMITER ;

 insert into Product values (1,'Soap',50,100);
 insert into Sale values (100,'USA');
 
 insert into SaleItem values (1,100,2);
