SELECT EMP_NAME, SALARY
FROM EMPLOYEE
WHERE DEPT_ID = '50'
OR DEPT_ID IS NULL
ORDER BY SALARY DESC;

SELECT EMP_NAME, HIRE_DATE, DEPT_ID
FROM EMPLOYEE
WHERE HIRE_DATE > TO_DATE('20030101', 'YYYYMMDD')
ORDER BY DEPT_ID DESC, HIRE_DATE, EMP_NAME;

--SELECT 절에서 AS를 사용한 별칭을 이용하여 ORDER BY 구문에서 실행할 수 있다.
SELECT EMP_NAME AS 이름,
       HIRE_DATE AS 입사일,
       DEPT_ID AS 부서코드
FROM EMPLOYEE
WHERE HIRE_DATE > TO_DATE('20030101', 'YYYYMMDD')
ORDER BY 부서코드 DESC, 입사일, 이름;

--SELECT 절에 기술된 순서로 표시가 가능하다.
SELECT EMP_NAME AS 이름,
       HIRE_DATE AS 입사일,
       DEPT_ID AS 부서코드
FROM EMPLOYEE
WHERE HIRE_DATE > TO_DATE('20030101', 'YYYYMMDD')
ORDER BY 3 DESC, 2, 1;

--GROUP BY
--별칭이나 컬럼 기술 순서를 사용할 수 없음.
--아래 구문은 오류가 발생 -> EMP_NAME은 GROUP BY 절에서 정의가 되지 않음.
SELECT EMP_NAME, DEPT_ID, COUNT(*)
FROM EMPLOYEE
GROUP BY DEPT_ID;
--수정구문
SELECT EMP_NAME, DEPT_ID, COUNT(*)
FROM EMPLOYEE
GROUP BY EMP_NAME, DEPT_ID;
--HAVING
--그룹화 된 데이터에 대한 그룹 함수 실행결과를 제한
SELECT DEPT_ID, SUM(SALARY)
FROM EMPLOYEE
GROUP BY DEPT_ID
HAVING SUM(SALARY) > 9000000;
--* WHERE 절에는 그룹 함수를 사용할 수 없다. WHERE은 행에 대한 제한이기 때문에..
SELECT DEPT_ID, SUM(SALARY)
FROM EMPLOYEE
WHERE SUM(SALARY) > 9000000;
GROUP BY DEPT_ID
