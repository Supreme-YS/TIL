# 1. displ(배기량)이 4 이하인 자동차와 5 이상인 자동차 중
# 어떤 자동차의 hwy(고속도로 연비)가 평균적으로 더 높은지 확인하세요.

class Car(object):
    sum = 0
    def __init__(self, manufacturer, model, displ, year, cyl, trans, drv,
                 cty, hwy, fl, carclass):

        self.manufacturer = manufacturer
        self.model = model
        self.displ = displ
        self.year = year
        self.cyl = cyl
        self.trans = trans
        self.drv = drv
        self.cty = cty
        self.hwy = hwy
        self.fl = fl
        self.carclass = carclass
        self.avg = (cty + hwy)/2

    def __repr__(self):
        return "{} {} {} {} {} {} {} {} {} {} {}".format(self.manufacturer, self.model, self.displ, self.year, self.cyl,
                                                  self.trans, self.drv, self.cty, self.hwy, self.fl, self.carclass, self.avg)

file = open(file='./word/mpg.txt', mode='r', encoding='utf-8')
car_list = list()
line = file.readline()
while True:
    line = file.readline()
    if not line:
        break

    line = line.replace("\n", "")
    car_data = line.split(",", 11)

    car_list.append(Car(car_data[0], car_data[1], float(car_data[2]),
                        int(car_data[3]), int(car_data[4]), car_data[5],
                        car_data[6], int(car_data[7]), int(car_data[8]),
                        car_data[9], car_data[10]))

def filter_displ_4_lower(tmp):
    return tmp.displ <= 4

def filter_displ_5_upper(tmp):
    return tmp.disps >= 5

displ_4_lower_list = list(filter(lambda tmp:tmp.displ <= 4, car_list))
displ_5_upper_list = list(filter(lambda tmp:tmp.displ >= 5, car_list))

print(displ_4_lower_list, displ_4_lower_list)


sum_hwy4 = 0
sum_hwy5 = 0
cnt4 = 0
cnt5 = 0

for i in car_list:
    displ = float(i.displ)
    if displ <= 4:
        sum_hwy4 += i.hwy
        cnt4 += 1

    elif displ >= 5:
        sum_hwy5 += i.hwy
        cnt5 += 1

print("displ 4이하의 hwy 평균 : {}".format(sum_hwy4/cnt4))
print("displ 5이상의 hwy 평균 : {}".format(sum_hwy5/cnt5))


# 2. 자동차 제조 회사에 따라 도시 연비가 다른지 알아보려고 한다.
# "audi"와 "toyota" 중 어느 manufacturer(제조회사)의 cty(도시 연비)가
# 평균적으로 더 높은지 확인하세요.

a_cty = 0
t_cty = 0
a_cnt = 0
t_cnt = 0

for i in car_list:
    if i.manufacturer == "audi":
        a_cty += i.cty
        a_cnt += 1
    elif i.manufacturer == "toyota":
        t_cty += i.cty
        t_cnt += 1

print("audi의 cty : {}".format(a_cty/a_cnt))
print("toyota의 cty : {}".format(t_cty/t_cnt))


# 3. "chevrolet", "ford", "honda" 자동차의 고속도로 연비 평균을 알아보려고 한다.
# 이 회사들의 데이터를 추출한 후 hwy(고속도로 연비) 평균을 구하세요.

def make_hwyavg(my_list, name):
    my_sum = 0
    my_cnt = 0

    for i in my_list:
        if i.manufacturer == name:
            my_sum += i.hwy
            my_cnt += 1

    return my_sum / my_cnt

print("chevrolet의 hwy : ", make_hwyavg(car_list, "chevrolet"))
print("ford의 hwy : ", make_hwyavg(car_list, "ford"))
print("honda의 hwy : ", make_hwyavg(car_list, "honda"))


# 4. "audi"에서 생산한 자동차 중에 어떤 자동차 모델의 hwy(고속도로 연비)가
# 높은지 알아보려고 한다. "audi"에서 생산한 자동차 중 hwy가 1~5위에 해당하는
# 자동차의 데이터를 출력하세요.

def rank_hwy(my_list, name):

    audi_list = list()
    cnt = 0

    for i in my_list:
        print(i)
        if i.manufacturer == name:
            audi_list.append(i)

    result = reversed(sorted(audi_list, key=lambda car: car.hwy))

    for j in result:
        print(j, end="")
        cnt += 1
        if cnt == 5:
            return 0

rank_hwy(car_list, "audi")


# 5. mpg 데이터는 연비를 나타내는 변수가 2개입니다.
# 두 변수를 각각 활용하는 대신 하나의 통합 연비 변수를 만들어 사용하려 합니다.
# 평균 연비 변수는 두 연비(hwy고속도로와 cty도시)의 평균을 이용합니다.
# 회사별로 "suv" 자동차의 평균 연비를 구한후 내림차순으로 정렬한 후 1~5위까지 데이터를 출력하세요.

def manufac_avg(suv_list):
    manu_dict = dict()
    cnt = 1

    for i in suv_list:
        if i.manufacturer in manu_dict:
            manu_dict[i.manufacturer] += i.avg
            cnt += 1

        else:
            manu_dict[i.manufacturer] = i.avg

    print(manu_dict)

def total_y(my_list, mycls):

    total_list = list()

    for j in my_list:
        if j.carclass == mycls:
            #print(j)
            total_list.append(j)

    return total_list

a = total_y(car_list, "suv")
manufac_avg(a)

# 6. mpg 데이터의 class는 "suv", "compact" 등 자동차의 특징에 따라
# 일곱 종류로 분류한 변수입니다. 어떤 차종의 도시 연비가 높은지 비교하려 합니다.
# class별 cty 평균을 구하고 cty 평균이 높은 순으로 정렬해 출력하세요.

# 7. 어떤 회사 자동차의 hwy(고속도로 연비)가 가장 높은지 알아보려 합니다.
# hwy(고속도로 연비) 평균이 가장 높은 회사 세 곳을 출력하세요.

# 8. 어떤 회사에서 "compact" 차종을 가장 많이 생산하는지 알아보려고 합니다.
# 각 회사별 "compact" 차종 수를 내림차순으로 정렬해 출력하세요.