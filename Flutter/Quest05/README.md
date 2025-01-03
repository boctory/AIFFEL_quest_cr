# AIFFEL Campus Online Code Peer Review Templete
- 코더 : 코더의 이름을 작성하세요.
- 리뷰어 : 리뷰어의 이름을 작성하세요.


# PRT(Peer Review Template)
- [ ]  **1. 주어진 문제를 해결하는 완성된 코드가 제출되었나요?**
    - 문제에서 요구하는 최종 결과물이 첨부되었는지 확인
        - 중요! 해당 조건을 만족하는 부분을 캡쳐해 근거로 첨부
    
- [ ]  **2. 전체 코드에서 가장 핵심적이거나 가장 복잡하고 이해하기 어려운 부분에 작성된 
주석 또는 doc string을 보고 해당 코드가 잘 이해되었나요?**
    - 해당 코드 블럭을 왜 핵심적이라고 생각하는지 확인
    - 해당 코드 블럭에 doc string/annotation이 달려 있는지 확인
    - 해당 코드의 기능, 존재 이유, 작동 원리 등을 기술했는지 확인
    - 주석을 보고 코드 이해가 잘 되었는지 확인
        - 중요! 잘 작성되었다고 생각되는 부분을 캡쳐해 근거로 첨부
        
- [ ]  **3. 에러가 난 부분을 디버깅하여 문제를 해결한 기록을 남겼거나
새로운 시도 또는 추가 실험을 수행해봤나요?**
    - 문제 원인 및 해결 과정을 잘 기록하였는지 확인
    - 프로젝트 평가 기준에 더해 추가적으로 수행한 나만의 시도, 
    실험이 기록되어 있는지 확인
        - 중요! 잘 작성되었다고 생각되는 부분을 캡쳐해 근거로 첨부
        
- [ ]  **4. 회고를 잘 작성했나요?**
    - 주어진 문제를 해결하는 완성된 코드 내지 프로젝트 결과물에 대해
    배운점과 아쉬운점, 느낀점 등이 기록되어 있는지 확인
    - 전체 코드 실행 플로우를 그래프로 그려서 이해를 돕고 있는지 확인
        - 중요! 잘 작성되었다고 생각되는 부분을 캡쳐해 근거로 첨부
        
- [ ]  **5. 코드가 간결하고 효율적인가요?**
    - 파이썬 스타일 가이드 (PEP8) 를 준수하였는지 확인
    - 코드 중복을 최소화하고 범용적으로 사용할 수 있도록 함수화/모듈화했는지 확인
        - 중요! 잘 작성되었다고 생각되는 부분을 캡쳐해 근거로 첨부


# 회고(참고 링크 및 코드 개선)
```
오병철 : 이번 퀘스트는 전반적으로 어려움이 많았다. 기본적으로 Code, Cursor, LMS, Androidstudio 등 툴에 대한 설정부터 사용법까지 다시 공부해서 익혀야 하고, code로 작성할 때 버전 별로 세팅을 다르게 해야하는 부분에 대해서 명확한 방법을 알아야 하나씩 해나갈 수 있을 것 같다. 

이국한 : 이번 과정에서는 앞에 vgg모델을 활용한 부분과 크게 다른 부분이 없었기에 종까지 좀더 분류를 해보고 싶었슾니다. 짧은 시간안에 모델을 학습시켜서 해보려고 했는데 해파리가 여러마리 있거나 뒷부분만 나온경우 제대로 인지하지 못하였고 이걸 다시 플러터 와 이어지는 과정에서 매끄럽지 않은 부분이 있어서 좀 더 사용하는데 익숙해져야 할거 같습니다.

이종현 : 플러터로 UI를 구현하거나 어떤 기능을 구현하는 것 자체는 크게 어려움이 없으나, 모델을 사용해서 이미지를 분류하고 그와 관련된 클래스나 예측 확률을 구하는 과정, 즉 모델 자체를 사용하는 부분이 아직 명확하게 개념정리가 안되어 있는 것 같다. 그래서 바로바로 적용하고 구현하는 과정에서 시간이 오래걸렸던 것 같다. 그리고 api를 만들어서 그걸 플러터에서 가지고 와서 사용하는 과정에서도 디버깅이 오래걸려 제한 시간 안에 깔끔하게 프로젝트를 완성하기까지는 힘들었습니다.
```
