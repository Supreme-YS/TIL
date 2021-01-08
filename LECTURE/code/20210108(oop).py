# python 객체지향 프로그래밍(oop)

'''
패키지(Package) > 모듈(module) > 클래스 (class) > 함수 (function)
Function 담을 수 있는 그릇은 Class,
Class를 담을 수 있는 그릇 Module,
Module을 담을 수 있는 그릇은 Package

Object Oriented Programming (OOP)

Real World                      P/G World
----------------추상화과정------------------
Object ---------   Class   ------> instance != class / class는 instance가 아니다. class는 instance를 생성할 수 있게 하는 template
- 명사적 특징 ---> Variable  ______/
- 동사적 특징 ---> Function  ______/

class에 정의되는 변수와 함수는 instance의 소유이다.
class는 instance를 생성하기 위해 만든다.
'''

# 학생의 정보를 저장한다. --> 비효율적
stuName = 'Supreme-YS'
stuMajor = 'Industrial Engineering'
stuID = '20111850'
stuGrade = 4.5

# 비효율 극복하려고 시도할 수 있지만(list, dict 사용) --> 추천하지 않는 방법
stuNameList = ['Supreme-YS', "더기"]

# class를 이용해서 한 학생의 데이터를 논리적인 하나의 단위로 묶어서 사용 ==> OOP
'''
class vs instance
namespace         : 객체를 instance화 할 때 저장된 공간
class variable    : 직접 접근 가능 및 공유
instance variable : 객체소유로 별도 존재 
self              : instance 소유의 멤버라는 걸 명시한다. 

class
- 함수의 모임
- 역할 : 여러개의 함수와 공유 데이터를 묶어서 객체를 생성할 수 있는 Template
- 구성 : 멤버 = 변수(데이터) + 메서드(함수) + 생성자(초기화)
- 형식 : class 클래스이름 : 
            변수            - 자료 저장
            초기화           - 객체 생성시 호출되는 함수
            def 함수이름() : - 자료처리 
'''
# class 이름의 첫 번째 글자는 대문자(capitalize)로 정의하는 것이 Rule

class Calc :
    # 변수선언
    x = 0
    y = 0

    # 생성자함수 혹은 초기화
    def __init__(self):
        print('객체 생성시 호출되는 함수이고 난 생성자 혹은 초기화라고 한다.')

    # 함수선언
    def plus(self):
        print('사용자 정의 함수이고 난 instance의 소유가 된다.')

# Class(설계도면)에 대한 instance(건물)를 만들어내는 문법
obj = Calc()# --> 자동으로 init이라고 하는 객체생성시 호출됨 --> 설계도면(Class)을 기반으로 건물(instance)을 지은 상태
obj.plus() # 위쪽에서 obj는 class내 함수들의 주소값을 갖고있음 그래서 변수명.함수명() 으로 호출할 수 있음

'''
user define function
- setXXXX
- getXXXX
- isXXXXX
'''

# OOP 방식으로 설계하기
class Student :

    def __init__(self, name, major, id, grade): # 초기화 함수가 생성되는 시점에 4개의 매개변수를 받는구나~
                                                # self는 인자가 아니다. self는 인스턴스 소유를 나타내는 것
        self.name  = name                       # 고로 이 친구들도 인스턴스의 소유
        self.major = major
        self.id    = id
        self.grade = grade

    def __repr__(self): # 인스턴스를 문자열로 보여주는 내장함수
        return self.name + "\t" + self.major + "\t" + self.id + "\t" + str(self.grade)

    def getInfo(self):
        return '이름 : {} \t 전공 : {} \t 학번 : {} \t 학점 : {}'.format(self.name, self.major, self.id, self.grade)


stuList = []
stu01 = Student('SupremeYS', 'IE', '20111850', 4.5)
stu02 = Student('Supreme-YS2', 'IE2', '20111850-2', 4.5)
stu03 = Student('Supreme-YS3', 'IE3', '20111850-3', 4.5)

stuList.append(stu01)
stuList.append(stu02)
stuList.append(stu03)

print(stuList)


stu01 = Student('Supreme-YS', 'IE', '20111850', 4.5)
print('stu01 address - ', stu01)

print(stu01.name)
print(stu01.major)
print(stu01.id)
print(stu01.grade)


'''-------------------------------------------------------------------------------------------'''
# 인스턴스 소유의 변수가 아닌 클래스 소유의 변수
# namespace ( instance -> class -> super class
class Student :

    scholarshipRate = 3.5 # class variable ( 클래스 소유 ) self로 사용할 수 없고 , class 소유이기 때문에

    def __init__(self, name, major, id, grade): # 초기화 함수가 생성되는 시점에 4개의 매개변수를 받는구나~
                                                # self는 인자가 아니다. self는 인스턴스 소유를 나타내는 것
                                                # init은 생성자 함수(내장함수) : 객체 생성시 실행되는 함수
        self.name  = name                       # 고로 이 친구들도 인스턴스의 소유
        self.major = major
        self.id    = id
        self.grade = grade

    def __repr__(self): # 인스턴스를 문자열로 보여주는 내장함수
        return self.name + "\t" + self.major + "\t" + self.id + "\t" + str(self.grade)

    def getInfo(self):
        return '이름 : {} \t 전공 : {} \t 학번 : {} \t 학점 : {}'.format(self.name, self.major, self.id, self.grade)

    def isScholarShip(self):
        if self.grade >= Student.scholarshipRate: # 클래스 소유의 변수를 활용할 때는 class명을 사용해서 접근해야 한다.
            return True
        else :
            return False

stu01 = Student('YS', 'IE', '2011', 4.5)
print('장학금 여부 - ', stu01.isScholarShip(), Student.scholarshipRate)

# 인스턴스 소유가 아닌 class method
'''
self X
클래스 함수는 cls인 인자를 받고 모든 인스턴스가 공유하는 클래스 변수와
같은 데이터를 생성, 변경 또는 참조하기 위해서 사용됩니다.
'''

class Employee :

    raiseRate = 1.1 # 급여인상률 / class variable이다. / class 소유의 변수

    def __init__(self, name, salary):
        self.name = name
        self.salary = salary
        print('employee init')

    def getSalary(self):
        return '현재 {}님의 급여는 {} 입니다.'.format(self.name, self.salary)

    @classmethod # decorator를 통해 클래스 메서드라는 것을 명시해줘야한다. # 클래스 소유의 함수
    def updateRate(cls, rate): # 클래스 소유의 함수(메서드)는 self가 아니라 cls로 가져가야 한다.
        print('인상률이 {}에서 {} 로 변경되었습니다.'.format(Employee.raiseRate, rate))
        cls.raiseRate = rate

    def applyRaise(self): # 인스턴스 소유의 메서드 이기 때문에 아래 Employee 대신에 cls 사용 못한다.
        self.salary = int(self.salary * Employee.raiseRate)

    # static method(함수) cls(클래스소속)도 self(인스턴스소속)도 아닌 것들
    # Decoration 필요하다
    # class 함수와 static 함수는 동일한데, 차이는 namespace(영역)이 다르다는 차이가 있다.
    @staticmethod
    def isValid(salary):
        if salary < 0 :
            print('음수가 될 수 없습니다')

emp01 = Employee('Supreme-YS', 1000) # 인스턴스를 생성
print('인상 전 급여 - ', emp01.getSalary()) # emp01.getSalary() 는 인스턴스 소유의 함수

Employee.updateRate(1.5) # Employee.updateRate는 클래스 소유의 함수
emp01.applyRaise()

print('인상 후 급여 - ', emp01.getSalary())

print(Employee.isValid(1000))






