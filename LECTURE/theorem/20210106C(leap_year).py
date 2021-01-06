# 입력값
year  = int(input('년도를 입력하세요 : '))
month = int(input('월을 입력하세요(1~12) : '))

if month > 12 :
    print("{}월은 없습니다.".format(month))
    exit()

# 변수
febDate = 28
febLeapDate = 29
normalDate = 30
otherDate = 31

# 조건문
# 윤년일 때
if (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0) :
    print("{}년도는 윤년입니다.".format(year))

    if month == 2:
        print('{}년도의 {}월의 마지막 일은 {}일 입니다.'.format(year, month, febLeapDate))

    elif month in [1, 3, 5, 7, 8, 10, 12]:
        print('{}년도의 {}월의 마지막 일은 {}일 입니다.'.format(year, month, otherDate))

    elif month in [4, 6, 9, 11] :
        print('{}년도의 {}월의 마지막 일은 {}일 입니다.'.format(year, month, normalDate))

    else :
        pass

# 윤년이 아닐 때
else :
    print("{}년도는 윤년이 아닙니다.".format(year))

    if month == 2:
        print('{}년도의 {}월의 마지막 일은 {}일 입니다.'.format(year, month, febDate))

    elif month in [1, 3, 5, 7, 8, 10, 12] :
        print('{}년도의 {}월의 마지막 일은 {}일 입니다.'.format(year, month, otherDate))

    elif month in [4, 6, 9, 11] :
        print('{}년도의 {}월의 마지막 일은 {}일 입니다.'.format(year, month, normalDate))

    else:
        pass
