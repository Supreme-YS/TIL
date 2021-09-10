#### 관계형 데이터베이스

- 관계형 데이터베이스의 기본 언어는 SQL.
- Index : 색인, 데이터의 빠른 탐색을 도와줌.
- Modeling : 데이터가 많아짐에 따라 정규화, 역정규화 등을 통한 모델링이 필요하다.
- backup : 데이터를 복제하여 보관하는 것. 이기종간 지역 독립적이면 더욱 좋다. Mysqldump, binary log 등의 키워드 참고
- cloud : 원격 저장공간을 임대하여 사용하는 것. AWS RDS, Google Cloud SQL for MySQL, AZURE Database for MySQL 등의 키워드 참고
- programming : 프로그래밍언어로 데이터베이스 서버의 SQL을 전송할 수 있는 방법 숙지가 필요. Python mysql api, PHP mysql api, Java mysql api 등의 키워드 참고

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