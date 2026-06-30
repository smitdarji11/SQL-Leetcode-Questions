--===========================================================
--1484. Group Sold Products By The Date

-- Problem : To find for each date the number of different products sold and their 
			names and return their names in alphabetical order .

-- Difficulty : Easy

--leetcode : https://leetcode.com/problems/group-sold-products-by-the-date/
--Approach : 

/*
1. Group records  by sell_date 
2.  COUNT(DISTINCT product) return unique values
3.GROUP_CONCAT(DISTINCT product ORDER BY product SEPARATOR ',')
to combine product names into a comma-seperated string.

--============================================================

*/
-- SQL Solution:

SELECT 
    sell_date,
    COUNT(DISTINCT product) AS num_sold,
    GROUP_CONCAT(DISTINCT product ORDER BY product SEPARATOR ',') As products
FROM Activities 
GROUP BY sell_date 
ORDER BY sell_date

--============================================================

--Explanation : 

/*
 --->GROUP BY sell_date creates one group for each date.
--->COUNT(DISTINCT product) counts each product only once per date 
--->   GROUP_CONCAT() combine result inone string for each date 
--->Order BY product inside GROUP_CONCAT() sorts products name alphabetically
*/

--============================================================

--SQL Concepts Used :

/*
SELECT 
COUNT()
DISTINCT
GROUP_CONCAT 
GROUP BY 
ORDER BY
*/