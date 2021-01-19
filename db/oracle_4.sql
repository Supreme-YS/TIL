SELECT EMP_NAME,
       HIRE_DATE,
       TO_CHAR(HIRE_DATE , 'YYYY "년" MM "월" DD "일"'),
       SUBSTR(HIRE_DATE , 1, 2) || '년' ||
       SUBSTR(HIRE_DATE , 4, 2) || '월' ||
       SUBSTR(HIRE_DATE , 7, 2) || '일' AS 입사일
FROM EMPLOYEE;

-- SUBSTR(문자|날짜)
-- TO_DATE 는 문자열 정수값을 받는다. 앞에 들어오는 정확한 포맷에 맞는 형식을 지정해줘야 한다.
SELECT TO_DATE('20210119', 'YYYYMMDD') 
FROM DUAL;

-- TO_CHAR 날짜나 숫자를 받아서 문자를 만드는 것
-- 아래 코드는 오류가 발생
SELECT TO_CHAR('20210119', 'YYYY, MON')
FROM DUAL;
-- TO_DATE로 바꿔주고 TO_CHAR에 넣어줘야 오류 발생 X

SELECT TO_CHAR( TO_DATE('20210119', 'YYYYMMDD'), 'YYYY, MON')
FROM DUAL;

SELECT TO_DATE( '041030 143000', 'YYMMDD HH24MISS' ) FROM DUAL ;

SELECT TO_CHAR( TO_DATE( '041030 143000', 'YYMMDD HH24MISS' ), 'DD-MON-YY HH:MI:SS PM' ) FROM DUAL;

SELECT TO_DATE( '980630', 'YYMMDD' ) FROM DUAL;

SELECT TO_CHAR( TO_DATE( '980630', 'YYMMDD') , 'YYYY.MM.DD') FROM DUAL;

-- practice

SELECT *
FROM EMPLOYEE;

-- 검색이 왜 안될까><?
SELECT *
FROM EMPLOYEE 
WHERE HIRE_DATE = '90/04/01'; --년 월 일만 입력해서 비교가 안되는것..

-- 비교해보기
SELECT HIRE_DATE
FROM EMPLOYEE
WHERE HIRE_DATE = TO_DATE('900401 133030', 'YYMMDD HH24MISS') ; --년월일에 시분초 데이터까지 있다면 형식을 다 입력해서 비교를 해줘야한다.

-- 그러면 어떻게 시분초를 알까..?
SELECT HIRE_DATE
FROM EMPLOYEE
WHERE TO_CHAR(HIRE_DATE, 'YYMMDD') = '900401' ; --TO_CHAR를 활용해서 포맷을 정해줘서 갖고오기

-- RR 모델 

SELECT EMP_NAME,
       HIRE_DATE,
       TO_CHAR(TO_DATE(HIRE_DATE, 'RRRR/MM/DD'), 'YYYY')
FROM EMPLOYEE
WHERE EMP_NAME = '한선기';

SELECT EMP_NAME,
       HIRE_DATE,
       TO_CHAR(TO_DATE(HIRE_DATE, 'RRRR/MM/DD'), 'RRRR')
FROM EMPLOYEE
WHERE EMP_NAME = '한선기';

--TO_NUMBER 
--CHAR를 입력받아서 NUMBER로 변환하는 함수
--숫자형이기 때문에 형식(FORMAT)이 필요없다.
--묵시적 형변환
SELECT EMP_NO,
       SUBSTR(EMP_NO, 1, 6),
       SUBSTR(EMP_NO, 8),
       SUBSTR(EMP_NO, 1, 6) + SUBSTR(EMP_NO, 8)--첫번째 데이터부터 6째자리까지 가져오겠다!
       
FROM EMPLOYEE;

SELECT EMP_NO,
       SUBSTR(EMP_NO, 1, 6),
       SUBSTR(EMP_NO, 8),
       TO_NUMBER(SUBSTR(EMP_NO, 1, 6)) + TO_NUMBER(SUBSTR(EMP_NO, 8))--첫번째 데이터부터 6째자리까지 가져오겠다!
       
FROM EMPLOYEE;

--기타 함수 NVL 
--NULL을 제거하는 함수

SELECT EMP_NAME, SALARY, NVL(BONUS_PCT, 0)
FROM EMPLOYEE
WHERE SALARY > 3500000;

-- NULL 값이 출력된다. 하라는 연산은 안하고..
SELECT EMP_NAME,
       (SALARY * 12) + ((SALARY*12) * BONUS_PCT)
FROM EMPLOYEE
WHERE SALARY > 3500000;

--그래서 NVL 함수를 이용하자 NULL 값을 0으로 대체해서 계산하시오!
SELECT EMP_NAME,
      (SALARY * 12) + ((SALARY * 12) * NVL(BONUS_PCT, 0))
FROM EMPLOYEE
WHERE SALARY > 3500000;

--DECODE 함수
--SELECT 구문으로 IF-ELSE 논리를 제한적으로 구현한 오라클 DBMS 전용 함수

SELECT EMP_NO,
       DECODE(SUBSTR(EMP_NO, 8, 1), 
       '1', '남자', '3', '남자', '여자' ) AS GENDER --성별 칼럼을 추가하고 싶다. 1일 땐 남자 2일 땐 여자
       
FROM EMPLOYEE ;

SELECT EMP_NO,
       DECODE(MOD(SUBSTR(EMP_NO, 8, 1), 2), 1, '남자', '여자') AS GENDER --성별 칼럼을 추가하고 싶다. 1일 땐 남자 2일 땐 여자
       
FROM EMPLOYEE ;

SELECT EMP_ID,
       EMP_NAME,
       MGR_ID
FROM EMPLOYEE
WHERE JOB_ID = 'J4' ;
-- null을 admin으로 채우기
SELECT EMP_ID,
       EMP_NAME,
       NVL(MGR_ID, 'ADMIN') AS MANAGER
FROM EMPLOYEE
WHERE JOB_ID = 'J4' ;
-- decode를 이용해서 admin으로 채우기
SELECT EMP_ID,
       EMP_NAME,
       DECODE (MGR_ID, NULL , 'ADMIN', MGR_ID) AS MANAGER
FROM EMPLOYEE
WHERE JOB_ID = 'J4' ;

-- 실습
-- 직원의 직급별 인상급여를 확인하고 싶다.
-- J7 -> 20% 인상
-- J6 -> 15% 인상
-- J5 -> 10% 인상
-- 나머지 직급은 인상이 없다.

SELECT EMP_NAME,
       DECODE (JOB_ID,
       'J7', SALARY * 1.2,
       'J6', SALARY * 1.15,
       'J5', SALARY * 1.1, SALARY) AS "인상 급여"
       
FROM EMPLOYEE;

SELECT EMP_NAME,
       JOB_ID,
       SALARY,
       CASE JOB_ID
         WHEN 'J7' THEN SALARY * 1.2
         WHEN 'J6' THEN SALARY * 1.15
         WHEN 'J5' THEN SALARY * 1.1
         ELSE SALARY
       END AS "인상 급여"
       
FROM EMPLOYEE;

SELECT EMP_NAME,
       JOB_ID,
       SALARY,
       CASE WHEN JOB_ID = 'J7' THEN SALARY * 1.2
       CASE WHEN JOB_ID = 'J6' THEN SALARY * 1.15
       CASE WHEN JOB_ID = 'J5' THEN SALARY * 1.1
         ELSE SALARY
       END AS "인상 급여"
FROM EMPLOYEE;

--GROUP FUNCTION (그룹함수, 집계함수)
--GROUP BY 함수와 함께 쓰인다.
--그룹 함수가 SELECT 절에 사용되면 다른 컬럼 정의는 불가
--그룹 함수는 NULL 값 제거후 연산을 하므로 주의요망
SELECT SUM(SALARY), SUM(DISTINCT SALARY), --EMP_NAME 처럼 일반 컬럼 정의는 불가능하다.
FROM EMPLOYEE;

--22건(TOTAL)의 평균이 아니라, NULL값(14개)를 제외한 평균을 구해온다.
--만약에 NULL값을 포함한 평균을 구하고 싶으면 NVL 함수를 이용해서 NULL값을 0으로 취해주고
--계산을 때리면된다.
SELECT AVG(BONUS_PCT),
ROUND( AVG(NVL(BONUS_PCT, 0)),2 ) -- ROUND ... , 2 세번째에서 반올림 후 두번째자리까지 표현
FROM EMPLOYEE;

-- MIN, MAX, COUNT -> ANY 타입을 받는다. 나머지는 숫자
SELECT MIN(SALARY), MAX(SALARY), 
       MIN(HIRE_DATE), MAX(HIRE_DATE),
       MIN(JOB_ID), MAX(JOB_ID)
FROM EMPLOYEE ;

--COUNT
--레코드의 갯수를 센다.
--NULL값을 누락시킴

SELECT COUNT(*), COUNT(JOB_ID), COUNT(DISTINCT JOB_ID)
FROM EMPLOYEE ;

-- SELECT 구문 REVIEW
SELECT [특정컬럼 |*(전체컬럼)] 표현식 | DISTINCT | AS 컬럼별칭
FROM 테이블이름 
WHERE 조건식
GROUP BY 기준컬럼
HAVING 조건식
ORDER BY 기준컬럼 ;

-- 부서번호가 50 이거나 부서번호가 존재하지 않는 사원의 이름, 급여를 조회하라
-- 높은 급여 순으로 보려면? ORDER BY [기준 컬럼][ASC|DESC]
SELECT EMP_NAME, SALARY
FROM EMPLOYEE
WHERE DEPT_ID = '50' OR DEPT_ID IS NULL
ORDER BY SALARY DESC;

-- 입사일이 03년 1월 1일 이후 입사자들의 이름, 입사일, 부서번호를 조회하라
-- 단) 부서번호가 높은순으로 정렬하고 같으면 입사일이 빠른 순서로 정렬하고 같으면 이름이 빠른 순서로 정렬한다.

SELECT EMP_NAME, HIRE_DATE, DEPT_ID
FROM EMPLOYEE
WHERE HIRE_DATE > TO_DATE('03/01/01', 'RR/MM/DD')
ORDER BY DEPT_ID DESC NULLS LAST, HIRE_DATE ASC, EMP_NAME ASC

SELECT EMP_NAME, HIRE_DATE, DEPT_ID
FROM EMPLOYEE
WHERE HIRE_DATE > TO_DATE('03/01/01', 'RR/MM/DD')
ORDER BY 3 DESC NULLS LAST , 2, 1;

SELECT EMP_NAME 이름, 
       HIRE_DATE 입사일,
       DEPT_ID 부서
FROM EMPLOYEE
WHERE HIRE_DATE > TO_DATE('03/01/01', 'RR/MM/DD')
ORDER BY 부서 DESC NULLS LAST ,입사일 , 이름;

-- GROUP BY [기준컬럼]
-- 부서별 평균급여
-- 단) GROUP BY가 정의된 칼럼에 대해선 일반 칼럼이라도 정의할 수 있다.
SELECT DEPT_ID,
       ROUND(AVG(SALARY), -5) AS "부서별 급여 평균"
FROM EMPLOYEE 
GROUP BY DEPT_ID 
ORDER BY 2 DESC;

-- 성별에 따른 급여 평균을 구한다면?
-- DECODE 사용
SELECT DECODE(SUBSTR(EMP_NO, 8, 1),
                '1', '남자', '3', '남자', '여자' ),
       AVG(SALARY)
FROM EMPLOYEE
GROUP BY DECODE(SUBSTR(EMP_NO, 8, 1),
                '1', '남자', '3', '남자', '여자' ) 
ORDER BY 2 DESC ;
-- CASE 사용
SELECT CASE SUBSTR(EMP_NO, 8, 1) 
            WHEN '1' THEN '남자'
            WHEN '3' THEN '남자'
            ELSE '여자'
            END,
            AVG(SALARY)
FROM EMPLOYEE
GROUP BY CASE SUBSTR(EMP_NO, 8, 1)
              WHEN '1' THEN '남자'
              WHEN '3' THEN '남자'
              ELSE '여자'
             END
ORDER BY 2 DESC;


