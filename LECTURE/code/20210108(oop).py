# python 객체지향 프로그래밍(oop)

'''
패키지(Package) > 모듈(module) > 클래스 (class) > 함수 (function)
Function 담을 수 있는 그릇은 Class,
Class를 담을 수 있는 그릇 Module,
Module을 담을 수 있는 그릇은 Package

Object Oriented Programming (OOP)

Real World                      P/G World
----------------추상화과정------------------
Object ---------   Class   ------> instance != class class는 instance가 아니다. class는 instance를 생성할 수 있게 하는 template
- 명사적 특징 ---> Variable  ______/
- 동사적 특징 ---> Function  ______/

class에 정의되는 변수와 함수는 instance의 소유이다.
'''

# 학생의 정보를 저장한다. --> 비효율적
stuName = 'Supreme-YS'
stuMajor = 'Industrial Engineering'
stuID = '20111850'
stuGrade = 4.5

# 비효율 극복하려고 시도할 수 있지만(list, dict 사용) --> 추천하지 않는 방법
stuNameList = ['Supreme-YS', "더기"]

# class를 이용해서 한 학생의 데이터를 논리적인 하나의 단위로 묶어서 사용 ==> OOP
'''
class vs instance
namespace         : 객체를 instance화 할 때 저장된 공간
class variable    : 직접 접근 가능 및 공유
instance variable : 객체소유로 별도 존재 
self              : instance 소유의 멤버라는 걸 명시한다. 

class
- 함수의 모임
- 역할 : 여러개의 함수와 공유 데이터를 묶어서 객체를 생성할 수 있는 Template
- 구성 : 멤버 = 변수(데이터) + 메서드(함수) + 생성자(초기화)
- 형식 : class 클래스이름 : 
            변수            - 자료 저장
            초기화           - 객체 생성시 호출되는 함수
            def 함수이름() : - 자료처리 
'''
# class 이름의 첫 번째 글자는 대문자(capitalize)로 정의하는 것이 Rule

class Calc :
    # 변수선언
    x = 0
    y = 0

    # 생성자함수 혹은 초기화
    def __init__(self):
        print('객체 생성시 호출되는 함수이고 난 초기화라고 한다.')

    # 함수선언
    def plus(self):
        print('사용자 정의 함수이고 난 instance의 소유가 된다.')

# Class(설계도면)에 대한 instance(건물)를 만들어내는 문법
obj = Calc() # --> 자동으로 init이라고 하는 객체생성시 호출됨
obj.plus() # 위쪽에서 obj는 class내 함수들의 주소값을 갖고있음 그래서 변수명.함수명() 으로 호출할 수 있음














