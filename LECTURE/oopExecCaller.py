from ai.oop.oopExec import *

# unit = Unit(10, 100)
# unit.unitInfo()

# 필요에 의해서 타입을 체크하고 활용이 가능하다.
# if unit.utype == 'Unit' :
#     print(True)
# else :
#     print(False)

# Marine 생성
marine01 = Marine(10, 100, 0, 0)
marine02 = Marine(10, 100, 0, 0)
marine03 = Marine(10, 100, 0, 0)
marine04 = Marine(10, 100, 0, 0)

# Medic 생성
medic01 = Medic(0, 100, 0)
medic02 = Medic(0, 100, 0)

# 병력을 list에 담기
# 리스트 만드는 방법

# troopList = list()
# troopList = []
# troopList.append()

troopList = []
troopList.append(marine01)
troopList.append(marine02)
troopList.append(marine03)
troopList.append(marine04)
troopList.append(medic01)
troopList.append(medic02)

# 기본정보 출력
# return 타입이 없는 걸 출력하면 None이 출력됨.

for obj in troopList :
    #print(obj) # 주소번지가 찍힘
    obj.unitInfo()
    print("*" * 50)

# DropShip 생성
ship = DropShip(0, 50, 0)

# 부대원 탑승
ship.board(troopList) # board에 unitType이라는 변수에 list 형식의 데이터가 assign 됨.

# 공격지점 설정
ship.attack() # return 이 print로 되어있어서 print로 출력된다.

# 부대원을 내린다면?
troopAttackList = ship.drop() # return 타입이 self.unitType으로 list 형식의 데이터가 할당됨

# 공격
for unit in troopAttackList : # list 형식의 데이터에서
    if isinstance(unit, Marine) : # unit(troppAttackList 에서 가져온 값)이 Marine이라면
        unit.steampack() # Marine의 함수인 steampack 사용이 가능해진다.
    unit.attack()
