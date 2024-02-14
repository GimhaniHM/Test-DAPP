// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Flower {

    string public myFlower = "Rose";

    function changeWord() public returns(string memory){
        myFlower = "tulip";

        return myFlower;
    }

}