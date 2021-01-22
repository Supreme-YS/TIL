--Total Review

--SELECT
--Ű����, ���̺� �̸�, �÷� �̸��� ��/�ҹ��ڸ� �������� �ʴ´�.
SELECT DEPT_ID, DEPT_NAME
FROM DEPARTMENT;

select dept_id, dept_name
from department;

--������ ����/�鿩���⸦ �ϸ� �������� �������� ������ ��������.
--#1
SELECT DEPT_ID, DEPT_NAME FROM DEPARTMENT;
--#2
SELECT DEPT_ID, DEPT_NAME
FROM   DEPARTMENT;
--#3
SELECT DEPT_ID,
       DEPT_NAME
FROM   DEPARTMENT;

--Ű����, ���̺� �̸�, �÷� �̸��� ���ڷ� �ٿ� ���ų� �и��� �� ����.
--������ ; SEMI-COLON �̳� / SLASH �� ����ȴ�

--�������� ����� �̸��� ��ȸ�ϴ� SELECT ����
SELECT EMP_ID,
       EMP_NAME
FROM EMPLOYEE;
--�������� ��� ������ ��ȸ�ϴ� SELECT ����
SELECT *
FROM EMPLOYEE;
--Į�� ���� ���� ��� �����ѳ� ����� ��ȸ�� �� �ִ�.
SELECT EMP_NAME,
       SALARY * 12,
       ( SALARY + ( SALARY * BONUS_PCT ) ) * 12
FROM EMPLOYEE ;
--��Ī�� �� �� �ִ�. AS ���
SELECT EMP_NAME,
       SALARY * 12 AS "1�� �޿�",
       ( SALARY + ( SALARY * BONUS_PCT ) ) * 12 AS �Ѽҵ�
FROM EMPLOYEE ;

--LITERAL
--���Ƿ� ������ ���ڿ�
--SELECT ���� ����ϸ� ���̺� �����ϴ� ������ó�� ����� �� �ִ�.
SELECT EMP_ID,
       EMP_NAME,
       '����' AS �ٹ�����
FROM EMPLOYEE ;
--DISTINCT : �÷��� ���Ե� �ߺ� ���� �ѹ����� ǥ���ϰ��� �� �� ���
SELECT DISTINCT DEPT_ID, JOB_ID
FROM EMPLOYEE;

--WHERE ���ǽ�
--DEPT_ID ���� 90�� �ุ RESULT SET�� ����
SELECT EMP_NAME AS �̸�,
       DEPT_ID AS �μ�
FROM EMPLOYEE
WHERE DEPT_ID = '90';
--�޿��� 4000000 ���� ���� ���� �̸��� �޿� ��ȸ
SELECT EMP_NAME AS �̸�,
       SALARY AS �޿�
FROM EMPLOYEE
WHERE SALARY > 4000000;
--�μ��ڵ尡 '90'�̰� �޿��� 2000000���� ���� �޴� �μ��� �̸��� �μ� �ڵ�, �޿� ��ȸ
SELECT EMP_NAME AS �̸�,
       DEPT_ID AS �μ�,
       SALARY AS �޿�
FROM  EMPLOYEE
WHERE DEPT_ID = '90'
AND   SALARY > 2000000;
--'90'�μ��� '20' �μ��� �Ҽӵ� �μ��� �̸�, �μ� �ڵ�, �޿� ��ȸ
SELECT EMP_NAME AS �̸�,
       DEPT_ID AS �μ�,
       SALARY AS �޿�
FROM EMPLOYEE
WHERE DEPT_ID = '90'
OR DEPT_ID = '20'

--���� ������ ||
--���� �����ڸ� ����Ͽ� ���� �÷��� �ϳ��� �÷��� ��ó�� �����ϰų�, �÷��� ���ͷ��� ������ �� �ִ�.
--�÷��� �÷��� ������ ���
SELECT EMP_ID || EMP_NAME || SALARY
FROM EMPLOYEE ;
--�÷��� ���ͷ��� ������ ���
SELECT EMP_NAME ||'�� ������'||SALARY||'�� �Դϴ�.'
FROM EMPLOYEE;

--�� ������
--���� ���� ���� ���� ����� �ϳ��� �� ���(TRUE, FALSE, NULL)�� ����� �ش�.

--�� ������ (BETWEEN AND)
--ǥ���� ������ ���踦 ���ϱ� ���� ���, �� ����� �� ��� ���� �ϳ��� �ȴ�. ���ϴ� �� �÷� ��/ǥ������ ���� ������ ������ Ÿ���̾�� �Ѵ�.
--BETWEEN AND : ���Ϸ��� ���� ������ ������ ���ԵǴ� TRUE�� ��ȯ�ϴ� ������
--�޿��� 3,500,000�� ���� ���� �ް� 5,500,000�� ���� ���� �޴� ���� �̸��� �޿� ��ȸ
--#1
SELECT EMP_NAME,
       SALARY
FROM EMPLOYEE
WHERE SALARY BETWEEN 3500000 AND 5500000;
--#2
SELECT EMP_NAME,
       SALARY
FROM EMPLOYEE
WHERE SALARY >= 3500000
AND   SALARY <= 5500000;

--�񱳿����� (LIKE)
--���Ϸ��� ���� ������ Ư�� ������ ������Ű�� TRUE�� ��ȯ
--���� ������ ���� ���ϵ�ī�� ���� ���
--( % (PERCENTAGE): % �κп��� ���� ���ڿ�(0�� �̻�)�� �ִٴ� �ǹ� )
--( _ (UNDERSCORE): _ �κп��� ���� 1���� �ִٴ� �ǹ�
--'��'�� ���� ���� ���� �̸��� �޿� ��ȸ
SELECT EMP_NAME, SALARY
FROM   EMPLOYEE
WHERE  EMP_NAME LIKE '��%';
--9000�� �� 4�ڸ� ������ ��ȭ��ȣ�� ����ϴ� ���� ��ȭ��ȣ ��ȸ
SELECT EMP_NAME, PHONE
FROM EMPLOYEE
WHERE PHONE LIKE '___9_______';
--EMAIL ID �� '_'�� �ڸ��� 3�ڸ��� ���� ��ȸ
--�Ʒ� �ڵ�� ���ϵ�ī�� ��ü�� �����ͷ� ó������ ���� ��
SELECT EMP_NAME,
       EMAIL
FROM EMPLOYEE
WHERE EMAIL LIKE '____%';
--ESCAPE ���� ����Ͽ� ���ϵ�ī�带 �����ͷ� ó���� ���
SELECT EMP_NAME,
       EMAIL
FROM EMPLOYEE
WHERE EMAIL LIKE '___\_%' ESCAPE '\' ;
--ESCAPE OPTION�� ����ϴ� ���ڴ� ���� ������ �����ϴ�.
SELECT EMP_NAME,
       EMAIL
FROM EMPLOYEE
WHERE EMAIL LIKE '___#_%' ESCAPE '#' ;
--�� ������ - NOT LIKE
--'��'�� ���� �ƴ� ���� �̸��� �޿� ��ȸ
--#1
SELECT EMP_NAME,
       SALARY
FROM EMPLOYEE
WHERE EMP_NAME NOT LIKE '��%';
--#2
SELECT EMP_NAME,
       SALARY
FROM EMPLOYEE
WHERE NOT EMP_NAME LIKE '��%';
--�� ������ - IS NULL / IS NOT NULL
--NULL ���θ� ���ϴ� ������
--�����ڵ� ���� �μ� ��ġ�� ���� ���� ���� �̸� ��ȸ
SELECT EMP_NAME, MGR_ID, DEPT_ID
FROM EMPLOYEE
WHERE MGR_ID IS NULL 
AND   DEPT_ID IS NULL ;
--�μ���ġ�� ���� �ʾ������� ���ʽ��� ���޹޴� ���� �̸� ��ȸ
SELECT EMP_NAME, DEPT_ID, BONUS_PCT
FROM EMPLOYEE
WHERE DEPT_ID IS NULL
AND   BONUS_PCT IS NOT NULL;
--�� ������ - IN
--���Ϸ��� �� ��Ͽ� ��ġ�ϴ� ���� ������ TRUE�� ��ȯ�ϴ� ������
--60�� �μ��� 90�� �μ������� �̸�, �μ��ڵ�, �޿� ��ȸ
--#1
SELECT EMP_NAME, DEPT_ID, SALARY
FROM EMPLOYEE
WHERE DEPT_ID IN ( '60', '90' );
--#2
SELECT EMP_NAME, DEPT_ID, SALARY
FROM EMPLOYEE
WHERE DEPT_ID = '60'
OR    DEPT_ID = '90';

--������ �켱����
--���� �����ڸ� �Բ� ����� �� �켱 ������ ����ؾ� �Ѵ�. () �� ����ϸ� ������ �켱 ������ ������ �� �ִ�.
SELECT EMP_NAME, SALARY, DEPT_ID
FROM EMPLOYEE
WHERE DEPT_ID = '20'
OR DPET_ID = '90'
AND SALARY > 3000000 ;
--���� ���� �ڵ�� AND �����ڰ� ���� ó���Ǿ� "�޿��� 3000000������ ���� �޴� 90�� �μ��� �Ǵ� 20�� �μ���"�� ��ȸ�ϴ� �ǹ̰� �ȴ�.
--���� () ó���� ���� OR�� ���� ó���ǵ��� ó�� ������ ����
SELECT EMP_NAME, SALARY, DEPT_ID
FROM EMPLOYEE
WHERE (DEPT_ID = '20' 
OR DEPT_ID = '90')
AND SALARY > 3000000;


--------------SELECT ADDITIONAL--------------
--���ڿ� �Լ� LENGTH
--�־��� �÷� ��/���ڿ� ����(���� ����)�� ��ȯ�ϴ� �Լ�
SELECT LENGTH(CHARTYPE),
       LENGTH(VARCHARTYPE)
FROM COLUMN_LENGTH;

--LENGTHB : �־��� �÷� ��/���ڿ� ����(BYTE)�� ��ȯ�ϴ� �Լ�
SELECT LENGTHB(CHARTYPE),
       LENGTHB(VARCHARTYPE)
FROM COLUMN_LENGTH;

--INSTR : ã�� ���ڿ��� ������ ��ġ���� ������ ȸ����ŭ ��Ÿ�� ���� ��ġ�� ��ȯ�ϴ� �Լ�
--#1
SELECT EMAIL,
       INSTR( EMAIL, 'c', -1, 2) ��ġ
FROM   EMPLOYEE;
--#2
SELECT EMAIL,
       INSTR( EMAIL, 'c', INSTR( EMAIL,'.' ) -1) ��ġ
FROM EMPLOYEE;

--�ֿ� ���� �� �Լ� - ���ڿ� �Լ� LPAD/RPAD
--�־��� �÷�/���ڿ��� ������ ������ ����/�����ʿ� ���ٿ� ���� N�� ���ڿ��� ��ȯ�ϴ� �Լ�
--EMAIL �÷� ���ʿ� '.'�� ���ٿ� ���̸� 20���� ���߽ÿ�
SELECT EMAIL AS ����������,
       LENGTH(EMAIL) AS ��������,
       LPAD(EMAIL, 20, '.') AS ������,
       LENGTH(LPAD(EMAIL, 20, '.')) AS �������
FROM EMPLOYEE;
--EMAIL �÷� �����ʿ� '.'�� ���ٿ� ���̸� 20���� ���߽ÿ�
SELECT EMAIL AS ����������,
       LENGTH(EMAIL) AS ��������,
       RPAD(EMAIL, 20, '.') AS ������,
       LENGTH(RPAD(EMAIL, 20, '.')) AS �������
FROM EMPLOYEE;

--�ֿ� ���� �� �Լ� - ���ڿ� �Լ� LTRIM/RTRIM
--�־��� �÷�/���ڿ��� ����/�����ʿ��� ������ STR�� ���Ե� ��� ���ڸ� ������ �������� ��ȯ�ϴ� �Լ�
--������ �����ϴ� �ǹ̰� �ƴϴ�.
SELECT LTRIM('===TECH', '=') FROM DUAL;
SELECT RTRIM('TECH===', '=') FROM DUAL;

--�ֿ� ���� �� �Լ� - ���ڿ� �Լ� TRIM
--�־��� �÷�/���ڿ��� ��/��/���ʿ� �ִ� ������ ���ڸ� ������ �������� ��ȯ�ϴ� �Լ�
SELECT TRIM('==TECH==') FROM DUAL;
SELECT TRIM('=' FROM '==TECH==') FROM DUAL; --TECH ���
SELECT TRIM(LEADING '=' FROM '==TECH==') FROM DUAL; --TECH==���
SELECT TRIM(TRAILING '=' FROM '==TECH==') FROM DUAL; --==TECH ���
SELECT TRIM(BOTH '=' FROM '==TECH==') FROM DUAL; --TECH���

--�ֿ� ���� �� �Լ� - ���ڿ� �Լ� SUBSTR
--�־��� �÷�/���ڿ����� ������ ��ġ���� ������ ���� ��ŭ�� ���ڿ��� �߶󳻾� ��ȯ�ϴ� �Լ�
SELECT SUBSTR('This?is?a?test', 6, 2) FROM DUAL; --6��° ���ڸ� �������� 2�� ���
SELECT SUBSTR('This?is?a?test', 6) FROM DUAL; --6��° ���ڸ� �������� ������ ���
SELECT SUBSTR('�̰���?�����Դϴ�', 3, 4) FROM DUAL; --3��° ���ڸ� �������� 4�� ���
SELECT SUBSTR('TechOnTheNet', 1, 4) FROM DUAL;
SELECT SUBSTR('TechOnTheNet', -3, 3) FROM DUAL; --�ڿ��� 3��°���� 3�� Net ���
SELECT SUBSTR('TechOnTheNet', -6, 3) FROM DUAL; --�ڿ��� 6��°���� 3�� TheNet ���
SELECT SUBSTR('TechOnTheNet', -8, 2) FROM DUAL; --�ڿ��� 8��°���� 2�� On ���

--�ֿ� ���� �� �Լ� - ���� �Լ� ROUND
--������ �ڸ������� �ݿø� �ϴ� �Լ�
SELECT ROUND(125.315) FROM DUAL;
SELECT ROUND(125.315, 0) FROM DUAL;
SELECT ROUND(125.315, 1) FROM DUAL; --�Ҽ��� ��°�ڸ����� �ݿø�
SELECT ROUND(125.315, -1) FROM DUAL; --���� ù°�ڸ����� �ݿø�
SELECT ROUND(125.315, 3) FROM DUAL; --�Ҽ��� ��°�ڸ����� �ݿø�
SELECT ROUND(-125.315, 2) FROM DUAL;

--�ֿ� ���� �� �Լ� - ���� �Լ� TRUNC
--������ �ڸ������� �����ϴ� �Լ�
SELECT TRUNC(125.315) FROM DUAL;
SELECT TRUNC(125.315, 0) FROM DUAL;
SELECT TRUNC(125.315, 1) FROM DUAL; --��°�ڸ����� ����
SELECT TRUNC(125.315, -1) FROM DUAL;
SELECT TRUNC(125.315, 3) FROM DUAL;
SELECT TRUNC(-125.315, -3) FROM DUAL;

--�ֿ� ���� �� �Լ� - ��¥ �Լ� SYSDATE
--������ �������� ���� ��¥�� �ð��� ǥ���ϴ� �Լ�
SELECT SYSDATE
FROM DUAL;

--�ֿ� ���� �� �Լ� - ��¥ �Լ� ADD_MONTH
--������ ��ŭ�� �� ���� ���� ��¥�� ��ȯ�ϴ� �Լ�
--���� ���� �Ի��� �������� �ٹ��� �� 20���� �Ǵ� ���ڸ� ��ȸ�Ͻÿ�
SELECT EMP_NAME,
       HIRE_DATE,
       ADD_MONTHS( HIRE_DATE, 240)
FROM EMPLOYEE;

--�ֿ� ���� �� �Լ� - ��¥ �Լ� MONTHS_BETWEEN
--������ �� ��¥ ������ �� ���� ��ȯ�ϴ� �Լ�
SELECT MONTHS_BETWEEN( '09/01/01', '09/03/14' ) FROM DUAL;
SELECT MONTHS_BETWEEN( '09/07/01', '09/03/14' ) FROM DUAL;
SELECT MONTHS_BETWEEN( '09/03/01', '09/03/01' ) FROM DUAL;
SELECT MONTHS_BETWEEN( '09/08/02', '09/06/02' ) FROM DUAL;
--2010�� 1�� 1�� �������� �Ի����� 10���� ���� �������� �ٹ���� ��ȸ
SELECT EMP_NAME,
       HIRE_DATE,
       ROUND(MONTHS_BETWEEN('10/01/01', HIRE_DATE) / 12) AS �ٹ����
FROM EMPLOYEE
WHERE MONTHS_BETWEEN('10/01/01', HIRE_DATE) > 120 ;

--�ֿ� ���� �� �Լ� - ������ Ÿ�� ��ȯ
--������ Ÿ�Կ� ���� ����� �� �ִ� ��ȯ �Լ��� �ٸ�
-- ��ȣ Ÿ�� ��ȯ�� ���� �ʴ� ������ Ÿ�� ����