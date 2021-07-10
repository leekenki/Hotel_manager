print("나눗셈 프로그램을 시작합니다...")

Num1=int(input("나누어질 수를 입력하시오 : "))
Num2=int(input("나누는 수를 입력하시오   : "))

try:
    Num3=Num1/Num2
except ZeroDivisionError:
    print("0으로 나눌 수 없습니다.")
except:
    print("예외가 발생했습니다.")
    exit()
    #exit()
else:
    print("결과는 %d입니다..." %Num3)
finally:
    print("프로그램을 종료합니다...")

"""
except:
    print("0으로 나눌 수 없습니다.")
    exit()
"""