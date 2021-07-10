
str='꿈은 이루어 진다'
i=0
while i<3:
    print(str)
    i = i + 1

Smart=bool(-1) 
# 빚도 재산? 이라서 참 나온다. 10000? 가능함. 0.1도 가능함. 거짓은 0이고 나머지는 뭘넣어도 True됨.
# 글자넣으면? 글자도 참나옵니다. 0이냐 아니냐만 가지고 True, False를 찾아넣습니다.
print(type(Smart))
print(Smart)

Smart=True
while Smart:
        print(1111) #여기까지만 치면 안끝남. Control+ C 눌러야 끝나집니다.
        i = i + 1
        if i > 10:
            Smart = False