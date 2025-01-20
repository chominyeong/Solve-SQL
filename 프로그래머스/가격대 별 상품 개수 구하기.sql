/* https://school.programmers.co.kr/learn/courses/30/lessons/131530 */



SELECT FLOOR(price / 10000)*10000 AS "PRICE_GROUP", COUNT(PRODUCT_ID) PRODUCTS
FROM PRODUCT
GROUP BY FLOOR(price / 10000)
ORDER BY 1
