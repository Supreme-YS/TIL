--Total Review

--SELECT
--키워드, 테이블 이름, 컬럼 이름은 대/소문자를 구분하지 않는다.
SELECT DEPT_ID, DEPT_NAME
FROM DEPARTMENT;

select dept_id, dept_name
from department;

--나누어 쓰기/들여쓰기를 하면 가독성이 좋아지고 편집이 쉬워진다.
--#1
SELECT DEPT_ID, DEPT_NAME FROM DEPARTMENT;
--#2
SELECT DEPT_ID, DEPT_NAME
FROM   DEPARTMENT;
--#3
SELECT DEPT_ID,
       DEPT_NAME
FROM   DEPARTMENT;

--키워드, 테이블 이름, 컬럼 이름은 약자로 줄여 쓰거나 분리할 수 없다.
--구문은 ; SEMI-COLON 이나 / SLASH 로 종료된다

--직원들의 사번과 이름을 조회하는 SELECT 구문
SELECT EMP_ID,
       EMP_NAME
FROM EMPLOYEE;
--직원들의 모든 정보를 조회하는 SELECT 구문
SELECT *
FROM EMPLOYEE;
--칼럼 값에 대해 산술 연산한나 결과를 조회할 수 있다.
SELECT EMP_NAME,
       SALARY * 12,
       ( SALARY + ( SALARY * BONUS_PCT ) ) * 12
FROM EMPLOYEE ;
--별칭을 줄 수 있다. AS 사용
SELECT EMP_NAME,
       SALARY * 12 AS "1년 급여",
       ( SALARY + ( SALARY * BONUS_PCT ) ) * 12 AS 총소득
FROM EMPLOYEE ;

--LITERAL
--임의로 지정한 문자열
--SELECT 절에 사용하면 테이블에 존재하는 데이터처럼 사용할 수 있다.
SELECT EMP_ID,
       EMP_NAME,
       '재직' AS 근무여부
FROM EMPLOYEE ;
--DISTINCT : 컬럼에 포함된 중복 값을 한번씩만 표시하고자 할 때 사용
SELECT DISTINCT DEPT_ID, JOB_ID
FROM EMPLOYEE;

--WHERE 조건식
--DEPT_ID 값이 90인 행만 RESULT SET에 포함
SELECT EMP_NAME AS 이름,
       DEPT_ID AS 부서
FROM EMPLOYEE
WHERE DEPT_ID = '90';
--급여가 4000000 보다 많은 직원 이름과 급여 조회
SELECT EMP_NAME AS 이름,
       SALARY AS 급여
FROM EMPLOYEE
WHERE SALARY > 4000000;
--부서코드가 '90'이고 급여를 2000000보다 많이 받는 부서원 이름과 부서 코드, 급여 조회
SELECT EMP_NAME AS 이름,
       DEPT_ID AS 부서,
       SALARY AS 급여
FROM  EMPLOYEE
WHERE DEPT_ID = '90'
AND   SALARY > 2000000;
--'90'부서나 '20' 부서에 소속된 부서원 이름, 부서 코드, 급여 조회
SELECT EMP_NAME AS 이름,
       DEPT_ID AS 부서,
       SALARY AS 급여
FROM EMPLOYEE
WHERE DEPT_ID = '90'
OR DEPT_ID = '20'

--연결 연산자 ||
--연결 연산자를 사용하여 여러 컬럼을 하나의 컬럼인 것처럼 연결하거나, 컬럼과 리터럴을 연결할 수 있다.
--컬럼과 컬럼을 연결한 경우
SELECT EMP_ID || EMP_NAME || SALARY
FROM EMPLOYEE ;
--컬럼과 리터럴을 연결한 경우
SELECT EMP_NAME ||'의 월급은'||SALARY||'원 입니다.'
FROM EMPLOYEE;

--논리 연산자
--여러 개의 제한 조건 결과를 하나의 논리 결과(TRUE, FALSE, NULL)로 만들어 준다.

--비교 연산자 (BETWEEN AND)
--표현식 사이의 관계를 비교하기 위해 사용, 비교 결과는 논리 결과 중의 하나가 된다. 비교하는 두 컬럼 값/표현식은 서로 동일한 데이터 타입이어야 한다.
--BETWEEN AND : 비교하려는 값이 지정한 범위에 포함되는 TRUE를 반환하는 연산자
--급여를 3,500,000원 보다 많이 받고 5,500,000원 보다 적게 받는 직원 이름과 급여 조회
--#1
SELECT EMP_NAME,
       SALARY
FROM EMPLOYEE
WHERE SALARY BETWEEN 3500000 AND 5500000;
--#2
SELECT EMP_NAME,
       SALARY
FROM EMPLOYEE
WHERE SALARY >= 3500000
AND   SALARY <= 5500000;

--비교연산자 (LIKE)
--비교하려는 값이 지정한 특정 패턴을 만족시키면 TRUE를 반환
--패턴 지정을 위해 와일드카드 문자 사용
--( % (PERCENTAGE): % 부분에는 임의 문자열(0개 이상)이 있다는 의미 )
--( _ (UNDERSCORE): _ 부분에는 문자 1개만 있다는 의미
--'김'씨 성을 가진 직원 이름과 급여 조회
SELECT EMP_NAME, SALARY
FROM   EMPLOYEE
WHERE  EMP_NAME LIKE '김%';
--9000번 대 4자리 국번의 전화번호를 사용하는 직원 전화번호 조회
SELECT EMP_NAME, PHONE
FROM EMPLOYEE
WHERE PHONE LIKE '___9_______';
--EMAIL ID 중 '_'앞 자리가 3자리인 직원 조회
--아래 코드는 와일드카드 자체를 데이터로 처리하지 못한 것
SELECT EMP_NAME,
       EMAIL
FROM EMPLOYEE
WHERE EMAIL LIKE '____%';
--ESCAPE 문을 사용하여 와일드카드를 데이터로 처리한 방법
SELECT EMP_NAME,
       EMAIL
FROM EMPLOYEE
WHERE EMAIL LIKE '___\_%' ESCAPE '\' ;
--ESCAPE OPTION에 사용하는 문자는 임의 지정이 가능하다.
SELECT EMP_NAME,
       EMAIL
FROM EMPLOYEE
WHERE EMAIL LIKE '___#_%' ESCAPE '#' ;
--비교 연산자 - NOT LIKE
--'김'씨 성이 아닌 직원 이름과 급여 조회
--#1
SELECT EMP_NAME,
       SALARY
FROM EMPLOYEE
WHERE EMP_NAME NOT LIKE '김%';
--#2
SELECT EMP_NAME,
       SALARY
FROM EMPLOYEE
WHERE NOT EMP_NAME LIKE '김%';
--비교 연산자 - IS NULL / IS NOT NULL
--NULL 여부를 비교하는 연산자
--관리자도 없고 부서 배치도 받지 않은 직원 이름 조회
SELECT EMP_NAME, MGR_ID, DEPT_ID
FROM EMPLOYEE
WHERE MGR_ID IS NULL 
AND   DEPT_ID IS NULL ;
--부서배치를 받지 않았음에도 보너스를 지급받는 직원 이름 조회
SELECT EMP_NAME, DEPT_ID, BONUS_PCT
FROM EMPLOYEE
WHERE DEPT_ID IS NULL
AND   BONUS_PCT IS NOT NULL;
--비교 연산자 - IN
--비교하려는 값 목록에 일치하는 값이 있으면 TRUE를 반환하는 연산자
--60번 부서나 90번 부서원들의 이름, 부서코드, 급여 조회
--#1
SELECT EMP_NAME, DEPT_ID, SALARY
FROM EMPLOYEE
WHERE DEPT_ID IN ( '60', '90' );
--#2
SELECT EMP_NAME, DEPT_ID, SALARY
FROM EMPLOYEE
WHERE DEPT_ID = '60'
OR    DEPT_ID = '90';

--연산자 우선순위
--여러 연산자를 함께 사용할 때 우선 순위를 고려해야 한다. () 를 사용하면 연산자 우선 순위를 조절할 수 있다.
SELECT EMP_NAME, SALARY, DEPT_ID
FROM EMPLOYEE
WHERE DEPT_ID = '20'
OR DPET_ID = '90'
AND SALARY > 3000000 ;
--위와 같은 코드는 AND 연산자가 먼저 처리되어 "급여를 3000000원보다 많이 받는 90번 부서원 또는 20번 부서원"을 조회하는 의미가 된다.
--따라서 () 처리를 통해 OR가 먼저 처리되도록 처리 순서를 변경
SELECT EMP_NAME, SALARY, DEPT_ID
FROM EMPLOYEE
WHERE (DEPT_ID = '20' 
OR DEPT_ID = '90')
AND SALARY > 3000000;