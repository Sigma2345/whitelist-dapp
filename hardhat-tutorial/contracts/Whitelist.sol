// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6 ;

contract Whitelist{

    uint8 public maxWhitelistedAddresses ;
    mapping(address => bool ) public whitelistedAddresses ;
    uint8 public numAddressesWhitelisted = 0 ; 

    constructor(uint8 _maxWhitelistedAddresses ){
        maxWhitelistedAddresses = _maxWhitelistedAddresses ; 
    }

    function addAddressToWhitelist() public{
        require(whitelistedAddresses[msg.sender] == false, 
        "address already whitelisted"
        );
        require(numAddressesWhitelisted < maxWhitelistedAddresses, 
            "max addresses whitelisted , limit reached"
        );
        whitelistedAddresses[msg.sender] = true ;
        numAddressesWhitelisted++; 
    }

}
