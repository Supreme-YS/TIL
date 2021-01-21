-- SELECT 구문
SELECT [ 특정컬럼 | * (전체컬럼) | 표현식(SELECT - (SUBQUERY)) | DISTINCT | AS 컬럼별칭
FROM [ 테이블이름 | JOIN | SELECT - (SUBQUERY) ]
WHERE 조건식 | SELECT - (SUBQUERY)
GROUP BY 기준컬럼 | SELECT - (SUBQUERY)
HAVING 조건식
ORDER BY 기준컬럼;
-- SCALAR SUBQUERY , INLINE VIEW 라고 한다. 표현식, FROM 절, WHERE 절, GROUP BY 절에 들어갈 수 있다.

--SET OPERATOR
--두 개 이상의 쿼리 결과를 하나로 결합시키는 연ㅅ나자
--SELECT 절에 기술하는 컬럼 개수와 데이터 타입은 모든 쿼리에서 동일해야 함.

-- UNION : 중복된 결과는 한 번만 표시
SELECT EMP_ID,
       ROLE_NAME
FROM EMPLOYEE_ROLE
UNION
SELECT EMP_ID,
       ROLE_NAME
FROM ROLE_HISTORY;

--UNION ALL : 중복된 결과도 표시
SELECT EMP_ID,
       ROLE_NAME
FROM EMPLOYEE_ROLE
UNION ALL
SELECT EMP_ID,
       ROLE_NAME
FROM ROLE_HISTORY;

--INTERSECT : 교집합
SELECT EMP_ID,
       ROLE_NAME
FROM EMPLOYEE_ROLE
INTERSECT
SELECT EMP_ID,
       ROLE_NAME
FROM ROLE_HISTORY;

--MINUS : 차집합
SELECT EMP_ID,
       ROLE_NAME
FROM EMPLOYEE_ROLE
MINUS
SELECT EMP_ID,
       ROLE_NAME
FROM ROLE_HISTORY;

--쿼리1과 쿼리2의 select 목록은 반드시 동일(컬럼 개수, 데이터 타입) 해야 하므로 이를 위해 dummy column을 사용할 수 있다.
SELECT EMP_NAME,
       JOB_ID,
       HIRE_DATE
FROM EMPLOYEE
WHERE DEPT_ID = '20'
UNION
SELECT DEPT_NAME,
       DEPT_ID,
       NULL
FROM DEPARTMENT
WHERE DEPT_ID = '20';

