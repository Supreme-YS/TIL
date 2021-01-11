from ai.oop.oop_inheritance import *

# car01 = Car('GV70', 4, 2400)
# car01.carInfo()

# parent = Parent('부모', '공무원')
# print('parent - ', parent.display())

# child01 = Child01('자식', '강사', 49)
# print(child01.display()) # Parent에 정의된 display를 child01에서 가져온 모습
# child01.childInfo()

# stu01 = StudentVO('심영석', 30, 'gimpo', '2011')
# print('stu info - ', stu01.stuInfo())
#
# tea01 = TeacherVO('심영석', 30, 'gimpo', 'python')
# print('tea info - ', tea01.teaInfo())
#
# emp01 = ManagerVO('심영석', 30, 'gimpo', 'manager')
# print('manager info - ', emp01.empInfo())
#
# userDate = MyDate()
# userDate.setYear(-2021) # 2021 출력된다.
# print(userDate.getYear())
# userDate.year = -2021 # 이처럼,
#                       # 인스턴스 함수에 직.접 접근한다. 악의적으로 활용될 수 있다.
#                       # 따라서, 정보은닉이 필요하다.
#
# print(userDate.getYear()) # AttributeError: 'MyDate' object has no attribute '_MyDate__year' 오류가 발생.
#                           # 외부에서 직접 접근이 불가능하다. 캡슐화되어있기 때문이다.
#                           # 따라서, 함수를 통해 간접적으로 접근을 할 수 있다.
#
# userDate.getYear()

hiding = HidingClass('Supreme-YS', 'PM', 100)
print('name - ', hiding.name)
print('dept - ', hiding.dept) # AttributeError: 'HidingClass' object has no attribute 'dept' 발생
                              # private을 접근하고 있기 때문에 속성오류가 발생한다.
print('num  - ', hiding.num)
print('utype - ', hiding.utype) # 생성된 인스턴스의 타입 체크