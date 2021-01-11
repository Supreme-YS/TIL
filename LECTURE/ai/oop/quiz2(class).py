# [실습]
# 1. Account class 작성 - account, balance, interestRate, type(계좌 종류 S|F)
# 1-1. SavingAccount , FundAccount 추가
# 1-2.  |                       |
# 1.3.  -- printInterestRate()  -- printInterestRate()
# 1.4  SavingAccount - printInterestRate()
#      기본 이자율에 만기시 이자율을(0.1) 복리로 계산
# 1.5  FundAccount - printInterestRate()
#      기본 이자율에 잔액 10만원 이상이면 10%
#      기본 이자율에 잔액 50만원 이상이면 15%
#      기본 이자율에 잔액 100만원 이상이면 20%


# 2. accountInfo() - 계좌의 정보를 출력한다(account, balance, interestRate)
# 3. deposit(amount) - 계좌 잔액에 매개변수로 들어온 amount를 누적한다.
# 4. printInterestRate() - 현재 잔액에 이자율을 계산하여 소수점 자리 2자리까지 출력한다.
# 5. withDraw(amount) - 매개변수로 들어온 금액만큼을 출금하여 잔액을 변경한다.
# 단) 잔고가 부족할 경우 '잔액이 부족하여 출금할 수 없습니다' 출력한다.

# Parent Class
class Account(object) :

    def __init__(self, account, balance, interestRate):
        self.account = account
        self.balance = balance
        self.interestRate = interestRate
        self.type = type

    def accountInfo(self):
        print('계좌번호 {}, 잔액 {}, 이자율 {}'.format(self.account, self.balance, self.interestRate))

    def deposit(self, amount):  # 예금
        self.balance += amount
        print('현재 잔액 {}'.format(self.balance))

    def printInterestRate(self):
        print('%.2f' % float(self.balance + (self.balance * self.interestRate)))

    def withDraw(self, amount):  # 출금
        if self.balance < amount:
            print('잔액이 부족하여 출금할 수 없습니다.')
        else:
            self.balance -= amount
            print('현재 잔액 {}'.format(self.balance))

# Child Class

class SavingAccount(Account):

    def __init__(self, account, balance, interestRate, type):
        super().__init__(account, balance, interestRate)
        self.type = type
        print(self.type)

    def printInterestRate(self):
        self.balance += self.interestRate * 0.1

class FundAccount(Account):
    def __init__(self, account, balance, interestRate, type):
        super().__init__(account, balance, interestRate)
        self.type = type
        print(self.type)

    def printInterestRate(self): # 오버라이딩
        if 0 < self.balance < 100000 :
            self.balance += self.interestRate
            print(self.balance)

        elif self.balance < 500000 :
            self.balance += self.interestRate * 0.1
            print(self.balance)

        elif self.balance < 1000000 :
            self.balance += self.interestRate * 0.15
            print(self.balance)

        else :
            self.balance += self.interestRate * 0.2
            print(self.balance)