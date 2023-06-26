create database Company_Ab;

use Company_Ab;

create table jobs(
	job_id int, 
    job_title varchar(50), 
    min_salary int, 
    max_salary int, 
    primary key(job_id)
);

create table regions (
	region_id int,
    region_name varchar(50),
    primary key(region_id)
);

create table countries(
	country_id int,
    country_name varchar(50),
    region_id int,
    primary key(country_id),
    foreign key(region_id) references regions(region_id)
);

create table locations (
	location_id int,
    street_address varchar(50),
    postal_code varchar(50),
    city varchar(50),
    state_province varchar(50),
    country_id int,
    primary key(location_id),
    foreign key(country_id) references countries(country_id)
);

create table departments (
	department_id int,
    department_name varchar(50),
    location_id int,
    primary key(department_id),
    foreign key(location_id) references locations(location_id)
);

create table employees(
	employee_id int,
	first_name varchar(50),
    last_name varchar(50),
    email varchar(50),
    phone_number varchar(50),
    hire_date date,
    job_id int,
    salary int,
    manager_id int,
    department_id int,
    primary key(employee_id),
    foreign key(department_id) references departments(department_id),
    foreign key(job_id) references jobs(job_id),
    foreign key(manager_id) references employees(employee_id)
);

create table dependents(
	dependent_id int,
    first_name varchar(50),
    last_name varchar(50),
    relationship varchar(50),
    employee_id int,
    primary key(dependent_id),
    foreign key(employee_id) references employees(employee_id)
);

alter table departments rename dept;

alter table employees modify salary smallint;

alter table employees add column commission int;

desc jobs;
desc regions;
desc countries;
desc locations;
desc departments;
desc employees;
desc dept;
