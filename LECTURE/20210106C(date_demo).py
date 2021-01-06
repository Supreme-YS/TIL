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
# from 에서 .을 찍는 의미? --> 패키지의 하위 패키지, 패키지의 들어있는 함수의 모듈을 사용하겠다.
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