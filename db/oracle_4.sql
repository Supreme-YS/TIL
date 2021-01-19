SELECT EMP_NAME,
       HIRE_DATE,
       TO_CHAR(HIRE_DATE , 'YYYY "년" MM "월" DD "일"'),
       SUBSTR(HIRE_DATE , 1, 2) || '년' ||
       SUBSTR(HIRE_DATE , 4, 2) || '월' ||
       SUBSTR(HIRE_DATE , 7, 2) || '일' AS 입사일
FROM EMPLOYEE;

-- SUBSTR(문자|날짜)

SELECT TO_DATE(SYSDATE , 'YYYYMMDD')
FROM DUAL;