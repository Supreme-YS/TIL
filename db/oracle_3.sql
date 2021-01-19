-- 함수는 SELECT, WHERE 에 적용가능
-- LENGTH() : NUMBER -> 문자의 갯수를 반환하는 함수
-- 문자열
-- CHAR(고정길이) -->    나머비 바이트 공간에 대해서는 공백으로 처리
-- VARCHAR2(가변길이)--> 나머지 바이트 공간에 대해서는 패키지 (왠만하면 해당 문자열을 사용것이 좋다)
-- 한글 1 문자 = 3 byte (예시) 엘지씨엔에스 18 byte
-- 20 - 18 = 2 
--           :
--     6  +  2 = 8 = LENGTH(CHARTYPE)
SELECT  CHARTYPE,
        LENGTH(CHARTYPE),
        VARCHARTYPE,
        LENGTH(VARCHARTYPE)        
FROM    COLUMN_LENGTH;


-- LPAD/RPAD : 문자열의 길이를 덧붙이는 함수
-- 정렬효과를 가져오기 위해서 사용하는 경우가 많다
-- EMAIL 에 30 byte를 주고 비어있는 공강은 '.' 도트로 채워준다

-- LPAD 문자열을 오른쪽으로 정렬
SELECT  EMAIL,
        LPAD(EMAIL,30,'.')
FROM    EMPLOYEE;

-- RPAD 문자열을 왼쪽으로 정렬
SELECT  EMAIL,
        RPAD(EMAIL,30,'.')
FROM    EMPLOYEE;

SELECT  EMAIL,
        RPAD(EMAIL,30,'.'),
        LPAD(EMAIL,30,''),
        LENGTH(LPAD(EMAIL,30,''))
FROM    EMPLOYEE;


-- TRIM: 문자를 제거할때 사용하는 함수
-- LTRIM : 문자열의 오른쪽을 제거 / RTRIM : 문자열의 왼쪽을 제거
-- DUAL

SELECT  LTRIM('  TEST  '),
        LENGTH(LTRIM('  TEST  ')),
        LTRIM('123123TEST','123'),  -- 문자 한칸씩 1 또는 2 또는 3 값을 찾아 제거
        LTRIM('XYZYYTEST','XYZ'),   -- 문자 한칸씩 X 또는 Y 또는 Z 값을 찾아 제거
        TRIM(LEADING  '1'  FROM 'TEST1'),       -- LTRIM 기능과 동일 - '1' 없기 때문에 삭제할 내용 X
        TRIM(TRAILING '1'  FROM '123TEST111')   -- RTRIM 기능과 동일 - 문자의 '1' 삭제
FROM    DUAL;


-- SUBSTR  : 문자 추출
SELECT  SUBSTR('This.is.a.test', 6, 2),     -- 6번째 부터 시작하여 2개의 문자를 가져온다
        SUBSTR('This.is.a.test', 6),        -- 6번째 부터 문자의 전체를 가져온다
        SUBSTR('이것은.연습입니다', 3, 4),     
        SUBSTR('TechOnTheNet', 1, 4),
        SUBSTR('TechOnTheNet', -3, 3),      -- N(-3) 부터 시작하여 Net(3) 값을 가져온다
        SUBSTR('TechOnTheNet', -6, 3),
        SUBSTR('TechOnTheNet', -8, 2)
FROM    DUAL;


-- ROUND : 지정한 자릿수에서 반올림하는 함수
SELECT  ROUND(123.315),     --> 123.315 출력
        ROUND(123.315, 0),  --> 123.315 출력
        ROUND(123.315, 1),  --> .31  에서 반올림하여 .3 으로 출력
        ROUND(123.315, -1), --> 123. 에서 반올림하여 130 으로 출력
        ROUND(123.315, 3),  
        ROUND(-123.315, 2)   --> -125.32 에서 반올림하여 -125.32 출력
FROM    DUAL;


-- TRUNC : 지정한 자릿수에서 버림하는 함수
SELECT  TRUNC(123.315),     --> 123 출력
        TRUNC(123.315, 0),  --> 123 출력
        TRUNC(123.315, 1),  --> .3 까지 유지하고 나머지 ._15는 버림
        TRUNC(123.315, -1), --> 1자리숫자를 포함한 뒷 숫자를 버림하여 130 으로 출력
        TRUNC(123.315, 3),  --> 123.315 출력
        TRUNC(-123.315, -3) --> 100자리리 숫자를 포함한 뒷 숫자를 버림하여 0 출력
FROM    DUAL;


SELECT  *
FROM    EMPLOYEE;

SELECT  SYSDATE
FROM    DUAL;

SELECT  EMP_NAME,
        HIRE_DATE,
        ADD_MONTHS(HIRE_DATE, 240)  -->  + 240월의 값 출력
FROM    EMPLOYEE;

SELECT  MONTHS_BETWEEN (SYSDATE, '21/03/14'),
        MONTHS_BETWEEN (SYSDATE, '20/03/14'),
        MONTHS_BETWEEN (SYSDATE, '21/01/19'),
        MONTHS_BETWEEN (SYSDATE, '20/11/19')
FROM    DUAL;

SELECT  EMP_NAME,
        HIRE_DATE,
        MONTHS_BETWEEN (SYSDATE, HIRE_DATE)/12 AS 근무년수
FROM    EMPLOYEE
WHERE   MONTHS_BETWEEN (SYSDATE, HIRE_DATE) > 120;


-- 문자열함수 INSTR(string, searchChar, [position, occurrence]) : 해당 문자의 인덱스번지를 리턴
--                                              옵션
-- EMAIL 컬럼 값의 '@vcc.com'문자열 중 . 앞의 문자 'c' 위치를 구한다면?

SELECT  *
FROM    EMPLOYEE ;

SELECT  EMAIL,
        INSTR(EMAIL , 'c'),
        INSTR(EMAIL , 'c', -1, 2),
        INSTR(EMAIL , 'c', INSTR(EMAIL , '.')-1)
FROM    EMPLOYEE ;

-- TO_CHAR 함수 : 데이터 타입변환 함수
-- TO_CHAR(날짜 or 숫자 , 표현형식) -> 문자

SELECT  TO_CHAR(1234, '99999'),
        TO_CHAR(1234, '09999'),
        TO_CHAR(1234, 'L9999'),
        TO_CHAR(1234, '99,999'),
        TO_CHAR(1234, '09,999'),
        TO_CHAR(1000, '9.9EEEE'),
        TO_CHAR(1234, '999')
FROM    DUAL;

SELECT  SYSDATE,
        TO_CHAR(SYSDATE, 'YYYY'),
        TO_CHAR(SYSDATE, 'YEAR'),
        TO_CHAR(SYSDATE, 'YYYY-MONTH'),
        TO_CHAR(SYSDATE, 'YYYY-MM-DD HH:MI:SS'),
        TO_CHAR(SYSDATE, 'YYYY-MM-DD Q HH:MI:SS')
FROM    DUAL;

SELECT  EMP_NAME,
        HIRE_DATE,
        TO_CHAR(HIRE_DATE, 'YYYY-MM-DD') AS "별칭",
        TO_CHAR(HIRE_DATE, 'YYYY"년" MM"월" DD"일"')
FROM    EMPLOYEE ;