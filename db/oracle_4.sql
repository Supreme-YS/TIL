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


