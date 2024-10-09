// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;


contract  Constructor {

    uint public test;
    address public addr;

    constructor(uint _x){
        addr = msg.sender;
        test = _x;
    }

}

contract FunctionModify {

    bool public paused;
    uint public count;


    modifier whenModify () {
        require(count<10, "count must less than 10");
        _;
    }

    modifier cap (uint _count) {
        require(_count<100, "count must less than 100");
        _;
    }

    function setPause(bool _paused) external {
        paused = _paused;
    }

    function inc(uint x) external  whenModify cap(x) {
        // require(count<10,"count must less than 10");
        count += 1;
    }

    function dec() external {
        require(count<10,"count must less than 10");
        count -= 1;
    }


}

contract Errors {
    function testRequire(uint _i) public pure {
        require(_i < 10, "_i must less than 10");
    }
    uint public a = 1;
    function testRevert(uint _i) public pure {
        if (_i >10){
            revert("_i must less than 10");
        }
    }

    function testAssert() public view {
        assert(a==1233);
    }

    error MyError(address caller, uint i);

    function foo() public {
        a += 1;
        require(a<10, "i must less than 10");
    }

    function foo2(uint _i) public view {
        if (_i>10){
            revert MyError(msg.sender, _i);
        }
    }

}

contract Test {
    uint public constant a = 123123;
    address public constant sd = 0x0000000000000000100000000000000000000111;
    address public constant sd2 = 0x0000000000000000100000000000000000000111;
    address public sd3 = 0x0000000000000000100000000000000000000111;
}

contract ValuesTypes {

    uint public mState;

    uint public num = 123;
    int public iii = -11;
    address public a1;
    uint public constant aaa = 123;

    function foo2() external view returns (address, uint, uint) {
        address sender = msg.sender;
        uint timestamp = block.timestamp;
        uint blockNum = block.number;
        return (sender, timestamp, blockNum);
    }

    function foo() external {
        uint x = 88;
        bool f = false;
        x += 11;
        f = true;
        num = 123;
        a1 = address(1);
    }

    function add(uint x, uint y) external pure returns(uint) { 
        return x + y;
    }
    
    function sub(uint x, uint y) external pure returns (uint) {
        return x - y;
    }



}