# 복습 코드
#으로 시작하는 곳 부터 줄 끝까지 주석
''' 이것은 구간 주석1 '''
""" 이것은 구간 주석2 """

Variable = 100              # int로 취급됨
Variable = "문자 가능1"     # str로 취급됨
Variable = '문자 가능2'     # "와 '는 같다

print(Variable)             # 문자 가능2 출력 방법1
print("%s" % Variable)      # 문자 가능2 출력 방법2
print(type(Variable))       # 변수의 type을 알아내기
a = type(Variable)
print(a)                    # 변수의 type을 알아내기

print("Variable의 Type : %s" % type(Variable))

a, b, c, d = 100, "apple", 3.14, 'melon'
print("a의 Value : %d" % a)
print("a의 Type  : %s" % type(a))
print("b의 Value : %s" % b)
print("b의 Type  : %s" % type(b))
print("c의 Value : %f" % c)
print("c의 Type  : %s" % type(c))
print("d의 Value : %s" % d)
print("d의 Type  : %s" % type(d))



