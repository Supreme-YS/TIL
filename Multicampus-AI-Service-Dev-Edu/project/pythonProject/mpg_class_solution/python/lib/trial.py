from operator import itemgetter
import operator


class Trial:

    def __init__(self):
        self.buffer = {}
        self.underFourDispl = {"sumHwy": 0, "count": 0}
        self.overFourDispl = {"sumHwy": 0, "count": 0}
        self.fBrand = {"cty": 0, "count": 0}
        self.sBrand = {"cty": 0, "count": 0}
        self.brand = {"chevroletHwy": 0, "chevroletCount": 0, "fordHwy": 0, "fordCount": 0, "hondaHwy": 0,
                      "hondaCount": 0}

    def setData(self, columns, dataArray):
        cnt = 0
        data = {}
        for col in columns:
            if col == "hwy" or col == "cty":
                data[col] = int(dataArray[cnt])
            else:
                data[col] = dataArray[cnt]
            cnt += 1

        return data

    def exam1(self, dataArray):
        for key in dataArray:
            if float(key['displ']) <= 4:
                self.underFourDispl['sumHwy'] += key['hwy']
                self.underFourDispl['count'] += 1
            else:
                self.overFourDispl['sumHwy'] += key['hwy']
                self.overFourDispl['count'] += 1

        if self.underFourDispl['sumHwy'] / self.underFourDispl['count'] > self.overFourDispl['sumHwy'] / \
                self.overFourDispl['count']:
            print("[trial 1] 배기량 4이하인 차량이 연비가 좋습니다.")
        else:
            print("[trial 1] 배기량 5이상인 차량이 연비가 좋습니다.")

    def exam2(self, dataArray):
        for key in dataArray:
            if key['manufacturer'] == "audi":
                self.fBrand['cty'] += key['cty']
                self.fBrand['count'] += 1
            elif key['manufacturer'] == "toyota":
                self.sBrand['cty'] += key['cty']
                self.sBrand['count'] += 1

        if self.fBrand['cty'] / self.fBrand['count'] > self.sBrand['cty'] / \
                self.sBrand['count']:
            print("[trial 2] audi 차량이 연비가 좋습니다.")
        else:
            print("[trial 2] toyota 차량이 연비가 좋습니다.")

    def exam3(self, dataArray):
        for key in dataArray:
            if key['manufacturer'] == "chevrolet":
                self.brand['chevroletHwy'] += key['hwy']
                self.brand['chevroletCount'] += 1
            elif key['manufacturer'] == "ford":
                self.brand['fordHwy'] += key['hwy']
                self.brand['fordCount'] += 1
            elif key['manufacturer'] == "honda":
                self.brand['hondaHwy'] += key['hwy']
                self.brand['hondaCount'] += 1

        print("[trial 3] chevrolet avg hwy is {}".format(
            round(self.brand['chevroletHwy'] / self.brand['chevroletCount'], 2)))
        print("[trial 3] ford avg hwy is {}".format(round(self.brand['fordHwy'] / self.brand['fordCount'], 2)))
        print("[trial 3] honda avg hwy is {}".format(round(self.brand['hondaHwy'] / self.brand['hondaCount'], 2)))

    def exam4(self, dataArray):
        dataArray = sorted(dataArray, key=itemgetter('hwy'), reverse=True)
        printCount = 1
        for key in dataArray:
            if key['manufacturer'] == 'audi':
                print("[trail 4] {}".format(key))
                printCount += 1

            if printCount > 5:
                break

    def exam5(self, dataArray):
        data = {}
        count = {}
        for key in dataArray:
            if key['class'] == "suv":
                if key['manufacturer'] in data.keys():
                    data[key['manufacturer']] += (key['hwy'] + key['cty'])
                    count[key['manufacturer']] += 2
                else:
                    data[key['manufacturer']] = (key['hwy'] + key['cty'])
                    count[key['manufacturer']] = 2

        for key in data:
            data[key] = data[key] / count[key] # 평균연비

        data = sorted(data.items(), key=operator.itemgetter(1), reverse=True)

        for cnt in range(0,4):
            print("[trial 5] {} : brand {} , 평균 연비 : {}".format(str(cnt + 1),data[cnt][0],str(data[cnt][1])))

    def exam6(self, dataArray):
        data = {}
        count = {}
        for key in dataArray:
            if key['class'] in data.keys():
                data[key['class']] += key['cty']
                count[key['class']] += 1
            else:
                data[key['class']] = key['cty']
                count[key['class']] = 1

        for key in data:
            data[key] = data[key] / count[key]

        data = sorted(data.items(), key=operator.itemgetter(1), reverse=True)

        for key in data:
            print("[Trail 6] {} : {}".format(key[0],str(key[1])))

    def exam7(self, dataArray):
        data = {}
        count = {}
        for key in dataArray:
            if key['manufacturer'] in data.keys():
                data[key['manufacturer']] += key['hwy']
                count[key['manufacturer']] += 1
            else:
                data[key['manufacturer']] = key['hwy']
                count[key['manufacturer']] = 1

        for key in data:
            data[key] = data[key] / count[key]

        data = sorted(data.items(), key=operator.itemgetter(1), reverse=True)

        for cnt in range(0, 3):
            print("[trial 7] {} : brand {} , 평균 연비 : {}".format(str(cnt + 1), data[cnt][0], str(data[cnt][1])))

    def exam8(self, dataArray):
        count = {}
        for key in dataArray:
            if key['class'] == "compact":
                if key['manufacturer'] in count.keys():
                    count[key['manufacturer']] += 1
                else:
                    count[key['manufacturer']] = 1

        data = sorted(count.items(), key=operator.itemgetter(1), reverse=True)

        for value in data:
            print("[trial 8] {} : compact count {}".format(value[0],value[1]))
