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

scores = [100, 50, 80, 90, 70, 60]
print(len(scores))
for score in range(len(scores)):
    print(score, end = '\t')