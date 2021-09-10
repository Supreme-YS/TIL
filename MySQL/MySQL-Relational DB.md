#### 관계형 데이터베이스

- 관계형 데이터베이스의 기본 언어는 SQL.

#### JOIN

- 두 개의 테이블을 각 테이블 내에 특정 값을 기준으로 합치는 것
- `SELECT * FROM [first table name] LEFT JOIN [second table name] ON [standard column];` 
- ![image-20210910144154895](/Users/supreme-ys/Library/Application Support/typora-user-images/image-20210910144154895.png)

#### 인터넷과 데이터베이스

- 요청과 응답 그 사이에 있는 Internet.
- 인터넷 작동원리 : Client <------> Server
- 웹을 위한 Web Client <------> Web Server 
- 게임을 위한 Game Client <------> Game Server
- **데이터베이스를 위한 Database Client <------> Database Server**
  - DB Client : `mysql -uroot -p` 명령어 기반의 프로그램 -> MySQL Monitor가 DB Client중의 하나였다. Bundle로써 제공하는 것. 추가로 MySQL Workbench가 있다.
  - DB Server : 데이터를 저장하고, 사용하기 위해서 이용되는  즉, 데이터베이스 서버를 사용함으로써 데이터 관리가 용이해짐

#### MySQL Workbench

- DB client 중 하나이다.
- 맥북 프로 M1은 이슈 문제로 Workbench를 2021.09.09 현재 지원하지 않는다. 
- 따라서, DBeaver 사용 중! Test Connection 완료 