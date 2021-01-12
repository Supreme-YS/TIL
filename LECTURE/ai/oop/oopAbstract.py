'''
***** 학습목표 *****
다중상속
추상화
데코레이션
제너레이터
이터레이터
'''
class Animal(object) :
    def cry(self):
        pass

class Tiger(Animal) :
    def jump(self):
        print('호랑이가 점프를 한다')
    # 오버라이딩
    def cry(self):
        print('어흥')

class Lion(Animal) :
    def bite(self):
        print('한 입에 꿀꺽한다')
    # 오버라이딩
    def cry(self):
        print('그르렁')

# 다중상속
class Liger(Tiger, Lion) : # 타이거와 라이언을 상속받기
    def play(self):
        print('라이거가 사육사와 재미있게 놀고 있다')
