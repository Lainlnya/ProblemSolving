SELECT SUBSTRING(PRODUCT_CODE, 1, 2) as CATEGORY,
COUNT(SUBSTRING(PRODUCT_CODE, 1, 2)) as PRODUCTS
FROM PRODUCT
GROUP BY CATEGORY