def callf(func):
    return func()
def say_hi():
    return "안녕"
callf(say_hi)


def add(a, b):
    return a + b
def substract(a, b):
    return a - b
def multiply(a, b):
    return a * b
def divide(a, b):
    return a / b

func_lst = [add, substract, multiply, divide]
a = int(input("a의 값을 입력하세요: "))
b = int(input("b의 값을 입력하세요: "))
for func in func_lst:
    print(func.__name__, ":", func(a, b))