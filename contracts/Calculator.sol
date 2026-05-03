// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
contract Calculator{
    int result;

    function add(int a, int b) public {
        result= a+b;
    }
    function sub(int a, int b) public pure returns (int){
        return a-b;
    }
    function mul(int a, int b) public pure returns (int){
        return a*b;
    }
    function div(int a, int b) public pure returns (int){
        return a/b;
    }
    function display() public view  returns (int){
        return result;
    }

}
