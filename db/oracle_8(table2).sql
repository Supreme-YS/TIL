SELECT *
FROM LOCATION ;


CREATE TABLE TEST_COMPOSITE_PK (
    ID     VARCHAR2(50),
    NAME   VARCHAR2(50),
    SALARY NUMBER CHECK (SALARY > 0),--0���� ū SALARY ���� �ްڴ�. ���� X 
                                     --NUMBER(7,2) : 7�ڸ��� NUMBER �� �� 2�ڸ��� �Ǽ����� ���ڴ�.
    GENDER CHAR(1) CHECK (GENDER IN ('M', 'F')), --M �Ǵ� F ���� �ްڴ�. 
    PRIMARY KEY (ID, NAME)
)

INSERT INTO TEST_COMPOSITE_PK VALUES('YSSIM', '�ɿ���', -100, 'M') --check constraint (HR.SYS_C007085) violated �߻�/����Է�
INSERT INTO TEST_COMPOSITE_PK VALUES('YSSIM', '�ɿ���', 100, '?') --check constraint (HR.SYS_C007086) violated �߻�/M�Ǵ�F���Է�
INSERT INTO TEST_COMPOSITE_PK VALUES('YSSIM', '�ɿ���', 100, 'm') --check constraint (HR.SYS_C007086) violated �߻�/��ҹ��ڱ���
INSERT INTO TEST_COMPOSITE_PK VALUES('YSSIM', '�ɿ���', 100, 'M') --�����Է�

SELECT *
FROM TEST_COMPOSITE_PK

DROP TABLE TEST_COMPOSITE_FK;

CREATE TABLE TEST_COMPOSITE_FK(
    PID      VARCHAR2(50) PRIMARY KEY,
    ID       VARCHAR2(50) ,
    NAME     VARCHAR2(50) ,
    FOREIGN KEY (ID, NAME) REFERENCES TEST_COMPOSITE_PK (ID, NAME)
)

INSERT INTO TEST_COMPOSITE_FK VALUES('P001', 'YSSIM', '�ɿ���')

SELECT *
FROM TEST_COMPOSITE_FK

----------------------PRACTICE

CREATE TABLE TEST_S1(
    SID    VARCHAR(50) PRIMARY KEY,
    PHONE  NUMBER
)

CREATE TABLE TEST_S2(
    TID    VARCHAR(50) PRIMARY KEY,
    NAME   VARCHAR(50) DEFAULT 'DEFAULT'
)

CREATE TABLE TEST_CHILD(
    CID    VARCHAR(50) PRIMARY KEY,
    SID    VARCHAR(50) REFERENCES TEST_S1(SID),
    TID    VARCHAR(50) REFERENCES TEST_S2(TID)
)

SELECT *
FROM TEST_S1

INSERT INTO TEST_S1 VALUES('SID', 01038227541)
INSERT INTO TEST_S2 VALUES('TID', '�ɿ���')
INSERT INTO TEST_CHILD VALUES('CID', 'SID', 'TID')


--VIEW
--CREATE [OR REPLACE] VIEW VIEW_NAME(ALIAS) AS SUBQUERY ;

CREATE OR REPLACE VIEW V_EMP(NAME, DEPT)
AS SELECT EMP_NAME, DEPT_ID 
   FROM EMPLOYEE
   WHERE DEPT_ID = '90';

SELECT *
FROM V_EMP ;

-- ������ '���'�� ������ �̸�, �μ��̸�, ������ ���� V_EMP_DEPT_JOB �並 �ۼ��Ͻÿ�

CREATE OR REPLACE VIEW V_EMP_DEPT_JOB("�̸�", "�μ��̸�", "����")
AS SELECT EMP_NAME, DEPT_NAME, JOB_TITLE
   FROM EMPLOYEE
   JOIN JOB USING(JOB_ID)
   JOIN DEPARTMENT USING(DEPT_ID)
   WHERE JOB_TITLE = '���' ;

SELECT *
FROM V_EMP_DEPT_JOB

-- VIEW ����
DROP VIEW V_EMP_DEPT_JOB ;

--SEQUENCE ��ü
CREATE SEQUENCE TEST_SEQ
START WITH   300
INCREMENT BY 2
MAXVALUE     310
NOCYCLE
NOCACHE ;

SELECT TEST_SEQ.NEXTVAL FROM DUAL;
SELECT TEST_SEQ.CURRVAL FROM DUAL;
DROP SEQUENCE TEST_SEQ

--18 ����
--TOP-N �м� : ���ǿ� �´� �ֻ��� ���ڵ� N���� �ĺ��ؾ��ϴ� ��� ����ϴ� ���� ���
--���� 1. ���� 2. ROWNUM 3. �ο��� ������� �ʿ��� ��ŭ �ĺ�


--�μ��� ��ձ޿����� ���� �޿��� ���� ����� ���� �� ����̸�, �޿��� ��ȸ�Ϸ��� �Ѵ�.
--��ձ޿��� ���� 3�ڸ����� �ø�
--FROM ������ SUBQUERY(INLINE VIEW)�� �̿��ؼ� �ۼ�

--���μ�������
( SELECT EMP_NAME, SALARY
  FROM ( SELECT DEPT_ID,  ROUND(AVG(SALARY), -3) AS DAVG
         FROM EMPLOYEE 
         GROUP BY DEPT_ID ) INVIEW --INLINE VIEW�ϱ� ��Ī�� �׳� INVIEW��� ��.
  JOIN   EMPLOYEE E ON (E.DEPT_ID = INVIEW.DEPT_ID)
  WHERE  SALARY > INVIEW.DAVG 
--ORDER BY 3 DESC; --�ε����� ���õǹ�����.
  ORDER BY 2 DESC )


--��������!
SELECT DEPT_ID,  ROUND(AVG(SALARY), -3) AS DAVG
FROM EMPLOYEE 
GROUP BY DEPT_ID

--����ó�� ���̴� ������ ���������� �ѹ� �� Ȱ��

SELECT ROWNUM, EMP_NAME, SALARY
FROM ( SELECT EMP_NAME, SALARY
       FROM ( SELECT DEPT_ID,  ROUND(AVG(SALARY), -3) AS DAVG
              FROM EMPLOYEE 
              GROUP BY DEPT_ID ) INVIEW
       JOIN   EMPLOYEE E ON (E.DEPT_ID = INVIEW.DEPT_ID)
       WHERE  SALARY > INVIEW.DAVG 
       ORDER BY 2 DESC )
WHERE ROWNUM = 1;

-- RANK() - WITHIN, OVER
SELECT *
FROM  ( SELECT EMP_NAME, SALARY,
               RANK() OVER(ORDER BY SALARY DESC) AS R
        FROM EMPLOYEE)
WHERE R <= 5;

-- DML (INSERT, UPDATE, DELETE )
-- UPDATE ����(����)
UPDATE TABLE_NAME
SET    [COLUMN_NAME = VALUE , ]
WHERE  CONDITION;
--DELETE ���ڵ� ����, DROP ���̺� ����
DELETE FROM TABLE_NAME
WHERE  CONDITION;

CREATE TABLE TEST_DML(
       ID       VARCHAR2(50) PRIMARY KEY,
       PWD      VARCHAR2(50) NOT NULL,
       NAME     VARCHAR2(50) NOT NULL,
       SALARY   NUMBER       CHECK( SALARY > 0 ),
       MARRIAGE CHAR(1)      CHECK( MARRIAGE IN ('Y', 'N'))
)

INSERT INTO TEST_DML VALUES('YSSIM', 'YSSIM', '�ɿ���', 100, 'N')
INSERT INTO TEST_DML VALUES('SUPREME', 'ADMIN', '������', 100, 'Y')

UPDATE TEST_DML
SET    MARRIAGE = 'N', SALARY = 200
--WHERE  ID = 'YSSIM'; --WHERE ������ ����ؾ߸� ��ü �� �����Ͱ� �ٲ��� �ʴ´�. Ư�� ���� ������Ʈ �� �Ŵϱ�.

DELETE
FROM TEST_DML  --�̷��� ���� ��ü �����Ͱ� ���ư���.
WHERE ID = 'SUPREME' ; --Ư�� ���ڵ� ������ ���� WHERE ���� ����ؼ� ������ �Է������ �Ѵ�.

SELECT *
FROM TEST_DML;


