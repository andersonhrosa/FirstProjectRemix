// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    //Arrays
    uint[] public uintArray = [1,2,3];
    string[] public stringArray = ["apple", "banana", "carrot"];
    string[] public values;
    uint256[][] public array2D = [[1, 2, 3], [4, 5, 6]];

        
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

    struct Book {
        string title;
        string author;
    }


    // Mappings
    mapping(uint => string) names;
    mapping(uint => Book) public books;
    // Mapping of Mappings
    mapping(address => mapping(uint => Book)) public myBooks;


    constructor() {
        names[1] = "Adam";
        names[2] = "Bruce";
        names[3] = "Carl";
    }

    function addBook(
        uint _id,
        string memory _title,
        string memory _author
    ) public {
        books[_id] = Book(_title, _author);
    }

    function addMyBook(
        uint _id,
        string memory _title,
        string memory _author
    ) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }

    function addValue(string memory _value) public {
        values.push(_value);
    }

    function valueCount() public view returns(uint) {
        return values.length;
    }

    //Local Variables
    function getValue() public pure returns(uint) {
        uint value = 1;
        return value;
    }
}