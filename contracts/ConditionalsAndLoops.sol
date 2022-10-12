// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract0 {
    //Conditionals
    uint[] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    address public owner;

    constructor() {
        owner =  msg.sender;
    }

    function countNumbers() public view returns(uint) {
        uint count = 0;

        for(uint i = 0; i < numbers.length; i++) {
            if (isEven(numbers[i])) {
                count++;
            }
        }
        return count;
    }

    function isEven(uint _number) public pure returns(bool){
        return (_number % 2 == 0);
    }

    function isOwner() public view returns (bool) {
        return(msg.sender == owner);
    }
}