    from ai.oop.oopAbstract import *

    liger = Liger()
    liger.play()
    liger.cry() # 다중상속 시 1차 우선순위가 가장 먼저 정의된 부모를 기준으로 보기 때문에 Tiger의 함수값이 출력


    obj = Base()
    obj.goToSchool()

    stu = Student()
    stu.study()


    import datetime

    def loggerLogin():
        print('Supreme-YS login')

    def loggerLoginSup():
        print('Sup login')

    def loggerLoginYS():
        print('YS login')

    def datetimeDecorator(func) :
        def wrapper() :
            print(datetime.datetime.now()) # 기능 앞 뒤로 decorate 하는 것
            func() # 각 함수별 구현되야 할 기능들
            print(datetime.datetime.now()) # 기능 앞 뒤로 decorate 하는 것
        return wrapper