/* https://school.programmers.co.kr/learn/courses/30/lessons/164673 */

SELECT A.TITLE, A.BOARD_ID, B.REPLY_ID, B.WRITER_ID, B.CONTENTS, DATE_FORMAT(B.CREATED_DATE,'%Y-%m-%d') as CREATED_DATE
FROM USED_GOODS_BOARD as A
INNER JOIN USED_GOODS_REPLY as B
ON A.BOARD_ID = B.BOARD_ID
WHERE SUBSTR(A.CREATED_DATE, 1, 7) = '2022-10'
ORDER BY 6, 1


-- 1. SUBSTR(컬럼명, num1, num2) : num1에서 num2까지 문자열 자르기
-- 2. SUBSTR(컬럼명, -num1, num2) : 뒤에서 왼쪽으로 num1만큼 이동 후, 거기서부터 오른쪽으로 num2만큼 이동
-- 3. SUBSTR은 날짜에도 적용 가능
