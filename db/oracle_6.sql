--JOIN
SELECT EMP_NAME, DEPT_NAME
FROM EMPLOYEE E,
     DEPARTMENT D
WHERE E.DEPT_ID = D.DEPT_ID ;

--JOIN - ANSI 표준
--USING을 사용
--부모의 외래키와 자식의 기본키 이름이 동일할 때만 USING 사용
SELECT EMP_NAME, DEPT_NAME
FROM EMPLOYEE
JOIN DEPARTMENT USING(DEPT_ID) ;
--ON은 연산을 할 수 있는데 모호성 문제가 발생할 수 있으니 별칭 필요하다.
SELECT EMP_NAME, DEPT_NAME
FROM EMPLOYEE E
JOIN DEPARTMENT D ON(E.DEPT_ID = D.DEPT_ID);
--기본키의 이름과 외래키
SELECT EMP_NAME, DEPT_NAME, LOC_DESCRIBE
FROM EMPLOYEE E
JOIN DEPARTMENT D USING(DEPT_ID) --외래키와 기본키 이름이 동일하니까 USING 사용가능
JOIN LOCATION L ON(L.LOCATION_ID = D.LOC_ID) ;
--OUTER JOIN (LEFT, RIGHT, FULL)
SELECT EMP_NAME, DEPT_NAME
FROM EMPLOYEE
LEFT JOIN DEPARTMENT USING(DEPT_ID) ;

SELECT EMP_NAME, DEPT_NAME
FROM EMPLOYEE
RIGHT JOIN DEPARTMENT USING(DEPT_ID) ;

SELECT EMP_NAME, DEPT_NAME
FROM EMPLOYEE
FULL JOIN DEPARTMENT USING(DEPT_ID) ;

SELECT *
FROM SAL_GRADE ;

--ORACLE 방식
SELECT EMP_NAME,
       SALARY,
       SLEVEL
FROM EMPLOYEE, SAL_GRADE
WHERE SALARY BETWEEN LOWEST AND HIGHEST ;

--연관성이 없어도 JOIN이 가능함
SELECT EMP_NAME,
       SALARY,
       SLEVEL
FROM EMPLOYEE
JOIN SAL_GRADE ON (SALARY BETWEEN LOWEST AND HIGHEST);

SELECT E.EMP_NAME, M.EMP_NAME, S.EMP_NAME
FROM EMPLOYEE E
LEFT JOIN EMPLOYEE M ON(E.MGR_ID = M.EMP_ID)
LEFT JOIN EMPLOYEE S ON(M.MGR_ID = S.EMP_ID)
ORDER BY 1;

--JOIN 예시 내가 작성한 답. 틀림
SELECT E.EMP_NAME, E.SALARY, JOB_TITLE, SLEVEL, DEPT_NAME, LOC_DESCRIBE, COUNTRY_NAME
FROM EMPLOYEE , DEPARTMENT , LOCATION , COUNTRY , JOB , SAL_GRADE 
JOIN DEPARTMENT D USING(DEPT_NAME)
JOIN LOCATION L ON(L.LOCATION_ID = D.LOC_ID)
JOIN COUNTRY C ON (C.COUNTRY_NAME = L.COUNTRY_ID)
JOIN JOB J ON (J.JOB_TITLE = E.JOB_ID)
JOIN SAL_GRADE S ON (S.SLEVEL = J.JOB_ID);

