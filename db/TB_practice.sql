--TB 실습
--#1 춘 기술대학교의 학과 이름과 계열을 표시하시오. 단, 출력 헤더는 "학과 명", "계열" 으로 표시하도록 한다.

SELECT DEPARTMENT_NAME AS 학과명,
       CATEGORY AS 계열
FROM TB_DEPARTMENT ;

--#2 학과의 학과 정원을 다음과 같은 형태로 화면에 출력한다.
--국어국문학과의 정원은 20명 입니다.
--영어영문학과의 정원은 36명 입니다.

SELECT DEPARTMENT_NAME || '의 정원은' || CAPACITY || '입니다.' AS "학과별 정원"
FROM TB_DEPARTMENT;

--#3 "국어국문학과" 에 다니는 여학생 중 현재 휴학중인 여학생을 찾아달라는 요청이 들어왔다. 누구인가? (국문학과의 '학과코드'는 학과 테이블(TB_DEPARTMENT)을 조회해서 찾아 내도록 하자)
SELECT STUDENT_NAME
FROM TB_STUDENT
WHERE DEPARTMENT_NO = 001 AND ABSENCE_YN = 'Y' AND STUDENT_SSN LIKE '_______2%';

--#4 도서관에서 대출 도서 장기 연체자 들을 찾아 이름을 게시하고자 한다. 그 대상자들의 학번이 다음과 같을 때 대상자들을 찾는 적절한 SQL 구문을 작성하시오.
--A513079, A513090, A513091, A513110, A513119

SELECT STUDENT_NAME 
FROM TB_STUDENT
WHERE STUDENT_NO IN ('A513079', 'A513090', 'A513091', 'A513110', 'A513119') ORDER BY STUDENT_NAME DESC

--#5 입학정원이 20명 이상 30명 이하인 학과들의 학과 이름과 계열을 출력하시오.
SELECT DEPARTMENT_NAME, CATEGORY 
FROM TB_DEPARTMENT
WHERE CAPACITY BETWEEN 20 AND 30 ;

--#6