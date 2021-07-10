
import time

while 1:
    # pass #while문을 무한반복으로 여러개 돌리면 개고속으로 돌아가기 때문에 CPU에도 영향을 미친다.
    time.sleep(0.01) #time.sleep을 10개나 띄웠는데 CPU에 사용률에 거의 영향을 주지 않아버린다. 안바쁨.