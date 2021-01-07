# 단어의 빈도수 구하기
wordVec = ['love', 'word', 'cat','love', 'word', 'cat']
print(len(wordVec)) # list의 개수 = 요소의 개수

# get() : 해당 key의 value값 호출함수
wordCnt = {}
for word in wordVec : # wordVec리스트를 word로 담기
    wordCnt[word] = wordCnt.get(word, 0) + 1 #wordCnt라는 딕셔너리에 word를 key 값으로 할당
    print(wordCnt[word])
print(wordCnt,type(wordCnt))
