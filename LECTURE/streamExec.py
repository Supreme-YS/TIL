'''
a.py    b.py
 ---------
  (has~a)

class A
   |  (is~a)
class B

* composition
class A ----- class B
'''

'''
20210114 학습목표
- binary 형식의 입출력
- 객체직렬화(Serializable) -> 파일저장
- pickle 객체직렬화를 도와주는 모듈
'''

# scores 객체 정보를 xxxx.txt. 파일로 저장
scores = {'kor' : 100, 'eng' : 70, 'math' : 90, 'science' : 82}
print( type(scores))

def pickleWriter() :
    with open(file='dict.txt', mode='w', encoding='utf-8') as file :
        for (key, value) in scores.items() :
            file.write('{} - {}\n'.format(key, value))
    
    print('저장완료')

pickleWriter()

# pickle로 저장
import pickle

def pickleWriter01() :
    with open(file='dictPickle.txt', mode='wb') as file :
        pickle.dump(scores, file) # dump는 binary 형식으로 바꾸는 메서드
    print('객체 직렬화를 통한 파일저장')
    
pickleWriter01()

def pickleReader() :
    with open(file='dictPickle.txt', mode='rb') as file :
        dictScores = pickle.load(file) # load는 binary 형식을 읽는 메서드
        print('파일 로딩 - ', dictScores)
    print('객체 직렬화된 파일을 로드하기')
    
pickleReader()

# 1
# 단어가 줄 단위로 저장된 cnt_words.txt 파일에서 10자 이하인 단어의 갯수를 카운트하는
# 함수를 구현하고 호출한다면?
'''My answer'''
def countWords() :
    countUnder = []
    with open(file = './word/cnt_words.txt', mode = 'r', encoding= 'utf-8') as file :
        for line in file.readlines() :
            line = line.strip('\n')
            if len(line) <= 10 :
                countUnder.append(line)
    print('10자 이하의 단어의 갯수는 {}개 입니다.'.format(len(countUnder)))
    print(countUnder)
countWords()

'''Teacher answer'''
def wordCntFunc() :
    wordList = []
    with open(file = './word/cnt_words.txt', mode = 'r', encoding= 'utf-8') as file :
        for word in file.readlines() :
            word = word.strip('\n')
            if len(word) <= 10 :
                wordList.append(word)
    print('10자 이하의 단어의 갯수는 {}개 입니다.'.format(len(wordList)))

wordCntFunc()

# 2
# special_words.txt 파일에서 문자가 'c'가 포함된 단어를 출력하는 함수를 만들어서 호출한다면?
# 주의) 단어를 출력할 때는 등장한 순서대로 출력하며, 쉼표나 마침표는 출력하지 않는다.

'''My answer'''
def includeCword() :
    with open(file = './word/special_words.txt', mode = 'r', encoding= 'utf-8') as file :
        for word in file.readline():
            word = word.replace(',', ' ') # 쉼표를 공백으로 대체
            word = word.replace('.', ' ') # 마침표를 공백으로 대체
            word = word.replace(' ', '\n') # 공백을 개행으로 구분
            if 'c' in word.:
                print(word)

'''Teacher Answer'''
def specialWordFuc() :
    with open(file = './word/special_words.txt', mode = 'r', encoding= 'utf-8') as file :
        words = file.read().split() # 함수를 연결해서 쓸 수 있다. Chaining 기법
        for word in words :
            if 'c' in word :
                print(word.strip(',.'))

specialWordFuc()

# 3
# zipcode.txt
# input() 이용해서 동 이름을 입력 받아서 해당하는 동의 주소를 출력하는 함수를 정의하고 호출한다면?
# 예시 ) 개포 입력 --> 개포 1동 , 개포 2동 ..etc 출력.
# startswith(), endswith()

def searchAddrFunc () :
    dong = input('찾는 동을 입력하세요 : ')
    with open(file = './word/zipcode.txt', mode = 'r', encoding='utf-8') as file :
        line = file.readline()
        while line :
            address = line.split()
            if address[3].startswith(dong) and address[3].endswith('동') : # 입력받은 값으로 시작하고 해당하는 값으로 끝나는 것들만 !
                print(address)
            # 다음 줄로 라인을 넘기는 것
            line = file.readline()

searchAddrFunc()


'''
csv, excel 파일은 -> pandas 라이브러리를 사용
- pip install pandas
- conda install pandas
- service_bmi.csv 
- DataFrame : 테이블 형식
'''
import pandas as pd

bmiDataSet = pd.read_csv('./word/service_bmi.csv', encoding='utf-8')
print(bmiDataSet.info())
print(bmiDataSet.head()) # 최상위 5개의 데이터 정보를 보여준다.
print(bmiDataSet.tail()) # 최하위 5개의 데이터 정보를 보여준다.

# Feature(속성) 에 대한 접근 - Series로 return 된다.
print(bmiDataSet.height, type(bmiDataSet.height)) # height feature(피쳐)에 해당하는 데이터가 출력되고, type은 Series다. 리스트와 유사
print(bmiDataSet['weight']) # 이런식의 접근도 가능하다.
print(bmiDataSet['label']) # 이런식의 접근도 가능하다.

# 키 / 몸무게 평균
print('height avg {}, weight avg {}'.format( sum(bmiDataSet.height)/len(bmiDataSet.height),
                                             sum(bmiDataSet['weight'])/len(bmiDataSet['weight']) ))

# 키 최대 / 몸무게 최대
print('height max {}, weight mx {}'.format( max(bmiDataSet.height), max(bmiDataSet['weight']))) # 표현식을 두 개 사용함.

# label 빈도수
labelCnt = {}
for label in bmiDataSet.label :
    labelCnt[label] = labelCnt.get(label, 0) + 1 # key 값으로 value를 꺼내는 데 없으면 0 있으면 1추가
print(labelCnt)

'''
spam_data.csv (common separate value)
'''
spamDataSet = pd.read_csv('./word/spam_data.csv', header=None, encoding='ms949') # 기본 ANSI가 ms949
print(spamDataSet)
print(spamDataSet.info()) # 첫번째 줄은 헤더로 인식한다. 따라서, 헤더 옵션을 줌으로써 해결가능
print(spamDataSet.head())

target = spamDataSet[0]
print('target - ', target, type(target))
text = spamDataSet[1]
print('target - ', text, type(text))

# spam = 1, ham = 0 새로운 타겟을 만들고 싶다면?
target = [ 1 if t == 'spam' else 0 for t in target ] # list comprehension에서 else까지 써야할 때는 if 조건문이 앞에 나와야한다.
print(target)

# 코드클린 - 문자열에 대한 정규표현식을 이용해서 문자를 제거하는 작업
# 정규표현식
# import re ( regular expression 의 약자 )
'''
1. 메타문자
. ^ $ * + ? {} | () \
. 점 -> 무엇이든 한 글자를 의미
^    -> 시작문자 지정 의미
*    -> 0 or more를 의미
+    -> 1 or more를 의미
?    -> 0 or 1

예)
[abc] -> a, b, c 중 한 문자와 매치
[0-5] -> 0, 1, 2, 3, 4, 5 중 매치
[^0-5] -> 0, 1, 2, 3, 4, 5 가 아닌것 매치
^[0-5] -> 반드시 0, 1, 2, 3, 4, 5로 시작되야 하는 것

\d -> 숫자의 자릿수
\D -> 숫자가 아닌 문자 매칭의 자릿수
\w -> 문자 + 숫자를 의미
\W -> 문자 + 숫자가 아닌 문자 매치
\s -> 공백

예)
010-0000-0000
\d{3}-\d{4}-\d{4}
^\d{3}-\d{4}-\d{4} # 반드시 숫자로 시작하는 세자리(^)

- sub()
- match()
- search()
- findall()
- findinter()

'''

# example
import re
p = re.compile('[a-z]+') # a부터 z까지 하나 이상
match = p.match('python')
print(match)

# 텍스트 전처리 - (특수문자, 숫자, 공백, 영문제거) => 한글 단어만 추출하겠다. 라는 의도로 한번 배보자!
# 그니까, 만약에 데이터를 크롤링을 통해 수집했는데 순수히 한글만 보고 싶을 때, 데이터를 꺨껌하게 정리하고 싶을 때 사용하는게 정규표현식
text = spamDataSet[1]
print(text, type(text))

def cleanText(str):

    for text in str :

        text = re.sub('[,.?!:;]', ' ', text) # str에서 ,.?!:;를 만나면 공백으로 대체하겠습니다! 라는 의미
        #print(text)
        text = re.sub('[0-9a-zA-Z]', ' ', text) # 0~9, a-z, A-Z 까지 제거
        #print(text)
        text = ' '.join(text.split()) # 공백을 ' '로 대체
        print(text)

cleanText(text)

# cleanData = [ cleanText(t) for t in text]
# print(cleanData)

# xls 파일

kospiDataset = pd.ExcelFile('./word/sam_kospi.xlsx')
kospi = kospiDataset.parse('sam_kospi') # 시트 이름을 할당
print(kospi.info())

from statistics import *
print('high mean -', mean(kospi.High))

# json 파일 입출력 - 파이썬의 딕셔너리라고 생각하면 됨. 쫄지마셈. 어렵지 않음

