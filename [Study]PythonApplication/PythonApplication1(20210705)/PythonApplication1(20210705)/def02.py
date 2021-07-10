
def smart():
    a = int(input("숫자1을 입력하세요 : "))
    b = int(input("숫자2를 입력하세요 : "))
    return a + b # 호출한 곳으로 되돌아갑니다. c = smart()로 가는거지

c = smart()
print('결과는 %d입니다.' %c)


def mydef02(i,j):
    print(i+j)
mydef02(10,20)
# 계산할 숫자를 두 개 입력합니다.
def mydef03(i, j, p): # 3개의 인수를 받는 함수를 선언합니다.
    if p == '+':
        print(i+j)
    elif p == '-':
        print(i-j)
    elif p == '*':
        print(i*j)
    elif p == '/':
        print(i/j)
    n = int(input("첫번째 숫자를 입력하세요 : "))
    m = int(input("두번째 숫자를 입력하세요 : "))
    p = input("연산자를 입력하세요(+, -, *, /)")
mydef03(n,m,p)