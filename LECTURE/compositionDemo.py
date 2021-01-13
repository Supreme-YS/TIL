'''
학습목표
- Composition == Aggregation
- 상속을 피하고 Clss 일부 기능을 가져다 그대로 활용하고 싶을 때 사용한다.
- Exception
- File 입출력

'''

class Calc01(object) :
    def __init__(self, x, y) :
        self.x = x
        self.y = y

    def add(self):  # Calc01 소속의 add
        return self.x + self.y

    def substract(self):
        return self.x - self.y

class Calc02(object) :
    def __init__(self, x, y) :
        self.x = x
        self.y = y

    def add(self): # Calc02 소속의 add
        return self.x + self.y

    def multiply(self):
        return self.x * self.y

class UserCalc : # Calc02의 multiply 기능만 쓰고 싶다. (상속받지 않고)
    def __init__(self, x, y) :
        self.x = x
        self.y = y
        self.cal02 = Calc02(x, y) # 객체안의 '변수'가 클래스를 참조한다. cal02라는 변수에 클래스
                                  # 객체를 명시적으로 생성

    def add(self):  # Calc01 소속의 add
        return self.x + self.y

    def substract(self):
        return self.x - self.y

    def multiply(self):
        return self.cal02.multiply() # 인스턴스 변수안에 Cal02 클래스가 있다. 그래서 호출이 가능하고 기능을 가져다 쓸 수 있다.

calc = UserCalc(3, 4)
print('calc multiply - ', calc.multiply())

'''
- 예외(Exception) - SyntaxError, TypeError, NameError, IndexError, KeyError ...
- 처리할 수 있는 구문
try    :
    에러가 발생할 가능성이 있는 코드
    정상코드
    에러가 발생할 가능성이 있는 코드
    정상코드
except xxxxError :
    1. 프로그램의 흐름을 정상으로 컨트롤
    2. 예외발생의 디버킹
    3. 로그파일 만들어서 예외정보를 저장

    발생된 에러를 잡기위한 객체 정의
except xxxxError :
    발생된 에러를 잡기위한 객체 정의
else   :
    에러가 발생되지 않을 때 실행되는 블럭
finally:
    무조건 수행
'''
# SyntaxError
## print('error)
## print('end')

# NameError
## a = 10
## b = 20
## princ(c)

# ZeroDivisionError
## print(100/0)

# IndexError
## x = [1, 2, 3]
## print(x[3])

# KeyError
## dict = {'name' : 'supreme', 'age' : 30, 'city' : 'gimpo'}
## print(dict['hobby'])

# AttributeError
## import time
## print(time.time2())

# 예외가 없는 것을 가정하고 프로그램 작성 -> 런타임 예외 발생시 예외 처리를 권장

def userKeyIn() :
    try :
        age = int(input('본인의 나이를 입력하세요'))
        print('예외 발생 이후 code') # 악의적으로 Value Error를 발생시키면 except로 넘어가서 이 구문은 실행이 안된다.

    #except IndexError as e : # 예외처리 안됨. ValueError가 나기 때문에 indexError는 못잡음
    #    print('error - ', e)

    except Exception as e : # 다중 except를 쓰기 싫으면 Exception 자체로 해버리면 된다.
        #print('error = ', e)
        print('문자열이 아닌 정수를 입력해주세요.')
        userKeyIn() # 재시도를 위한 본인 함수 재호출

    else :
        print('age - ', age)
        print('함수 실행 종료')

    finally:
        print('넌 너무 지조가 없다.. 항상 실행되니까..')

    #except ValueError as e :
    #    print('error - ', e.args[0])



userKeyIn()
