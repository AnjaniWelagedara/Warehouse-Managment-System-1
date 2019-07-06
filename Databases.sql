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
