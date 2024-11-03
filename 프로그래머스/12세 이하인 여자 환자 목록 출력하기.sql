/* https://school.programmers.co.kr/learn/courses/30/lessons/132201 */

SELECT PT_NAME, PT_NO, GEND_CD, AGE, IF(TLNO IS NULL, "NONE", TLNO) TLNO
FROM PATIENT
WHERE AGE <= 12 AND GEND_CD = 'W'
ORDER BY AGE DESC, PT_NAME ASC


-- SELECT에서 IF문 : IF([조건절], "맞을 경우 값", "아닐 경우 값") [컬럼명]
