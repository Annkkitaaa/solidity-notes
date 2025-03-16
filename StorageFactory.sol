// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./SimpleStorage.sol";
contract StorageFactory {

    SimpleStorage[] public simpleStorageArray;
    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
            }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public{
        //address of the contract
        //ABI -Application Binary Interface
         SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
            simpleStorage.store(_simpleStorageNumber);
        }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256){ 
        SimpleStorage simpleStorage= simpleStorageArray[_simpleStorageIndex];
        return simpleStorage.retrieve();
    }
 //this is used to access the contract stored in the storage factory, using a index or id like 0 ,1 etc.. we call it an array
}
