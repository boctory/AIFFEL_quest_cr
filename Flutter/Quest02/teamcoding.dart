import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // 아이콘 중앙 정렬을 위해서 leading을 이용해서 아이콘을 appBar 왼쪽에 배치
          leading: const Center(child: Icon(Icons.home)),
          title: const Text('플러터 앱 만들기'),
          backgroundColor: Colors.blue,
        ),
        body: const TextButtonWidget(),
      ),
    );
  }
}

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return _TextButtonBody();
  }

  Widget _TextButtonBody() {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                print("버튼이 눌렸습니다.");
              },
              style: TextButton.styleFrom(
                  backgroundColor: Colors.yellow), // TextButton 스타일링 방법
              child: const Text(
                'Text',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 30,
            ), // SizedBox로 공간 띄우기
            Stack(
              children: [
                _boxContainer(300, 300, Colors.red), // 기준 박스
                _positionedBox(_boxContainer(240, 240, Colors.yellow)), // 중첩 박스
                _positionedBox(_boxContainer(180, 180, Colors.green)),
                _positionedBox(_boxContainer(120, 120, Colors.blue)),
                _positionedBox(_boxContainer(60, 60, Colors.purple)),
              ],
            )
          ],
        ));
  }

  Widget _boxContainer(double width, double height, Color backgroundColor) {
    return SizedBox(
      width: width,
      height: height,
      child: DecoratedBox(
        decoration: BoxDecoration(color: backgroundColor),
      ), // SizedBox 스타일링 방법
    );
  }

  Widget _positionedBox(Widget widget) {
    return Positioned(left: 0, top: 0, child: widget);
  }
}

/**
    디버깅 기록
    - SizedBox의 스타일링 방법, TextButton의 스타일링 방법을 style 속성을 대강 진행하려다가 에러가 발생했는데, 구글링을 통해
    적절한 방법을 찾아서 해결했다.
    - appBar에서 아이콘을 왼쪽에 정렬할 때, Text는 중앙 정렬 되면서 아이콘은 왼쪽에 있어야하고 전체적으로 텍스트와 아이콘이 세로로도
    중앙 정렬되어야 하는 상황이었다. Stack을 이용해서 아이콘을 왼쪽에 붙히는 거 까지는 성공했지만, 세로로 정렬하지는 못했다. 그때
    병철님이 appBar의 leading 속성을 제안해주셨고, 그걸 통해서 Text의 중앙정렬과 아이콘의 세로 중앙 정렬까지 해결했다.

    회고

    - 이종현 : 서브 퀘스트를 진행하기 전에 다양한 미션을 통해서 위젯을 자주 사용해보았던 경험이 이번 퀘스트를 수월하게 진행할 수 있는데
    많은 도움이 되었다. 이번 퀘스트는 나름 간단한 퀘스트 였지만, 다른 앱을 클론 코딩하거나 내가 원하는 앱을 구성해서 직접 UI를
    정의하고 상태관리까지 진행하는 과정을 자주 시도해보면 더욱 익숙해질거라 생각한다. 아직까지는 어떤 위젯일 때 어떤 속성으로 스타일링을
    하면 되는지 바로 떠오르지는 않기 때문에 구글링을 통해 해결하고 있다.
    - 오병철 : 이번 코딩에서는 여러가지 방법으로 아이콘 정렬이라던가, 스택을 사용하는 방법등을 연습하면서 배울 수 있어서 좋았다.
 */