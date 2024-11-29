/* https://school.programmers.co.kr/learn/courses/30/lessons/301647 */

SELECT t1.ID, t1.GENOTYPE, t2.GENOTYPE PARENT_GENOTYPE
FROM ECOLI_DATA t1   # 자식 값 비교를 위한 테이블
JOIN ECOLI_DATA t2   # 부모 값을 가져오기 위한 테이블
ON t1.PARENT_ID = t2.ID
WHERE (t1.GENOTYPE & t2.GENOTYPE) = t2.GENOTYPE   # 부모의 값을 모두 가지고 있어야 함
ORDER BY 1
