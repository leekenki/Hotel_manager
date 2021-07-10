
a=55

if a < 50 :
    print('-----1') # 무조건 들여쓰기 해야합니다.
    print('-----2')
print('-----3')

''' #점 3개로 시작하고 끝하면 주석처리됩니다.

print('숫자를 입력하세요')
number=input()
number=int(number) # 파이썬은 이렇게 바꿉니다. 원래 str 타입이던걸 int로 변경합니다.

print(type(number))
'''
'''
number=int(input('숫자를 입력하세요')) # 위에 3개줄을 한줄로 만들었습니다.
print(type(number))
'''

'''
if number < 50 :
    print('50보다 작은 값 입력')
else :
    print('50보다 큰 값 입력')
'''

age = int(input('현재 나이를 입력합니다.'))
if age < 10:
    print('유년충입니다.')
elif age < 20:
    print('10대입니다.')
elif age < 30:
    print('20대입니다.')
elif age < 40:
    print('30대입니다.')
elif age < 50:
    print('40대입니다.')
else:
    print('장년층입니다.')

