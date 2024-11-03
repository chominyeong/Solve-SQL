/* https://school.programmers.co.kr/learn/courses/30/lessons/157340 */

SELECT CAR_ID, 
CASE 
    WHEN MAX('2022-10-16' BETWEEN START_DATE AND END_DATE) THEN '대여중'
    ELSE '대여 가능'
END AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
ORDER BY CAR_ID DESC


-- 1. 날짜 사이를 구할 때는 '날짜' BETWEEN '시작 날짜' AND '끝 날짜'
-- 2. 그룹화된 데이터에서 가장 큰 값을 반환해야 함
