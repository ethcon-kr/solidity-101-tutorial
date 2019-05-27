import React from "react";
import {
  AccountData,
  ContractData,
  ContractForm,
} from "drizzle-react-components";

import logo from "./logo.png";

export default ({ accounts }) => (
  <div className="App">
    <div>
      <img src={logo} alt="drizzle-logo" />
      <h1>Ethcon 101 Examples</h1>
      <p> Drizzle과 truffle로 만드는 simple app</p>
    </div>

    <div className="section">
      <h2>Active Account</h2>
      <AccountData accountIndex="0" units="ether" precision="3" />
    </div>

    <div className="section">
      <h2>SimpleStorage</h2>
      <p>
        Simple Storage에 저장되어있는 값을 바꿔보세요! 
      </p>
      <p>
        <strong>Stored Value: </strong>
        <ContractData contract="SimpleStorage" method="storedData" />
      </p>
      <ContractForm contract="SimpleStorage" method="set" />
    </div>

    <div className="section">
      <h2>TutorialToken</h2>
      <p>
        간단한 ERC20 토큰입니다. 아무 주소로 이 토큰을 전송해보세요! 
      </p>
      <p>
        <strong>Total Supply: </strong>
        <ContractData
          contract="TutorialToken"
          method="totalSupply"
          methodArgs={[{ from: accounts[0] }]}
        />{" "}
        <ContractData contract="TutorialToken" method="symbol" hideIndicator />
      </p>
      <p>
        <strong>My Balance: </strong>
        <ContractData
          contract="TutorialToken"
          method="balanceOf"
          methodArgs={[accounts[0]]}
        />
      </p>
      <h3>Send Tokens</h3>
      <ContractForm
        contract="TutorialToken"
        method="transfer"
        labels={["To Address", "Amount to Send"]}
      />
    </div>
    <div className="section">
      <h2>ComplexStorage</h2>
      <p>
        스마트 컨트랙트에서 다양한 데이터를 긁어오는 방법
      </p>
      <p>
        <strong>String 1: </strong>
        <ContractData contract="ComplexStorage" method="string1" toUtf8 />
      </p>
      <p>
        <strong>String 2:(utf-8로 변환 x) </strong>
        <ContractData contract="ComplexStorage" method="string2" />
      </p>
      <strong> </strong>
      <ContractData contract="ComplexStorage" method="singleDD" />
     <strong> map data로부터 정보를 가져오기 </strong>
     <ContractData contract="ComplexStorage" method="structs1" methodArgs={["0xbCcc714d56bc0da0fd33d96d2a87b680dD6D0DF6"]} />
    </div>
  </div>
);
