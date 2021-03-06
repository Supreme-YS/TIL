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
dumpFunc() # 함수를 호출할 때 함수 밑단에 datetimeDecorator를 장식자로 가질겁니다. 라고 함

# 데코레이터 [실습]
'''
1. typeChecker Decorator 만들기 (인자의 유효성 검사)
- digit01, digit02를 곱한 값을 출력하는 함수.
- typeChecker Decorator로 digit01, digit02가 정수가 아니면
- 'only integer support'
'''

# 데코레이터
def typeChecker(func) :

    def innerFunc(digit01, digit02) :
        # 유효성 검사
        if type(digit01) != int or type(digit02) != int :
            print('only integer support')
            return # if에서 리턴을 만나면 함수의 수행이 끝난다.

        return func(digit01, digit02)

    return innerFunc

# 사용
@typeChecker
def div(digit01, digit02) :
    return digit01 * digit02

div(2 , 1)
div(0.4, 1)


# 파라미터와 관계없이 모든 함수에 적용 가능한 Decorator 만들고 싶다면?
# *args, **args
# generalDeco라는 장식을 다 갖고 있는 상태

# 데코레이터
def generalDeco(func):

    def wrapper(*args, **kwargs) : # 가변인자를 걸어주기
        print('this is decorated')
        return func(*args, **kwargs)

    return wrapper

@generalDeco
def userSquare(digit) : # 인자를 한 개 받는 함수
    return digit * digit
print(userSquare(2))

@generalDeco
def userPlus(digit01, digit02) : # 인자를 두 개 받는 함수
    return digit01 + digit02
print(userPlus(2, 3))

@generalDeco
def userQuad(digit01, digit02, digit03, digit04) : # 인자를 네 개 받는 함수
    return digit01 * digit02 * digit03 * digit04
print(userQuad(2, 3, 4, 5))


def makeBold(func) :
    def wrapper(string) :
        return '<b>' + func(string) + '</b>'
    return wrapper

def makeFont(func) :
    def wrapper(string) :
        return '<i>' + func(string) + '</i>'
    return wrapper

@makeBold
@makeFont
def makeBoldFont(string) :
    return string

print( makeBoldFont('두 개의 데코레이터를 활용하고 있습니다.'))

# class - function 데코레이터 적용이 가능할까?
# 데코레이터를 외부 함수로 정의해두고
def tagH1(func) :
    # 인스턴스에 함수가 호출할 수 있는 데코다 라는 의미로 self 넣어줘야 한다.
    def wrapper(self, *args, **kwargs) :
        return '<h1>{}</h1>'.format(func(self, *args, **kwargs))
    return wrapper

# 클래스 내부에서 호출해서 사용하는 개념이다.
class Per(object) :
    def __init__(self, name):
        self.name = name

    @tagH1 # 클래스 내부에서 호출해서 사용하는 개념이다.
    def getName(self) :
        return self.name

per = Per('Supreme-YS')
print('per - ', per.getName())

# Iterator
'''
- iterable 객체 (iterable Object)
list, set, tuple, dict - (collection) 
Text Sequence

for ~ in collection :
    pass
    
- iterator -> 파이썬 모듈이 가지고 있는 내장함수 iter()
-> 순차적으로 다음 데이터를 리턴할 수 있는 객체
-> 내장함수 next()를 사용해서, 순환하는 다음 값을 반환함
'''

for num in [1, 2, 3, 4, 5] :
    print(num)

for char in 'text sequence' :
    print(char)

userList = [1, 2, 3, 4, 5]
print(next(userList))

userIterator = iter(userList)
print(type(userIterator)) # type이 list가 아니라 list_iterator로 출력된다.
print('type - ', type(userIterator), type(userList))

print(next(userIterator))

# 사용자 정의 iterator 클래스 만들기

class Counter :
    def __init__(self, stop):
        self.stop = stop

    def __iter__(self):
        return CounterIterator(self.stop)

class CounterIterator:
    def __init__(self, stop):
        self.current = 0
        self.stop = stop

    def __next__(self):
        if self.current < self.stop:
            rtnValue = self.current
            self.current += 1
            return rtnValue
        else :
            return exit()

cntIterator = iter(Counter(10))
print(next(cntIterator))

# Comprehension
'''
[ 출력표현식  for 요소 in sequence [if 조건식] ]  # list
{ 출력표현식  for 요소 in sequence [if 조건식] }  # set
{ key:value for 요소 in sequence [if 조건식] }  # dict
'''
dataset = [4, True, 'Supreme-YS', 3.1, 10]
# 위 데이터 셋에서 정수값만 출력
# list comprehension
intType = [index ** 2 for index in dataset if type(index) == int]

print('int type - ', type(intType), intType)

dataset = [1, 1, 2, 2, 3, 3, 4, 4]
setType = {value * value for value in dataset}
print('setType - ', type(setType), setType)

dataset = { 1 : 'Sup', 2 : 'Sim', 3 : 'Supreme'}
print('dict keys - ', dataset.keys())
print('dict values - ', dataset.values())
print('dict items - ', dataset.items()) # items의 특징 : 리스트 안에 튜플로 데이터가 삽입됨

# key 값이 1 이상인 데이터를 값 : 키 형식으로 새로운 set을 만든다면?
keySet = {value:key for key, value in dataset.items() if key > 1}
print('dict comprehension -', type(keySet), keySet)

# key 값을 10단위로 한번에 바꿔본다면?
keySet = {key*10:value for key, value in dataset.items()}
print('dict comprehension -', type(keySet), keySet)

# python generator
'''
iterator 를 만들어주는 기능(함수)
yield 키워드 이해
메모리 성능 때문에 루프를 컨트롤하기 위해 쓰여지는 루틴
'''
# 즉, 함수를 iterator로 만들어주는거다.
def textSequenceFunc() :
    msg = 'hi python'
    for txt in msg :
        yield txt
        #return txt

# print(textSequenceFunc)
textSequenceFunc()

print(textSequenceFunc)
charIte = iter(textSequenceFunc()) # 함수자체를 iterator로 만들어 줌
print( type(charIte))
print( next(charIte)) # return txt 로 하면 h 이후에 오류 --> 하나의 값만 출력하고 끝나버리기 때문에
                      # yield txt로 코드를 바꾸면 재실행됨 --> 실행된 상태를 기반으로 다음 코드 실행

'''
yield - 잠시 함수 실행을 멈추고 호출한 곳에 값을 전달
- 현재 실행된 상태를 계속 유지할 수 있다.
- 그러므로, 다시 해당 함수를 호출하면 현재 실행된 상태를 기반으로 다음 코드를 실행
'''

print(textSequenceFunc()) # generator라는 형식으로 바뀜.
                          # <generator object textSequenceFunc at 0x000001C2D93B3350>

charIte = iter(textSequenceFunc())
next(charIte)

def userGeneratorFunc(data) :
    result = []
    for tmp in data :
        #result.append(tmp * 2)
        yield tmp * 2

    #return result
twiceList = userGeneratorFunc([1, 2, 3, 4, 5])
# print('처리된 결과 - {}'.format(twiceList))

print(type(twiceList))
print('next {} -'.format(next(twiceList))) # 무언가 정지된 for 문을 보는 것 같다.

for t in twiceList :
    print(t)

# Generator Comprehension ()
# (Lazy Operation) 연산이 나중에 된다해서 이렇게 표현한다.

'''
syntax)
(출력형식 for 요소 in collection )
'''

squareData = (num ** 2 for num in range(5))
print( type(squareData)) # <class 'generator'>

print( squareData) # <generator object <genexpr> at 0x0000022DE04B5D60>
                   # 결과값 출력이 안되는 이유 ? --> lazy loading 이기 때문이다.
print( sum(squareData))

for data in squareData :
    print(data, end = '\t') # 리턴값들이 다 소모되기 때문에 loop를 도는거니까, loop를 컨트롤 하는 느낌.





