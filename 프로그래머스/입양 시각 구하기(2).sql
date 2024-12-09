/* https://school.programmers.co.kr/learn/courses/30/lessons/59413 */

WITH RECURSIVE zero_table AS (
    SELECT 0 HOUR, 0 COUNT
    UNION ALL
    SELECT HOUR + 1, COUNT
    FROM zero_table
    WHERE HOUR < 23
    ),
    
    out_table AS (
    SELECT HOUR(DATETIME) "HOUR", COUNT(*) "COUNT"
    FROM ANIMAL_OUTS
    WHERE HOUR(DATETIME) BETWEEN 0 AND 23
    GROUP BY HOUR(DATETIME)
    ORDER BY 1
    )


SELECT z.HOUR, IFNULL(z.COUNT + o.COUNT,0) COUNT
FROM zero_table z LEFT JOIN out_table o ON z.HOUR = o.HOUR
