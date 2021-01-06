# if test written by Supreme-YS

# 1
num = int(input('숫자를 입력하세요(0~255 사이의 값) : '))

if num > 0 and num < 255 :
    print(num - 20)

    if num < 0 :
        print(0)

    elif num > 255 :
        print(255)
else :
    print('범위를 초과했습니다.')

# 2
presentTime = input("현재 시간을 입력하세요 : ")

if presentTime == '03:10' :
    print("정각입니다.")

else :
    print("정각이 아닙니다.")

# 3

fruitName = input("과일을 입력하세요 : ")
fruit_list = ["사과", "포도", "홍시"]

if fruitName in fruit_list :
    print('정답입니다.')
else :
    print('오답입니다.')

# 4

userInvestment = input('종목명을 입력하세요 : ')
warnInvestmentList = ["Microsoft", "Google", "Naver", "Kakao", "SAMSUNG", "LG"]

if userInvestment in warnInvestmentList :
    print('투자 경고 종목입니다.')
else :
    print('투자 경고 종목이 아닙니다.')

# 5
userSeasons = input('계절을 입력하세요 : ')
fruit = {"봄" : "딸기", "여름" : "토마토", "가을" : "사과"}

if userSeasons in fruit.keys():
    print('정답입니다.')
else :
    print('오답입니다.')

# 6

singleWord = input("문자 하나를 입력하세요 : ")

if singleWord == singleWord.upper():
    print(singleWord.lower())
else :
    print(singleWord.upper())

# 7

userScore = int(input('점수를 입력하세요 : '))

if 100 >= userScore >= 81 :
    print('A')
elif 80 >= userScore >= 61 :
    print('B')
elif 60 >= userScore >= 41 :
    print('C')
elif 40 >= userScore >= 21 :
    print('D')
elif 20 >= userScore >= 0 :
    print('E')
else :
    print('범위를 초과했습니다.')

# 8

num1 = int(input('첫 번째 숫자를 입력하세요 : '))
num2 = int(input('두 번째 숫자를 입력하세요 : '))
num3 = int(input('세 번째 숫자를 입력하세요 : '))

if num1 > num2 and num1 > num3 :
    print('{}이 가장 큰 수 입니다.'.format(num1))
elif num2 > num1 and num2 > num3 :
    print('{}이 가장 큰 수 입니다.'.format(num2))
elif num3 > num1 and num3 > num1:
    print('{}이 가장 큰 수 입니다.'.format(num3))
else:
    pass

# 9
phoneNumber = input('휴대폰 번호를 입력하세요 : ').split('-')

if phoneNumber[0] == '011' :
    print('SKT')
if phoneNumber[0] == '016':
    print('KT')
if phoneNumber[0] == '019':
    print('LG UPLUS')
if phoneNumber[0] == '010':
    print('알수없음')
else :
    print('잘못된 값을 입력했습니다.')

# 10
idNum = list(input('주민등록번호를 입력하세요 : '))

if idNum[7] == '1' or idNum[7] == '3':
    print('남자')
elif idNum[7] == '2' or idNum[7] == '4':
    print('여자')
else:
    print('잘못된 값을 입력했습니다.')

# 11
idNum = list(input('주민등록번호를 입력하세요 : '))
regionNum = idNum[8] + idNum[9] # 현재 string 상태

seoulRange = ['00', '01', '02', '03', '04', '05', '06', '07', '08']
busanRange = ['09', '10', '11', '12']

if regionNum in seoulRange:
    print('서울')
elif regionNum in busanRange:
    print('부산')
else :
    print('다른 지역입니다.')

# 12
credits = float( input("이수한 학점을 입력하세요 : "))
avg = float( input("평점을 입력하세요 : "))

if credits >= 140 and avg >= 2.0 :
    print("졸업이 가능합니다.")
else :
    print("졸업이 불가능합니다.")

# 13
from random import randint
answer = randint(1, 10)
print(answer)

if True :
    userAnswer = int(input('1부터 10까지 숫자를 입력하세요 : '))
    if userAnswer == answer :
        print("정답입니다.")
    elif userAnswer != answer :
        print("정답이 아닙니다.")
else:
    pass

# 14
userNum = int(input('숫자를 입력하세요 : '))

if userNum % 2 == 0 :
    print("짝수입니다.")
elif userNum % 2 == 1:
    print("홀수입니다.")
else:
    pass

