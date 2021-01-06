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

# 요소 추가
set01.add(7)
print('set01 add - ', set01)

# 요소 삭제 remove(), discard()
set01.remove(9) # set01에 존재하지 않는 값인 9를 삭제해보기 --> 오류발생
set01.discard(9) # 존재하지 않는 값을 삭제해도 오류를 발생시키지 않는다. --> 오류발생X

set01.remove(4)
print('set01 remove - ', set01)

# 중복제거용으로 활용할 수 있음.
gender = ['홀', '짝', '짝', '짝', '짝', '홀', '짝', '홀', '짝']
setGender = set(gender)
print('do remove - ', setGender, type(setGender))
# 만일 슬라이싱, 인덱스를 부여해서 활용하고 싶으면 casting 하면 된다.
listGender = list(setGender)
print('list casting - ', listGender, type(listGender))
print('list casting - ', listGender[0], type(listGender))
print('list casting - ', listGender[1], type(listGender))