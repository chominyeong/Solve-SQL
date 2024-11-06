/* https://school.programmers.co.kr/learn/courses/30/lessons/157339 */


SELECT DISTINCT A.CAR_ID, A.CAR_TYPE, FLOOR(A.DAILY_FEE * (1 - C.DISCOUNT_RATE / 100) * 30) FEE
FROM CAR_RENTAL_COMPANY_CAR A 
LEFT JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY B ON A.CAR_ID = B.CAR_ID 
LEFT JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN C ON A.CAR_TYPE = C.CAR_TYPE
WHERE A.CAR_TYPE IN ('세단', 'SUV')
  AND B.CAR_ID NOT IN (SELECT CAR_ID
                     FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
                     WHERE (START_DATE <= '2022-11-30' AND END_DATE >= '2022-11-01'))
  AND C.DURATION_TYPE = '30일 이상'
  AND (A.DAILY_FEE * (1 - C.DISCOUNT_RATE / 100) * 30) BETWEEN 500000 AND 2000000;





# 나의 풀이
-- 조건 1 : CAR_TYPE이 '세단' 또는 'SUV'인 경우

-- 조건 2 : 2022-11-01 부터 2022-11-30까지 대여가 가능해야 함 
-- = ([대여시작일]이 2022-11-30보다 작으면서 & [대여종료일]이 2022-11-01보다 큰 경우)의 🌟반대🌟
-- = ([대여시작일]이 2022-11-30보다 크거나 같다) or ([대여종료일]이 2022-11-01보다 작거나 같다)
-- → 이 경우는 대여가 가능함

-- 조건 3 : 기간이 30일 이상인 경우의 계산 값이 50만원 이상 & 200만원 미만
-- BETWEEN A AND B : A이상 B이하 (근데 정답처리 됨;;)






# 다른 풀이 - 더 효율적
SELECT ca.CAR_ID,ca.CAR_TYPE,
ROUND(ca.DAILY_FEE*30*(100-pl.DISCOUNT_RATE)/100) AS FEE

from CAR_RENTAL_COMPANY_CAR ca 
  join CAR_RENTAL_COMPANY_RENTAL_HISTORY hi
  on  ca.CAR_ID = ca.CAR_ID
  join CAR_RENTAL_COMPANY_DISCOUNT_PLAN pl
  on ca.CAR_TYPE = pl.CAR_TYPE

WHERE ca.CAR_ID NOT IN (
    SELECT CAR_ID
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
    WHERE END_DATE > '2022-11-01' AND START_DATE < '2022-12-01'
  ) AND pl.DURATION_TYPE='30일 이상'
  and  ca.CAR_TYPE IN ('세단', 'SUV')

group by ca.CAR_ID
having FEE>=500000 AND FEE<2000000
ORDER BY FEE DESC, CAR_TYPE, CAR_ID DESC
