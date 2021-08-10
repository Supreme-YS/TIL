import pandas as pd

# 1. displ(배기량)이 4 이하인 자동차와 5 이상인 자동차 중
# 어떤 자동차의 hwy(고속도로 연비)가 평균적으로 더 높은지 확인하세요.
sum_displ_under_4 = sum_displ_over_5 = 0
count_displ_under_4 = count_displ_over_5 = 0

with open('./word/mpg.txt', 'r', encoding='utf=8') as r:
    r.readline()
    for car in r.readlines():
        car_info = car.strip('\n').split(',')
        if float(car_info[2]) <= 4:
            sum_displ_under_4 += int(car_info[-3])
            count_displ_under_4 += 1
        if float(car_info[2]) >= 5:
            sum_displ_over_5 += int(car_info[-3])
            count_displ_over_5 += 1

print('배기량 4 이하 : %.2f' % (sum_displ_under_4 / count_displ_under_4))
print('배기량 5 이상 : %.2f' % (sum_displ_over_5 / count_displ_over_5))

# 2. 자동차 제조 회사에 따라 도시 연비가 다른지 알아보려고 한다.
# "audi"와 "toyota" 중 어느 manufacturer(제조회사)의 cty(도시 연비)가
# 평균적으로 더 높은지 확인하세요.
sum_audi = sum_toyota = 0
count_audi = count_toyota = 0

with open('./word/mpg.txt', 'r', encoding='utf=8') as r:
    r.readline()    # 첫줄 제외
    for car in r.readlines():
        car_info = car.strip('\n').split(',')
        if car_info[0] == 'audi':
            sum_audi += int(car_info[-4])
            count_audi += 1
        if car_info[0] == 'toyota':
            sum_toyota += int(car_info[-4])
            count_toyota += 1

print('아우디 : %.2f' % (sum_audi / count_audi))
print('도요타 : %.2f' % (sum_toyota / count_toyota))

# 3. "chevrolet", "ford", "honda" 자동차의 고속도로 연비 평균을 알아보려고 한다.
# 이 회사들의 데이터를 추출한 후 hwy(고속도로 연비) 평균을 구하세요.
hwy_sum_chevrolet = hwy_sum_ford = hwy_sum_honda = 0
count_chevrolet = count_ford = count_honda = 0

with open('./word/mpg.txt', 'r', encoding='utf=8') as r:
    r.readline()
    for car in r.readlines():
        car_info = car.strip('\n').split(',')
        if car_info[0] == 'chevrolet':
            hwy_sum_chevrolet += int(car_info[-3])
            count_chevrolet += 1
        if car_info[0] == 'ford':
            hwy_sum_ford += int(car_info[-3])
            count_ford += 1
        if car_info[0] == 'honda':
            hwy_sum_honda += int(car_info[-3])
            count_honda += 1

print('쉐보레 : %.2f' % (hwy_sum_chevrolet / count_chevrolet))
print('포드   : %.2f' % (hwy_sum_ford / count_ford))
print('혼다   : %.2f' % (hwy_sum_honda / count_honda))

# 4. "audi"에서 생산한 자동차 중에 어떤 자동차 모델의 hwy(고속도로 연비)가
# 높은지 알아보려고 한다. "audi"에서 생산한 자동차 중 hwy가 1~5위에 해당하는
# 자동차의 데이터를 출력하세요.


# 5. mpg 데이터는 연비를 나타내는 변수가 2개입니다.
# 두 변수를 각각 활용하는 대신 하나의 통합 연비 변수를 만들어 사용하려 합니다.
# 평균 연비 변수는 두 연비(고속도로와 도시)의 평균을 이용합니다.
# 회사별로 "suv" 자동차의 평균 연비를 구한후 내림차순으로 정렬한 후 1~5위까지 데이터를 출력하세요.

car_list = []

with open('./word/mpg.txt', 'r', encoding='utf=8') as r:
    r.readline()    # 첫줄 제외
    for car in r.readlines():
        car_info = car.strip('\n').split(',')
        mpg_mean = (int(car_info[-4]) + int(car_info[-3])) / 2
        car_info.append(mpg_mean)
        car_list.append(car_info)

suv_mfgr = []
suv_mpg_sums_count = []
for car in car_list:
    if car[-2] == 'suv':
        if car[0] not in suv_mfgr:
            suv_mfgr.append(car[0])
            suv_mpg_sums_count.append([car[-1], 1])
        else:
            suv_mpg_sums_count[-1][0] += car[-1]
            suv_mpg_sums_count[-1][1] += 1

suv_mpg_means_data = [data[0]/data[1] for data in suv_mpg_sums_count]
suv_mpg_means_by_mfgr = tuple(zip(suv_mfgr, suv_mpg_means_data))
suv_mpg_means_by_mfgr = sorted(suv_mpg_means_by_mfgr, key=lambda data: data[1], reverse=True)
for i in range(5):
    print('%-9s%.2f' % (suv_mpg_means_by_mfgr[i][0], suv_mpg_means_by_mfgr[i][1]))


# 6. mpg 데이터의 class는 "suv", "compact" 등 자동차의 특징에 따라
# 일곱 종류로 분류한 변수입니다. 어떤 차종의 도시 연비가 높은지 비교하려 합니다.
# class별 cty 평균을 구하고 cty 평균이 높은 순으로 정렬해 출력하세요.
classes = []
cty_sums_count_by_class = []
with open('./word/mpg.txt', 'r', encoding='utf=8') as r:
    r.readline()
    for car in r.readlines():
        car_info = car.strip('\n').split(',')


# 7. 어떤 회사 자동차의 hwy(고속도로 연비)가 가장 높은지 알아보려 합니다.
# hwy(고속도로 연비) 평균이 가장 높은 회사 세 곳을 출력하세요.
avg = []
hwy_count_avg = []
with open('./word/mpg.txt', 'r', encoding='utf=8') as r:
    r.readline()    # 첫줄 제외
    for car in r.readlines():
        car_info = car.strip('\n').split(',')
        if car_info[0] not in avg:
            avg.append(car_info[0])
            hwy_count_avg.append([int(car_info[-3]), 1])
        else:
            hwy_count_avg[-1][0] += int(car_info[-3])
            hwy_count_avg[-1][1] += 1

hwy_mean_by_mfgr_values = [data[0]/data[1] for data in hwy_count_avg]
hwy_mean_by_mfgr = tuple(zip(avg, hwy_mean_by_mfgr_values))
hwy_mean_by_mfgr = sorted(hwy_mean_by_mfgr, key=lambda data: data[1], reverse=True)
for i in range(3):
    print('%-12s%.2f' % (hwy_mean_by_mfgr[i][0], hwy_mean_by_mfgr[i][1]))

# 8. 어떤 회사에서 "compact" 차종을 가장 많이 생산하는지 알아보려고 합니다.
# 각 회사별 "compact" 차종 수를 내림차순으로 정렬해 출력하세요.
avg = []
compact_values = []
with open('./word/mpg.txt', 'r', encoding='utf=8') as r:
    r.readline()
    for car in r.readlines():
        car_info = car.strip('\n').split(',')
        if car_info[-1] == 'compact':
            if car_info[0] not in avg:
                avg.append(car_info[0])
                compact_values.append(1)
            else:
                compact_values[-1] += 1

compact_mfgr = tuple(zip(avg, compact_values))
compact_mfgr = sorted(compact_mfgr, key=lambda data: data[1], reverse=True)

for data in compact_mfgr:
    print('%-12s%d' % (data[0], data[1]))
