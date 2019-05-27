# vyper 실습



1. remix로 해보기

- https://remix.ethereum.org/ 접속
  - 새로운 interface의 리믹스 사용하기!
  - 환경: vyper 선택
- https://bit.ly/2W7MQa4 에있는 코드 복사
- 2번째 버튼 클릭(vyper compiler)
  - compiler xxx.vy 클릭
- 3번째 버튼 클릭 (deploy and run transaction)
  - environment: Javascript VM
  - deploy 버튼 옆에 있는 아래 화살표 클릭
    - name, symbol, decimals, supply 채워넣고 transact 버튼 클릭
- transfer 해보기
  - 0x84A922CC95A22eC55c6346bc6ca87C48708fe9d6, 10
  - 잔고 확인
    - balanceOf 0x84A922CC95A22eC55c6346bc6ca87C48708fe9d6
      - -> 10



2. truffe로 해보기

- git clone https://github.com/ethcon-kr/solidity-101-tutorial 
- cd tutorialtoken
- activate virtualenv(python)
  - virtualenv env
  - source env/bin/activate
- install truffle
  - npm i -g truffe
- install vyper
  - git clone https://github.com/ethereum/vyper
  - cd vyper
  - make
- truffle compile
- truffle deploy
- npm run dev
  - 브라우저 창에서 demo앱 확인!

