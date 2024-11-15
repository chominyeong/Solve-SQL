/* https://school.programmers.co.kr/learn/courses/30/lessons/132203 */
/* sql 날짜 포맷 공부 필요 */

SELECT DR_NAME, DR_ID, MCDP_CD, date_format(HIRE_YMD, '%Y-%m-%d')
FROM DOCTOR
WHERE MCDP_CD = 'CS' OR MCDP_CD = 'GS'
ORDER BY HIRE_YMD DESC, DR_NAME ASC;
