-- SELECT ����
SELECT [Ư���÷� |*(��ü�÷�)] ǥ���� | DISTINCT | AS �÷���Ī
FROM ���̺��̸� 
WHERE ���ǽ�
GROUP BY �����÷�
HAVING ���ǽ�
ORDER BY �����÷� ;
--��ü�÷� EMPLOYEE
SELECT *
FROM EMPLOYEE ;

--Ư���÷�
SELECT EMP_NAME 
       EMP_NO   
FROM EMPLOYEE ;

--��Ī
--���ǻ��� : �ݵ�� ���� ����, ���� Ư����ȣ(��������)�� ���� ""
--AS Ű����� ������ �����ϴ�. �ؿ� �μ���ȣó��
SELECT EMP_NAME AS �̸�,
       EMP_NO   AS �ֹι�ȣ,
       SALARY   AS "�޿�(��)" --DOUBLE QUOTATION ���
       DEPT_ID �μ���ȣ
FROM EMPLOYEE ;

--DISTINCT : ���� �ߺ��� ������ �� ����ϴ� Ű����
SELECT DISTINCT JOB_ID
FROM EMPLOYEE ;

--ǥ����
--�÷����� ���� ������ ������ �ۼ��� �� �ִ�.
--NULL ���� ���ԵǸ� �������� NULL�� ���´�.
SELECT EMP_NAME AS �����,
       SALARY AS �޿�,
       (SALARY + (SALARY*BONUS_PCT)) * 12 AS ���� 
FROM EMPLOYEE;

--�����÷�
--' SINGLE QUOTATION = DATA�� �ǹ��Ѵ�.
--" DOUBLE QUOTATION = Ű���带 �ǹ��Ѵ�.
SELECT EMP_ID,
       EMP_NAME,
       '����' AS �ٹ�����
FROM EMPLOYEE ;

SELECT [Ư���÷� |*(��ü�÷�)] ǥ���� | DISTINCT | AS �÷���Ī
FROM ���̺��̸� 
WHERE

--�μ���ȣ�� 90���� ������� ������ Ȯ���ϰ� �ʹٸ�?
--WHERE������ �̿��Ͽ� ���� ����(Ư�� ����)
--������(WHERE)���� �����ڸ� ����� �� �ִ�. =(EQUAL)�� ������� �ǹ�
SELECT *
FROM EMPLOYEE 
WHERE DEPT_ID = 90;

--�μ��ڵ尡 90�̰� �޿��� 2000000 ���� ���� �޴� ����� �̸�, �μ��ڵ�, �޿��� ��ȸ
SELECT EMP_NAME, DEPT_ID, SALARY
FROM EMPLOYEE
WHERE DEPT_ID = 90 AND SALARY > 2000000;

--�μ��ڵ尡 90�̰ų� 20���� ����� �̸�, �μ��ڵ�, �޿��� ��ȸ
SELECT EMP_NAME, DEPT_ID, SALARY
FROM EMPLOYEE
WHERE DEPT_ID = 90 OR DEPT_ID = 20 ;

--'XXX���� ������ XXXXX�� �Դϴ�'
--||- ���Ῥ����
--[ �÷� || �÷� ] [ �÷� || '���ڿ� ]

SELECT EMP_ID || EMP_NAME || SALARY
FROM EMPLOYEE ;

SELECT EMP_ID ||'�� ������' || SALARY ||'�� �Դϴ�.' 
FROM EMPLOYEE ;

--OPERATOR =, >, >=, <, <=, !=
SELECT EMP_NAME, SALARY
FROM EMPLOYEE
WHERE SALARY BETWEEN 3500000 AND 5500000 ;

SELECT EMP_NAME, SALARY
FROM EMPLOYEE
WHERE SALARY >= 3500000
AND SALARY <= 5500000;

SELECT EMP_NAME, SALARY
FROM EMPLOYEE
WHERE EMP_NAME LIKE '��%';

SELECT EMP_NAME, SALARY
FROM EMPLOYEE
WHERE PHONE LIKE '___9_______';

SELECT *
FROM EMPLOYEE;

--Email ID �� '_'�� �ڸ��� 3�ڸ��� ������ �̸��� �̸���
--_(UNDER)�� �ڸ����� �ǹ��մϴ�. 
--%(PERCENT)�� �ϳ� �Ǵ� ����
SELECT EMP_NAME, EMAIL
FROM EMPLOYEE
WHERE EMAIL LIKE '___\_%' ESCAPE '\' ; -- ���ϵ�ī�幮�ڰ� �ƴ� ���ڷ� �������� �ϱ� ����, ESCAPE ������ Ȱ���Ѵ�.

--�达 ���� �ƴ� ������ �̸��� �޿��� ��ȸ
SELECT EMP_NAME, SALARY 
FROM EMPLOYEE
WHERE EMP_NAME NOT LIKE '��%' ;

--�μ��� ���µ��� �ұ��ϰ� ���ʽ��� ���޹޴� ������ �̸�, �μ�, ���ʽ��� ��ȸ�Ѵٸ�?
--IS NULL, IS NOT NULL
FROM EMPLOYEE
SELECT EMP_NAME, DEPT_ID, BONUS_PCT
WHERE DEPT_ID IS NULL AND BONUS_PCT IS NOT NULL;
