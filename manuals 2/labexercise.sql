create database reportdb;
use reportdb;
-- create table student report
CREATE TABLE studentreport (
    studentid int,
    firstname varchar (50),
    address varchar (50),
    city varchar (60)
    );

    INSERT INTO studentreport (studentid,firstname,address,city)
     VALUES( 280,'topu','dhaka','mymensing' );
        INSERT INTO studentreport (studentid,firstname,address,city)        
        VALUES( 281,'sabbir','chittagong','feni' );
           INSERT INTO studentreport (studentid,firstname,address,city) 
              VALUES( 282,'karim','barishal','patuakhali' );
                 INSERT INTO studentreport (studentid,firstname,address,city) 
                    VALUES( 283,'rahim','sylhet','habiganj' );
select * from studentreport;    
create table student2report (
    studentid int,
    firstname varchar (50),
    address varchar (50),
    city varchar (60)
    );

    INSERT INTO student2report (studentid,firstname,address,city)
     VALUES( 280,'topu','dhaka','mymensing' );
        INSERT INTO student2report (studentid,firstname,address,city)        
        VALUES( 281,'sabbir','chittagong','feni' );
           INSERT INTO student2report (studentid,firstname,address,city) 
              VALUES( 282,'karim','barishal','patuakhali' );
                 INSERT INTO student2report (studentid,firstname,address,city) 
                    VALUES( 283,'rahim','sylhet','habiganj' );

create table student3report (
    studentid int,
    firstname varchar (50),
    address varchar (50),
    city varchar (60)
    );

    INSERT INTO student3report (studentid,firstname,address,city)
     VALUES( 280,'topu','dhaka','mymensing' );
        INSERT INTO student3report (studentid,firstname,address,city)        
        VALUES( 281,'sabbir','chittagong','feni' );
           INSERT INTO student3report (studentid,firstname,address,city) 
              VALUES( 282,'karim','barishal','patuakhali' );
                 INSERT INTO student3report (studentid,firstname,address,city) 
                    VALUES( 283,'rahim','sylhet','habiganj' );

create table student4report (
    studentid int,
    firstname varchar (50),
    address varchar (50),
    city varchar (60)
    );

    INSERT INTO student4report (studentid,firstname,address,city)
     VALUES( 280,'topu','dhaka','mymensing' );
        INSERT INTO student4report (studentid,firstname,address,city)        
        VALUES( 281,'sabbir','chittagong','feni' );
           INSERT INTO student4report (studentid,firstname,address,city) 
              VALUES( 282,'karim','barishal','patuakhali' );
                 INSERT INTO student4report (studentid,firstname,address,city) 
                    VALUES( 283,'rahim','sylhet','habiganj' );

create table student5report (
    studentid int,
    firstname varchar (50),
    address varchar (50),
    city varchar (60)
    );

    INSERT INTO student5report (studentid,firstname,address,city)
     VALUES( 280,'topu','dhaka','mymensing' );
        INSERT INTO student5report (studentid,firstname,address,city)        
        VALUES( 281,'sabbir','chittagong','feni' );
           INSERT INTO student5report (studentid,firstname,address,city) 
              VALUES( 282,'karim','barishal','patuakhali' );
                 INSERT INTO student5report (studentid,firstname,address,city) 
                    VALUES( 283,'rahim','sylhet','habiganj' );

select * from student5report;
drop table studentreport;
drop table student2report;  
drop table student3report;
drop table student4report;  
drop table student5report;
drop database reportdb;