/* https://school.programmers.co.kr/learn/courses/30/lessons/133027 */

WITH NEW AS (SELECT FLAVOR, SUM(TOTAL_ORDER) TOTAL_SUM
             FROM (SELECT * FROM FIRST_HALF
                   UNION
                   SELECT * FROM JULY
                  ) AS NEW
             GROUP BY FLAVOR)

SELECT FLAVOR
FROM NEW
ORDER BY TOTAL_SUM DESC
LIMIT 3
