create database Bank_Ab;
use Bank_Ab;

create table branch(branch_name varchar(50), branch_city varchar(50),assets int,primary key(branch_name));
create table customer(customer_name varchar(50), customer_street varchar(50), customer_city varchar(50),primary key(customer_name));
create table loan(loan_no int,branch_name varchar(50),amount int,primary key(branch_name));
create table borrower(customer_name varchar(50),loan_no int,primary key(customer_name,loan_no));
create table account(account_number int,branch_name varchar(50),balance int,primary key(account_number));
create table depositor(customer_name varchar(50),account_number int,primary key(customer_name,account_number));

alter table loan add foreign key loan(branch_name) references branch(branch_name);
alter table borrower add foreign key borrower(customer_name) references customer(customer_name);
alter table borrower add foreign key borrower(loan_no) references loanloan(loan_no);
alter table account add foreign key account(branch_name) references branch(branch_name);
alter table depositor add foreign key depositor(account_number) references account(account_number);

insert into branch(branch_name, branch_city, assets) 
values ('DownTown','LA',1000),
('MG Road','Chennai',1500),
('Mahim','Mumbai',1200),
('NewTown','Hyderabad',  1050),('New Delhi','Delhi',2000);

insert into customer(customer_name, customer_street, customer_city) 
values ('Smith','FashionStreet','Mumbai'),
('Henry','FashionStreet','Mumbai'),
('Rio','AshCourt','Harrison'),
('Sereena','CherryWood','Harrison'),
('Ruby', 'Broadway','NewYork');

insert into loan (loan_no,branch_name,amount) 
values(55456,'DownTown',50000),
(55567,'Mahim',75000),
(55432,'MG road',45000),
(55789,'NewTown',25000),
(55678,'New Delhi',0);

insert into borrower(customer_name,loan_no)
values('smith',123),
('harison',124),
('rahul',125),
('raju',126);

insert into acount(acount_number,branch_name,balance) 
values(098,'sbi',20000),
(097,'sbi',30000),
(096,'federal bank',40000),
(095,'canara',10000);

insert into depositor(customer_name,acount_number)
values ('smith',098),
('harison',097),
('rahul',096),
('raju',095);



select customer_name  from customer where customer_name not in (select customer_name from borrower);
 
select * from customer where customer_street=(select customer_street from customer where customer_name='smith') and customer_city=(select customer_city from customer where customer_name='smith') and customer_name<>'smith';
