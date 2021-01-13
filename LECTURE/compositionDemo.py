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

# 예시
nameList = ['kim', 'lee', 'park', 'sim']
try :
    name = 'sim'
    idx = nameList.index(name)

except ValueError as e:
    print('{} Not Found it !!'.format(name))

else :
    print('{} Found it !! {}'.format(name, idx + 1))

finally:
    print('예외 여부와 상관없이 항상 실행되는 블럭')

print('프로그램 종료')





# 사용자 정의 예외 클래스를 작성할 수 있다.
class InsufficientError(Exception) :
    def __init__(self, msg):
        self.msg = msg


# 클래스에 정의된 함수에 예외처리 적용 및 강제 예외 발생

class Account :
    def __init__(self, account, balance, interestRate):
        self.account      = account
        self.balance      = balance
        self.interestRate = interestRate

    def withDraw(self, amount) :
        try :
            if self.balance < amount :
                # raise Exception # 강제로 예외를 발생시키는 메서드
                raise InsufficientError('잔액이 부족합니다')
        except Exception as e : # 예외가 발생했다면!
            print('error msg -', str(e))

        else : # 예외가 발생하지 않았다면
            self.balance -= amount

account = Account('100', 100000, 0.073) # 객체 생성 완료
account.withDraw(200000)
print('프로그램 종료')