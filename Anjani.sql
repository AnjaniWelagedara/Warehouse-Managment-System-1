create table SupplierAccount(
	supplierId varchar(50) not null primary key,
    name varchar(50),
    userName varchar(50),
    password varchar(50),
    address varchar(100),
    email varchar(100),
    contactNo varchar(10),
    review varchar(200)
    
);
create table SupplierProduct(
	PsupplierId varchar(50),
	productId varchar(50) not null primary key,
    productName varchar(50),
    qty int,
    proPrice real,
    warranty varchar(50),
    Pcondition varchar(50),
    constraint fk_SupplierProduct foreign key (PsupplierId) references SupplierAccount(supplierId)
	);
    
    create table SupplierService(
    serviceId varchar(50) not null primary key,
    SsupplierId varchar(50),
    serviceName varchar(50),
    totPrice real,
    bonus real,
    
        constraint fk_SupplierService foreign key (SsupplierId) references SupplierAccount(supplierId)

    
    
    );
    
    create table Packages(
    packgId varchar(50) not null primary key,
    PksupplierId varchar(50),
    totPrice real,
    bonus real,
    
    constraint fk_Packages foreign key (PksupplierId) references SupplierAccount(supplierId)
    );
    
    
    
    
    
    

