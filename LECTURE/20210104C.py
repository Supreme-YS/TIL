# Numeric (숫자, 정수, 실수)

a = 123
b = 3.14
c = 3.14E10 # 지수형태
e = 0o34 # 8진수
f = 0XAB # 16진수

# type()
print(type(a))
print(type(b))
print(type(c))
print(type(e))
print(type(f))

div = 3/4 # 나누기
print(div)

result = 3 ** 3 # 자승
print(result)

result = 10 % 3 # 나머지 값
print(result)

result = 10 // 3 # 몫
print(result)

# Sequence - list
# 임의의 값을 순서대로 저장하는 집합 자료형 (index 부여 및 값 변경 가능한 형식)
# 함수를 이용하는 방법, []대괄호를 이용하는 방법이 있다.
# range()를 이용하여 리스트를 생성하는 방법이 있다.

print('''
# Sequence - list
# 임의의 값을 순서대로 저장하는 집합 자료형 (index 부여 및 값 변경 가능한 형식)
# 함수를 이용하는 방법, []대괄호를 이용하는 방법이 있다.
# range()를 이용하여 리스트를 생성하는 방법이 있다. 
''')
# 리스트 생성 방법
a = []
print( type(a))
a = list()
print( type(a))

a = [1, 2, 3]

# indexing
print(a[0])
print(a[1])
print(a[2])
# print(a[3]) -- Error
# -(minus) indexing
print(a[-1])
print(a[-2])
print(a[-3])

# Slicing
print('slicing')
print(a[1:2])
print(a[0:2])

a = [1, 2, 'hello', 3.14, True] # 다양한 데이터 타입으로 리스트에 삽입 할 수 있다.
b = [1, 2, ['show', 'me', 'the', 'pass'], 3.14]
c = b[2]

print( type(c[2]), type(c[3]))
print( type(b[2][2:]))

a = [1, 2, 3]
b = [4, 5, 6]

print(a + b) # merge 할 수 있다.
print(a * 3) # a라는 list를 3번 반복한다.

print(a)

# index로 값 변경이 가능하다.
a[0] = 5
print(a)
print(a[0])

# end 옵션 (print - println)
print('Welcome To', end = ' ')
print('IT News', end = ' ')
print('Web Sites', end = ' ')

# format 사용법(d, s, f)
one = 1
two = 2
print(one, two)
print('%d,%d' % (one, two))
print('{},{}'.format(one, two))

print('%10s' % ('nice', )) # 뒤에부터 자릿수 채우기
print('%-10s' % ('nice', )) # 앞에부터 자릿수 채우기
print('%1.8f' % (3.14159213254)) # 정수자리는 1개, 실수자리는 8자리로 제한하겠다.
print('{:1.8f}'.format(3.14159213254)) # format을 할 때 {} 안에 인덱스를 넣어야 한다. 정수자리는 1개, 실수자리는 8자리로 제한하겠다.
