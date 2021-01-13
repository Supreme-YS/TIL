from ai.file.fileProc import *

fileStream('hello.txt', 'r')

try :
    fileStream('hello.txt', 'asd')
except Exception as e:
    print(e)

print('end')