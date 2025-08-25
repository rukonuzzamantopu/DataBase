create database lab2;
use lab2;
-- create table student
CREATE TABLE teacher (
    name varchar (50),
    TECHERID int,
    DEGINATION varchar(50),
    ADDRESS varchar(50),
    EMAILE varchar(50) UNIQUE
    );

    create table student (
        studentid int,
        name varchar (50),
        address varchar (50),
        phone varchar (15),
        email varchar (50) UNIQUE
        );

    INSERT INTO student (studentid,name,address,phone,email)
     VALUES( 280,'topu','dhaka','01712345678','topu @gmail.com' );  
        INSERT INTO student (studentid,name,address,phone,email)    
        VALUES( 281,'sabbir','chittagong','01712345679','sabbir @gmail.com' );


INSERT into teacher (name,TECHERID,DEGINATION,ADDRESS,EMAILE)
VALUES ('rahim',101,'assistent proffessor','dhaka','rahim @gmail.com');
INSERT into teacher (name,TECHERID,DEGINATION,ADDRESS,EMAILE)

VALUES ('karim',102,'proffessor','chittagong','karim @gmail.com');  
SELECT * FROM student;
SELECT * FROM teacher;  

drop table student;
drop table teacher;

