# Git Command

> Git 명령어 정리



### 0. init

* `git init`
* `.git/`폴더를 생성해준다.

![image-20201229151455452](./GitCommand.assets/image-20201229151455452.png)

* `.git`폴더가 생성된 경우 오른쪽에 master 라는 표시가 나온다.
* 최초에 한 번만 하면 된다.



### 1. add

* `git add <추가하고 싶은 파일>`
  * `git add . ` : 현재 폴더의 모든 파일과 폴더를 add
* Working directory에서 staging area로 파일 이동



### 2. config

* `git config --global user.email "myemail@gmail.com"`
  * email의 경우 깃헙에 올릴경우 잔디가 심어지는 기준이므로 정확하게 입력!
* `git config --global user.name "myname"`
* 최초에 한 번만 하면 된다.



### 3. commit

* `git commit -m "메세지"`
  * 메세지는 필수로 적어야 한다.
  * 메세지에 들어가는 내용은 기능 단위로 적어주는 것이 좋다. (예. 로그인 페이지 완성, 로고 입력 완성)
* 스냅샷을 찍는 동작
* add 되어있는 파일들을 하나의 묶음으로 저장



### 4. remote

* `git remote add origin <주소>`
* 원격 저장소와 현재 로컬 저장소를 연결하는 명령어



### 5. push

* `git push origin master`
* git아 올려줘 origin으로 master를
* 원격저장소에 로컬 저장소의 데이터를 전송



### 6. status

* `git status`
* 현재 git 상태를 출력

