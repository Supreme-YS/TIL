# python function
'''

함수는 가독성을 높이기 위한 방법으로
하나 이상의 본문을 가지는 코드는 함수로 정의하는 것이 좋다.
내장 함수 | 사용자 정의 함수
함수를 정의할 때는 def 키워드를 이용해서 함수를 정의
'''

# user define function
'''
def returnType functionName([arg01, arg02]) :
    statement
    return value(built-in Type)
'''
def userPrint() :
    print('userPrint')

from python import packageFunction as f
# from python.packageFunction import printCoins
# from python.packageFunction import

rtnMsg = f.returnFunc()
print('call returnFunc() - ', rtnMsg)

echoMsg = f.sayEcho('심영석')
print('call sayEcho() - ', echoMsg)

domain = f.makeUrl('naver')
print('call makeUrl() - ', domain)

f.badFunc('Supreme-YS')

tupRtn = f.tupleFunc(1, 2, 3, 4, 5, 6, 7, 8, 9)
print('call tupleFunc() - ', tupRtn)

f.dictFunc(name = 'Supreme-YS', age = 30)

(oddSum, evenSum) = f.cntSum(100, 500)
print('홀수의 합 {}, 짝수의 합 {}'.format(oddSum, evenSum))


# 인자값으로 받은 년도 사이의 윤년을 찾아 리턴시켜주는 함수를 작성한다면?
# list 타입
leapYearList = f.leapYearFunc(1900, 2021)
print('leapYearList - ', leapYearList)

dictMsg = f.rtnDictFunc(10)
print('dictMSG - ', type(dictMsg), dictMsg)

for value in dictMsg.values() :
    print('dictValues - ', value)

for key in dictMsg.keys() :
    print('dictKeys - ', key)


# default parameter 사용
# 함수 선언
def defaultParam(x, y, z = True) :
    paramSum = x + y
    if paramSum > 10 and z :
        return paramSum
    else :
        return 0
# 함수 호출
defaultParam(10, 20) # 인자값이 다른데 왜 오류가 안날까? --> 함수 선언에서 세번째 인자값은 default로 True를 사용한다는 것이기 때문이다

# caller function
result = defaultParam(10, 20) # z값은 default로 True이기 때문에 실행이 되는것이다.
print('caller defaultParam() - ', result)

# 함수의 입력인자가 list , dict - mutable
# 함수의 입력인자가 숫자, 문자열, tuple - immutable
tmpList = [10]
tmpX = 10

def mutableFunc(argX, argList) :
    argX = argx + 100
    argList.append(100)

mutableFunc(tmpX, tmpList)
print('tmpList - ', tmpList)
print('tmpX - ', tmpX) # 110이 출력되는 것이 아니라 10을 출력하고 있다. 즉, 참조불가능! immutable

# variable(변수) - 선언위치에 따른 구분 (local, global)

tmp = 100 # global (전역변수) 선언이다.

def myFunc(x) :
    tmp = 0 # 함수안에 동일한 변수가 선언이 되었다. # 이름은 같지만 local(지역변수) 선언이다.
            # 만약에 tmp 초기값을 선언해주지 않으면 unbounded 오류가 발생한다.
            # 초기값을 설정하지 않을 시, global로 전역변수를 사용하기 위한 코드를 추가해준다.
            # 예) global tmp
    tmp += x
    return tmp

print('caller myFunc - ', myFunc(100))

def personInfo(weight, height, **other) :
    print('weight - ', weight)
    print('height - ', height)
    print('extra - ', other, type(other)) # dict 타입

personInfo(80, 173, name='Supreme-YS', address='gimpo') # 가변인자는 비어있는 것으로 출력이 된다.
                                                        # **는 dict 가변인자이고 mapping 형식으로 arg를 입력해야 한다.

#personInfo(80, 173, {'name':'SupYS', 'address':'gimpo'}) # {} 사용 X

def overroll(args01, args02, *args03, **args04) :
    print(args01, args02, args03, args04)

overroll(10, 20, 'kim', 'park', 'sim', age01=20, age02=30, age03=40)

# nested function (중첩함수)
def outerFunc(num) :
    print('outerFunc - ', num)
    def innerFunc(x) :
        print('innerFunc - ', x)
    innerFunc(num + 100)

outerFunc(100)

# 중첩함수 활용 예)
'''outer 함수 : 자료 생성, inner 함수 포함
inner 함수 : 자료 연산/처리(합계, 평균)'''

def calcFunc(data) :

    dataset = data

    def sumFunc() :
        total = sum(dataset)
        return total
    def avgFunc(total) :
        avg = total / len(dataset)
        return avg

    return sumFunc , avgFunc # 리턴값을 함수 호출? --> 가능하다 함수는 또 다른 함수를 리턴값으로 할 수 있다 --> 클로저 함수의 반환!
                                 # 리턴값이 2개? --> 튜플형식이다.

data = list(range(1, 101))
print('range data - ', data)

rtnSumFunc, rtnAvgFunc = calcFunc(data) # 리턴값이 2개인 튜플 형태로 넘어오기 때문에 새로운 두 개의 그릇을 만듦.
# 외부에서는 변수지만 이를 또 함수를 사용할 수 있다.
tot = rtnSumFunc()
print(tot)
avg = rtnAvgFunc(tot)
print(avg)


'''
재귀함수(self-recursive function)
- 함수 내부에서 자신의 함수를 반복 호출하는 기법
- 용도 : 반복적으로 변수를 변경해서 연산할 때 (누적, 팩토리얼)
'''
def countFunc(n) : # n = 5 -> 1, 2, 3, 4, 5 로 출력되게 하고 싶다면?
    if n == 0 :
        return 0
        # break도 가능한데 함수에선 잘 안쓴다
        # 그래서 return 0을 씀
    else :
        countFunc(n-1) # stack [5, 4, 3, 2, 1] 이 쌓이게 된다. 하지만 재귀함수는 후입선출!
        print(n, end = " ")

    pass

countFunc(5) # 1 2 3 4 5
countFunc(0) # 0

def addSum(n) :
    if n == 1:
        return 1
    else :
        result = n + addSum(n - 1)
        print('debug - ', result)
        return result

print('n=5 - ', addSum(5))
print('n=100 - ', addSum(100))

# 익명의 함수( lambda 식)를 만드는 방법
# 람다식 (가독성 향상, 코드 간결, 메모리 절약 - 즉시 실행 함수이기 때문에)

def multiFunc(x, y) :
    return x * y

print(multiFunc(10, 50))

# syntax : lambda arg : body
# 람다도 함수다.

lambdaVar = lambda x, y : x * y
print(lambdaVar(10, 50))

def lambdaFunc(x, y, func) :
    print('lambdaFunc - ', x * y * func(100, 100))

lambdaFunc(10, 20, lambda x, y : x * y)
lambdaFunc(10, 20, lambdaVar)
lambdaFunc(10, 20, multiFunc)

# hint : 매개변수를 받을 때 데이터 type을 정해놓는 방법

def totalLengthFunc(word : str, num : int) :
    return len(word) * num

print('hint - ', totalLengthFunc('I love you', 3000))









