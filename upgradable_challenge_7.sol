// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract oldcontract{
    string public name;
    function addstudent(string memory _name) public {
        name=_name;
    }
}
contract newcontract{
    string public name;
    function addstudent(address _contract,string memory _name) public{
  (bool success,bytes memory data)=_contract.delegatecall(
      abi.encodeWithSignature("addstudent(string memory)",_name)
  );
    }
}