# python set type - set(집합)
# 순서 X , 중복을 허용하지 않음
# {} 선언으로 생성가능
# set([])

temp = {'youngseok', 'student'}
print('set - ', temp, type(temp))

temp = set([1, 2, 3, 4, 5, 5, 5, 5])
print('set - ', temp, type(temp))

temp = set([1, 3.14, 'pen', False])
print('set - ', temp, type(temp))

casting = tuple(temp)
print('casting - ', casting , casting[1:3])

set01 = set([1, 2, 3, 4, 5])
set02 = set([3, 4, 5, 6, 7])

# 교집합 & == intersection() , 합집합 | == union(), 차집합 - == difference()
# 객체(변수, 함수)
# 객체.변수, 객체.함수() 접근

print('교집합 & - ', set01 & set02)
print('교집합 intersection - ', set01.intersection(set02))

print('합집합 | - ', set01 | set02)
print('교집합 union - ', set01.union(set02))

print('차집합 - - ', set01 - set02)
print('차집합 difference - ', set01.difference(set02))



