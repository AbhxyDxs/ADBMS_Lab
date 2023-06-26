create database movie_db;
use movie_db;

create table company(id int primary key,company_name varchar(20));
insert into company values(2,"columbia"),(3,"20th fox"),(4,"legendary pictures"),(5,"sony");

create table movies(id int primary key,movie_title varchar(40),imdb_rating int,year date,budget numeric(8,2),box_office numeric(8,2),company_id int,language varchar(30));
alter table movies add constraint foreign key (company_id) references company(id);
insert into movies values(101,"godzilla",7,"2020-03-12",5000.00,6000.00,2,"english");

insert into movies values(102,"godzilla 2",8,"2022-03-12",5000.00,6000.00,5,"english");
insert into movies values(103,"mission impossible ",7,"1990-03-12",5000.00,6000.00,1,"english");
insert into movies values(104,"mission impossible 2 ",8,"1995-04-12",3000.00,4000.00,4,"english");
insert into movies values(105,"mission impossible 3",6,"2000-03-12",5000.00,6000.00,5,"english");


select movie_title from movies where box_office > 5000;
desc company;
alter table company add column location varchar(40);desc company;
update company set location="usa" where id=1;
update company set location=("hollywood") where id=2;
select * from company;
update company set location="florida" where id="null";
select * from company;
select * from company;
update company set location="florida" where id=4;
update company set location="chicago" where id=5;
select * from company;