/* https://school.programmers.co.kr/learn/courses/30/lessons/131115 */

SELECT PRODUCT_ID, PRODUCT_NAME, PRODUCT_CD, CATEGORY, PRICE
FROM FOOD_PRODUCT
ORDER BY PRICE DESC
LIMIT 1;


-- 다른 풀이
SELECT PRODUCT_ID, PRODUCT_NAME, PRODUCT_CD, CATEGORY, PRICE
FROM FOOD_PRODUCT
WHERE PRICE = (SELECT MAX(PRICE) WHERE FOOD_PRODUCT)



-- 1. SELECT절에서 집계함수(MAX(), COUNT(), ...)는 그룹에서만 사용 가능하다.
-- 2. 최댓값 → 내림차순 DESC 정렬 후 하나만 출력
-- 3. 최솟값 → 오름차순 ASC 정렬 후 하나만 출력
