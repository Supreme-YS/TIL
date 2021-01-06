# python bool 타입의 특징
# bool
# True(T), False(F)
# not, and, or --> 논리연산
# &, |, ~ --> 비교연산

# False로 간주
# "", [], (), {}, 숫자(0 이외의 숫자는 True), None

xValue = 5 # 0101
yValue = 0 # 0000

print( xValue & yValue ) # 0101, 0000의 논리곱이 되므로 0000이 출력된다. 따라서 0이 출력
print( bool(xValue & yValue) ) # 0이라는 값에 casting연산이 되어서 False가 출력

print( xValue | yValue ) # 0101, 0000의 논리합이 되므로 0101의 10진수 값인 5가 출력
print( bool(xValue | yValue) ) # 5라는 값에 casting연산이 되어서 True가 출력

trueValue = True
falseValue = False
# 다른 언어에서는 bool 을 int로 캐스팅하는게 말도 안되는 행위이지만 python에서는 가능하다.
print( int(trueValue) ) # 1 출력
print( int(falseValue) ) # 0 출력

print(trueValue & falseValue) # 논리곱 False 출력
print(trueValue | falseValue) # 논리합 True 출력

print('and - ', trueValue and falseValue)
print('or  - ', trueValue or falseValue)
print('not - ', not trueValue)
print('not - ', not falseValue)