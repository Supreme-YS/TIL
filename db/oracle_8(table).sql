--ERD 상에서 점선 : 비식별관계
--ERD 상에서 실선 : 식별관계
--ERD 도표, 선, 관계 파악 필요


-- DDL ( CREATE, DROP, ALTER )
-- 1. 테이블 생성(제약조건)

CREATE TABLE TABLE_NAME(
     COLUMN_NAME DATETYPE [DEFAULT EXPR][CONSTRAINT], --컬럼 레벨 제약
     COLUMN_NAME DATETYPE [DEFAULT EXPR][CONSTRAINT],
     COLUMN_NAME DATETYPE [DEFAULT EXPR][CONSTRAINT],
     COLUMN_NAME DATETYPE [DEFAULT EXPR][CONSTRAINT],
     TABLE_CONSTRAINT --테이블 레벨 제약
)

DROP TABLE TEST_MEMBER; --테이블 삭제

CREATE TABLE TEST_MEMBER(--테이블 생성
    ID   VARCHAR2(50), --PRIMARY KEY, --중복값 허용하지 않는 조건
    PWD  VARCHAR2(50) NOT NULL, -- 널 값을 허용하지 않는 조건
    ADDR VARCHAR2(50) DEFAULT 'SEOUL', --DEFAULT 즉, 기본값으로 삽입되는 열
    PRIMARY KEY(ID) --TABLE 제약을 줄 수 있는 자리이며, NOT NULL(칼럼명)은 불가능 PRIMARY KEY(칼럼명)은 가능
) --#1 컬럼생성과 동시에 제약을 주는 방법
  --#2 컬럼생성 후 테이블 레벨 제약 자리에서 칼럼에 제약을 줄 수 있다.


INSERT INTO TEST_MEMBER(ID, PWD, ADDR) VALUES('YSSIM', 'YSSIM', 'SEOUL');
INSERT INTO TEST_MEMBER VALUES('YSSIM', 'YSSIM', 'SEOUL'); --PRIMARY KEY로 설정해놨기 때문에 동일한 값 입력 불가능!
INSERT INTO TEST_MEMBER VALUES('yssim', NULL, NULL); --대소문자를 구분한다.
INSERT INTO TEST_MEMBER(ID, PWD) VALUES('ADMIN', 'YSSIM'); --대소문자를 구분한다. 

SELECT *
FROM TEST_MEMBER;

-- 2. 제약조건 (NOT NULL - 컬럼 레벨 제약만 가능, UNIQUE, PRIMARY KEY, FOREIGEN KEY, CHECK)
-- 2-1. 제약조건을 설정하는 방법 : 테이블 레벨, 컬럼 레벨

CREATE TABLE TEST_MEMBER(
    ID   VARCHAR2(50) PRIMARY KEY,
    PWD  VARCHAR2(50) PRIMARY KEY,
    ADDR VARCHAR2(50) DEFAULT 'SEOUL'
) --기본키는 하나여야 한다. 두 개의 기본키는 허용하지 않는다.
  --하지만 두 개를 잡아야 한다면?

CREATE TABLE TEST_MEMBER(
    ID   VARCHAR2(50),
    PWD  VARCHAR2(50),
    ADDR VARCHAR2(50) DEFAULT 'SEOUL',
    PRIMARY KEY(ID, PWD) --이런 식으로 COMPOSITE 하여 만들 순 있다.
)
  
--다중 컬럼 자체가 PRIMARY KEY 이기 때문에 아래처럼 입력이 가능하다.
--(YSSIM , YSSIM) 조합1
--(YSSIM , ADMIN) 조합2
INSERT INTO TEST_MEMBER(ID, PWD, ADDR) VALUES('YSSIM', 'YSSIM', 'SEOUL');
INSERT INTO TEST_MEMBER(ID, PWD, ADDR) VALUES('YSSIM', 'ADMIN', 'SEOUL'); 

SELECT *
FROM TEST_MEMBER;