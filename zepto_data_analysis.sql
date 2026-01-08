drop table if exists zepto;
create table zepto(
sku_id serial primary key,
category varchar(120),
name varchar(150),
mrp numeric(8,2),
discountPercent numeric(5,2),
availableQuantity integer,
discountedSelllingPrice numeric(8,2),
weightInGms integer,
outOfStock boolean,
quantity integer
);

-- Data Exploration

-- Sample data 
select*from zepto
limit 10;

-- Count of rows
select count(*) from zepto;


--null values
select*from zepto
where name is NULL
or
category is Null
or
availableQuantity is Null
or
mrp is Null
or
discountPercent is Null
or
discountedSelllingPrice is Null
or
weightInGms is Null
or
outOfstock is Null
or
quantity is Null;



-- different product categories

select distinct category 
from zepto 
order by category ;

--product in stock vs outofstock
select outOfStock , count(sku_id)
from zepto
group by outOfStock;

-- product names present multiple times
select name , count(sku_id) as "number of skus"
from zepto
group by name
having count(sku_id) > 1
order by count(sku_id) desc;

--data cleaning 

--product with price = 0

select*from zepto
where mrp = 0 or discountedSelllingPrice = 0;

delete from zepto
where mrp = 0;

-- convert paise into rupees
update zepto
set mrp = mrp/100.0,
discountedSelllingPrice = discountedSelllingPrice/100.0;

select mrp, discountedSelllingPrice from zepto;

-- Business Insights
--1 - top 10 best-value products based on discount percentage
select name,mrp, discountPercent
from zepto
order by discountpercent desc limit 10;

--high-MRP products that are currently out of stock
select distinct name,mrp
from zepto
where outOfStock = true and mrp>300
order by mrp desc;



--Estimated potential revenue for each product category
select category,
sum(discountedSelllingPrice * availablequantity) as total_revenue
from zepto
group by category
order by total_revenue;


--Filtered expensive products (MRP > ₹500) with minimal discount less than 10%

select distinct "name" ,mrp ,discountPercent
from zepto
where mrp> 500 and discountpercent < 10
order by mrp desc , discountpercent desc;


--Ranked top 5 categories offering highest average discounts
select category,
round(avg(discountPercent),2) as avg_discount
from zepto
group by category
order by avg_discount desc
limit 5;


--Calculated price per gram to identify value-for-money products
select distinct name,weightinGms,discountedSelllingPrice,
round(discountedSelllingPrice/weightinGms,2) as price_per_gram
from zepto
where weightingms >= 100
order by price_per_gram;


--Grouped products based on weight into Low, Medium, and Bulk categories
select distinct name,weightingms,
case when weightingms < 1000 then 'low'
    when weightingms < 5000 then  'medium'
	else 'bulk'
	end as weight_category
from zepto;



--Measured total inventory weight per product category
SELECT category,
SUM(weightInGms * availableQuantity) AS total_weight
FROM zepto
GROUP BY category
ORDER BY total_weight;

