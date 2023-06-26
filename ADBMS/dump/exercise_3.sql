-- create database bank;
-- use bank;
-- create table branch(branch_name varchar(50), branch_city varchar(50),assets int,primary key(branch_name));
-- create table customer(customer_name varchar(50), customer_street varchar(50), customer_city varchar(50),primary key(customer_name));
-- create table loan(loan_no int,branch_name varchar(50),amount int,primary key(branch_name));
-- create table borrower(customer_name varchar(50),loan_no int,primary key(customer_name,loan_no));
-- create table acount(acount_number int,branch_name varchar(50),balance int,primary key(acount_number));
-- create table depositor(customer_name varchar(50),acount_number int,primary key(customer_name,acount_number));

-- insert into branch(branch_name, branch_city, assets) 
-- values ('sbi','thamarassery',1000),
-- ('sib','omassery',1500),
-- ('federal bank','koduvally',1200),
-- ('canara','poonoor',  1050);

-- insert into customer(customer_name, customer_street, customer_city) 
-- values ('smith','koodathai','thamarassery'),
-- ('harison','vayaloram','omassery'),
-- ('rahul','kaavil','koduvally'),
-- ('alex','vadakkanchery','thrissur'),
-- ('jack', 'koodathai','thamarassery'),
-- ('rifana', 'harison', 'washington'),
-- ('raju','kakkattummal',  'poonoor');

-- insert into loan (loan_no,branch_name,amount) 
-- values(123,'sbi',15000),
-- (124,'sib',16000),
-- (126,'canara',18000);

-- insert into borrower(customer_name,loan_no)
-- values('smith',123),
-- ('harison',124),
-- ('rahul',125),
-- ('raju',126);

-- insert into acount(acount_number,branch_name,balance) 
-- values(098,'sbi',20000),
-- (097,'sbi',30000),
-- (096,'federal bank',40000),
-- (095,'canara',10000);

-- insert into depositor(customer_name,acount_number)
-- values ('smith',098),
-- ('harison',097),
-- ('rahul',096),
-- ('raju',095);



-- select customer_name  from customer where customer_name not in (select customer_name from borrower);
-- 
-- select * from customer where customer_street=(select customer_street from customer where customer_name='smith') and customer_city=(select customer_city from customer where customer_name='smith') and customer_name<>'smith';



