// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


contract FunctionReturns {


    function returnMany() public pure returns (uint, bool) {
        return (1, true);
    }

    function returnNamed() public pure returns (uint x, bool b) {
        return (1, true);
    }

    function returnAssignd() public pure returns (uint x, bool b){
        x = 1;
        b = true;
    }

    function descAssigments() public pure {
        (uint x, bool b) = returnMany();
        x = 123; 
        b = false;
        (,bool b2) = returnMany();
        b2 = true;
    }



}