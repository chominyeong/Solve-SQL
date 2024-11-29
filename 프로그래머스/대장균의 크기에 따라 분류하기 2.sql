/* https://school.programmers.co.kr/learn/courses/30/lessons/301649 */

WITH RANK_DATA AS (
    SELECT ID, PERCENT_RANK() OVER (ORDER BY SIZE_OF_COLONY DESC) SIZE_RANK
    FROM ECOLI_DATA)
    
SELECT ID, 
    CASE 
        WHEN SIZE_RANK <= 0.25 THEN 'CRITICAL'
        WHEN SIZE_RANK <= 0.50 THEN 'HIGH'
        WHEN SIZE_RANK <= 0.75 THEN 'MEDIUM'
        ELSE 'LOW'
    END AS COLONY_NAME
FROM RANK_DATA
ORDER BY 1


-- 1. WITH절 : `WITH [생성할 테이블명] AS (서브쿼리)`
    -- 만약 여러 개의 테이블을 생성하고 싶을 경우 : `WITH [테이블명1] AS (서브쿼리), [테이블명2] AS (서브쿼리)`
-- 2. PERCENT_RANK() OVER ()
