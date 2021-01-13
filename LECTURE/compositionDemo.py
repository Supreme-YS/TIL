'''
학습목표
- Composition == Aggregation
- 상속을 피하고 Clss 일부 기능을 가져다 그대로 활용하고 싶을 때 사용한다.
- Exception
- File 입출력

'''

class Calc01(object) :
    def __init__(self, x, y) :
        self.x = x
        self.y = y

    def add(self):  # Calc01 소속의 add
        return self.x + self.y

    def substract(self):
        return self.x - self.y

class Calc02(object) :
    def __init__(self, x, y) :
        self.x = x
        self.y = y

    def add(self): # Calc02 소속의 add
        return self.x + self.y

    def multiply(self):
        return self.x * self.y

class UserCalc : # Calc02의 multiply 기능만 쓰고 싶다. (상속받지 않고)
    def __init__(self, x, y) :
        self.x = x
        self.y = y
        self.cal02 = Calc02(x, y) # 객체안의 '변수'가 클래스를 참조한다. cal02라는 변수에 클래스
                                  # 객체를 명시적으로 생성

    def add(self):  # Calc01 소속의 add
        return self.x + self.y

    def substract(self):
        return self.x - self.y

    def multiply(self):
        return self.cal02.multiply() # 인스턴스 변수안에 Cal02 클래스가 있다. 그래서 호출이 가능하고 기능을 가져다 쓸 수 있다.

calc = UserCalc(3, 4)
print('calc multiply - ', calc.multiply())