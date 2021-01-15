'''
palindrom (회문)
단어를 거꾸로 읽어도 제대로 읽는 것과 같은 단어 또는 문장
예) level, sos, rotator, 'nurses run'
기준이 필요 ( 중앙을 기준으로 해서 첫 글자와 마지막 글자를 비교 )
반복문
// - 몫을 취하는 연산자
'''

str = 'jslim9413'
idx = len(str) // 2 # 중앙값 찾기
print(str[idx])

def isPalindrom() :
    isFlag = True
    word = input('회문 검사를 위한 단어를 입력하세요 :')
    for idx in range(len(word) // 2) :
        if word[idx] != word[-1 - idx] :
            isFlag = False # 같지 않으면 False
            break
    return isFlag

def reversedPalindrom() :
    word = input('회문 검사를 위한 단어를 입력하세요 : ')

    print( type(reversed(word)) , reversed(word))
    print( list(word) , list(reversed(word)))
    print(list(word) == list(reversed(word)))

# palindrom_word.txt 팡리의 단어를 읽어서 회문인 단어만 출력?
def palindromFile() :
    with open(file = './word/palindrome_words.txt', mode='r', encoding='utf-8') as file :
        for line in file :
            line = line.strip('\n')
            if line == line[::-1] :
                print(line)


# 특정 문자열에서 N - gram 개의 연속된 요소를 추출한다면?
# 자연어처리
# hello -> 2 n gram -> he / el / ll / lo

text = 'hello'
for idx in range(len(text) - 1) :
    # print('idx - ', idx)
    print(text[idx], text[idx+1], sep='')

# 문장이 입력됐을 때, 2n gram 을 한다면?
text = 'this is python script'
textList = text.split()
print(textList)
print( type(textList))

for idx in range(len(textList) - 1) :
    # print('idx - ', idx)
    print(textList[idx], textList[idx+1])
    
# zip() 함수
