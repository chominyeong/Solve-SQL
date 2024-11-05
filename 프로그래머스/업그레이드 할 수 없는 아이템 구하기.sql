/* https://school.programmers.co.kr/learn/courses/30/lessons/273712 */


SELECT ITEM_ID, ITEM_NAME, RARITY
FROM ITEM_INFO
WHERE ITEM_ID NOT IN (SELECT PARENT_ITEM_ID FROM ITEM_TREE WHERE PARENT_ITEM_ID IS NOT NULL)
ORDER BY 1 DESC


-- IN의 경우 or 연산으로 하나라도 =의 결과가 true이면 해당 데이터가 조회되는 것인데, NOT IN의 경우 and 연산이 된다고 한다.
-- 즉 서브쿼리에 있는 모든 데이터에 대해서 !=의 결과가 true인 데이터가 조회된다.
