  //SPDX-License-Identifier:MIT
  pragma solidity ^0.8.7;
  
  contract SimpleStorage{
    //boolean
    //uint
    //int 
    //address 
    //bytes
    bool public hasFavoriteNumber = false;
    uint public favoriteNumber;

    function store(uint _favNum ) public {
        hasFavoriteNumber = true;
        favoriteNumber = _favNum ;


    }

    function retrieve() public view returns (bool, uint){
        return (hasFavoriteNumber, favoriteNumber );


  }
  }