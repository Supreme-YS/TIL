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

from python import packageFunction as p
# from python.packageFunction import printCoins
# from python.packageFunction import

rtnMsg = p.returnFunc()
print('call returnFunc() - ', rtnMsg)