class Person(object):
    def __int__(self,name,age,address):
        self.name = name
        self.age = age
        self.address =address
    def perInfo(self):
        return self.name + "\t" + str(self.age) + "\t" + self.address
    # 전체를 문자열로 넘길때는, 그 안에 있는 전체 요소가 문자열이여야 오류가 안남

# super() : 부모의 인자들을 호출하는 함수
class StudentV0(Person):
    def __init__(self,name,age,address,stuId): # stuID는 StudentV0만의 고유 인자 요소 생성
        super().__init__(name,age,address) # 부모의 생성자 호출
        self.stuId = stuId
    def stuInfo(self):
        return super().perInfo()+ "\t" + self.stuId

class TeacherV0(Person) :
    def __init__(self,name,age,address,subject):
        super().__init__(name,age,address)
        self.subject = subject
    def teaInfo(self):
        return super().perInfo() + "\t" + self.subject