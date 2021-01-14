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