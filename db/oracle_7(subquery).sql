-- SELECT ����
SELECT [ Ư���÷� | * (��ü�÷�) | ǥ����(SELECT - (SUBQUERY)) | DISTINCT | AS �÷���Ī
FROM [ ���̺��̸� | JOIN | SELECT - (SUBQUERY) ]
WHERE ���ǽ� | SELECT - (SUBQUERY)
GROUP BY �����÷� | SELECT - (SUBQUERY)
HAVING ���ǽ�
ORDER BY �����÷�;
-- SCALAR SUBQUERY , INLINE VIEW ��� �Ѵ�. ǥ����, FROM ��, WHERE ��, GROUP BY ���� �� �� �ִ�.

--SET OPERATOR
--�� �� �̻��� ���� ����� �ϳ��� ���ս�Ű�� ��������
--SELECT ���� ����ϴ� �÷� ������ ������ Ÿ���� ��� �������� �����ؾ� ��.

-- UNION : �ߺ��� ����� �� ���� ǥ��
SELECT EMP_ID,
       ROLE_NAME
FROM EMPLOYEE_ROLE
UNION
SELECT EMP_ID,
       ROLE_NAME
FROM ROLE_HISTORY;

--UNION ALL : �ߺ��� ����� ǥ��
SELECT EMP_ID,
       ROLE_NAME
FROM EMPLOYEE_ROLE
UNION ALL
SELECT EMP_ID,
       ROLE_NAME
FROM ROLE_HISTORY;

--INTERSECT : ������
SELECT EMP_ID,
       ROLE_NAME
FROM EMPLOYEE_ROLE
INTERSECT
SELECT EMP_ID,
       ROLE_NAME
FROM ROLE_HISTORY;

--MINUS : ������
SELECT EMP_ID,
       ROLE_NAME
FROM EMPLOYEE_ROLE
MINUS
SELECT EMP_ID,
       ROLE_NAME
FROM ROLE_HISTORY;

--����1�� ����2�� select ����� �ݵ�� ����(�÷� ����, ������ Ÿ��) �ؾ� �ϹǷ� �̸� ���� dummy column�� ����� �� �ִ�.
SELECT EMP_NAME,
       JOB_ID,
       HIRE_DATE
FROM EMPLOYEE
WHERE DEPT_ID = '20'
UNION
SELECT DEPT_NAME,
       DEPT_ID,
       NULL
FROM DEPARTMENT
WHERE DEPT_ID = '20';

