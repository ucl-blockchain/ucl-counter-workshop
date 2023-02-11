// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
/**
 * @title Counter
 * @dev Store & increment or decrement a number
 */
contract SimpleCounter {
    /**
     *@dev Count will not fall below 0
     */
    uint256 public count;
    event Increment(uint256 currentCount);
    event Decrement(uint256 currentCount);

    constructor() public {
        count = 0;
    }
    
    /**
     * @dev Increment the counter by one
     * @notice Build this one with class
     */
    function increment() public {
        count += 1;
        emit Increment(count);
    }
    /**
     * @dev Decrement value of Count
     * @notice Count should not fall below 0
     * @notice Class will atempt to build this function themself
     */
    function decrement() public {
        require(count > 0, "Count can not fall below 0");
        count -= 1;
        emit Decrement(count);
    }
}
