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

  

3. Drizzle + Truffle로 Dapp만들어보기

- git clone https://github.com/ethcon-kr/solidity-101-tutorial 
- install npm
- install truffle
  - npm install -g truffle
- at ethcon-examples folder
  - truffle compile
  - truffle migrate
- at ethcon-examples/app folder
  - npm run start

