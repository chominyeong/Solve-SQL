/* https://school.programmers.co.kr/learn/courses/30/lessons/301650 */

SELECT t3.ID
FROM ECOLI_DATA t1 
    INNER JOIN ECOLI_DATA t2 ON t2.PARENT_ID = t1.ID AND t1.PARENT_ID IS NULL
    INNER JOIN ECOLI_DATA t3 ON t3.PARENT_ID = t2.ID
ORDER BY 1


-- 3세대의 대장균을 찾아야 하므로 1세대의 부모ID는 없어야 한다☑️
