
class AutoMobile:                                     # 클래스 선언
    # 접두어로 접근 속성 결정합니다.
    __name = "스마트"                                 # 객체의 문자열 속성 선언. # __ : Private, : Protexted
    velocity = 0                                      # 객체의 숫자 속성 선언    # 퍼블릭
    __Test__ = "apple"                                # public : __가 이름 양쪽으로 붙은 경우
    def TTTT(self):                                   # self들어가는 괄호안에 안넣으면 외부에서 TTTT를 찾기 때문에 넣어줄것.
        print("------------")
    def velocityPlus(self):                           # 객체의 기능인 메소드 선언
        self.velocity = self.velocity +1
        print("속도는 %d 입니다." % self.velocity)

    def velocityDw(self):                             # 객체의 기능인 메소드 선언
        self.velocity = self.velocity -1
        if self.velocity <0:
            self.velocity = 0
        print("속도는 %d 입니다." % self.velocity)

ac = AutoMobile() # 객체생성
ac.velocityPlus() # 메소드 호출
ac.velocity=20    # 객체 속성에 값을 대입
ac.velocityDw()   # 메소드 호출
#ac.TTTT(self들어가는 괄호 안에 안넣으면 외부에 이렇게 넣어줘야합니다.)