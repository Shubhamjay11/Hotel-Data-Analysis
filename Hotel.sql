
WITH HOTELS AS (SELECT *
FROM DBO.['2018$']
UNION
SELECT *
FROM DBO.['2019$']
UNION
SELECT *
FROM DBO.['2020$'])
SELECT *
FROM HOTELS AS HO
LEFT JOIN DBO.market_segment$ AS MS ON HO.market_segment=MS.market_segment
LEFT JOIN DBO.meal_cost$ AS MC ON HO.meal=MC.meal
