// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Calculator {
    function add(uint a, uint b) external pure returns(uint);
    function subtract(uint a, uint b) external pure returns(uint);
    function multiply(uint a, uint b) external pure returns(uint);
    function divide(uint a, uint b) external pure returns(uint);
}

contract Calc{
    Calculator public myCalc;
    constructor(address calcAddress){
        myCalc = Calculator(calcAddress);
    }

    function getSum() public view returns(uint){
        return myCalc.add(10, 20);
    }
    function getDifference() view public returns(uint){
        return myCalc.subtract(30, 20);
    }
    function getProduct() public view returns(uint){
        return myCalc.multiply(10, 20);
    }
    function getQuotient() public view returns(uint){
        return myCalc.divide(40, 20);
    }
}

contract CalculatorImplementation is Calculator{
    function add(uint a, uint b) external pure returns(uint){
        return a+b;
    }
    function subtract(uint a, uint b) external pure returns(uint){
        return a-b;
    }
    function multiply(uint a, uint b) external pure returns(uint){
        return a*b;
    }
    function divide(uint a, uint b) external pure returns(uint){
        return a/b;
    }
}
