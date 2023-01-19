/*****Create a customer table which comprises of these columns – ‘customer_id’, ‘first_name’, ‘last_name’, ‘email’, ‘address’, ‘city’,’state’,’zip’*/

create table customer1(customer_id int PRIMARY KEY, first_name varchar(50), last_name varchar(50), 
email varchar(50),
address varchar(50), city varchar(50), 
state varchar(50), zip int)


/*2.Insert 5 new records into the table*/

insert into customer1 values(1, 'ram', 'patil', 'rampatil@gmail.com', 'chinchvad', 'pune', 'maharashra', 421604),
(2,'shyam', 'rao', 'shyamrao33@gmail.com', 'vadala', 'mumbai', 'maharashra', 421664), 
(3,'meera', 'gupta', 'guptameera@gmail.com', 'navale', 'goa', 'goa', 421666),
(4,'radha', 'more', 'radha@gmail.com', 'whitefied', 'banglore', 'karnataka', 560056),
(5,'gopal', 'thakkar', 'gopal123@gmail.com', 'nadiyaad', 'surat', 'gujrat', 658726) 

select * from customer1

/*3.Select only the ‘first_name’ & ‘last_name’ columns from the customer table*/

select first_name, last_name
	from customer1


/*4.Select those records where ‘first_name’ starts with “G” and city is ‘San Jose’*/

	Select * from customer1
	where first_name like 's%' and city='Mumbai';

