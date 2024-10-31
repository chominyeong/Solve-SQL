/* https://school.programmers.co.kr/learn/courses/30/lessons/144855 */

SELECT CATEGORY, SUM(SALES) TOTAL_SALES
FROM BOOK AS A
RIGHT JOIN BOOK_SALES AS B
ON A.BOOK_ID = B.BOOK_ID
WHERE SALES_DATE LIKE '2022-01%'
GROUP BY CATEGORY
ORDER BY 1

-- JOIN 후에 생성된 테이블에서 다음 쿼리를 실행할 때 테이블 명을 붙여도 되고, 안붙여도 됨
-- ex. `SELECT A.CATEGORY`와 `SELECT CATEGORY`는 동일
