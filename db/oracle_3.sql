-- �Լ��� SELECT, WHERE �� ���밡��
-- LENGTH() : NUMBER -> ������ ������ ��ȯ�ϴ� �Լ�
-- ���ڿ�
-- CHAR(��������) -->    ���Ӻ� ����Ʈ ������ ���ؼ��� �������� ó��
-- VARCHAR2(��������)--> ������ ����Ʈ ������ ���ؼ��� ��Ű�� (�ظ��ϸ� �ش� ���ڿ��� ������ ����)
-- �ѱ� 1 ���� = 3 byte (����) ������������ 18 byte
-- 20 - 18 = 2 
--           :
--     6  +  2 = 8 = LENGTH(CHARTYPE)
SELECT  CHARTYPE,
        LENGTH(CHARTYPE),
        VARCHARTYPE,
        LENGTH(VARCHARTYPE)        
FROM    COLUMN_LENGTH;


-- LPAD/RPAD : ���ڿ��� ���̸� �����̴� �Լ�
-- ����ȿ���� �������� ���ؼ� ����ϴ� ��찡 ����
-- EMAIL �� 30 byte�� �ְ� ����ִ� ������ '.' ��Ʈ�� ä���ش�

-- LPAD ���ڿ��� ���������� ����
SELECT  EMAIL,
        LPAD(EMAIL,30,'.')
FROM    EMPLOYEE;

-- RPAD ���ڿ��� �������� ����
SELECT  EMAIL,
        RPAD(EMAIL,30,'.')
FROM    EMPLOYEE;

SELECT  EMAIL,
        RPAD(EMAIL,30,'.'),
        LPAD(EMAIL,30,''),
        LENGTH(LPAD(EMAIL,30,''))
FROM    EMPLOYEE;


-- TRIM: ���ڸ� �����Ҷ� ����ϴ� �Լ�
-- LTRIM : ���ڿ��� �������� ���� / RTRIM : ���ڿ��� ������ ����
-- DUAL

SELECT  LTRIM('  TEST  '),
        LENGTH(LTRIM('  TEST  ')),
        LTRIM('123123TEST','123'),  -- ���� ��ĭ�� 1 �Ǵ� 2 �Ǵ� 3 ���� ã�� ����
        LTRIM('XYZYYTEST','XYZ'),   -- ���� ��ĭ�� X �Ǵ� Y �Ǵ� Z ���� ã�� ����
        TRIM(LEADING  '1'  FROM 'TEST1'),       -- LTRIM ��ɰ� ���� - '1' ���� ������ ������ ���� X
        TRIM(TRAILING '1'  FROM '123TEST111')   -- RTRIM ��ɰ� ���� - ������ '1' ����
FROM    DUAL;


-- SUBSTR  : ���� ����
SELECT  SUBSTR('This.is.a.test', 6, 2),     -- 6��° ���� �����Ͽ� 2���� ���ڸ� �����´�
        SUBSTR('This.is.a.test', 6),        -- 6��° ���� ������ ��ü�� �����´�
        SUBSTR('�̰���.�����Դϴ�', 3, 4),     
        SUBSTR('TechOnTheNet', 1, 4),
        SUBSTR('TechOnTheNet', -3, 3),      -- N(-3) ���� �����Ͽ� Net(3) ���� �����´�
        SUBSTR('TechOnTheNet', -6, 3),
        SUBSTR('TechOnTheNet', -8, 2)
FROM    DUAL;


-- ROUND : ������ �ڸ������� �ݿø��ϴ� �Լ�
SELECT  ROUND(123.315),     --> 123.315 ���
        ROUND(123.315, 0),  --> 123.315 ���
        ROUND(123.315, 1),  --> .31  ���� �ݿø��Ͽ� .3 ���� ���
        ROUND(123.315, -1), --> 123. ���� �ݿø��Ͽ� 130 ���� ���
        ROUND(123.315, 3),  
        ROUND(-123.315, 2)   --> -125.32 ���� �ݿø��Ͽ� -125.32 ���
FROM    DUAL;


-- TRUNC : ������ �ڸ������� �����ϴ� �Լ�
SELECT  TRUNC(123.315),     --> 123 ���
        TRUNC(123.315, 0),  --> 123 ���
        TRUNC(123.315, 1),  --> .3 ���� �����ϰ� ������ ._15�� ����
        TRUNC(123.315, -1), --> 1�ڸ����ڸ� ������ �� ���ڸ� �����Ͽ� 130 ���� ���
        TRUNC(123.315, 3),  --> 123.315 ���
        TRUNC(-123.315, -3) --> 100�ڸ��� ���ڸ� ������ �� ���ڸ� �����Ͽ� 0 ���
FROM    DUAL;


SELECT  *
FROM    EMPLOYEE;

SELECT  SYSDATE
FROM    DUAL;

SELECT  EMP_NAME,
        HIRE_DATE,
        ADD_MONTHS(HIRE_DATE, 240)  -->  + 240���� �� ���
FROM    EMPLOYEE;

SELECT  MONTHS_BETWEEN (SYSDATE, '21/03/14'),
        MONTHS_BETWEEN (SYSDATE, '20/03/14'),
        MONTHS_BETWEEN (SYSDATE, '21/01/19'),
        MONTHS_BETWEEN (SYSDATE, '20/11/19')
FROM    DUAL;

SELECT  EMP_NAME,
        HIRE_DATE,
        MONTHS_BETWEEN (SYSDATE, HIRE_DATE)/12 AS �ٹ����
FROM    EMPLOYEE
WHERE   MONTHS_BETWEEN (SYSDATE, HIRE_DATE) > 120;


-- ���ڿ��Լ� INSTR(string, searchChar, [position, occurrence]) : �ش� ������ �ε��������� ����
--                                              �ɼ�
-- EMAIL �÷� ���� '@vcc.com'���ڿ� �� . ���� ���� 'c' ��ġ�� ���Ѵٸ�?

SELECT  *
FROM    EMPLOYEE ;

SELECT  EMAIL,
        INSTR(EMAIL , 'c'),
        INSTR(EMAIL , 'c', -1, 2),
        INSTR(EMAIL , 'c', INSTR(EMAIL , '.')-1)
FROM    EMPLOYEE ;

-- TO_CHAR �Լ� : ������ Ÿ�Ժ�ȯ �Լ�
-- TO_CHAR(��¥ or ���� , ǥ������) -> ����

SELECT  TO_CHAR(1234, '99999'),
        TO_CHAR(1234, '09999'),
        TO_CHAR(1234, 'L9999'),
        TO_CHAR(1234, '99,999'),
        TO_CHAR(1234, '09,999'),
        TO_CHAR(1000, '9.9EEEE'),
        TO_CHAR(1234, '999')
FROM    DUAL;

SELECT  SYSDATE,
        TO_CHAR(SYSDATE, 'YYYY'),
        TO_CHAR(SYSDATE, 'YEAR'),
        TO_CHAR(SYSDATE, 'YYYY-MONTH'),
        TO_CHAR(SYSDATE, 'YYYY-MM-DD HH:MI:SS'),
        TO_CHAR(SYSDATE, 'YYYY-MM-DD Q HH:MI:SS')
FROM    DUAL;

SELECT  EMP_NAME,
        HIRE_DATE,
        TO_CHAR(HIRE_DATE, 'YYYY-MM-DD') AS "��Ī",
        TO_CHAR(HIRE_DATE, 'YYYY"��" MM"��" DD"��"')
FROM    EMPLOYEE ;