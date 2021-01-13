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
    try :
        if mode == 'w' :
            file = open(file=fileName, mode=mode)
            file.write('sample txt')
        elif mode == 'r' :
            file = open(file=fileName, mode=mode)
            line = file.read()
            print('result read - ', line)
        elif mode == 'a' :
            file = open(file=fileName, mode=mode)
            file.write('\nappend') # 특정 문자를 개행해서 추가하기~
        else :
            raise Exception('모드를 확인하세요')
    except Exception as e :
        print('error - ', e)
    finally :
        if file != None :
            file.close()

def withMultiWriter(fileName) :
    with open(fileName, 'w', encoding='utf-8') as file :
        for idx in range(3) :
            print('idx - ', idx)
            text = input('문자열 입력 요망 >>> ')
            file.write('{} - {}\n'.format(idx, text))

