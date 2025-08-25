CREATE TABLE student (
    studentid int,
    firstname varchar (50),
    address varchar (50),
    city varchar(60)
    );

    INSERT INTO student (studentid,firstname,address,city)
     VALUES( 280,'topu','dhaka','mymensing' );

select * from student;

timestemp;

-- create table with date and time
CREATE TABLE testdate (
   id int,
    name varchar(50),
    birthday date,
    orderdate datetime,
    enterdate datetime DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO testdate (id,name,birthday,orderdate)
VALUES (1,'topu','2023-06-01','2023-06-01 10:10:10');

SELECT * FROM testdate;

drop table testdate;

drop database lab2;


