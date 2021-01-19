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


