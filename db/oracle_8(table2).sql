SELECT *
FROM LOCATION ;


CREATE TABLE TEST_COMPOSITE_PK (
    ID     VARCHAR2(50),
    NAME   VARCHAR2(50),
    SALARY NUMBER CHECK (SALARY > 0),--0보다 큰 SALARY 값을 받겠다. 음수 X 
                                     --NUMBER(7,2) : 7자리의 NUMBER 값 중 2자리는 실수형을 쓰겠다.
    GENDER CHAR(1) CHECK (GENDER IN ('M', 'F')), --M 또는 F 값만 받겠다. 
    PRIMARY KEY (ID, NAME)
)

INSERT INTO TEST_COMPOSITE_PK VALUES('YSSIM', '심영석', -100, 'M') --check constraint (HR.SYS_C007085) violated 발생/양수입력
INSERT INTO TEST_COMPOSITE_PK VALUES('YSSIM', '심영석', 100, '?') --check constraint (HR.SYS_C007086) violated 발생/M또는F값입력
INSERT INTO TEST_COMPOSITE_PK VALUES('YSSIM', '심영석', 100, 'm') --check constraint (HR.SYS_C007086) violated 발생/대소문자구분
INSERT INTO TEST_COMPOSITE_PK VALUES('YSSIM', '심영석', 100, 'M') --정상입력

SELECT *
FROM TEST_COMPOSITE_PK

DROP TABLE TEST_COMPOSITE_FK;

CREATE TABLE TEST_COMPOSITE_FK(
    PID      VARCHAR2(50) PRIMARY KEY,
    ID       VARCHAR2(50) ,
    NAME     VARCHAR2(50) ,
    FOREIGN KEY (ID, NAME) REFERENCES TEST_COMPOSITE_PK (ID, NAME)
)

INSERT INTO TEST_COMPOSITE_FK VALUES('P001', 'YSSIM', '심영석')

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
INSERT INTO TEST_S2 VALUES('TID', '심영석')
INSERT INTO TEST_CHILD VALUES('CID', 'SID', 'TID')





















