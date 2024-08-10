select * from sales

--1) finding users order ID withe thier first name

select * from sales where order_id ~*'^[a-z]{2}-2[0-9]17-1[0-9]5558$' 

--2) Finding orders with specific customers IDs
	
select * from sales where customer_id ~*'^[a-z]{2}-1[0-9][5|6]{3}$' limit 20

--3)validating ship mode entries

select * from sales where ship_mode ~*'^(standard class|first class| second class)$' limit 30

--4) Finding orders with discount greater than certain amount

select quantity from sales where quantity::varchar~* '^[0-7]$'limit 15

--5)Finding orderline with certain id

select order_line from sales where order_line::varchar ~*'^[0-7]$'

--6)Select rows where ship_date occurres in april 2015

select order_date from sales where order_date::varchar ~*'^2017-04-[0-9]{2}$' limit 30