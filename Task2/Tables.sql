-- Create Table Statements

-- Table Name :- branch

CREATE TABLE branch(
	branch_name VARCHAR(50),
	branch_city VARCHAR(50),
	assets VARCHAR(50),
    primary key (branch_name)
);


-- Table Name :- acc

CREATE TABLE acc(
	account_no VARCHAR(20) NOT NULL ,
	branch_name VARCHAR(50),
	balance INT,
    customer_name VARCHAR(50),
	customer_city VARCHAR(50),
	customer_street VARCHAR(50),
    primary key (account_no),
	FOREIGN KEY(branch_name) REFERENCES branch(branch_name) 
);


-- Table Name :- loan

CREATE TABLE loan(
	loan_no INT NOT NULL auto_increment,
	amount INT,
	branch_name VARCHAR(50),
    account_no VARCHAR(20) NOT NULL,
	PRIMARY KEY (loan_no),
    FOREIGN KEY (account_no) REFERENCES acc(account_no)
);


-- Table Name :- employee
	
CREATE TABLE employee(
	employee_id INT NOT NULL auto_increment,
    employee_name varchar(50),
    telephone_number varchar(15),
	start_date date,
    branch_name varchar(50),
    dependent_name varchar(50),
    primary key (employee_id),
	FOREIGN KEY(branch_name) REFERENCES branch(branch_name),
    FOREIGN KEY (branch_name) REFERENCES branch(branch_name)
);