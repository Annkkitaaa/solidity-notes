// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract SimpleStorage {


   uint256 public favoriteNumber;

   mapping(string => uint256) public nameToFavoriteNumber;
    struct People {
        uint256 favoriteNumber;
        string name;  //struct are just like classes
        
    }

    People[] public people;
  
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }


 //calldata, memory, storage

    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
 }
