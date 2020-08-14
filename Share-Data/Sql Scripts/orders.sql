use stockuser;

create table orders (
id integer not null,
orderName varchar(50) not null,
orderPrice decimal(10,2) not null,
quantity integer not null,
category varchar(20) not null
);

alter table orders change orderPrice orderprice varchar(50);

select * from orders;

alter table orders add primary key(id);

drop table orders;

create table orders (
orderid integer primary key auto_increment not null,
orderName varchar(50) not null,
orderPrice decimal(10,2) not null,
quantity integer not null,
category varchar(20) not null
);
