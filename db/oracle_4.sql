SELECT EMP_NAME,
       HIRE_DATE,
       TO_CHAR(HIRE_DATE , 'YYYY "��" MM "��" DD "��"'),
       SUBSTR(HIRE_DATE , 1, 2) || '��' ||
       SUBSTR(HIRE_DATE , 4, 2) || '��' ||
       SUBSTR(HIRE_DATE , 7, 2) || '��' AS �Ի���
FROM EMPLOYEE;

-- SUBSTR(����|��¥)
-- TO_DATE �� ���ڿ� �������� �޴´�. �տ� ������ ��Ȯ�� ���˿� �´� ������ ��������� �Ѵ�.
SELECT TO_DATE('20210119', 'YYYYMMDD') 
FROM DUAL;

-- TO_CHAR ��¥�� ���ڸ� �޾Ƽ� ���ڸ� ����� ��
-- �Ʒ� �ڵ�� ������ �߻�
SELECT TO_CHAR('20210119', 'YYYY, MON')
FROM DUAL;
-- TO_DATE�� �ٲ��ְ� TO_CHAR�� �־���� ���� �߻� X

SELECT TO_CHAR( TO_DATE('20210119', 'YYYYMMDD'), 'YYYY, MON')
FROM DUAL;

SELECT TO_DATE( '041030 143000', 'YYMMDD HH24MISS' ) FROM DUAL ;

SELECT TO_CHAR( TO_DATE( '041030 143000', 'YYMMDD HH24MISS' ), 'DD-MON-YY HH:MI:SS PM' ) FROM DUAL;

SELECT TO_DATE( '980630', 'YYMMDD' ) FROM DUAL;

SELECT TO_CHAR( TO_DATE( '980630', 'YYMMDD') , 'YYYY.MM.DD') FROM DUAL;

-- practice

SELECT *
FROM EMPLOYEE;

-- �˻��� �� �ȵɱ�><?
SELECT *
FROM EMPLOYEE 
WHERE HIRE_DATE = '90/04/01'; --�� �� �ϸ� �Է��ؼ� �񱳰� �ȵǴ°�..

-- ���غ���
SELECT HIRE_DATE
FROM EMPLOYEE
WHERE HIRE_DATE = TO_DATE('900401 133030', 'YYMMDD HH24MISS') ; --����Ͽ� �ú��� �����ͱ��� �ִٸ� ������ �� �Է��ؼ� �񱳸� ������Ѵ�.

-- �׷��� ��� �ú��ʸ� �˱�..?
SELECT HIRE_DATE
FROM EMPLOYEE
WHERE TO_CHAR(HIRE_DATE, 'YYMMDD') = '900401' ; --TO_CHAR�� Ȱ���ؼ� ������ �����༭ �������

-- RR �� 

SELECT EMP_NAME,
       HIRE_DATE,
       TO_CHAR(TO_DATE(HIRE_DATE, 'RRRR/MM/DD'), 'YYYY')
FROM EMPLOYEE
WHERE EMP_NAME = '�Ѽ���';

SELECT EMP_NAME,
       HIRE_DATE,
       TO_CHAR(TO_DATE(HIRE_DATE, 'RRRR/MM/DD'), 'RRRR')
FROM EMPLOYEE
WHERE EMP_NAME = '�Ѽ���';

--TO_NUMBER 
--CHAR�� �Է¹޾Ƽ� NUMBER�� ��ȯ�ϴ� �Լ�
--�������̱� ������ ����(FORMAT)�� �ʿ����.
--������ ����ȯ
SELECT EMP_NO,
       SUBSTR(EMP_NO, 1, 6),
       SUBSTR(EMP_NO, 8),
       SUBSTR(EMP_NO, 1, 6) + SUBSTR(EMP_NO, 8)--ù��° �����ͺ��� 6°�ڸ����� �������ڴ�!
       
FROM EMPLOYEE;

SELECT EMP_NO,
       SUBSTR(EMP_NO, 1, 6),
       SUBSTR(EMP_NO, 8),
       TO_NUMBER(SUBSTR(EMP_NO, 1, 6)) + TO_NUMBER(SUBSTR(EMP_NO, 8))--ù��° �����ͺ��� 6°�ڸ����� �������ڴ�!
       
FROM EMPLOYEE;

--��Ÿ �Լ� NVL 
--NULL�� �����ϴ� �Լ�

SELECT EMP_NAME, SALARY, NVL(BONUS_PCT, 0)
FROM EMPLOYEE
WHERE SALARY > 3500000;

-- NULL ���� ��µȴ�. �϶�� ������ ���ϰ�..
SELECT EMP_NAME,
       (SALARY * 12) + ((SALARY*12) * BONUS_PCT)
FROM EMPLOYEE
WHERE SALARY > 3500000;

--�׷��� NVL �Լ��� �̿����� NULL ���� 0���� ��ü�ؼ� ����Ͻÿ�!
SELECT EMP_NAME,
      (SALARY * 12) + ((SALARY * 12) * NVL(BONUS_PCT, 0))
FROM EMPLOYEE
WHERE SALARY > 3500000;

--DECODE �Լ�
--SELECT �������� IF-ELSE ���� ���������� ������ ����Ŭ DBMS ���� �Լ�

SELECT EMP_NO,
       DECODE(SUBSTR(EMP_NO, 8, 1), 
       '1', '����', '3', '����', '����' ) AS GENDER --���� Į���� �߰��ϰ� �ʹ�. 1�� �� ���� 2�� �� ����
       
FROM EMPLOYEE ;

SELECT EMP_NO,
       DECODE(MOD(SUBSTR(EMP_NO, 8, 1), 2), 1, '����', '����') AS GENDER --���� Į���� �߰��ϰ� �ʹ�. 1�� �� ���� 2�� �� ����
       
FROM EMPLOYEE ;

SELECT EMP_ID,
       EMP_NAME,
       MGR_ID
FROM EMPLOYEE
WHERE JOB_ID = 'J4' ;
-- null�� admin���� ä���
SELECT EMP_ID,
       EMP_NAME,
       NVL(MGR_ID, 'ADMIN') AS MANAGER
FROM EMPLOYEE
WHERE JOB_ID = 'J4' ;
-- decode�� �̿��ؼ� admin���� ä���
SELECT EMP_ID,
       EMP_NAME,
       DECODE (MGR_ID, NULL , 'ADMIN', MGR_ID) AS MANAGER
FROM EMPLOYEE
WHERE JOB_ID = 'J4' ;

-- �ǽ�
-- ������ ���޺� �λ�޿��� Ȯ���ϰ� �ʹ�.
-- J7 -> 20% �λ�
-- J6 -> 15% �λ�
-- J5 -> 10% �λ�
-- ������ ������ �λ��� ����.

SELECT EMP_NAME,
       DECODE (JOB_ID,
       'J7', SALARY * 1.2,
       'J6', SALARY * 1.15,
       'J5', SALARY * 1.1, SALARY) AS "�λ� �޿�"
       
FROM EMPLOYEE;

SELECT EMP_NAME,
       JOB_ID,
       SALARY,
       CASE JOB_ID
         WHEN 'J7' THEN SALARY * 1.2
         WHEN 'J6' THEN SALARY * 1.15
         WHEN 'J5' THEN SALARY * 1.1
         ELSE SALARY
       END AS "�λ� �޿�"
       
FROM EMPLOYEE;

SELECT EMP_NAME,
       JOB_ID,
       SALARY,
       CASE WHEN JOB_ID = 'J7' THEN SALARY * 1.2
       CASE WHEN JOB_ID = 'J6' THEN SALARY * 1.15
       CASE WHEN JOB_ID = 'J5' THEN SALARY * 1.1
         ELSE SALARY
       END AS "�λ� �޿�"
FROM EMPLOYEE;

--GROUP FUNCTION (�׷��Լ�, �����Լ�)
--GROUP BY �Լ��� �Բ� ���δ�.
--�׷� �Լ��� SELECT ���� ���Ǹ� �ٸ� �÷� ���Ǵ� �Ұ�
--�׷� �Լ��� NULL �� ������ ������ �ϹǷ� ���ǿ��
SELECT SUM(SALARY), SUM(DISTINCT SALARY), --EMP_NAME ó�� �Ϲ� �÷� ���Ǵ� �Ұ����ϴ�.
FROM EMPLOYEE;

--22��(TOTAL)�� ����� �ƴ϶�, NULL��(14��)�� ������ ����� ���ؿ´�.
--���࿡ NULL���� ������ ����� ���ϰ� ������ NVL �Լ��� �̿��ؼ� NULL���� 0���� �����ְ�
--����� ������ȴ�.
SELECT AVG(BONUS_PCT),
ROUND( AVG(NVL(BONUS_PCT, 0)),2 ) -- ROUND ... , 2 ����°���� �ݿø� �� �ι�°�ڸ����� ǥ��
FROM EMPLOYEE;

-- MIN, MAX, COUNT -> ANY Ÿ���� �޴´�. �������� ����
SELECT MIN(SALARY), MAX(SALARY), 
       MIN(HIRE_DATE), MAX(HIRE_DATE),
       MIN(JOB_ID), MAX(JOB_ID)
FROM EMPLOYEE ;

--COUNT
--���ڵ��� ������ ����.
--NULL���� ������Ŵ

SELECT COUNT(*), COUNT(JOB_ID), COUNT(DISTINCT JOB_ID)
FROM EMPLOYEE ;

-- SELECT ���� REVIEW
SELECT [Ư���÷� |*(��ü�÷�)] ǥ���� | DISTINCT | AS �÷���Ī
FROM ���̺��̸� 
WHERE ���ǽ�
GROUP BY �����÷�
HAVING ���ǽ�
ORDER BY �����÷� ;

-- �μ���ȣ�� 50 �̰ų� �μ���ȣ�� �������� �ʴ� ����� �̸�, �޿��� ��ȸ�϶�
-- ���� �޿� ������ ������? ORDER BY [���� �÷�][ASC|DESC]
SELECT EMP_NAME, SALARY
FROM EMPLOYEE
WHERE DEPT_ID = '50' OR DEPT_ID IS NULL
ORDER BY SALARY DESC;

-- �Ի����� 03�� 1�� 1�� ���� �Ի��ڵ��� �̸�, �Ի���, �μ���ȣ�� ��ȸ�϶�
-- ��) �μ���ȣ�� ���������� �����ϰ� ������ �Ի����� ���� ������ �����ϰ� ������ �̸��� ���� ������ �����Ѵ�.

SELECT EMP_NAME, HIRE_DATE, DEPT_ID
FROM EMPLOYEE
WHERE HIRE_DATE > TO_DATE('03/01/01', 'RR/MM/DD')
ORDER BY DEPT_ID DESC NULLS LAST, HIRE_DATE ASC, EMP_NAME ASC

SELECT EMP_NAME, HIRE_DATE, DEPT_ID
FROM EMPLOYEE
WHERE HIRE_DATE > TO_DATE('03/01/01', 'RR/MM/DD')
ORDER BY 3 DESC NULLS LAST , 2, 1;

SELECT EMP_NAME �̸�, 
       HIRE_DATE �Ի���,
       DEPT_ID �μ�
FROM EMPLOYEE
WHERE HIRE_DATE > TO_DATE('03/01/01', 'RR/MM/DD')
ORDER BY �μ� DESC NULLS LAST ,�Ի��� , �̸�;

-- GROUP BY [�����÷�]
-- �μ��� ��ձ޿�
-- ��) GROUP BY�� ���ǵ� Į���� ���ؼ� �Ϲ� Į���̶� ������ �� �ִ�.
SELECT DEPT_ID,
       ROUND(AVG(SALARY), -5) AS "�μ��� �޿� ���"
FROM EMPLOYEE 
GROUP BY DEPT_ID 
ORDER BY 2 DESC;

-- ������ ���� �޿� ����� ���Ѵٸ�?
-- DECODE ���
SELECT DECODE(SUBSTR(EMP_NO, 8, 1),
                '1', '����', '3', '����', '����' ),
       AVG(SALARY)
FROM EMPLOYEE
GROUP BY DECODE(SUBSTR(EMP_NO, 8, 1),
                '1', '����', '3', '����', '����' ) 
ORDER BY 2 DESC ;
-- CASE ���
SELECT CASE SUBSTR(EMP_NO, 8, 1) 
            WHEN '1' THEN '����'
            WHEN '3' THEN '����'
            ELSE '����'
            END,
            AVG(SALARY)
FROM EMPLOYEE
GROUP BY CASE SUBSTR(EMP_NO, 8, 1)
              WHEN '1' THEN '����'
              WHEN '3' THEN '����'
              ELSE '����'
             END
ORDER BY 2 DESC;


