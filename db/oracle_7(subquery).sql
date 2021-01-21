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

-- UNION�� ����Ͽ� 50�� �μ����� ������ �������� �����Ͽ� ǥ���ϰ� �ʹٸ�?
-- NULL �� �κа� �ƴ� �� ���� �κ��� ����� DUMMY COLUMN�� Ȱ���ؼ� ��������!
SELECT EMP_ID,
       EMP_NAME,
       '����' AS ����
FROM EMPLOYEE
WHERE MGR_ID IS NOT NULL AND DEPT_ID = '50'
UNION
SELECT EMP_ID,
       EMP_NAME,
       '������' AS ����
FROM EMPLOYEE
WHERE MGR_ID IS NULL AND DEPT_ID = '50'
ORDER BY 3 ; --UNION �� ���̺� ����

-- ����(JOB_TITLE)�� �븮 �Ǵ� ��� ���������� ��ȸ(�̸�, ����)

SELECT EMP_NAME,
       JOB_TITLE
FROM EMPLOYEE
JOIN JOB USING(JOB_ID)
WHERE JOB_TITLE = '�븮'
UNION
SELECT EMP_NAME, JOB_TITLE
FROM EMPLOYEE
JOIN JOB USING(JOB_ID)
WHERE JOB_TITLE = '���'
ORDER BY 2;
-- �̷��Ե� �����ϴ�.
SELECT EMP_NAME, JOB_TITLE
FROM EMPLOYEE
JOIN JOB USING(JOB_ID)
WHERE JOB_TITLE IN ('�븮', '���');

--SUBQUERY
--�Ϲ����� SQL ������ ���� (���� ������ �����ϴ� ���� �ƴ�)
--SELECT, FROM, WHERE, HAVING �� ��� ��� ����
--���������� ()�� ��� ǥ��
--������������ ; �� ������� ����
--������ ���� �����ڸ� �����ؼ� ���

--�����༭������ : ���� �� ��ȯ, ���� �� �� ������ ���
--�����༭������ : ���� �� ��ȯ, ���� �� �� ������(IN, ANY, ALL ��) ���



--���¿��� �̸��� �̿��Ͽ�
--������ �����ϰ�, ���¿����� �޿��� ���� ����� �̸�, ����, �޿��� ��ȸ
--������ �������� ��ģ��
SELECT EMP_NAME,
       JOB_ID,
       SALARY
FROM EMPLOYEE
WHERE JOB_ID = ( SELECT JOB_ID
                 FROM EMPLOYEE
                 WHERE EMP_NAME = '���¿�' )
AND SALARY > ( SELECT SALARY 
               FROM EMPLOYEE
               WHERE EMP_NAME = '���¿�' ) ;
               
--������ ���������� ���� ������!
SELECT SALARY 
FROM EMPLOYEE
WHERE EMP_NAME = '���¿�';
--������ ���������� ���� ������!
SELECT JOB_ID
FROM EMPLOYEE
WHERE EMP_NAME = '���¿�';


--�ּ� �޿��� �޴� ����� �̸�, ����, �޿��� ��ȸ�϶�
--1. �ּұ޿�Ȯ��
--2. �˻�
SELECT EMP_NAME, JOB_ID, SALARY
FROM EMPLOYEE
WHERE SALARY = (SELECT MIN(SALARY)
                FROM EMPLOYEE);

--������ ��������
SELECT MIN(SALARY)
FROM EMPLOYEE

-- �μ��� �޿� ������ ���� ���� �μ��� �̸�, �޿� ������ ��ȸ�϶�
--�������� �����
SELECT DEPT_NAME, SUM(SALARY)
FROM EMPLOYEE
JOIN DEPARTMENT USING(DEPT_ID)
GROUP BY DEPT_NAME
HAVING SUM(SALARY) = (SELECT MAX(SUM(SALARY))
                        FROM EMPLOYEE
                        GROUP BY DEPT_ID)
--�������� �����
SELECT MAX(SUM(SALARY))
FROM EMPLOYEE
GROUP BY DEPT_ID;


--IN, NOT IN, ANY, ALL �����ڸ� ������ ������������ ����� �� �ִ�.

SELECT EMP_NAME, JOB_ID, SALARY
FROM EMPLOYEE
WHERE SALARY IN ( SELECT MIN(SALARY)
                    FROM EMPLOYEE
                    GROUP BY DEPT_ID) ;

SELECT EMP_ID,
       EMP_NAME,
       '������' AS ����
FROM EMPLOYEE
WHERE EMP_ID IN (SELECT MGR_ID FROM EMPLOYEE )
UNION
SELECT EMP_ID,
       EMP_NAME,
       '����' AS ����
FROM EMPLOYEE
WHERE EMP_ID NOT IN ( SELECT MGR_ID FROM EMPLOYEE
                      WHERE MGR_ID IS NOT NULL) --������ ������������ NOT IN�� ����� �� NULL ���� ����������Ѵ�. �������� ������ ��ü�� NULL ������ ������ ������..

--�� ���� �ڵ带 �ٸ� ���(UNION�� ������� �ʰ�) ���� �����Ѵٸ�?
--MGR_ID ������ ����, ������ ���(DECODE, CASE~END)
--#0 DECODE ���
SELECT EMP_ID,
       EMP_NAME,
       DECODE(MGR_ID, NULL , '������', '���') AS ����
FROM EMPLOYEE
       
--#1 CASE ~ WHEN ���
SELECT EMP_ID,
       EMP_NAME,
       CASE WHEN EMP_ID IN (SELECT MGR_ID FROM EMPLOYEE) THEN '������' ELSE '����' END
FROM EMPLOYEE
--#2 CASE
SELECT EMP_ID,
       EMP_NAME,
       CASE
           WHEN MGR_ID IS NOT NULL THEN '����'
       ELSE
           '������'
       END AS ����
FROM EMPLOYEE



-- ANY�� ALL��
-- * > ANY �ּҰ����� ū
-- 2100000 ���� ū
SELECT EMP_NAME,
       SALARY
FROM EMPLOYEE
JOIN JOB USING (JOB_ID)
WHERE JOB_TITLE = '�븮'
AND SALARY > ANY 
                (SELECT SALARY
                FROM EMPLOYEE
                JOIN JOB USING (JOB_ID)
                WHERE JOB_TITLE = '����');

-- * < ANY �ִ밪���� ����
-- 2600000 ���� ����
SELECT EMP_NAME,
       SALARY
FROM EMPLOYEE
JOIN JOB USING (JOB_ID)
WHERE JOB_TITLE = '�븮'
AND SALARY < ANY 
                (SELECT SALARY
                FROM EMPLOYEE
                JOIN JOB USING (JOB_ID)
                WHERE JOB_TITLE = '����');

-- * > ALL �񱳴�� �� �ִ밪���� ū
-- 2600000 ���� ū
SELECT EMP_NAME,
       SALARY
FROM EMPLOYEE
JOIN JOB USING (JOB_ID)
WHERE JOB_TITLE = '�븮'
AND SALARY > ALL 
                (SELECT SALARY
                FROM EMPLOYEE
                JOIN JOB USING (JOB_ID)
                WHERE JOB_TITLE = '����');

-- * < ALL �񱳴�� �� �ּҰ����� ����
-- 2100000 ���� ����
SELECT EMP_NAME,
       SALARY
FROM EMPLOYEE
JOIN JOB USING (JOB_ID)
WHERE JOB_TITLE = '�븮'
AND SALARY < ALL
                (SELECT SALARY
                FROM EMPLOYEE
                JOIN JOB USING (JOB_ID)
                WHERE JOB_TITLE = '����');


















