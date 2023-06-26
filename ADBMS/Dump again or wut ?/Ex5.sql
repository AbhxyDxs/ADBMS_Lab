create database TriggerTest;
use TriggerTest;

create table Product(
	PdtID int primary key,
    PName varchar(10),
    Price int,
    QtyInStock int);
    
    
create table Sale(
	SaleID int primary key,
    DeliveryAddress varchar(20));
    
create table SaleItem(
	SaleID int,
    PdtID int,
    Qty int,
    primary key(SaleID,PdtID),
    foreign key (SaleID) references Sale(SaleID),
    foreign key (PdtID) references Product(PdtID));
    
desc SaleItem;
DELIMITER //
create trigger updateAvailQty after insert on SaleItem for each row
begin
	update Product,SaleItem 
    set Product.QtyInStock = Product.QtyInStock - SaleItem.Qty
    where Product.PdtID = SaleItem.PdtID;
end //
DELIMITER ;

insert into Product values (1,"Soap",40,150),
						   (2,"Biscuit",50,200),
                           (3,"Soya",30,100);
                           
select * from Product; 
                           
insert into Sale values (1001,"24Street NY"),
						(1002,"CastleRoad,LP"),
                        (1003,"ChruchStreet NY");
                        
select * from Sale;
                        
insert into SaleItem values (1002,2,10),
							(1001,3,50),
                            (1003,1,20);
                            
select * from SaleItem;
select * from Product;


