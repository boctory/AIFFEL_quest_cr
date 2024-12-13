import 'dart:async';

class PomodoroTimer {
  final int workDuration = 25; // 작업 시간 (분)
  final int shortBreakDuration = 5; // 짧은 휴식 시간 (분)
  final int longBreakDuration = 15; // 긴 휴식 시간 (분)
  final int cycles = 4; // 총 사이클 수

  int currentCycle = 1; // 현재 사이클

  void start() {
    print("Pomodoro Timer Started!");
    _startWorkSession();
  }

  void _startWorkSession() {
    print("Cycle $currentCycle: Work for $workDuration minutes.");
    _startCountdown(workDuration, () {
      if (currentCycle < cycles) {
        _startShortBreak();
      } else {
        _startLongBreak();
      }
    });
  }

  void _startShortBreak() {
    print("Cycle $currentCycle: Take a short break for $shortBreakDuration minutes.");
    _startCountdown(shortBreakDuration, () {
      currentCycle++;
      _startWorkSession();
    });
  }

  void _startLongBreak() {
    print("Cycle $currentCycle: Take a long break for $longBreakDuration minutes.");
    _startCountdown(longBreakDuration, () {
      print("Pomodoro session completed! Great job!");
    });
  }

  void _startCountdown(int minutes, Function onComplete) {
    int secondsRemaining = minutes * 60;
    Timer.periodic(const Duration(seconds: 1), (timer) {
      int minutesLeft = secondsRemaining ~/ 60;
      int secondsLeft = secondsRemaining % 60;
      print("Time remaining: ${minutesLeft.toString().padLeft(2, '0')}:${secondsLeft.toString().padLeft(2, '0')}");

      secondsRemaining--;

      if (secondsRemaining < 0) {
        timer.cancel();
        onComplete();
      }
    });
  }
}

void main() {
  PomodoroTimer timer = PomodoroTimer();
  timer.start();
}

// 회고
// Pomodoro 타이머 구현을 통해 몇 가지 중요한 점을 배웠습니다:
// 	1.	모듈화의 중요성: 각 기능(작업 세션, 짧은 휴식, 긴 휴식)을 별도의 메서드로 분리함으로써 코드의 가독성과 유지보수성을 높였습니다. 이는 향후 기능 확장이나 수정 시 유용할 것입니다.
// 	2.	Timer.periodic의 활용: Dart의 `Timer.periodic`을 사용하여 주기적인 작업을 효과적으로 구현할 수 있었습니다. 이는 실시간으로 변화하는 값을 다룰 때 매우 유용한 도구입니다.
// 	3.	상태 관리: `currentCycle` 변수를 통해 현재 진행 상황을 추적하는 방법을 학습했습니다. 이는 복잡한 로직을 단순화하는 데 도움이 되었습니다.
// 	4.	콜백 함수의 사용: `_startCountdown` 메서드에서 콜백 함수를 사용하여 카운트다운 완료 후의 동작을 유연하게 처리할 수 있었습니다. 이는 비동기 프로그래밍의 중요한 개념입니다.
// 	5.	사용자 경험 고려: 남은 시간을 실시간으로 출력함으로써 사용자에게 현재 상태를 명확히 전달할 수 있었습니다. 이는 실제 애플리케이션에서 중요한 UX 요소입니다.
// 	6.	확장성: 현재는 콘솔 기반이지만, 이 구조를 바탕으로 GUI나 모바일 앱으로 쉽게 확장할 수 있습니다. Flutter와 같은 프레임워크를 사용하여 시각적 요소를 추가할 수 있을 것입니다.
// 	7.	테스트의 필요성: 실제 사용을 위해서는 각 기능에 대한 단위 테스트와 통합 테스트가 필요할 것입니다. 이는 코드의 안정성을 보장하는 데 중요합니다.
// 	8.	사용자 설정 옵션: 향후 개선 사항으로, 사용자가 작업 시간과 휴식 시간을 직접 설정할 수 있는 기능을 추가하면 더욱 유용한 애플리케이션이 될 것입니다.
// 이 프로젝트를 통해 Dart 언어의 기본 문법과 비동기 프로그래밍, 그리고 객체 지향 설계의 기본 원칙을 실제로 적용해볼 수 있었습니다. 이는 더 복잡한 애플리케이션을 개발하는 데 있어 좋은 기초 쌓았다고 생각됩니다.
// 아주 보람 찬 하루였습니다.