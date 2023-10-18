use sales;

-- show all customer records--
select * from customers;

-- Show total number of customers --
select count(*) from customers;

-- Show transactions for Chennai market (market code for chennai is Mark001) --
select * from transactions
where market_code = "Mark001";

-- Show distrinct product codes that were sold in chennai --
select distinct product_code from transactions
where market_code = "Mark001";

-- Show transactions where currency is US dollars --
select * from transactions
where currency = "USD";

-- Show transactions in 2020 join by date table --
 SELECT transactions.*, date.* FROM transactions
 INNER JOIN date ON transactions.order_date=date.date
 where date.year=2020;
 
-- Show total revenue in year 2020 --
SELECT SUM(transactions.sales_amount) FROM transactions
 INNER JOIN date ON transactions.order_date=date.date where date.year=2020;
 
 -- Show total revenue in year 2020, January Month --
 select sum(transactions.sales_amount) from transactions
 inner join date on transactions.order_date=date.date where date.year=2020 and date.month_name="january";
 
  -- Show total revenue in year 2020 in Chennai --
  select sum(transactions.sales_amount) from transactions
  inner join date on transactions.order_date=date.date where date.year=2020 and market_code = "Mark001";