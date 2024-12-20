SELECT RI.FOOD_TYPE, RI.REST_ID, RI.REST_NAME, RI.FAVORITES
FROM REST_INFO AS RI
JOIN 
    (SELECT FOOD_TYPE, MAX(FAVORITES) AS FAVORITES
        FROM REST_INFO
      GROUP BY FOOD_TYPE
     ) AS RR
ON RI.FOOD_TYPE = RR.FOOD_TYPE AND RI.FAVORITES = RR.FAVORITES
ORDER BY RI.FOOD_TYPE DESC