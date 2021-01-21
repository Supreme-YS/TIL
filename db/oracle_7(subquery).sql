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

-- UNION을 사용하여 50번 부서원을 관리자 직원으로 구분하여 표시하고 싶다면?
-- NULL 인 부분과 아닌 두 개의 부분을 나누어서 DUMMY COLUMN을 활용해서 구분하자!
SELECT EMP_ID,
       EMP_NAME,
       '직원' AS 구분
FROM EMPLOYEE
WHERE MGR_ID IS NOT NULL AND DEPT_ID = '50'
UNION
SELECT EMP_ID,
       EMP_NAME,
       '관리자' AS 구분
FROM EMPLOYEE
WHERE MGR_ID IS NULL AND DEPT_ID = '50'
ORDER BY 3 ; --UNION 된 테이블 기준

-- 직급(JOB_TITLE)이 대리 또는 사원 직원정보를 조회(이름, 직급)

SELECT EMP_NAME,
       JOB_TITLE
FROM EMPLOYEE
JOIN JOB USING(JOB_ID)
WHERE JOB_TITLE = '대리'
UNION
SELECT EMP_NAME, JOB_TITLE
FROM EMPLOYEE
JOIN JOB USING(JOB_ID)
WHERE JOB_TITLE = '사원'
ORDER BY 2;
-- 이렇게도 가능하다.
SELECT EMP_NAME, JOB_TITLE
FROM EMPLOYEE
JOIN JOB USING(JOB_ID)
WHERE JOB_TITLE IN ('대리', '사원');

--SUBQUERY
--일반적인 SQL 구문과 동일 (별도 형식이 존재하는 것이 아님)
--SELECT, FROM, WHERE, HAVING 절 등에서 사용 가능
--서브쿼리는 ()로 묶어서 표현
--서브쿼리에는 ; 를 사용하지 않음
--유형에 따라 연산자

--나승원의 이름을 이용하여
--직급이 동일하고, 나승원보다 급여가 많은 사원의 이름, 직급, 급여를 조회
--단일행 서브쿼리 합친거
SELECT EMP_NAME,
       JOB_ID,
       SALARY
FROM EMPLOYEE
WHERE JOB_ID = ( SELECT JOB_ID
                 FROM EMPLOYEE
                 WHERE EMP_NAME = '나승원' )
AND SALARY > ( SELECT SALARY 
               FROM EMPLOYEE
               WHERE EMP_NAME = '나승원' )
--단일행 서브쿼리
SELECT SALARY 
FROM EMPLOYEE
WHERE EMP_NAME = '나승원'
--단일행 서브쿼리
SELECT JOB_ID
FROM EMPLOYEE
WHERE EMP_NAME = '나승원'