// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Array {

    uint[] public nums = [1,2,3];
    uint[3] public numsFixed = [2,3,4];

    function example() external {
        nums.push(4);
        uint x = nums[0];
        nums[2] = 22;
        delete nums[1];
        nums.pop();
        uint len = nums.length;
        uint[] memory a = new uint[](5);
        a[1] = 11;
    }

    function getArray() external view  returns(uint[] memory){
        return nums;
    }


}