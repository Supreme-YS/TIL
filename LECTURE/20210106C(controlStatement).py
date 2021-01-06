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


# 윤년의 조건
# 4의 배수이고 100의 배수가 아니거나
# 400의 배수일 때를 윤년이라 한다.

year  = int(input('년도를 입력하세요 : '))
month = int(input('월을 입력하세요(1~12) : '))
febDate = 29
normalDate = 30
otherDate = 31
leapMonth = [1,3,5,7,8,10,12]
yearMonth = [2,4,6,9,11]

if (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0) :
    print("{}년도는 윤년입니다.".format(year))

    if month == 2:
        print('{}년도의 {}월의 마지막 일은 {}일 입니다.'.format(year, month, febDate))

    else :
        pass

else :
    print("{}년도는 윤년이 아닙니다.".format(year))

    if month == leapMonth :
        print('{}년도의 {}월의 마지막 일은 {}일 입니다.'.format(year, month, otherDate))

    elif yearMonth :
        print('{}년도의 {}월의 마지막 일은 {}일 입니다.'.format(year, month, normalDate))

# if구문을 사용하여 년도와 월을 입력받아 월의 마지막 일을 출력한다면?

