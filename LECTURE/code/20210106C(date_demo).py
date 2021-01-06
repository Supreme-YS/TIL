# python date type
from datetime import date, datetime

today = date.today()
print('date - ', type(today), today, today.year, today.month, today.day)
print('{} 년도, {} 월 , {} 일 '.format(today.year, today.month, today.day))


# 시간

todayDateTime = datetime.today()
print('datetime - ', todayDateTime)
print('{} 시, {} 분 , {} 초 '.format(todayDateTime.hour, todayDateTime.minute, todayDateTime.second))

# pip | conda install
# pip 와 conda의 차이점
# 라이브러리 간에 의존관계가 있다. 버전관리도 되는데.. conda install은 의존관계에 포함한 모든 package를 다 설치하는데 pip는 딱 지정한 것만 인스톨한다.

# dateutil # 날짜관련 연산을 지원해주는 모듈

from datetime import date, datetime, timedelta
# from 에서 .을 찍는 의미? --> 패키지의 하위 패키지, 패키지에 들어있는 함수의 모듈을 사용하겠다.
from dateutil.relativedelta import relativedelta

today = date.today()

# weeks, days, hours, minutes, seconds 만 timedelta에서 사용이 가능한데,
days = timedelta(days=-1)
print('오늘 이전 하루 - {}'.format(today + days))

# year, month 관련된 옵션을 필요로 한다면 # relativedelta 사용하면 된다.
days = relativedelta(months=-2)
print('두달 전 오늘 - {}'.format(today + days))

days = relativedelta(years=-2)
print('일년 전 오늘 - {}'.format(today + days))

from dateutil.parser import parse # 패키지(dateutil)의 모듈(parser)에서 함수(parse)만 가져다 쓰겠다.

userDate = parse("2021-06-04")
print('parse date - ', userDate, type(userDate))

userDate = datetime(2021, 12, 25)
print('datetime date - ', userDate, type(userDate))

# 날짜 객체의 출력형식을 원하는 것으로 변경

today = datetime.today()

# 날짜형식 -> 문자열형식의 포맷으로 지정
# strftime()
print("{}".format(today.strftime('%m-%d-%Y')), type(today.strftime('%m-%d-%Y')))

# 문자열형식 -> 날짜형식의 포맷으로 지정
# strptime()

strDate  = '2021,01,06-11:12:40'
userDate = datetime.strptime(strDate, '%Y,%m,%d-%H:%M:%S')
print( type(userDate), userDate)











