# python control statement for looping
# for ~ in range()
# for ~ in list, dict

userSum = 0

for tmp in range(1, 11, 2) :
    print(tmp)
    userSum += tmp

print('누적 값은 : {} 입니다.'.format(userSum))

userList = [1, 2, 3, 4, 5]
for tmp in userList :
    print(tmp, end = '\t')
    userSum += tmp
print('누적 값은 : {} 입니다.'.format(userSum))

userSum = 0
userList = [(1,2),(3,4),(5,6)]
for tmp01, tmp02 in userList : # 두 개의 값을 받으니까 그릇도 두 개가 필요하다.
    print(tmp01, tmp02, end = '\t')
    userSum += (tmp01 + tmp02)
print('누적 값은 : {} 입니다.'.format(userSum))

userDict = {'name' : 'Supreme-YS', 'gender' : 'm'}

for (key, value) in userDict.items() :
    print('{}, {}'.format(key, value))

userSum = 0
scores = [100, 50, 80, 90, 70, 60]
print(len(scores))
for idx in range(len(scores)):
    userSum += scores[idx]

# %d, %s, %f
print('scores 합 %d' % userSum)

# list comprehension
'''
[ for 구문을 통한 반복적인 표현식을 이용할 수 있다 if 조건도 사용 가능 ]
'''

userList = [1, 2, 3, 4, 5, 6, 7, 8, 9]
userList02 = [ tmp ** 2 for tmp in userList]
print('comprehension - ', userList02)

# userList에서 짝수만 가져와서 실행식을 시
userList03 = [tmp ** 2 for tmp in userList if tmp % 2 == 0]
print('comprehension - ', userList03)

# dict에서도 사용 가능
userDict = {'Test' + str(tmp) : tmp ** 2 for tmp in range(1, 10)}
print(userDict)
userDict = {'Test' + str(tmp) : tmp ** 2 for tmp in range(1, 10) if tmp % 2 == 0}
print(userDict)