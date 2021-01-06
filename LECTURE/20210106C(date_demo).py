# python date type
from datetime import date, datetime

today = date.today()
print('date - ', type(today), today, today.year, today.month, today.day)
print('{} 년도, {} 월 , {} 일 '.format(today.year, today.month, today.day))


# 시간

todayDateTime = datetime.today()
print('datetime - ', todayDateTime)
print('{} 시, {} 분 , {} 초 '.format(todayDateTime.hour, todayDateTime.minute, todayDateTime.second))