from ai.oop.oopAbstract import *

liger = Liger()
liger.play()
liger.cry() # 다중상속 시 1차 우선순위가 가장 먼저 정의된 부모를 기준으로 보기 때문에 Tiger의 함수값이 출력


obj = Base()
obj.goToSchool()

stu = Student()
stu.study()