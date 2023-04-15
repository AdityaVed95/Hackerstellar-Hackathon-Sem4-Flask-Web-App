-- CREATE TABLE investment_objective(

-- 	objective_id varchar(200),
-- 	objective_name varchar(200),
-- 	no_of_investors_invested int,
-- 	PRIMARY KEY (objective_id)

-- )


CREATE TABLE customer(

	customer_name varchar(200),
	customer_email varchar(200),
-- 	user_budget numeric,
-- 	user_expense numeric,
-- 	user_investment_amount,
	customer_mobile_no char(10),
	customer_address varchar(200),
	customer_password varchar(200),
-- 	month_and_year
	customer_age int,
-- 	fk_investment_objective_id varchar(200),
	PRIMARY KEY(customer_email),
-- 	FOREIGN KEY(fk_investment_objective_id) references investment_objective(objective_id)
	
)



create table customer_budget(

	fk_customer_email,
	user_budget,

)

create table customer_expense(

	fk_customer_email,
	expense_name,
	expense_type int, -- 0 for non renewable and 1 for renewable 
	expense_cost,
	
)

CREATE TABLE company(

	company_id varchar(200),
	no_of_customers_investing int,
	company_name varchar(200),
	fk_company_primary_investment_objective_id varchar(200),
	company_industry varchar(200),
	company_stock_price numeric,
	company_revenue numeric,
	company_profit numeric,
	company_description_link varchar(200),
	PRIMARY KEY(company_id),
	FOREIGN KEY(fk_company_primary_investment_objective_id) references investment_objective(objective_id)

	 
)

-- CREATE TABLE investor_company(

-- 	fk_investor_email varchar(200),
-- 	fk_company_id varchar(200),
-- 	PRIMARY KEY(fk_investor_email,fk_company_id),
-- 	FOREIGN KEY(fk_investor_email) references investor(investor_email),
-- 	FOREIGN KEY(fk_company_id) references company(company_id)
-- )

CREATE TABLE investment_option(

	investment_option_id varchar(200),
	investment_option_name varchar(200),
	investment_option_description varchar(200),
	PRIMARY KEY (investment_option_id)

)

-- create table tempo(

-- 	sal	numeric
-- )

-- insert into tempo values(10.4342)
-- select * from tempo

-- create table tempo(

-- 	date_of_submit date,
-- 	id int
-- )


-- insert into tempo values('2021-09-27',1)

-- insert into tempo values('2021-10-27',2),('2021-11-27',3)

-- truncate tempo

-- select * from tempo

