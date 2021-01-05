# Built-in-type
# 변수 정의 및 생성
# 블럭 단위 실행 = Shift + Alt + E
intValue = 123
floatValue = 3.14
boolValue = True
strValue = 'Supreme-YS'

print( type(intValue), type(floatValue), type(boolValue), type(strValue))

# type casting
numStr = '720'
numNum = 100
print(int(numStr) + numNum)
print(numStr + str(numNum))

year = "2021"
print(int(year) - 1)

# list
listAry = ['python', 'anaconda']
print(type(listAry))

# dict
dictValue = {
    "name" : "machine Learning",
    "version" : 2.0
}

print(type(dictValue))

# tuple

tupleValue = (3,)
print(type(tupleValue))

# set

setValue = {1, 2, 3}
print(type(setValue))

# keyboard input
# function syntax
'''
접근 지정자 리턴타입 함수명(매개변수) {
}
python function
def sum() :
    statement
'''

# input # input 함수는 기본적으로 리턴타입이 str으로 정해져있기 때문에 상황에 따라 casting 작업이 필요하다.
inputNumber  = int(input('숫자를 입력하세요 : '))
print( type(inputNumber)) # input은 기본적으로 리턴타입이 str으로 정해져있다.
sum = 100 + inputNumber
print(sum)

# 문자형 (str)
str01 = 'I am Python'
str02 = "Python"
str03 = """this is a
multiline
sample"""
str03 = '''this is a
multiline
sample'''

seqText = 'Talk is cheap. Show me the code'
print(seqText)

# dir() # 객체가 갖고 있는 구성요소를 전부 보여준다.
print( dir(seqText))

# slicing
print(seqText[3])
print(seqText[-1])
print(seqText[0:4])
print(seqText[-6: ])
print(seqText[ : : 2])
print(seqText[ : : -1])

# 아래의 문자열에서 '홀'만 출력하세요.

string = "홀짝홀짝홀짝홀짝홀짝홀짝홀짝홀짝홀짝"
print(string[::2])
print(string[::-1])

# 문자열 조작을 위한 많은 내장 함수를 제공하고 있다.
string = "python"
print("Capitalize : ", string.capitalize())

# 문자 치환 replace(oldchar, newchar)
phoneNumber = '010-3822-7541'
replacePhoneNumber = phoneNumber.replace('-', " ")
print(replacePhoneNumber)

string = 'abcdefe2a345a563432a'
print( string.replace('a', 'A'))

# 문자열 쪼개는 함수 : split()
# 아래 문자열에서 도메인만 출력하고 싶다면?
# 기본 리턴값 : 리스트
url = "http://www.naver.com"
urlSplit = url.split('.')
print(urlSplit, type(urlSplit))
print('domain : ', urlSplit[-1])
