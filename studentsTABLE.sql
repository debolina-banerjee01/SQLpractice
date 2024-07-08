create table students(
SID number(10) primary key,
SNAME varchar(10) not null,
MARKS number(4,2) check(MARKS <=50),
CID number(10) references course(CID));

insert into students values(10, 'CHARU', 41, 1000);

insert into students values(11,'RAMESH', 34, 1005);

insert into students values(12,'KAVYA', 48, 1004);

COMMIT;