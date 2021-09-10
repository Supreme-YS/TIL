SELECT EMP_NAME, SALARY
FROM EMPLOYEE
WHERE DEPT_ID = '50'
OR DEPT_ID IS NULL
ORDER BY SALARY DESC;

SELECT EMP_NAME, HIRE_DATE, DEPT_ID
FROM EMPLOYEE
WHERE HIRE_DATE > TO_DATE('20030101', 'YYYYMMDD')
ORDER BY DEPT_ID DESC, HIRE_DATE, EMP_NAME;

--SELECT ������ AS�� ����� ��Ī�� �̿��Ͽ� ORDER BY �������� ������ �� �ִ�.
SELECT EMP_NAME AS �̸�,
       HIRE_DATE AS �Ի���,
       DEPT_ID AS �μ��ڵ�
FROM EMPLOYEE
WHERE HIRE_DATE > TO_DATE('20030101', 'YYYYMMDD')
ORDER BY �μ��ڵ� DESC, �Ի���, �̸�;

--SELECT ���� ����� ������ ǥ�ð� �����ϴ�.
SELECT EMP_NAME AS �̸�,
       HIRE_DATE AS �Ի���,
       DEPT_ID AS �μ��ڵ�
FROM EMPLOYEE
WHERE HIRE_DATE > TO_DATE('20030101', 'YYYYMMDD')
ORDER BY 3 DESC, 2, 1;

--GROUP BY
--��Ī�̳� �÷� ��� ������ ����� �� ����.
--�Ʒ� ������ ������ �߻� -> EMP_NAME�� GROUP BY ������ ���ǰ� ���� ����.
SELECT EMP_NAME, DEPT_ID, COUNT(*)
FROM EMPLOYEE
GROUP BY DEPT_ID;
--��������
SELECT EMP_NAME, DEPT_ID, COUNT(*)
FROM EMPLOYEE
GROUP BY EMP_NAME, DEPT_ID;
--HAVING
--�׷�ȭ �� �����Ϳ� ���� �׷� �Լ� �������� ����
SELECT DEPT_ID, SUM(SALARY)
FROM EMPLOYEE
GROUP BY DEPT_ID
HAVING SUM(SALARY) > 9000000;
--* WHERE ������ �׷� �Լ��� ����� �� ����. WHERE�� �࿡ ���� �����̱� ������..
SELECT DEPT_ID, SUM(SALARY)
FROM EMPLOYEE
WHERE SUM(SALARY) > 9000000;
GROUP BY DEPT_ID