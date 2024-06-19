// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract EtherCollector {
    address private owner;
    uint public balance;

    constructor () {
        owner=msg.sender;
        balance=0;
    }
    function collectEther () public payable {
        require (msg.value > 0, "please send some Ether");
        balance += msg.value;
    }
    function withdrawEther () public {
        require(msg.sender == owner, "only the owner can withdraw");
        payable (owner) .transfer (balance);
        balance = 0;
    }
    function getBalanceInWei() public view returns (uint) {
        return balance; // balance is already in wei
    }

    function getBalanceInEther() public view returns (uint) {
        return balance / 1e18; // convert wei to ether
    }

    function getBalanceInGwei() public view returns (uint) {
        return balance / 1e9; // convert wei to gwei
    }
}
