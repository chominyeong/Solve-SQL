/* https://school.programmers.co.kr/learn/courses/30/lessons/131116# */

SELECT CATEGORY, PRICE MAX_PRICE, PRODUCT_NAME
FROM FOOD_PRODUCT
WHERE PRICE
IN (SELECT MAX(PRICE)
    FROM FOOD_PRODUCT
    GROUP BY CATEGORY)
AND CATEGORY IN ('과자', '국', '김치', '식용유')  # 이 조건이 '메인쿼리 WHERE 절'에 나와야 함
ORDER BY 2 DESC




-- 처음 풀이
SELECT CATEGORY, MAX(PRICE) MAX_PRICE, PRODUCT_NAME
FROM FOOD_PRODUCT
WHERE CATEGORY IN ('과자', '국', '김치', '식용유')
GROUP BY CATEGORY
ORDER BY 2 DESC
-- 틀린 이유
# 그룹별로 묶고 난 다음 → 그룹에 대해 최댓값 출력
# 이게 아닌, 최대 가격을 가지는 해당 "열"을 출력해야 함
