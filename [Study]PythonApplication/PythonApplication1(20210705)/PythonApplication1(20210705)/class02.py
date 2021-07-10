
class AutoMobile:
    name = ""
    velocity = 0
    def __init__(self, str):
    # 객체 생성 시 호출되는 특수 내장 합수, self는 객체 자신을 의미함.
        self.name = str # str 문자열을 02라인의 name에 대입
    def velocityPlus(self):
        self.velocity = self.velocity + 1
    def velocityDw(self):
        self.velocity = self.velocity - 1
        if self.velocity < 0:
            self.velocity = 0

ac = AutoMobile("소나타") #문자열을 매개변수로 객체를 생성함.
ac.velocity = 20
ac.velocityPlus()
print(ac.name+ "의 속도는 %d 입니다." % ac.velocity)
