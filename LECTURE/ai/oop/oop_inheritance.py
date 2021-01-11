'''
oop
- 상속 ( is ~ a )
- 다형성
- 은닉화
- 추상화
lib - has ~ a , is ~ a
'''

class Car :

    def __init__(self, name, door, cc): # 기본생성자 = 스페셜생성자 = 인스턴스 소유
        self.name = name
        self.door = door
        self.cc   = cc

    def carInfo(self):
        print('%s 는 %d cc이고, 문 갯수는 %d개 입니다.' % (self.name, self.cc, self.door))

# car01 = Car('GV70', 4 , 2400)
# car01.carInfo()
# car01.함수 # car01 함수에 접근
# car01.변수 # car01 변수에 접근

# 최상위 : Object > Sup > Sub 순 Sub가 가장 많은 구성요소를 갖고 있다. 
class Sup(object) : # Sup가 object를 상속받는 형식 java의 extends
    pass

class Sub(Sup) : #Sub가 Sup을 상속받는 형식
    pass
