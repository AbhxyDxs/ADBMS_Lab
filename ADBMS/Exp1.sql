create database testdb;
use testdb;
create table Person (DriverID int,Name varchar(20),Address varchar(50),primary key (DriverID));
create table Car (License int,Model varchar(20),Year int,primary key (License));
create table Accident (Report_No int,Date varchar(20),Location varchar(20),primary key (Report_No));
create table Owns (DriverID int,License int,primary key(DriverID,License),foreign key (DriverID) references Person(DriverID),foreign key (License) references Car(License));
create table Participated (Report_No int,License int,DriverID int,Damage_Amount int,primary key(Report_No,License),foreign key (Report_No) references Accident(Report_No),foreign key (License) references Car(License));

#alter table Owns add foreign key (DriverID) references Person(DriverID);
#alter table Owns add foreign key (License) references Car(License);

#alter table Participated add foreign key (Report_No) references Accident(Report_No);
#alter table Participated add foreign key (License) references Car(License);
#alter table Participated add foreign key (DriverID) references Person(DriverID);

alter table Accident change Report_No Report_Nummber int;

alter table Car rename to Vehicle;

alter table Person add Gender varchar(10);

alter table Accident drop column Location;

alter table Participated modify column Damage_Amount decimal(10,2);

desc Participated;

insert into Person values (1000,'John','Texas,USA','Male');
insert into Person values (1001,'Jacob','Texas,USA','Male');
insert into Person values (1002,'Mathew','Texas,USA','Male');
insert into Person values (1003,'Ann','Texas,USA','Female');
insert into Person values (1004,'Kat','Texas,USA','Female');

desc Vehicle;

insert into Vehicle values (100,'Audi Q7',2020);
insert into Vehicle values (101,'BMW X4',2021);
insert into Vehicle values (102,'RR Ghost',2020);
insert into Vehicle values (103,'Maybach GLS600',2019);
insert into Vehicle values (104,'Mini Countryman',2022);

desc Accident;

insert into Accident values(1010,'10/03/2020');
insert into Accident values(1011,'20/03/2021');
insert into Accident values(1012,'30/01/2021');
insert into Accident values(1013,'15/08/2022');
insert into Accident values(1014,'23/05/2021');
insert into Accident values(1015,'23/05/2023');
insert into Accident values(1016,'23/05/2022');
insert into Accident values(1017,'23/05/2023');

desc Owns;

insert into Owns values(1001,103);
insert into Owns values(1002,101);
insert into Owns values(1003,100);
insert into Owns values(1004,100);
insert into Owns values(1000,104);
#error test cases
insert into Owns values(1008,103);
insert into Owns values(1001,110);

desc Participated;

insert into Participated values (1010,100,1003,250000.50);
insert into Participated values (1012,103,1002,9000);
insert into Participated values (1011,101,1001,90000);
select * from Participated;

select * from Person where Name like 'a%';
select * from Participated where Damage_Amount>10000;
alter table Accident change Date Date date; 
select * from Accident where Date between '01/01/2021' and '01/01/2023';