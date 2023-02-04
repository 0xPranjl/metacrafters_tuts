pragma solidity >=0.7.0 <0.9.0;

contract globalchallen{
   address public owner;
  constructor(){
   owner=msg.sender;
  }
  function deposit() public payable{
      require(msg.value>=5 ether,"minimum amount for deposit is 5");
  }
  function withdrawViaSend(uint _amount) public payable {
      require(msg.sender==owner,"you are not authorized to do this thing");
      payable(owner).transfer(_amount);
  }
}