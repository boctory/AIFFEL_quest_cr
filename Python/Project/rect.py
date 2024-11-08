# 사각형 넓이를 구하는 클래스 완성!
class Square:
    def __init__(self):
        self.square = int(input('넓이를 구하고 싶은 사각형의 숫자를 써주세요.\n 1.직사각형 2.평행사변형 3.사다리꼴 \n >>>'))

        if self.square == 1:
            print('직사각형 함수는 rect()입니다.')
            print(self.rect())

        elif self.square == 2:
            print('평행사변형 함수는 par()입니다.')
            print(self.par())
        
        elif self.square == 3:
            print('사다리꼴 함수는 trape()입니다.')
            print(self.trape())
        
        else:
            print('1, 2, 3 중에서 다시 입력해주세요')

    def rect(self):
        width, vertical = map(int, input('가로, 세로를 입력하세요. 예시 : 가로,세로\n >>>').split(','))
        area = width * vertical
        result = '직사각형의 넓이는 : ' + str(area)
        return result

    def par(self):
        base = float(input('밑변의 길이를 입력하세요: '))  # 밑변 입력
        height = float(input('높이를 입력하세요: '))    # 높이 입력
        area = base * height  # 넓이 계산
        result = '평행사변형의 넓이는 : ' + str(area)  # 결과 문자열 생성
        return result  # 결과 반환

    def trape(self):
        base1 = float(input('윗변의 길이를 입력하세요: '))  # 윗변 입력
        base2 = float(input('아랫변의 길이를 입력하세요: '))  # 아랫변 입력
        height = float(input('높이를 입력하세요: '))        # 높이 입력
        area = (base1 + base2) * height / 2  # 넓이 계산
        result = '사다리꼴의 넓이는 : ' + str(area)  # 결과 문자열 생성
        return result  # 결과 반환

# 객체 생성
a = Square()  # 1, 2, 3을 각각 입력해 봅시다.

def par(self):
    base, height = map(float, input('밑변의 길이와 높이를 입력하세요 (예: 3,2): ').split(','))
    area = base * height  # 넓이 계산
    result = '평행사변형의 넓이는 : ' + str(area)  # 결과 문자열 생성
    return result  # 결과 반환