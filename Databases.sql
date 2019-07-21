create table QuotationRequests(
	quoaId varchar(20),
    quoaday datetime,
    email varchar(50),
    address varchar(100),
    supplierName varchar(50),
    description varchar(200),
    constraint QRPK primary key (quoaId)
);

create table QuotationRequestsDetails(
	quoaDeId varchar(20),
    quoaId varchar(20),
	itemName varchar(100),
    itemCondition varchar(20),
    qty integer,
	duration varchar(10),
	constraint QRDPK primary key (quoaDeId),
    constraint QRDFK foreign key (quoaId) references QuotationRequests(quoaId)
);

create table Inventory(
	itemNo varchar(20),
    itemName varchar(100),
    itemDescription varchar(200),
    warrenty date,
    addedDate date,
    location varchar(50),
    itemStatus varchar(20) default "Unallocate",
    owner varchar(20),
    constraint INPK primary key (itemNo)
);

insert into Inventory(itemNo, itemName, itemDescription, warrenty, addedDate, location, itemStatus, owner ) values('dfgh','fdvdf','dfvdf','2019-07-06','2019-07-06','sdd','sfds',1);
drop table Inventory;
select * from Inventory;
delete from Inventory where itemNo = ?;

DELIMITER //  CREATE PROCEDURE dateDiffernced(IN itemNo1 VARCHAR(20), OUT noOfTotalDays INT)
BEGIN
	declare warrDay date;
    declare insertDay date;
	select warrDay = warrenty, insertDay = addedDate from Inventory where itemNo = itemNo1;
    
	SELECT DATEDIFF(warrDay, insertDay) as 'result';
END//
DELIMITER ;


DELIMITER //  
CREATE PROCEDURE ToalDay(IN IItemNO VARCHAR(20), OUT totalDays INT)
BEGIN
    select DATEDIFF(warrenty, addedDate) into totalDays from Inventory where itemNo = IItemNO;
END//
DELIMITER ;

set @IItemNO = 'ITM-03';
CALL `itppro`.`ToalDay`(@IItemNO, @totalDays);
select @totalDays;

SELECT DATEDIFF('2020-10-30', '2020-10-28') AS 'Result';

select * from inventory;

DELIMITER //  
CREATE PROCEDURE GetRemaingDays(IN IItemNOrem VARCHAR(20), OUT remainDays INT)
BEGIN
    select DATEDIFF(warrenty, CURDATE()) into remainDays from Inventory where itemNo = IItemNOrem;
END//
DELIMITER ;

set @IItemNOrem = 'ITM-03';
CALL `itppro`.`GetRemaingDays`(@IItemNOrem, @remainDays);
select @remainDays;
