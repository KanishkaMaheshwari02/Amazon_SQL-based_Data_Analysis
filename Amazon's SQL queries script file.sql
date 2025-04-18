#Q1. List all products with a discounted price below ₹500.

SELECT 
    product_id, product_name, discounted_price
FROM
    mytable
WHERE
    discounted_price < 500;


#Q2. Find products with a discount percentage of 50% or more.

SELECT 
    product_id, product_name, discount_percentage
FROM
    mytable
WHERE
    discount_percentage > 0.50;


#Q3. Retrieve all products where the name contains the word "Cable."

SELECT 
    product_id, product_name
FROM
    mytable
WHERE
    product_name LIKE '%Cable%';


#Q4. Display the average of all the price differences between the actual prices and discounted prices across all products.
#across all products indicate that the calculations are applied to the all products in the dataset not 
#individual products.
#Since AVG() is an aggregate function, it operates on multiple values.

SELECT 
    AVG(actual_price - discounted_price) AS avg_price_difference
FROM
    mytable;








#Q5. Query reviews that mention "fast charging" in their content.

SELECT 
    product_id, product_name, review_id, review_content
FROM
    mytable
WHERE
    review_content LIKE '%fast charging%';



#Q6. Identify products with a discount percentage between 20% and 40%.

SELECT 
    product_id, product_name, discount_percentage
FROM
    mytable
WHERE
    discount_percentage BETWEEN 0.20 AND 0.40;


#Q7. Find products that have an actual price above ₹1,000 and are rated 4 stars or above.

SELECT 
    product_id, product_name, actual_price, rating
FROM
    mytable
WHERE
    actual_price > 1000 AND rating >= 4;



#Q8. Find products where the discounted price ends with a 9.

SELECT 
    product_id, product_name, discounted_price
FROM
    mytable
WHERE
    discounted_price like "%9";




#Q9. Display review contents that contains words like worst, waste, poor, or not good.

SELECT 
    product_id, product_name, review_id, review_content
FROM
    mytable
WHERE
    review_content LIKE '%worst%'
        OR review_content LIKE '%waste%'
        OR review_content LIKE '%poor%'
        OR review_content LIKE '%not good%';



#Q10. List all products where the category includes "Accessories."
 
SELECT 
    product_id, product_name, category
FROM
    mytable
WHERE
    category LIKE '%Accessories%';
