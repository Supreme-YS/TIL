'''
***** 학습목표 *****
다중상속
추상화
데코레이션
제너레이터
이터레이터
'''
# init을 적용하지 않으면, 자동으로 init을 적용하게 한다.
class Animal(object) :
    def cry(self):
        pass

class Tiger(Animal) :
    def jump(self):
        print('호랑이가 점프를 한다')
    # 오버라이딩
    def cry(self):
        print('어흥')

class Lion(Animal) :
    def bite(self):
        print('한 입에 꿀꺽한다')
    # 오버라이딩
    def cry(self):
        print('그르렁')

# 다중상속
class Liger(Tiger, Lion) : # 타이거와 라이언을 상속받기
    def play(self):
        print('라이거가 사육사와 재미있게 놀고 있다')

# 추상클래스
'''
- 클래스를 만드는 이유 -> 객체생성
- 추상클래스는 객체생성 X
- 추상메서드(함수)를 하나라도 가지면 추상클래스
- 함수 구현을 강제하기 위해서 사용
'''
from abc import * # 추상메서드를 사용하기 위한 호출

class Base(metaclass=ABCMeta) : # @이 있으면 Abstract이기 때문에 @abstractmethod처리와 괄호안 처리 해야한다.
    @abstractmethod
    def study(self):
        pass # 구현부가 없음

    def goToSchool(self):
        print('hard study')

class Student(Base) : # Student의 내부에는 추상함수가 정의되어있다. 상속받았기 때문에
    def study(self): # 오버라이딩~~을 통해 추상함수를 사용할 수 있게끔 만들어준다.
        print('공부하자') #














# 특수문법 - 데코레이션
'''
Decorator는 함수의 인자로 다른 함수를 전달하는 과정에서 적용할 수 있는 기법
'''

def outerFunc(func) :
    def innerFunc() :
        func()
    return innerFunc

def userFunc() :
    print('userFunc 함수가 수행되었습니다')


decoratorFunc = outerFunc(userFunc) # 함수의 인자로 정의된 함수를 넣음
# userFunc()
decoratorFunc()

import time
def userOuterFunc(func) :
    def userInnerFunc() :
        print('{} 함수 수행 시간을 계산합니다'.format(func.__name__))
        start = time.time()
        func()
        end = time.time() - start
        print('{} 함수 수행 시간은  {} 입니다'.format(func.__name__, end))
    return userInnerFunc

decoratorUserFunc = userOuterFunc(userFunc)
decoratorUserFunc()


# Decorator를 모를 때의 작업들 - 아래처럼 코드 중복도 많고 깔끔하지 않다.
import datetime
def loggerLogin() :
    print(datetime.datetime.now())
    print('Supreme-YS login')
    print(datetime.datetime.now())
loggerLogin()

def loggerLoginSup() :
    print(datetime.datetime.now())
    print('Sup login')
    print(datetime.datetime.now())

def loggerLoginYS() :
    print(datetime.datetime.now())
    print('YS login')
    print(datetime.datetime.now())


# 하지만 데코레이터 형식으로 만든다면?
# 총 2가지 방법

import datetime

def loggerLogin():
    print('Supreme-YS login')

def loggerLoginSup():
    print('Sup login')

def loggerLoginYS():
    print('YS login')

def datetimeDecorator(func) :
    def wrapper() :
        print(datetime.datetime.now()) # 기능 앞 뒤로 decorate 하는 것
        func() # 각 함수별 구현되야 할 기능들
        print(datetime.datetime.now()) # 기능 앞 뒤로 decorate 하는 것
    return wrapper

Supreme = datetimeDecorator(loggerLogin)
Supreme()
Sup = datetimeDecorator(loggerLoginSup)
Sup()
YS = datetimeDecorator(loggerLoginYS)
YS()


@datetimeDecorator
def dumpFunc() :
    print('함수 실행~~')
dumpFunc() # 함수를 호출할 때 함수 밑단에 datetimeDecorator를 장식자로 가질겁니다. 라고 함 2