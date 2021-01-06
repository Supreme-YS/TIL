# 입력값
year  = int(input('년도를 입력하세요 : '))
month = int(input('월을 입력하세요(1~12) : '))

# 변수
febDate = 28
febLeapDate = 29
normalDate = 30
otherDate = 31
thirty1Month = {1,3,5,7,8,10,12}
thirtyMonth = {2,4,6,9,11}

# 조건문

if (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0) :
    print("{}년도는 윤년입니다.".format(year))

    if month == 2:
        print('{}년도의 {}월의 마지막 일은 {}일 입니다.'.format(year, month, febLeapDate))

    elif month == thirty1Month :
        print('{}년도의 {}월의 마지막 일은 {}일 입니다.'.format(year, month, otherDate))

    elif month == thirtyMonth :
        print('{}년도의 {}월의 마지막 일은 {}일 입니다.'.format(year, month, normalDate))

    else :
        pass

else :
    print("{}년도는 윤년이 아닙니다.".format(year))

    if month == 2:
        print('{}년도의 {}월의 마지막 일은 {}일 입니다.'.format(year, month, febDate))

    if month == thirty1Month :
        print('{}년도의 {}월의 마지막 일은 {}일 입니다.'.format(year, month, otherDate))

    elif month == thirtyMonth :
        print('{}년도의 {}월의 마지막 일은 {}일 입니다.'.format(year, month, normalDate))

    else:
        pass
