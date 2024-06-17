// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract SimpleContract {
    // Declare variables of different types
    uint256 public myUint;
    int256 public myInt;
    string public myString;
    bool public myBool;

    // Set and get functions for uint256 variable
    function setMyUint(uint256 _myUint) public returns (uint256) {
        myUint = _myUint;
        return myUint;
    }

    function getMyUint() public view returns (uint256) {
        return myUint;
    }

    // Set and get functions for int256 variable
    function setMyInt(int256 _myInt) public returns (int256) {
        myInt = _myInt;
        return myInt;
    }

    function getMyInt() public view returns (int256) {
        return myInt;
    }

    // Set and get functions for string variable
    function setMyString(string memory _myString) public returns (string memory) {
        myString = _myString;
        return myString;
    }

    function getMyString() public view returns (string memory) {
        return myString;
    }

    // Set and get functions for bool variable
    function setMyBool(bool _myBool) public returns (bool) {
        myBool = _myBool;
        return myBool;
    }

    function getMyBool() public view returns (bool) {
        return myBool;
    }
}
