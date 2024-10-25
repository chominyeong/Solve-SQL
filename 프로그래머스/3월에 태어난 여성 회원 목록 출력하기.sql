/* https://school.programmers.co.kr/learn/courses/30/lessons/131120 */

SELECT MEMBER_ID, MEMBER_NAME, GENDER, DATE_FORMAT(DATE_OF_BIRTH, '%Y-%m-%d') as "DATE_OF_BIRTH"
FROM MEMBER_PROFILE
WHERE GENDER = 'W'
AND MONTH(DATE_OF_BIRTH) = '03' 
AND TLNO IS NOT NULL
ORDER BY MEMBER_ID;



/* 알아야 할 것 */
/* 1. 날짜 형식 - DATE_FORMAT(?,?), MONTH(컬럼명) 과 결과 */
/* 2. 별칭을 쓸 때는 as '컬럼명' ← 따옴표 필수 */
/* 3. NULL일 경우 or 아닐 경우의 조건문 */
