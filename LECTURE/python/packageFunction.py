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
# tuple 가변인자
def tupleFunc(*args) :
    result = 0
    for idx in range(len(args)) :
        result += args[idx]
    return result
# dict 가변인자
def dictFunc(**args) :
    for key, value in args.items():
        print('{} = {}'.format(key, value))

# 범위 내에 있는 값의 홀, 짝의 총합을 구해서 리턴
def cntSum(start, end) :
    odd = even = 0
    for x in range(start, end + 1):
        if x % 2 == 0 :
            even += x
        else :
            odd += x

    return odd, even # (odd, even) 처럼 두 개의 값이 아닌 하나의 튜플로 값이 return 된다.

def leapYearFunc(strYear, endYear):
    yearList = []

    for year in range(strYear, endYear + 1) :
        if (year % 4 ==0 and year % 100 !=0) or (year % 400 == 0) :
            yearList.append(year)

    return yearList

def rtnDictFunc(x) :
    y01 = x * 10
    y02 = x * 20
    y03 = x * 30
    # dict 형태로 return 하기
    return {'val01' : y01, 'val02' : y02, 'val03' : y03}