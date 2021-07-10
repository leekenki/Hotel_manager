
dict={'번호':10, '성명':'장동건', '나이':23, '사는곳':'서울'} 
# 딕셔너리 타입 변수 선언 만약 같은 key가 2개 이상되면 가장 끝에껄 가져오도록 설정되있음

print(dict)             # dict 변수를 출력
print(type(dict))       # dict 변수의 타입을 출력
print(dict['나이'])     # 나이 key 값으로 value값 출력
dict['나이'] = 24       # 나이 key 값 항목을 변경함.
print(dict['나이'])     
dict['직업']= '배우'    # 직업이라는 키 값과 배우라는 value라는 항목 추가
print(dict)             
print(dict.keys())      # 키값 전체 반환
print(dict.values())    # 값 전체 반환
print('사는곳' in dict) # 키값 존재여부 확인
del dict['사는곳']      # 키값 삭제
print('사는곳' in dict) # dict에 사는곳이라는 키 값 존재여부 출력
print(dict)

#key=list or tuple(dict.key()) 하면 리스트 타입 또는 튜플타입으로 변경됨. # C#의 경우 (list)dict.key() , (tuple)dict.key()
#print(type(key)) 키의 타입이 변경된 것을 확인 할 수 있습니다.