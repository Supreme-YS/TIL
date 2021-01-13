from ai.file.fileProc import *

# single line text inout
fileStream('./ai/file/hello.txt', 'r')

# multi line text out
withMultiWriter('multiline.txt')
print('end')

# quiz text out

lines = ['안녕하세요',
         '혹시 졸리우시면 아이스크림 콜?',
         '그럼 졸지말고 집중',
         '강사의 주옥같은 말을 한 귀로 흘리면 안돼요ㅜ_ㅜ']

withListFileWriter('listline.txt', lines)
