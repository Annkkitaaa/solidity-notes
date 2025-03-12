  //SPDX-License-Identifier:MIT
  pragma solidity ^0.8.7;
  
  contract SimpleStorage{
    //boolean
    //uint
    //int 
    //address 
    //bytes
    bool public hasFavoriteNumber = false;

    // this gets intialized to zero!
    // <-- this mean that thia section is a comment 
    uint public favoriteNumber;

    struct People {
      uint256 favouriteNumber;
      string name;
    }

    People[] public people;
    

    function store(uint _favNum ) public {
        hasFavoriteNumber = true;
        favoriteNumber = _favNum ;


    }



    //view pure
    function retrieve() public view returns (bool, uint){
        return (hasFavoriteNumber, favoriteNumber );

//day1
  }
  }