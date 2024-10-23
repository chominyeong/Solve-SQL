/* https://school.programmers.co.kr/learn/courses/30/lessons/151136 */

SELECT ROUND(AVG(DAILY_FEE),0) AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV';



/* 소수 첫 번째 자리에서 반올림 = 소수 0번째 자리까지 반올림 → ROUND(x, 0) */
