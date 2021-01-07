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
