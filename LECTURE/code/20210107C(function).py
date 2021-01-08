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


#




















