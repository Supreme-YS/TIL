# python mapping type - dict
# dictionary 는 key 와 value 의 대응관계 type
# Hash 또는 Associative Array 와 유사한 구조
# {} 이용해서 변수를 선언 할 수 있다.
# 순서 X , 키 중복 X , 수정 O , 삭제 O

temp = {}
print(type(temp))

dict01 = {
    'name'    : 'youngseok',
    'age'     :  30,
    'address' : 'gimpo-si',
    'birth'   : '930125',
    'gender'  : 'male'
}
print('dict - ', type(dict01), dict01)

# dict에 요소를 추가하는 방법
dict01['marriage'] = False
print('dict - ', type(dict01), dict01)

# 키 유무를 판단
print('marriage' in dict01) # 키가 존재하면 True, 그렇지 않으면 False

# 데이터 확인
print('address - ', dict01['address'])

dict02 = dict()
