# control statement
# if (조건문), for (반복문), while (반복문)

# 사용자 입력 함수
# input()

name = input("Enter your Name : ")
grade = input("Enter your Grade : ")
company = input("Enter your Company : ")
print(name, grade, company)

# 짝수인지 홀수인지를 판별?
# if, if ~ else, if ~ elif ~ else
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
if (number % 3 == 0 | number % 5 == 0) :
    print('{}은 3과 5의 배수입니다.'.format(number))
else :
    print('{}은 3과 5의 배수가 아닙니다.'.format(number))
