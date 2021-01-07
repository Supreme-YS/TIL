# 함수의 4가지 형태

# 1 매개변수 X, return값 X
def printCoins():
    print('bitcoin')

# 2 매개변수 X (값을 넘겨받는 부분 즉, () 부분), return값 O
def returnFunc() :
    return '호출한 쪽으로 값이 전달됩니다.'

# 3 매개변수 O, return값 O
def sayEcho(name) :
    return name + '님, 반갑습니다.'

def calculator(op01, operator, op02) :
    pass

def makeUrl(url) :
    return "www."+url+".com"

# 4 매개변수 O, return값 X
def badFunc(name) :
    pass

# 가변인자 : 매개 변수의 갯수에 상관없이 데이터 타입에 맞게 데이터를 가져온다. * = tuple, ** = dict
def tupleFunc(*args) :
    result = 0
    for idx in range(len(args)) :
        result += args[idx]
    return result

def dictFunc(**args) :
    pass