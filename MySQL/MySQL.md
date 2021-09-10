DB-MySQL

#### MySQL Introduction

* MySQL Community Edition 다운로드
* 터미널 `usr/local/mysql/bin` 디렉토리에서 `./mysql -uroot -p` 실행
* 스키마는 표들을 그룹핑할 때 사용하는 폴더라고 생각하면 된다., 즉 스키마는, 연관된 표들을 그룹핑 해준다.
* 데이터베이스 -> 여러개의 데이터베이스 = 스키마 -> 데이터베이스서버 

#### MySQL Server Connection

- 여러 유저들에게 차등적인 권한을 줄 수 있다. 
- `mysql -uroot -p` : 관리자 권한으로 실행, 비밀번호가 설정되어 있지 않으면 -p 생략. 하지만 보안이 취약해진다. 