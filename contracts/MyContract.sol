// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    
    
    
    
    //State Variables
    uint public myUint  = 1;
    uint256 public myUint256  = 1;
    int public myInt = -1;
    string public myString = "Hello World";
    bytes32 public myBytes32 = "Hi World";
    address public myAddress = msg.sender;

    struct MyStruct {
        uint256 myUint256;
        string myString;
    }

    MyStruct public myStruct = MyStruct(1, "Ola Mundo!");

    //Local Variables
    function getValue() public pure returns(uint) {
        uint value = 1;
        return value;
    }
}