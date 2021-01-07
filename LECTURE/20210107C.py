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
# search = 17
search = 17
numbers = [14, 3, 4, 7, 10, 24, 17, 2, 33, 1, 15, 34, 37, 38]

for num in numbers:
    if num == search :
        continue
        print('Found - ', num)
        #break
    else :
        print('Not Found - ', num)

# for ~ else

search = 17
numbers = [14, 3, 4, 7, 10, 24, 17, 2, 33, 1, 15, 34, 37, 38]
for num in numbers:
    if num == search :
        print('Found - ', num)
        break
else :
    print('Not Found - ', num)

for i in range(1, 6) :
    print('i -', i)

    for j in range(1, 4) :
        print('i - {}, j - {}'.format(i, j))

# 구구단
for i in range(2, 10):
    for j in range(1, 10) :
        print('{} X {} = {}'.format(i, j, (i * j)))
    print()
    if i == 5 : # 5단 까지 출력하고 싶을 때
        break

    string ='''저는 여러분과 함께 파이썬 강의를 듣고있는 심영석입니다.
    어려운 시기입니다. 
    나이는 숫자에 불과하지만 벌써 30이네요...
    '''

    sentences = []
    words     = []

    # append(), insert(), extend()

    for s in string.split('\n') :
        sentences.append(s)
        for w in s.split() :
            words.append(w)
    print('sentences - ', sentences,len(sentences))
    print('words - ', words, len(words))

# 분류정확도

answer  = [1, 0, 2, 1, 0]
predict = [1, 0, 2, 0 ,0]
acc = 0
for idx in range(len(answer)) :
    fit = answer[idx] == predict[idx]
    #print(fit, end = '\t')
    acc += int(fit) * 20

print('classification accuracy - ', acc)

'''
enumerate
반복문 사용시 몇 번째 반복문인지 확인이 필요하다면
인덱스 번호와 컬렉션 요소를 확인 할 수 있다.'''

bookList = ['SQL', 'R', 'TEXT-MINING', 'NLP', 'DATA-MINING', 'PYTHON', 'DJANGO']
for idx, book in enumerate(bookList) :
    print('index - {}, value - {}'.format(idx, book))

'''
while <expression> :
    statement
    증감식
'''
cnt = 5
while cnt > 0 :
    print(cnt)
    cnt = cnt - 1
    print('cnt - ', cnt)

# list - pop()
whileList = ['foo', 'bar', 'baz']
while whileList :
    print(whileList.pop())
    print('whileList - ', whileList)
print('while - end')

# 난수를 발생시켜서 횟수내에 맞추는 게임

import random
ran = random.random() # 0 ~ 1 사이의 난수를 발생시킨다(실수형)
print('random - ', ran)

ran = random.randint(0, 2) # 정수형의 난수를 발생시킨다
print('random - ', ran)

'''
숫자 범위 : 1 ~ 10
내가 입력한 숫자 > 난수 : 더 작은 수를 입력
내가 입력한 숫자 < 난수 : 더 큰 수를 입력
'''

randNum = random.randint(1, 10)

while True :
    guessNum = int(input('예상 숫자를 입력하세요 : '))

    if randNum == guessNum :
        print('success')
        break

    elif randNum > guessNum :
        print('더 큰 수를 입력하세요')

    else :
        print('더 작은 수를 입력하세요')

