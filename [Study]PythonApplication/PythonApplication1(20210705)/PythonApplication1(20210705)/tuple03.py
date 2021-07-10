
card= 'red', 4, 'python', True # card 튜플을 다양한 타입의 요소로 선언함.
print(card)
a, b, c, d = card              # card의 4개의 요소 값들을 a~d 변수에 할당함.
print(a)
print(card[0])
a='apple'
print(card)
# card[0]='apple'                   # 변수의 값을 수정함. 변수의 경우는 튜플이 아닌 bool타입의 변수이기 때문에 수정가능
                                    # 일반적으로 튜플은 요소 값을 수정할 수 없다.
