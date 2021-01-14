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



