from ai.file.fileProc import *

# single line text inout
fileStream('./ai/file/hello.txt', 'r')

# multi line text out
withMultiWriter('multiline.txt')
print('end')