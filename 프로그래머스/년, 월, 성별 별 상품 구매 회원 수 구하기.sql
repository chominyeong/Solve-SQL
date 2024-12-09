/* https://school.programmers.co.kr/learn/courses/30/lessons/131532 */

SELECT YEAR(sales_date) YEAR, MONTH(sales_date) MONTH, gender, COUNT(DISTINCT T2.user_id) USERS
FROM USER_INFO T1 JOIN ONLINE_SALE T2 ON T1.USER_ID = T2.USER_ID
WHERE gender IS NOT NULL
GROUP BY YEAR(sales_date), MONTH(sales_date), gender
ORDER BY 1, 2, 3
