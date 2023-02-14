// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract SimpleCounter {
    // Store a count variable
    uint256 public count;
    
    // Initilize the contract with count at 0
    constructor() public {
        count = 0;
    }
    
    event Increment(uint256 currentCount);
    
    // to increment the counter
    function increment() public {
        count += 1;
        emit Increment(count);
    }
}