create table products(
PID number(10) primary key,
PNAME varchar(10) not null,
PPRICE number(8,2));

insert into products values(314,'Pencil',20);

insert into products values(315, 'Eraser', 15);

insert into products values(316, 'Sharpner', 13);

insert into products values(317, 'Gel Pen',20);

COMMIT;