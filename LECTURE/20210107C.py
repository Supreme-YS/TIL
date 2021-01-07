# python control statement for looping
# for ~ in range()
# for ~ in list(), dict
# list comprehension

userList = [1, 2, 3, 4, 5, 6, 7, 8, 9]
userList02 = [tmp ** 2 for tmp in userList]
print('comprehension - ', userList02)

'''***************************************'''

# 단어의 빈도수 구하기
wordVec = ["love", "word", "cat", "love", "love", "word"]
print(len(wordVec))

wordCnt = {}
for word in wordVec :
    print(word)
    # get(): 해당 key에 대한 value를 가져오는 함수
    wordCnt[word] = wordCnt.get(word, 0) + 1
print(wordCnt)

wordCnt02 = {}
for word in wordVec :
    if word in wordCnt02 :
        wordCnt02[word] += 1
    else :
        wordCnt02[word] = 1

# 1 ~ 1000의 합
rangeSum = 0

for i in range(1, 1001) :
    rangeSum += i
print('1 ~ 1000 합 {} 입니다.'.format(rangeSum))

# 2000 ~ 2050년 까지 올림픽이 개최되는 년도를 출력하라.
# 단, 한 줄에 5개의 년도를 출력하고 개행
step = 0
for year in range(2000, 2051, 4) :
    print(year, end = '\t')
    step += 1
    if step == 4 :
        print(year, end = '\n')
        step = 0

cnt = 0
for year in range(2000, 2051, 4) :
    cnt += 1
    print(year, end='\t')
    if cnt % 5 == 0 :
        print()

# 아래 리스트에서 세 글자 이상의 단어만 출력하라
wordList = ['I', 'am', 'Ironman', 'python', 'language', '!']

for i in wordList :
    if len(i) >= 3 :
        print(i)
    else :
        pass

wordList = ['I', 'am', 'Ironman', 'PYTHON', 'language', 'IF', 'for']

for i in wordList :
    if i.isupper() == True :
        print(i)

for i in wordList :
    if i == i.upper() :
        print(i)

wordList = ['dog', 'cat', 'pig', 'carrot', 'horse']
for word in wordList :
    print(word.capitalize())

# 해당 파일의 확장자를 제거하고 파일 이름만 출력한다면?
fileList = ['greeting.py', 'bool.py', 'intro.hwp', 'bigdata.doc', 'ai.doc']

for file in fileList :
    print(file, file.split('.'), file.split('.')[0])

word = 'HandSome Boy'
for i in word :
    if i.isupper() :
        print(i, end=',')

# 주어진 문장에서 모든 문자를 대문자로 출력하세요.
dummySen = "FlksjdfkwLJKAKkljfwsdkjKJFink"

for i in dummySen :
    if i.isupper():
        print(i, end='')
    else:
        print(i.upper(), end='')

wordList = ['가', '나', '다', '라']
for word in wordList [::-1] :
    print(word)

# break, continue
numbers = [14, 3, 4, 7, 10, 24, 17, 2, 33, 1, 15, 34, 37, 38]