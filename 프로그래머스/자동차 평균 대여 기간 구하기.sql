/* https://school.programmers.co.kr/learn/courses/30/lessons/157342 */

SELECT CAR_ID, ROUND(AVG(DATEDIFF(END_DATE,START_DATE)+1),1) AVERAGE_DURATION
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
HAVING AVERAGE_DURATION >= 7
ORDER BY 2 DESC, 1 DESC


-- 1. 일수 차이 계산 함수 : DATEDIFF(종료 날짜, 시작 날짜)
-- 2. 시작 날짜를 포함하려면 +1 을 해줘야 함
-- 3. SQL 실행 순서는 FROM → GROUP BY → HAVING → SELECT → ORDER BY 가 맞지만, 
--    SELECT의 집계 함수를 HAVING 절에서도 사용할 수 있는 유연함이 제공됨.
