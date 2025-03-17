// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//get funds from users
//withdraw funds
//set a minimum funding value in USD

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract FundMe {

       uint256 public minimumUsd =50;
       address[] public funders;
       mapping(address=>uint256)public addressToAmountFunded;

       function fund() public payable{
      
          require(msg.value > minimumUsd, "Didn't send enough!! ");
          funders.push(msg.sender);
          addressToAmountFunded[msg.sender]+= msg.value; 
          //require is like checker to see if msg.value is greater than the certain value
           

       }

       function withdraw() public {
         for(uint256 funderIndex = 0; funderIndex < funders.length; funderIndex++ ){
            address funder = funders[funderIndex];
            addressToAmountFunded[funder]=0;
         }
       }

       function getPrice() public {
           

       }

       function getConversionRate() public {
       }

       //function withdraw(){}
}
