/* https://school.programmers.co.kr/learn/courses/30/lessons/301650 */

SELECT t3.ID
FROM ECOLI_DATA t1 
    INNER JOIN ECOLI_DATA t2 ON t2.PARENT_ID = t1.ID AND t1.PARENT_ID IS NULL
    INNER JOIN ECOLI_DATA t3 ON t3.PARENT_ID = t2.ID
ORDER BY 1


-- 3세대의 대장균을 찾아야 하므로 1세대의 부모ID는 없어야 한다☑️



# WITH절을 사용한 다른 풀이
WITH FIRST_GEN AS (SELECT ID, PARENT_ID FROM ECOLI_DATA WHERE PARENT_ID IS NULL),
    SECOND_GEN AS (SELECT t2.ID, t2.PARENT_ID
                   FROM FIRST_GEN t1 JOIN ECOLI_DATA t2
                   ON t2.PARENT_ID = t1.ID),
    THIRD_GEN AS (SELECT t3.ID, t3.PARENT_ID
                  FROM SECOND_GEN t2 JOIN ECOLI_DATA t3
                  ON t3.PARENT_ID = t2.ID)

SELECT ID FROM THIRD_GEN ORDER BY 1
