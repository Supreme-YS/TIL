-- SELECT 구문
SELECT [특정컬럼 |*(전체컬럼)] 표현식 | DISTINCT | AS 컬럼별칭
FROM 테이블이름 
WHERE 조건식
GROUP BY 기준컬럼
HAVING 조건식
ORDER BY 기준컬럼 ;
--전체컬럼 EMPLOYEE
SELECT *
FROM EMPLOYEE ;

--특정컬럼
SELECT EMP_NAME 
       EMP_NO   
FROM EMPLOYEE ;

--별칭
--주의사항 : 반드시 문자 시작, 만약 특수부호(공백포함)가 들어가면 ""
--AS 키워드는 생략이 가능하다. 밑에 부서번호처럼
SELECT EMP_NAME AS 이름,
       EMP_NO   AS 주민번호,
       SALARY   AS "급여(원)" --DOUBLE QUOTATION 사용
       DEPT_ID 부서번호
FROM EMPLOYEE ;

--DISTINCT : 값의 중복을 제거할 때 사용하는 키워드
SELECT DISTINCT JOB_ID
FROM EMPLOYEE ;

--표현식
--컬럼값에 대한 연산을 식으로 작성할 수 있다.
--NULL 값이 포함되면 연산결과는 NULL로 나온다.
SELECT EMP_NAME AS 사원명,
       SALARY AS 급여,
       (SALARY + (SALARY*BONUS_PCT)) * 12 AS 연봉 
FROM EMPLOYEE;

--더미컬럼
--' SINGLE QUOTATION = DATA를 의미한다.
--" DOUBLE QUOTATION = 키워드를 의미한다.
SELECT EMP_ID,
       EMP_NAME,
       '재직' AS 근무여부
FROM EMPLOYEE ;

SELECT [특정컬럼 |*(전체컬럼)] 표현식 | DISTINCT | AS 컬럼별칭
FROM 테이블이름 
WHERE

--부서번호가 90번인 사원들의 정보만 확인하고 싶다면?
--WHERE구문을 이용하여 행의 제한(특정 조건)
--조건절(WHERE)에서 연산자를 사용할 수 있다. =(EQUAL)은 동등비교의 의미
SELECT *
FROM EMPLOYEE 
WHERE DEPT_ID = 90;

--부서코드가 90이고 급여를 2000000 보다 많이 받는 사원의 이름, 부서코드, 급여를 조회
SELECT EMP_NAME, DEPT_ID, SALARY
FROM EMPLOYEE
WHERE DEPT_ID = 90 AND SALARY > 2000000;

--부서코드가 90이거나 20번인 사원의 이름, 부서코드, 급여를 조회
SELECT EMP_NAME, DEPT_ID, SALARY
FROM EMPLOYEE
WHERE DEPT_ID = 90 OR DEPT_ID = 20 ;

--'XXX님의 월급은 XXXXX원 입니다'
--||- 연결연산자
--[ 컬럼 || 컬럼 ] [ 컬럼 || '문자열 ]

SELECT EMP_ID || EMP_NAME || SALARY
FROM EMPLOYEE ;

SELECT EMP_ID ||'의 월급은' || SALARY ||'원 입니다.' 
FROM EMPLOYEE ;

--OPERATOR =, >, >=, <, <=, !=
SELECT EMP_NAME, SALARY
FROM EMPLOYEE
WHERE SALARY BETWEEN 3500000 AND 5500000 ;

SELECT EMP_NAME, SALARY
FROM EMPLOYEE
WHERE SALARY >= 3500000
AND SALARY <= 5500000;

SELECT EMP_NAME, SALARY
FROM EMPLOYEE
WHERE EMP_NAME LIKE '김%';

SELECT EMP_NAME, SALARY
FROM EMPLOYEE
WHERE PHONE LIKE '___9_______';

SELECT *
FROM EMPLOYEE;

--Email ID 중 '_'앞 자리가 3자리인 직원의 이름과 이메일
--_(UNDER)는 자릿수를 의미합니다. 
--%(PERCENT)는 하나 또는 전부
SELECT EMP_NAME, EMAIL
FROM EMPLOYEE
WHERE EMAIL LIKE '___\_%' ESCAPE '\' ; -- 와일드카드문자가 아닌 문자로 보여지게 하기 위해, ESCAPE 구문을 활용한다.

--김씨 성이 아닌 직원의 이름과 급여를 조회
SELECT EMP_NAME, SALARY 
FROM EMPLOYEE
WHERE EMP_NAME NOT LIKE '김%' ;

--부서가 없는데도 불구하고 보너스를 지급받는 직원의 이름, 부서, 보너스를 조회한다면?
--IS NULL, IS NOT NULL
FROM EMPLOYEE
SELECT EMP_NAME, DEPT_ID, BONUS_PCT
WHERE DEPT_ID IS NULL AND BONUS_PCT IS NOT NULL;
