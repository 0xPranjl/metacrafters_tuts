// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract storing{
    struct student{
        string name;
        int age;
    }
    int studentcount;
    mapping (int=>student) public child;

    function addstudent(string memory _name,int _age) external {
        child[studentcount]=student(_name,_age);
        studentcount++;
    }
}