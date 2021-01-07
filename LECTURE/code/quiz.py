'''
10보다 작은 자연수 중에서 3 또는 5의 배수는 3,5,6,9가 존재해요! 이것들의 합은 23입니다.
1000보다 작은 자연수 중에서 3 또는 5의 배수들을 구해서 모두 합하면 얼마인가요?
'''
# 변수 선언
number = list(range(1, 1000))
sum = 0

# looping : number라는 list에서 i라는 그릇에 담기
for i in number :

    # 조건문 : 3 또는 5의 배수들 체크
    if i % 3 == 0 or i % 5 == 0:
        # type 체크
        # print(i, type(i))
        # 조건에 해당하는 값을 sum 에 누적
        sum = sum + i
    # 기타 값들에 대한 처리
    else:
        pass
# 누적값 출력
print(sum)

'''
정답 : 233168
'''