SELECT COUNT(*) as FISH_COUNT
FROM FISH_INFO as FI
JOIN FISH_NAME_INFO as FN
ON FI.FISH_TYPE = FN.FISH_TYPE
WHERE FN.FISH_NAME = 'BASS' OR FN.FISH_NAME = 'SNAPPER';