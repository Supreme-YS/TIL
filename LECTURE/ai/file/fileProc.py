'''
텍스트파일 입출력
open(file = '파일경로/파일명' , mode = 'r|w|a|wb')

file = open(file = 'hello.txt', mode = 'w') # 디렉토리에 해당 파일명이 없으면 새로운 파일이 생성된다.
file.write('Hi, Seok')
file.close()
'''
# file = open(file = 'hello.txt', mode = 'r') # r 읽기모드로 실행
# print(file.read()) # hello.txt에 입력한 것들이 출력
# file.close()
# with open(file = 'hello.txt', mode = 'r') as file # with 를 사용해주면~ close()를 사용해주지 않아도 된다.


def fileStream(fileName, mode) :
    if mode == 'w' :
        pass
    elif mode == 'r' :
        with open(file=fileName, mode=mode) as file :
            line = file.read()
            print('result read - ', line)
    elif mode == 'a' :
        pass

    else :
        raise Exception('모드를 확인하세요')


