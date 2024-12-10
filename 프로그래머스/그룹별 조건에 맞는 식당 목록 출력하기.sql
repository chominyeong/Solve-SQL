/* https://school.programmers.co.kr/learn/courses/30/lessons/131124 */

WITH CNT_REVIEW AS (SELECT MEMBER_ID, REVIEW_TEXT, REVIEW_DATE, COUNT(*) CNT
      FROM REST_REVIEW
      GROUP BY MEMBER_ID)

SELECT MEMBER_NAME, rest.REVIEW_TEXT, DATE_FORMAT(rest.REVIEW_DATE, '%Y-%m-%d') REVIEW_DATE
FROM REST_REVIEW rest 
    JOIN CNT_REVIEW cnt ON rest.MEMBER_ID = cnt.MEMBER_ID 
    JOIN MEMBER_PROFILE mem ON rest.MEMBER_ID = mem.MEMBER_ID
WHERE CNT = (SELECT MAX(CNT) FROM CNT_REVIEW)
ORDER BY 3, 2


-- 1. count 열을 추가한 가상 테이블을 먼저 생성하고
-- 2. count 열을 원래 review 테이블에 조인 후
-- 3. 그 다음에 member 정보를 JOIN한다.
-- 그리고 MAX(CNT)에서 count 정보를 불러와 추출하고 싶은 컬럼 select하면 된다.
