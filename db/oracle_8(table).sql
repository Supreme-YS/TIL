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
)

INSERT INTO TEST_MEMBER(ID, PWD, ADDR) VALUES('YSSIM', 'YSSIM', 'SEOUL');
INSERT INTO TEST_MEMBER VALUES('YSSIM', 'YSSIM', 'SEOUL'); --PRIMARY KEY�� �����س��� ������ ������ �� �Է� �Ұ���!
INSERT INTO TEST_MEMBER VALUES('yssim', NULL, NULL); --��ҹ��ڸ� �����Ѵ�.
INSERT INTO TEST_MEMBER(ID, PWD) VALUES('ADMIN', 'YSSIM'); --��ҹ��ڸ� �����Ѵ�. 

SELECT *
FROM TEST_MEMBER;

-- 2. �������� (NOT NULL - �÷� ���� ���ุ ����, UNIQUE, PRIMARY KEY, FOREIGEN KEY, CHECK)
-- 2-1. ���������� �����ϴ� ��� : ���̺� ����, �÷� ����

