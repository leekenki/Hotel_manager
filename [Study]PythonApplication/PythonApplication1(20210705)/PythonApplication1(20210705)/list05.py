aa=[30, 10, 20, 40]
print(type(aa))
print(aa)
print('현재의 리스트      : %s' %aa)
zz=aa.pop()    # stack 알고리즘 적용(마지막 1개를 꺼낸다)
print('현재의 리스트      : %s' %aa)
print('리스트에서 꺼낸 값 : %s' %zz)
aa.sort();
print('현재의 리스트      : %s' %aa)
aa.reverse();
print('현재의 리스트      : %s' %aa)
aa.remove(30);
print('현재의 리스트      : %s' %aa)
aa.insert(1, 40)
print('현재의 리스트      : %s' %aa)
aa.insert(0, 50)
print('현재의 리스트      : %s' %aa)
aa.append(70)
print('현재의 리스트      : %s' %aa)
aa.extend([77,88,99])
print('현재의 리스트      : %s' %aa)
aa.extend([55])
print('현재의 리스트      : %s' %aa)
