class Kiosk:
    def __init__(self):
        # 메뉴와 가격을 정의합니다.
        self.menu = ['americano', 'latte', 'mocha', 'yuza_tea', 'green_tea', 'choco_latte']
        self.price = [2000, 3000, 3000, 2500, 2500, 3000]
        self.order_menu = []  # 주문 리스트
        self.order_price = []  # 가격 리스트

    # 메뉴 출력 메서드
    def menu_print(self):
        print("메뉴:")
        for i in range(len(self.menu)):
            print(i + 1, self.menu[i], ' : ', self.price[i], '원')

    # 주문 메서드
    def menu_select(self):
        n = 0
        while n < 1 or n > len(self.menu):  # 조건 수정
            n = int(input("음료 번호를 입력하세요 : "))  # 음료 번호 입력

            # 메뉴판에 있는 음료 번호일 때
            if 1 <= n <= len(self.menu):  # 조건 수정
                self.price_sum = self.price[n - 1]  # 선택 음료의 가격
                
                # 음료 온도 물어보기
                t = 0  # 기본값을 넣어주고
                while t != 1 and t != 2:  # 1이나 2를 입력할 때까지 물어보기
                    t = int(input("HOT 음료는 1을, ICE 음료는 2를 입력하세요 : "))
                    # 음료의 온도에 따라 temp 변수를 "HOT" 또는 "ICE"로 지정합니다.
                    if t == 1:
                        self.temp = "HOT"
                    elif t == 2:
                        self.temp = "ICE"
                    else:
                        print("1과 2 중 하나를 입력하세요.\n")

                self.order_menu.append(self.temp + ' ' + self.menu[n - 1])  # 주문 리스트에 추가합니다.
                self.order_price.append(self.price_sum)  # 가격 리스트에 추가합니다.
                print(self.temp, self.menu[n - 1], ' : ', self.price_sum, '원')  # 주문 결과 출력

                # 추가 주문 또는 지불
                while True:  # 지불을 선택하기 전까지 반복합니다.
                    print()  # 줄 바꾸면서 
                    n = int(input("추가 주문은 음료 번호를, 지불은 0을 누르세요 : "))  # 추가 주문 또는 지불
                    if n > 0 and n <= len(self.menu): 
                        # 추가 음료 온도 
                        t = 0  # 기본값을 넣어주고
                        while t != 1 and t != 2:  # 1이나 2를 입력할 때까지 물어보기
                            t = int(input("HOT 음료는 1을, ICE 음료는 2를 입력하세요 : "))
                            if t == 1:
                                self.temp = "HOT"
                            elif t == 2:
                                self.temp = "ICE"
                            else:
                                print("1과 2 중 하나를 입력하세요.\n")

                        self.order_menu.append(self.temp + ' ' + self.menu[n - 1])  # 추가 음료 주문 리스트에 추가
                        additional_price = self.price[n - 1]  # 추가 음료 가격
                        self.order_price.append(additional_price)  # 추가 음료 가격 리스트에 추가
                        print('추가 주문 음료', self.temp, self.menu[n - 1], ':', additional_price, '원')
                        print('합계 : ', sum(self.order_price), '원')  # 현재 합계 출력
                    elif n == 0:  # 지불을 입력하면
                        self.pay()  # 지불 메서드 호출
                        break  # 반복 종료
                    else:  # 없는 번호를 입력할 때
                        print("없는 메뉴입니다. 다시 주문해 주세요.")
            else:  
                print("없는 메뉴입니다. 다시 주문해 주세요.")

    # 지불 메서드
    def pay(self):
        print("주문이 완료되었습니다.")
        self.table()  # 주문표 출력

    # 주문서 출력 메서드
    def table(self):
        print("\n주문표")
        print("------------------------------------------------")
        print("{:<10} {:<15} {:<10}".format("온도", "음료", "가격"))
        print("------------------------------------------------")
        for item, price in zip(self.order_menu, self.order_price):
            temp, drink = item.split(' ', 1)  # 온도와 음료 분리
            print("{:<10} {:<15} {:<10}".format(temp, drink, price))
        print("------------------------------------------------")
        print("총 합계 : ", sum(self.order_price), '원')

# 아래 코드를 사용하여 Kiosk 객체를 생성하고 메뉴를 출력하고 주문을 진행합니다.
a = Kiosk()  # 객체 생성 
a.menu_print()  # 메뉴 출력
a.menu_select()  # 주문
a.pay()  # 지불
a.table()  # 주문표 출력