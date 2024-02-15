use car_salesdb;
select * from car_data;

/* Q1 What is the total number of cars sold? */
select count(*) as total_cars_sold from car_data ;

/* Q2 What is the total sales revenue genereted from car sales? */
select sum(Price) as total_sales_revenue from car_data ;

/* Q3 What is the average annual income of customers who purchased cars? */
select avg(Annual_Income) as average_annual_income from car_data;

/* Q4 What is the most popular car model based on the number of sales? */
select Model, count(*) as sales_count 
from car_data
group by Model
order by sales_count desc
limit 1;

/* Q5 list the top 3 car companies with the highest number of sales? */
select Company, count(*) as sales_count
from car_data
group by Company
order by sales_count desc
limit 3;

/* Q6 What is the average price of cars based on their transmission type? */
select Transmission ,avg(Price) as average_price
from car_data
group by Transmission;

/* Q7 sales distribution by body style? */
select Body_Style, count(*) as sales_count
from car_data
group by Body_Style
order by sales_count desc;

/* Q8 identify the top 2 dealers with the highest sales_count? */
select Dealer_Name , count(*) as sales_count
from car_data
group by Dealer_Name
order by sales_count desc 
limit 3;

/* Q9 what is the avg price of car for each color? */
select Color ,avg(Price) as average_price
from car_data
group by Color
order by average_price desc;

/* Q10 Provide a breakdown of car sales by customer gender? */
select Gender, count(*) as sales_count
from car_data
group by Gender;

/* Q11 How many cars were sold in each dealer region ? */
select Town , count(*) as sales_count 
from car_data
group by Town
order by sales_count desc ;

/* Q12 What is the avg price of cars for each engine size? */
select Engine,avg(Price) as averge_price
from car_data
group by Engine
order by averge_price desc ;

/* Q13 What percentage of total sales does each body style contribute? */
select Body_Style , count(*) *100.0/ (select count(*) from car_data) as sales_percentage
from car_data
group by Body_Style
order by sales_percentage desc ;

/* Q14 Calculate the total sales revenue for each car company? */
select Company , sum(Price) as total_sales_revenue
from car_data
group by  Company
order by total_sales_revenue desc ;