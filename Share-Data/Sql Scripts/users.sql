
create table register(
	userid Integer primary key auto_increment not null,
    firstname varchar(50),
    lastname varchar(50),
    email varchar(50),
    password varchar(50),
    confirmpassword varchar(50)
);


