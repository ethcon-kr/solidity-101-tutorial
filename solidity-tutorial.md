# solidity 실습



1. cryptozombies 따라하기

- https://cryptozombies.io/ko/lesson/1/
  - chapter 10까지
- https://cryptozombies.io/ko/lesson/2
  - chapter 5까지

2. remix로 ERC20 컴파일해보기

- metamask 설치하기

- ropsten에서 faucet받기

  - https://faucet.ropsten.be/

- 다음 네가지 코드 복사하기

  - ERC20.sol
    - https://github.com/OpenZeppelin/openzeppelin-solidity/blob/9b3710465583284b8c4c5d2245749246bb2e0094/contracts/token/ERC20/ERC20.sol	

  - IERC20.sol
    - https://github.com/OpenZeppelin/openzeppelin-solidity/blob/9b3710465583284b8c4c5d2245749246bb2e0094/contracts/token/ERC20/IERC20.sol
  - SafeMath.sol
    - https://github.com/OpenZeppelin/openzeppelin-solidity/blob/9b3710465583284b8c4c5d2245749246bb2e0094/contracts/math/SafeMath.sol
  - TutorialToken.sol
    - https://gist.github.com/cloudinertia/95253b0740490533b0a9323ea6990ebd

- remix에 복사하기

  - 주의점!
    - ERC20.sol에서 import문을 아래와 같이 바꿔준다
      - import "./IERC20.sol";
        import "./SafeMath.sol";
  - compile하기 (솔리디티 버전: 0.4.24)	
  - ropsten 네트워크 설정
  - deploy버튼 클릭
  - etherscan에 제대로 배포됐나 확인(링크)
  - transfer 함수 사용해보기
    - **0xc36083F1BD0f822bd57098b872D9b4Ac65cA98af** 에 1 (10**18) 토큰 보내기
  - balanceOf 함수 사용해보기
    - **0xc36083F1BD0f822bd57098b872D9b4Ac65cA98af** balance체크해보기
  - transferFrom 함수 사용해보기
    - approve 사용하기
      - account 하나 더 만들기
      - ropsten faucet받기
      - 하나 더 만든 account 주소를 address 2이라 하고, 원래 컨트랙트 만든 주소를 address1라고 한다면
        - address1 계정으로
        - approve(address2, 1 (10**18)) 하기
    - address2의 계정으로
      - transferFrom(address1,address2,1 (10**18)) 하기
      - 확인
        - balanceOf(address2) == 1 (10**18)
        - balanceOf(address1) == 발행량 - 20 (위에 이미 10토큰 보냈으므로)

  

3. (advanced) Drizzle + Truffle로 Dapp만들어보

- install npm
- install truffle
  - npm install -g truffle
- install ganache and run
  - https://truffleframework.com/ganache
  - execute 
- make empty directory(.e.g. ethcon-tutorial)
  - truffle unbox drizzle
- at ethcon-tutorial folder
  - npm install
  - truffle compile
  - truffle migrate
  - ropsten배포시 참고:https://medium.com/coinmonks/5-minute-guide-to-deploying-smart-contracts-with-truffle-and-ropsten-b3e30d5ee1e
- at ethcon-examples/app folder
  - select metamask to localhost:7545 (custom rpc)
  - npm run start

