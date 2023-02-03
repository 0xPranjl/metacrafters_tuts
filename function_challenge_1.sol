pragma solidity >=0.7.0 <0.9.0;

contract funchal{
    uint balance;
    //view function
    function addbalance(uint _x) public view returns(uint){
        return _x+balance;
    }
    //pure function
     function adder(uint _x,uint _y) public pure returns(uint){
        return _x+_y;
    }
    //payable function
    function incremetbal() payable public {
        require(msg.value>=5 ether,"add more than 5 ether");
        balance=balance+msg.value;
    }
}
