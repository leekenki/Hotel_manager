aa=[10,20,30,40]

print('aa= %d,%d,%d,%d' %(aa[-4],aa[-3],aa[-2],aa[-1]))
print('aa= %d,%d,%d,%d' %(aa[0],aa[1],aa[2],aa[3]))
# 상한선 에러 : print(aa[4])
# 하안선 에러 : print(aa[-5])
print(aa[0:2])
print(aa[2:4])
print(aa[0:])
