str = "파이썬 문자열"              # 문자열 변수 선언
print(str[0])                      # 첫번째 자리의 문자 출력. 리스트처럼 동작함.
print(str[-1])                     # 뒤에서 첫번째 자리의 문자 출력. 리스트처럼 동작함.
#str[0] = '와'                     # 뒤에서 첫번째 자리의 문자값 수정(오류). List가 아님을 알 수 있음
card = 'red', 4, 'python', True    # card 튜플을 선언
#card = ['red', 4, 'python', True] # 리스트 선언. 튜플은 수정이 불가능하고, List와 튜플은 선언방법이 괄호 빼곤 같음.
print(card)                        # card 튜플 전체 출력
print(card[1])                     # card 튜플의 첫 번째 요소 출력
#card[0] = 'blue'                  # card 튜플 첫 번째 요소 값 수정(오류)