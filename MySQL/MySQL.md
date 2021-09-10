DB-MySQL

#### MySQL Introduction

* MySQL Community Edition 다운로드
* 터미널 `usr/local/mysql/bin` 디렉토리에서 `./mysql -uroot -p` 실행
* 스키마는 표들을 그룹핑할 때 사용하는 폴더라고 생각하면 된다., 즉 스키마는, 연관된 표들을 그룹핑 해준다.
* 데이터베이스 -> 여러개의 데이터베이스 = 스키마 -> 데이터베이스서버 

#### MySQL Server Connection

- 여러 유저들에게 차등적인 권한을 줄 수 있다. 
- `mysql -uroot -p` : 관리자 권한으로 실행, 비밀번호가 설정되어 있지 않으면 -p 생략. 하지만 보안이 취약해진다.

#### MySQL Schema

- ![image-20210910123803505](/Users/supreme-ys/Library/Application Support/typora-user-images/image-20210910123803505.png)
- `CREATE DATABASE (DBname);` : DBname으로 데이터베이스를 생성
- `DROP DATABASE (DBname);` : DBname의 데이터베이스를 삭제 
- `SHOW DATABASES;` : 시스템내에 생성되어 있는 데이터베이스 리스트 확인
- `USE (DBname);` : DBname에 해당하는 데이터베이스를 사용하겠다 선언

#### SQL과 테이블 구조

- SQL : Structured Query Language, 관계형 데이터베이스가 표의 형태로 정보를 정리정돈. 데이터베이스에게 요청하고 질의
- 특징 : 어떤 프로그래밍 언어보다 쉽고, 표준화되어 있기 때문에 중요하다.
- Table (표) : x축 : row/record/행(데이터 하나하나, 데이터 자체), column/열(데이터 타입, 데이터 구조)

#### MySQL 테이블의 생성

- MySQL CHEAT SHEET 참조
- ![image-20210910133037928](/Users/supreme-ys/Library/Application Support/typora-user-images/image-20210910133037928.png)

- `NOT NULL` : NULL 값을 허용하지 않는다.
- `NULL` : NULL 값을 허용
- `AUTO_INCREMENT` : 행이 증가하면 자동으로 숫자가 증가
- `VARCHAR` : 가변 문자열형
- `DATETIME` : 시간
- `PRIMARY KEY()` : 기본키(key) 값