Select * from swiggy_project.dim_date
select count(*) from swiggy_project.dim_date

Select * from swiggy_project.dim_dish
select count(*) from swiggy_project.dim_dish

Select * from swiggy_project.dim_location
select count(*) from swiggy_project.dim_location

Select * from swiggy_project.fact_orders
select count(*) from swiggy_project.fact_orders

Select * from swiggy_project.dim_restuarant
select count(*) from swiggy_project.dim_restuarant


ALTER TABLE swiggy_project.dim_date
ADD order_date_new DATE

ALTER TABLE swiggy_project.dim_date
DROP COLUMN order_date_new;

SELECT *
FROM swiggy_project.dim_date;

DROP TABLE swiggy_project.dim_date;


ALTER TABLE swiggy_project.dim_date
ADD order_date_new DATE

Select * from swiggy_project.dim_date

SELECT order_date
FROM swiggy_project.dim_date;


Update swiggy_project.dim_date 
set order_date_new = TRY_CONVERT(date, order_date, 105);

Select * from swiggy_project.dim_date
select count(*) from swiggy_project.dim_date

Select * from swiggy_project.dim_dish
select count(*) from swiggy_project.dim_dish

Select * from swiggy_project.dim_location
select count(*) from swiggy_project.dim_location

Select * from swiggy_project.fact_orders
select count(*) from swiggy_project.fact_orders

Select * from swiggy_project.dim_restuarant
select count(*) from swiggy_project.dim_restuarant


ALTER TABLE swiggy_project.dim_date
ADD order_date_new DATE

ALTER TABLE swiggy_project.dim_date
DROP COLUMN order_date_new;

SELECT *
FROM swiggy_project.dim_date;

DROP TABLE swiggy_project.dim_date;

EXEC sp_rename 'swiggy_project.date', 
'dim_date';


ALTER TABLE swiggy_project.dim_date
ADD order_date_new DATE

Select * from swiggy_project.dim_date

SELECT order_date
FROM swiggy_project.dim_date;


Update swiggy_project.dim_date 
set order_date_new = TRY_CONVERT(date, order_date, 105);

SELECT restaurant_id, COUNT(*)
FROM swiggy_project.dim_restuarant
GROUP BY restaurant_id
HAVING COUNT(*) > 1;

SELECT DISTINCT *
FROM swiggy_project.dim_restuarant;

CREATE TABLE swiggy_project.dim_restaurant_clean AS
SELECT DISTINCT restaurant_id, restaurant_name
FROM swiggy_project.dim_restuarant;

SELECT location_id, COUNT(*)
FROM swiggy_project.dim_location
GROUP BY location_id
HAVING COUNT(*) > 1;

CREATE TABLE swiggy_project.dim_location_clean AS
SELECT DISTINCT location_id, city, state
FROM swiggy_project.dim_location;

SELECT DISTINCT *
FROM swiggy_project.dim_dish

SELECT dish_id, COUNT(*)
FROM swiggy_project.dim_dish
GROUP BY dish_id
HAVING COUNT(*) > 1;

CREATE TABLE dim_dish_New AS
SELECT
    dish_id,
    MAX(dish_name) AS dish_name,
    MAX(category) AS category
FROM swiggy_project.dim_dish
GROUP BY dish_id;


