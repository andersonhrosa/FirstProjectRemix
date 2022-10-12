// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelRoom {
    
    enum Statuses {Vacant, Occupied}
    Statuses status;

    event Occupy(address _occupant, uint _value);

    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
        status = Statuses.Vacant;
    }

    modifier onlyWhileVacant {
        // Check status
        require(status == Statuses.Vacant, "Currently occupied.");
        _;
    }

    modifier costs(uint _amount) {
        // Check price
        require(msg.value >= 2 ether, "Not enough ether provided.");
        _;
    }

    function book() public  payable onlyWhileVacant costs(2 ether) {
        status = Statuses.Occupied;
        owner.transfer(msg.value);

        emit Occupy(msg.sender, msg.value);
    }
}