'''
텍스트파일 입출력
open(file = '파일경로/파일명' , mode = 'r|w|a|wb')
r 읽기, w 쓰기, a 추가, wb 바이너리 형식으로 쓰기
file = open(file = 'hello.txt', mode = 'w') # 디렉토리에 해당 파일명이 없으면 새로운 파일이 생성된다.
file.write('Hi, Seok')
file.close()
'''
# file = open(file = 'hello.txt', mode = 'r') # r 읽기모드로 실행
# print(file.read()) # hello.txt에 입력한 것들이 출력
# file.close()
# with open(file = 'hello.txt', mode = 'r') as file # with 를 사용해주면~ close()를 사용해주지 않아도 된다.

# single line text
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

# multi line text
def withMultiWriter(fileName) :
    with open(fileName, 'w', encoding='utf-8') as file :
        for idx in range(3) :
            print('idx - ', idx)
            text = input('문자열 입력 요망 >>> ')
            file.write('{} - {}\n'.format(idx, text))

# quiz text
def withListFileWriter(fileName, dataset) :
    with open(fileName, 'w', encoding='utf-8') as file :
        for idx in range(len(dataset)) :
            print('idx - ', idx)
            file.write('{}-{}\n'.format(idx, dataset[idx]))


# quiz read
def withListFileRead(fileName, mode) :
    with open(fileName, mode, encoding='utf-8') as file :
        # 첫 번째 방법
        # line = None
        # while line != '' :
        #     line = file.readline() # 한 줄씩 읽어들이는 내장함수
        #     print(line.strip('\n')) # 빈 공백의 줄을 지우기..

        # 두 번째 방법
        # for line in file.readlines() : # 리스트로 리턴이 된다.
        #     print(line.strip('\n'))

        # 세 번째 방법
        # print(file, type(file)) # 클래스 객체.. 출력이 가능할까?
        # for line in file : # 가능하다. 텍스트로 이루어진 객체기 때문에..
            # print(line.strip('\n'))
# readline 한 줄씩 '텍스트'로 읽어오고
# readlines 는 통째로 '리스트'로 갖고온다.