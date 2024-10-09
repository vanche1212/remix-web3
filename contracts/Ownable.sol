// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Ownable {

    address public owner;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(owner == msg.sender, "not owner");
        _;
    }
    
    function modifyOwner (address _newOwner) external onlyOwner {
        require(_newOwner!=address(0), "invalid owner");
        owner = _newOwner;
    }

    function testOnlyOwnerFunc() external onlyOwner {

    }


    function anyOneCall() external {

    }


}