# python sequence type - tuple
# 순서 O, 중복 O, 수정 X, 삭제 X
# immutable (읽기 전용)
# () 선언 가능하다

myTuple = ('반도', '강철비', '아이언맨')
oneTuple = (1,)

# 사용자의 편의를 위해서 괄호없이 만들 수 있다.
myTuple = 1, 2, 3, 4, 5

multiTuple = (100, 10000, 'Ace', 'Base', 'Captain')
print('tuple print - ', multiTuple)

# sequence형 자료이기 때문에 인덱싱과 슬라이싱이 가능하다.
# indexing
print('index - 1 ', multiTuple[1])
print('slicing - ', multiTuple[2:], type(multiTuple[2:])) # 튜플 타입으로 리턴
print('slicing - ', multiTuple[2:5])

# casting 만일 튜플 데이터를 조작해야 한다면 리스트로 형변환(Casting) 후 조작

multiList = list(multiTuple[2:])
castingMultiTuple = tuple(multiList)


# python sequence type - range
# 1 ~ 99 까지의 정수 중 짜굿만 저장된 튜플을 생성한다면?
range01 = range(10)
print(range01)

range02 = range(1, 11, 2)
print(range02)

evenRange = tuple(range(2, 100, 2))
print(evenRange)



