/* https://school.programmers.co.kr/learn/courses/30/lessons/151137 */

SELECT CAR_TYPE, COUNT(*) CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE options LIKE '%통풍시트%' OR
    options LIKE '%열선시트%' OR
    options LIKE '%가죽시트%'
GROUP BY car_type
ORDER BY 1
