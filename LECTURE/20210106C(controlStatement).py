# control statement
# if (조건문), for (반복문), while (반복문)

# 사용자 입력 함수
# input()

name = input("Enter your Name : ")
grade = input("Enter your Grade : ")
company = input("Enter your Company : ")
print(name, grade, company)

# 짝수인지 홀수인지를 판별?
# if, if ~ else, if ~ elif ~ else, if ~ in
# bool True | False
'''
other)
if(조건식) {
    True
}
else {
    False
}

python)
if not False :
'''

inputNumber = int(input("Enter your digit(1 ~ 100) : "))
# print( inputNumber % 2 == 0)
# 즉, if는 참일 경우에만 수행한다.

if inputNumber % 2 == 0 :
    print('짝수입니다.')
else :
    print('홀수입니다.')

number = 15
# 위 값이 3의 배수인지 5의 배수인지를 판별하고 싶다면?
if (number % 3 == 0 or number % 5 == 0) :
    print('{}은 3과 5의 배수입니다.'.format(number))
else :
    print('{}은 3과 5의 배수가 아닙니다.'.format(number))

# if ~ elif
number = int(input('숫자를 입력하세요 : '))

if number % 3 == 0 :
    print('{}은 3의 배수입니다.'.format(number))

elif number % 5 == 0:
    print('{}은 5의 배수입니다.'.format(number))

else :
    print('{}은 3과 5의 배수가 아닙니다.'.format(number))

# if ~ in
area = ['서울', '부산', '제주', '광주']
region = '수원'

if region in area:
    pass
else :
    print('{} 지역은 포함되지 않습니다.'.format(region))


# dict 를 이용한 if ~ in
areaKeyDict = {'서울' : 100, '광주' : 200}
region = '부산'
if region in areaKeyDict:
    pass
else :
    print('{}값이 존재하지 않습니다.'.format(region))

city = "asd" # 빈값이 아니면 다 True
if city :
    print('true - ', city)
else :
    print('false - ', 'plz enter your city')