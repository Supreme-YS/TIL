SELECT EMP_NAME,
       HIRE_DATE,
       TO_CHAR(HIRE_DATE , 'YYYY "��" MM "��" DD "��"'),
       SUBSTR(HIRE_DATE , 1, 2) || '��' ||
       SUBSTR(HIRE_DATE , 4, 2) || '��' ||
       SUBSTR(HIRE_DATE , 7, 2) || '��' AS �Ի���
FROM EMPLOYEE;

-- SUBSTR(����|��¥)

SELECT TO_DATE(SYSDATE , 'YYYYMMDD')
FROM DUAL;