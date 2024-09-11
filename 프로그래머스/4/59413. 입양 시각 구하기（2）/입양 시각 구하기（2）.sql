WITH RECURSIVE TIME_RANGE AS (
    SELECT 0 AS HOUR
    UNION ALL
    SELECT HOUR + 1
    FROM TIME_RANGE
    WHERE HOUR < 23
), ANIMAL_REFACTOR AS (
    SELECT 
    HOUR(DATETIME) AS HOUR,
    COUNT(ANIMAL_ID) AS CNT
    FROM ANIMAL_OUTS
    GROUP BY HOUR
    ORDER BY HOUR
)

SELECT TR.HOUR, IFNULL(AR.CNT, 0) AS COUNT
FROM TIME_RANGE TR
LEFT OUTER JOIN ANIMAL_REFACTOR AR
ON TR.HOUR = AR.HOUR;

# y-m-d