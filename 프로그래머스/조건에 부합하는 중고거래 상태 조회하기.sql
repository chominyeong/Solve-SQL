/* https://school.programmers.co.kr/learn/courses/30/lessons/164672 */

SELECT BOARD_ID, WRITER_ID, TITLE, PRICE, 
    CASE
        WHEN a.STATUS = 'SALE' THEN '판매중'
        WHEN a.STATUS = 'RESERVED' THEN '예약중'
        WHEN a.STATUS = 'DONE' THEN '거래완료'
    END AS 'STATUS'
FROM USED_GOODS_BOARD a
WHERE CREATED_DATE = '2022-10-05'
ORDER BY 1 DESC
