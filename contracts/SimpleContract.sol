  //SPDX-License-Identifier:MIT
  pragma solidity ^0.8.7;


  contract SimpleContract {
      uint256  favoriteNumber;
      
      struct Poeple{
        uint256 favoriteNumber;
        string name;

      }

      function store(uint256 _favNum ) public {
          favoriteNumber = _favNum ;
        
    }

      Poeple[] public people;
      
      function addPerson(string memory _name, uint256 _favoriteNumber ) public{
        Poeple memory newPerson = Poeple({favoriteNumber: _favoriteNumber, name : _name});
        people.push(newPerson);
      }
      
      
      }