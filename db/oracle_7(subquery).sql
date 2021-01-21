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
--유형에 따라 연산자를 구분해서 사용

--단일행서브쿼리 : 단일 행 반환, 단일 행 비교 연산자 사용
--다중행서브쿼리 : 여러 행 반환, 다중 행 비교 연산자(IN, ANY, ALL 등) 사용



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
               WHERE EMP_NAME = '나승원' ) ;
               
--단일행 서브쿼리를 먼저 만들자!
SELECT SALARY 
FROM EMPLOYEE
WHERE EMP_NAME = '나승원';
--단일행 서브쿼리를 먼저 만들자!
SELECT JOB_ID
FROM EMPLOYEE
WHERE EMP_NAME = '나승원';


--최소 급여를 받는 사원의 이름, 직급, 급여를 조회하라
--1. 최소급여확인
--2. 검색
SELECT EMP_NAME, JOB_ID, SALARY
FROM EMPLOYEE
WHERE SALARY = (SELECT MIN(SALARY)
                FROM EMPLOYEE);

--단일행 서브쿼리
SELECT MIN(SALARY)
FROM EMPLOYEE

-- 부서별 급여 총합이 가장 많은 부서의 이름, 급여 총합을 조회하라
--메인쿼리 만들기
SELECT DEPT_NAME, SUM(SALARY)
FROM EMPLOYEE
JOIN DEPARTMENT USING(DEPT_ID)
GROUP BY DEPT_NAME
HAVING SUM(SALARY) = (SELECT MAX(SUM(SALARY))
                        FROM EMPLOYEE
                        GROUP BY DEPT_ID)
--서브쿼리 만들기
SELECT MAX(SUM(SALARY))
FROM EMPLOYEE
GROUP BY DEPT_ID;


--IN, NOT IN, ANY, ALL 연산자를 다중행 서브쿼리에서 사용할 수 있다.

SELECT EMP_NAME, JOB_ID, SALARY
FROM EMPLOYEE
WHERE SALARY IN ( SELECT MIN(SALARY)
                    FROM EMPLOYEE
                    GROUP BY DEPT_ID) ;

SELECT EMP_ID,
       EMP_NAME,
       '관리자' AS 구분
FROM EMPLOYEE
WHERE EMP_ID IN (SELECT MGR_ID FROM EMPLOYEE )
UNION
SELECT EMP_ID,
       EMP_NAME,
       '직원' AS 구분
FROM EMPLOYEE
WHERE EMP_ID NOT IN ( SELECT MGR_ID FROM EMPLOYEE
                      WHERE MGR_ID IS NOT NULL) --다중행 서브쿼리에서 NOT IN을 사용할 땐 NULL 값을 제거해줘야한다. 제거하지 않으면 전체를 NULL 값으로 보내기 때문에..

--위 구현 코드를 다른 방식(UNION을 사용하지 않고) 으로 구현한다면?
--MGR_ID 있으면 직원, 없으면 사원(DECODE, CASE~END)
--#0 DECODE 방식
SELECT EMP_ID,
       EMP_NAME,
       DECODE(MGR_ID, NULL , '관리자', '사원') AS 구분
FROM EMPLOYEE
       
--#1 CASE ~ WHEN 방식
SELECT EMP_ID,
       EMP_NAME,
       CASE WHEN EMP_ID IN (SELECT MGR_ID FROM EMPLOYEE) THEN '관리자' ELSE '직원' END
FROM EMPLOYEE
--#2 CASE
SELECT EMP_ID,
       EMP_NAME,
       CASE
           WHEN MGR_ID IS NOT NULL THEN '직원'
       ELSE
           '관리자'
       END AS 구분
FROM EMPLOYEE



-- ANY와 ALL비교
-- * > ANY 최소값보다 큰
-- 2100000 보다 큰
SELECT EMP_NAME,
       SALARY
FROM EMPLOYEE
JOIN JOB USING (JOB_ID)
WHERE JOB_TITLE = '대리'
AND SALARY > ANY 
                (SELECT SALARY
                FROM EMPLOYEE
                JOIN JOB USING (JOB_ID)
                WHERE JOB_TITLE = '과장');

-- * < ANY 최대값보다 작은
-- 2600000 보다 작은
SELECT EMP_NAME,
       SALARY
FROM EMPLOYEE
JOIN JOB USING (JOB_ID)
WHERE JOB_TITLE = '대리'
AND SALARY < ANY 
                (SELECT SALARY
                FROM EMPLOYEE
                JOIN JOB USING (JOB_ID)
                WHERE JOB_TITLE = '과장');

-- * > ALL 비교대상 중 최대값보다 큰
-- 2600000 보다 큰
SELECT EMP_NAME,
       SALARY
FROM EMPLOYEE
JOIN JOB USING (JOB_ID)
WHERE JOB_TITLE = '대리'
AND SALARY > ALL 
                (SELECT SALARY
                FROM EMPLOYEE
                JOIN JOB USING (JOB_ID)
                WHERE JOB_TITLE = '과장');

-- * < ALL 비교대상 중 최소값보다 작은
-- 2100000 보다 작은
SELECT EMP_NAME,
       SALARY
FROM EMPLOYEE
JOIN JOB USING (JOB_ID)
WHERE JOB_TITLE = '대리'
AND SALARY < ALL
                (SELECT SALARY
                FROM EMPLOYEE
                JOIN JOB USING (JOB_ID)
                WHERE JOB_TITLE = '과장');


















