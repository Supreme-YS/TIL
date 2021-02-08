#1001
print('Hello')

#1002
print('Hello World')

#1003
print('Hello')
print('World')

print('Hello\nWorld')

#1004
print("'Hello'")

#1005
print('"Hello World"')

#1006
print('"!@#$%^&*()"')

#1007
print('"C:\Download\hello.cpp"')

#1008
print("\u250C\u252C\u2510")
print("\u251C\u253C\u2524")
print("\u2514\u2534\u2518")

#1010
a = int(input())
print(a)

#1011
a = str(input())
print(a)

#1012
a = float(input())
print("%f" % a)

#1013
a, b = input().split()
print(a, b)

#1014
a, b = input().split()
print(b, a)

#1015
f = input()
print('%.2f' % float(f))

#1017
a = input()
print(a, a, a)

#1018
h, m = map(int, input().split(':'))
print('%d:%d' % (h,m))

#1019
y, m, d = map(int, input().split('.'))
print('%04d.%02d.%02d' % (y,m,d))

#1020
f, b = input().split('-')
print(f+b)

#1021
word = input()
print(word)

#1022
sentence = input()
print(sentence)

#1023
i, f = map(int, input().split('.'))
print(i)
print(f)

data = [int(x) for x in input().split('.')]
print(data[0])
print(data[1])

#1024