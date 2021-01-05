# python sequence type - list
# 자료구조에서 중요
# 파이썬에서는 배열 존재하지 않는다.
# 1차원 자료구조 : R - Vector
# 순서 0 (index 부여 0 ~ ), 중복 0, 수정, 삭제 가능
# [] 이용해서 변수를 선언 할 수 있다.

a = list()
a = []

a = [1, 2, 3]
print(a, type(a))
print(a[0])

a[0] = 5
print(a[0])

# 요소 추가하는 함수 : append(), insert()
a.append(4) # 맨 뒤 인덱스에 값을 삽입
print(a)
a.insert(0,6) # 특정 인덱스에 값을 삽입
print(a)
a.sort() # 오름차순 정렬
print(a)
a.reverse() # 내림차순 & 오름차순 왔다갔다.
print(a)

# pop() : 기존 리스트에서 요소를 가져오고 삭제시킨다. * last index에서 삭제하는 것. 특정 부분을 삭제할때는 remove() 함수 사용
print( "a - pop() : ", a.pop())
print( "a - print() : ", a)

# extend() : 리스트 병합, 리스트 vs 리스트에서 각각의 요소로 삽입하여 하나의 리스트로 만들기
ex = [4, 3]
a.extend(ex)
print('a - append : ', a)

movieRank = ['원더우먼', '해리포터', '겨울왕국', '가타카', '국제수사', '반도']
# 1. 해당리스트에 '배트맨'을 추가한다면?
movieRank.append('배트맨')
print('append - 배트맨 : ', movieRank)

# 2. 원더우먼과 해리포터 사이에 '씽'을 추가한다면?
movieRank.insert(1, '씽')
print('insert - 씽 : ', movieRank) # 기존 1번 인덱스에 있던 해리포터는 한 칸 밀린다.

# 3. 리스트에서 반도를 삭제한다면?
movieRank.remove('반도')
print('remove - 반도 : ', movieRank)

idx = movieRank.index('국제수사')
print('a 국제수사 index : ', idx)
print('a pop() : ', movieRank.pop(idx))
print('pop index 5 : ', movieRank)