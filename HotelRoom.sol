// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelRoom {
    enum Statuses { Vacant, Occupied }
    event Occupy(address _occupant, uint _value);

    address payable public owner;
    Statuses public currentStatus;

    constructor() {
        owner = payable(msg.sender);
        currentStatus = Statuses.Vacant;
    }

    modifier onlyWhileVacant {
        require(currentStatus == Statuses.Vacant, "This room is currently occupied.");
        _;
    }

    modifier costs(uint _amount) {
        require(msg.value >= _amount, "Not enough ether provided.");
        _;
    }
    
    function book() public payable onlyWhileVacant costs(2 ether) {
        // owner.transfer(msg.value);
        // bool sent = owner.send(msg.value);
        (bool sent, ) = owner.call{value: msg.value}("");
        require(sent, "Failed to send Ether");

        currentStatus = Statuses.Occupied;

        emit Occupy(msg.sender, msg.value);
    }
    
}
