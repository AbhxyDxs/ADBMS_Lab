CREATE TABLE `Product` (
  `PID` int,
  `PName` varchar(10),
  `Price` decimal(6,2),
  `Quantity` int,
  PRIMARY KEY (`PID`)
);

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertProduct`(in barcode int,pro_name varchar(10),price numeric(6,2),QtyInStock int)
BEGIN
	IF price > 0 and QtyInStock >=0
    THEN
      insert into Product(PID,PName,Price,Quantity) values (barcode,pro_name,price,QtyInStock);
    -- end if;
	ELSE
    signal SQLSTATE '45000' set message_text="Invalid Input";
  END IF
END//
DELIMITER ;

call InsertProduct(100,'Bread',50,10);
