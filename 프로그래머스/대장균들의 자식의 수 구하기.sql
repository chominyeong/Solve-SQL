/* https://school.programmers.co.kr/learn/courses/30/lessons/299305 */

SELECT t1.ID, COALESCE(t2.group_count, 0) CHILD_COUNT
FROM ECOLI_DATA t1
LEFT JOIN (
    SELECT PARENT_ID, COUNT(PARENT_ID) group_count
    FROM ECOLI_DATA
    GROUP BY PARENT_ID
    ) t2
ON t1.ID = t2.PARENT_ID
ORDER BY 1



# COALESCE(A, B)
-- A열 값과 B열 값을 합친다. 
-- null 값을 처리하는 데에도 사용됨.
-- ex. A = [null, 2, 3, 4] 라면 COALESCE(A,0) 출력은 [0, 2, 3, 4]가 됨.
