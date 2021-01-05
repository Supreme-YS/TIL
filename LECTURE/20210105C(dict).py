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

dict02 = dict([('name', 'youngseok'), ('age', 30), ('address','gimpo-si'), ('birth', 930125), ('gender', 'male')])
print('dict02 - ', type(dict02), dict02)

dict03 = dict(name = 'youngseok',
              age=30,
              address = 'gimpo-si',
              birth = 930125,
              gender = 'male')

print('dict03 - ', type(dict03), dict03)

# dict_keys, dict_values, dict_items
print('dict_keys - ', dict03.keys(), type(dict03.keys()), type(list(dict03.keys())))
print('dict_values - ', dict03.values(), type(dict03.values()), type(list(dict03.values())))
print('dict_items - ', dict03.items(), type(dict03.items()), type(list(dict03.items())))
