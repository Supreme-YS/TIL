'''
** Scenario **
Unit (Marine, Medic, DropShip)
Marine - 4명
Medic - 2명
DropShip - 6명을 태워서 특정 지점을 공격
예제를 통한 상속 [실습]
'''
# parent class
class Unit(object) :
    def __init__(self, damage, life):
        # 생성된 인스턴스의 타입을 확인하는 코드
        self.utype = self.__class__.__name__
        # 생성자 선언
        self.damage = damage
        self.life = life
    def unitInfo(self):
        print('타입 {}'.format(self.utype))
        print('공격력 {}'.format(self.damage))
        print('생명력 {}'.format(self.life))

    def attack(self):
        pass

# child class
class Marine(Unit) :
    def __init__(self, damage, life, offenseUpgrade, defenseUpgrade):
        super().__init__(damage, life) # 부모의 구성요소를 참조하고
        self.offenseUpgrade = offenseUpgrade # 자녀 클래스만에 해당하는 것들 생성
        self.defenseUpgrade = defenseUpgrade # 자녀 클래스만에 해당하는 것들 생성

    def UnitInfo(self): # 오버라이딩
        super().unitInfo() # 부모가 가진 unitInfo 함수를 호출 (오버라이딩 메서드)
        print('공격력 업그레이드 {}'.format(self.offenseUpgrade))
        print('방어력 업그레이드 {}'.format(self.defenseUpgrade))

    def attack(self): # 오버라이딩
        print('마린 공격 개시...빵야빵야빵야')

    def steampack(self):
        if self.life > 50 :
            self.damage *= 1.5
            self.life   -= 10
            print('마린 steampack 사용')
        else :
            print('체력이 낮아 스팀팩을 사용할 수 없습니다.')

class Medic(Unit) :
    def __init__(self, damage, life, defenseUpgrade):
        super().__init__(damage, life)
        self.defenseUpgrade = defenseUpgrade

    def unitInfo(self): # 오버라이딩
        super().unitInfo()
        print('방어력 업그레이드 {}'.format(self.defenseUpgrade))

    def attack(self): # 오버라이딩
        print('메딕이 마린을 치료합니다.')

class DropShip(Unit) :

    def __init__(self, damage, life, defenseUpgrade):
        super().__init__(damage, life)
        self.defenseUpgrade = defenseUpgrade

    def unitInfo(self):
        super().unitInfo()
        print('방어력 업그레이드 {}'.format(self.defenseUpgrade))

    def attack(self):
        print('목표지점으로 이동합니다.')

    def board(self, unitType):
        self.unitType = unitType
        print('부대원을 태웠습니다.')

    def drop(self):
        print('모든 부대원(유닛)을 DropShip에서 내립니다.')
        return self.unitType