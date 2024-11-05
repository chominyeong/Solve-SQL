/* https://school.programmers.co.kr/learn/courses/30/lessons/293261 */

SELECT ID, FISH_NAME, LENGTH
FROM FISH_INFO A LEFT JOIN FISH_NAME_INFO B ON A.FISH_TYPE = B.FISH_TYPE
WHERE (A.FISH_TYPE, A.LENGTH) IN (SELECT FISH_TYPE, MAX(LENGTH) FROM FISH_INFO GROUP BY FISH_TYPE)
ORDER BY 1


-- 메인 쿼리에서 GROUP BY 사용x
-- 이유 : 각 행의 정보(예: ID, FISH_NAME, LENGTH)가 개별적으로 반환되지 않고, 그룹화된 요약 값(예: FISH_TYPE별로 임의의 ID나 요약된 길이 값)만 반환됨.
