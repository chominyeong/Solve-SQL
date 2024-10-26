/* https://school.programmers.co.kr/learn/courses/30/lessons/131118 */

SELECT A.REST_ID, A.REST_NAME, A.FOOD_TYPE, A.FAVORITES, A.ADDRESS, ROUND(AVG(B.REVIEW_SCORE),2) as SCORE
FROM REST_INFO as A
INNER JOIN REST_REVIEW as B
ON A.REST_ID = B.REST_ID
WHERE A.ADDRESS LIKE '서울%'
GROUP BY A.REST_ID
ORDER BY SCORE DESC, A.FAVORITES DESC



-- 1. 별칭 - as 뒤에 따옴표 안붙여도 됨
-- 2. JOIN - 어떤 테이블에 어떤 테이블을 JOIN해야 하는지, 정보가 중복되어야 하는지 or 중복되면 안되는지 고민하고 JOIN
-- 3. GROUP BY - 조인 후 어떤 것(A.REST_ID)을 기준으로 산술계산을 해야 하는지 확인
