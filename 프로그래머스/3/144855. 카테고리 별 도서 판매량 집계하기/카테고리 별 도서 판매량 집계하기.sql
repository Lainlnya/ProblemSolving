SELECT BK.CATEGORY, SUM(BS.SALES) AS TOTAL_SALES
FROM BOOK_SALES BS
JOIN BOOK BK
ON BK.BOOK_ID = BS.BOOK_ID
WHERE YEAR(BS.SALES_DATE) = '2022' AND MONTH(BS.SALES_DATE) = '1'
GROUP BY BK.CATEGORY
ORDER BY CATEGORY;

