/* https://school.programmers.co.kr/learn/courses/30/lessons/164668 */

SELECT user_id, nickname, SUM(price) TOTAL_SALES
FROM USED_GOODS_BOARD B JOIN USED_GOODS_USER U ON B.WRITER_ID = U.USER_ID
WHERE STATUS = 'DONE'
GROUP BY WRITER_ID
HAVING SUM(price) >= 700000
ORDER BY 3
