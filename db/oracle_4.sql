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
       NVL(MGR_ID, 'admin')
FROM EMPLOYEE
WHERE JOB_ID = 'J4' ;
-- decode를 이용해서 admin으로 채우기
SELECT EMP_ID,
       EMP_NAME,
       DECODE (MGR_ID, NULL , 'ADMIN', MGR_ID) AS MANAGER
FROM EMPLOYEE
WHERE JOB_ID = 'J4' ;









