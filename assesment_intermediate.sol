// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract charity{

    mapping(address=>uint256) public donations;    
    address owner;
    constructor(){
        owner=msg.sender;
    }
function donate() public payable {
require(msg.value>=5 ether,"minimum donation is 5 ether");
donations[msg.sender]=msg.value;
}

function withdraw(uint256 _amount) public payable {
assert(msg.sender==owner);
if(_amount>3 ether){
 revert("you cannot withdraw more than 3 ether at a time");   
}
else{
    payable(msg.sender).transfer(_amount);
}

}

   
}