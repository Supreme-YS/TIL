--ERD �󿡼� ���� : ��ĺ�����
--ERD �󿡼� �Ǽ� : �ĺ�����
--ERD ��ǥ, ��, ���� �ľ� �ʿ�


-- DDL ( CREATE, DROP, ALTER )
-- 1. ���̺� ����(��������)

CREATE TABLE TABLE_NAME(
     COLUMN_NAME DATETYPE [DEFAULT EXPR][CONSTRAINT], --�÷� ���� ����
     COLUMN_NAME DATETYPE [DEFAULT EXPR][CONSTRAINT],
     COLUMN_NAME DATETYPE [DEFAULT EXPR][CONSTRAINT],
     COLUMN_NAME DATETYPE [DEFAULT EXPR][CONSTRAINT],
     TABLE_CONSTRAINT --���̺� ���� ����
)

DROP TABLE TEST_MEMBER; --���̺� ����

CREATE TABLE TEST_MEMBER(--���̺� ����
    ID   VARCHAR2(50), --PRIMARY KEY, --�ߺ��� ������� �ʴ� ����
    PWD  VARCHAR2(50) NOT NULL, -- �� ���� ������� �ʴ� ����
    ADDR VARCHAR2(50) DEFAULT 'SEOUL', --DEFAULT ��, �⺻������ ���ԵǴ� ��
    PRIMARY KEY(ID) --TABLE ������ �� �� �ִ� �ڸ��̸�, NOT NULL(Į����)�� �Ұ��� PRIMARY KEY(Į����)�� ����
) --#1 �÷������� ���ÿ� ������ �ִ� ���
  --#2 �÷����� �� ���̺� ���� ���� �ڸ����� Į���� ������ �� �� �ִ�.


INSERT INTO TEST_MEMBER(ID, PWD, ADDR) VALUES('YSSIM', 'YSSIM', 'SEOUL');
INSERT INTO TEST_MEMBER VALUES('YSSIM', 'YSSIM', 'SEOUL'); --PRIMARY KEY�� �����س��� ������ ������ �� �Է� �Ұ���!
INSERT INTO TEST_MEMBER VALUES('yssim', NULL, NULL); --��ҹ��ڸ� �����Ѵ�.
INSERT INTO TEST_MEMBER(ID, PWD) VALUES('ADMIN', 'YSSIM'); --��ҹ��ڸ� �����Ѵ�. 

SELECT *
FROM TEST_MEMBER;

-- 2. �������� (NOT NULL - �÷� ���� ���ุ ����, UNIQUE, PRIMARY KEY, FOREIGEN KEY, CHECK)
-- 2-1. ���������� �����ϴ� ��� : ���̺� ����, �÷� ����

CREATE TABLE TEST_MEMBER(
    ID   VARCHAR2(50) PRIMARY KEY,
    PWD  VARCHAR2(50) PRIMARY KEY,
    ADDR VARCHAR2(50) DEFAULT 'SEOUL'
) --�⺻Ű�� �ϳ����� �Ѵ�. �� ���� �⺻Ű�� ������� �ʴ´�.
  --������ �� ���� ��ƾ� �Ѵٸ�?

CREATE TABLE TEST_MEMBER(
    ID   VARCHAR2(50),
    PWD  VARCHAR2(50),
    ADDR VARCHAR2(50) DEFAULT 'SEOUL',
    PRIMARY KEY(ID, PWD) --�̷� ������ COMPOSITE �Ͽ� ���� �� �ִ�.
)
  
--���� �÷� ��ü�� PRIMARY KEY �̱� ������ �Ʒ�ó�� �Է��� �����ϴ�.
--(YSSIM , YSSIM) ����1
--(YSSIM , ADMIN) ����2
INSERT INTO TEST_MEMBER(ID, PWD, ADDR) VALUES('YSSIM', 'YSSIM', 'SEOUL');
INSERT INTO TEST_MEMBER(ID, PWD, ADDR) VALUES('YSSIM', 'ADMIN', 'SEOUL'); 

SELECT *
FROM TEST_MEMBER;


--ERD ���� �����, LOCATION ���̺��� �����Ͽ� �⺻Ű�� ���̹޴� ���ο� �ܷ� ���̺� �����.
--FK (�θ� �����ϴ� �������̰ų� NULL���� ���)
CREATE TABLE TEST_FK(
       ID      CHAR(3) PRIMARY KEY,
       NAME    VARCHAR(50) NOT NULL,
       LID     CHAR(2) REFERENCES LOCATION(LOCATION_ID)--FK �÷����� ���� ���� �÷�! ��, �θ� �����ϴ� Ű
)                                                      --LOCATION���̺��� �⺻Ű�� LOCATION_ID�� �����Ͽ� LID��� FK�� �������
INSERT INTO TEST_FK VALUES('B', 'YSSIM', 'OT') --LOCATION_ID�� �ִ� ���鸸 �Է��� �����ϱ� ������
INSERT INTO TEST_FK VALUES('S', 'SUPREME', 'A') -- Aó�� LOCATION_ID�� ���� ���� �Է��ϸ� parent key not found��� ������ �߻���Ų��.

--LOCATION ���̺� Ȯ��
SELECT *
FROM LOCATION; 
                              
--TABLE ����
DROP TABLE TEST_FK

--���̺��� �������� �����
CREATE TABLE TEST_FK(
       ID      CHAR(3) PRIMARY KEY,
       NAME    VARCHAR(50) NOT NULL,
       LID     CHAR(2),
       FOREIGN KEY(LID) REFERENCES LOCATION(LOCATION_ID)
)

INSERT INTO TEST_FK VALUES('B', 'YSSIM', 'OT')
INSERT INTO TEST_FK VALUES('S', 'SUP', 'A1')

--JOIN�غ���

SELECT LOC_DESCRIBE, ID
FROM LOCATION
RIGHT JOIN TEST_FK ON (LOCATION_ID = LID)

SELECT *
FROM TEST_FK
