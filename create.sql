CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE cars (
carid_table int not null auto_increment,
VIN char(17),
car_manu varchar(250),
car_model varchar(250),
car_year year,
car_color varchar(250),
primary key (carid_table) 
);

CREATE TABLE customers (
custid_table int not null auto_increment,
cust_id int,
cust_name varchar(250),
cust_phone varchar(250),
cust_email varchar(250),
cust_address varchar(250),
cust_city varchar(250),
cust_state_prov varchar(250),
cust_country varchar(250),
cust_postcode varchar(250),
primary key (custid_table)
);

CREATE TABLE salespersons (
staffid_table int not null auto_increment,
staff_id int,
staff_name varchar(250),
staff_store varchar(250),
primary key (staffid_table)
);

CREATE TABLE invoices (
invoiceid_table int not null auto_increment,
invoice_num int,
invoice_date date,
invoice_car int,
invoice_cust int,
invoice_salesperson int,
primary key (invoiceid_table),
CONSTRAINT invoices_ibfk_1 foreign key (invoice_car) references cars (carid_table),
constraint invoices_ibfk_2 foreign key (invoice_cust) references customers (custid_table),
constraint invoices_ibfk_3 foreign key (invoice_salesperson) references salespersons (staffid_table)
);


