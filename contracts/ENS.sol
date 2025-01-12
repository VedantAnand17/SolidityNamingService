// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NamingService {
    mapping(address => string) user;
    mapping(address => bool) lookup;

    function signUp(string memory _username) public {   
        require(!lookup[msg.sender], "Username already taken");
        user[msg.sender] = _username;
        lookup[msg.sender] = true;
    }

    function getUser() public view returns(string memory, bool ) {
        return (user[msg.sender], lookup[msg.sender]);
    }
}