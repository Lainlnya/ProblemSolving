WITH RARE AS (
    SELECT IT.ITEM_ID, RARITY
    FROM ITEM_INFO II
    JOIN ITEM_TREE IT
    ON II.ITEM_ID = IT.PARENT_ITEM_ID
    WHERE II.RARITY = 'RARE'
    )
    
SELECT RARE.ITEM_ID, ITEM_NAME, II.RARITY
FROM ITEM_INFO II
JOIN RARE
ON RARE.ITEM_ID = II.ITEM_ID
ORDER BY RARE.ITEM_ID DESC;