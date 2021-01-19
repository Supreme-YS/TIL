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
       NVL(MGR_ID, 'admin')
FROM EMPLOYEE
WHERE JOB_ID = 'J4' ;
-- decode�� �̿��ؼ� admin���� ä���
SELECT EMP_ID,
       EMP_NAME,
       DECODE (MGR_ID, NULL , 'ADMIN', MGR_ID) AS MANAGER
FROM EMPLOYEE
WHERE JOB_ID = 'J4' ;









