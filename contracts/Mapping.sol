// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;


contract Mapping {

    mapping (address => uint) public balances;
    mapping (address => mapping (address => bool)) public isFriend;

    function example() external {
        balances[msg.sender] = 123;
        uint value = balances[msg.sender];
        // 不存在的address，返回默认为0
        uint test = balances[address(1)];

        isFriend[msg.sender][address(this)] = true;

        balances[msg.sender] += 123;

        delete balances[msg.sender];

    }

    function setBalances(address _addr,uint _bal) public {
        balances[_addr] = _bal;
    }

}