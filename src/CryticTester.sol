// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {vm} from "chimera/Hevm.sol";

contract CryticTester {
    uint256 constant INITIAL_SLOTNUMBER = 141325200;
    uint256 constant INITIAL_TIMESTAMP = 1695902400;

    uint256 currentBlock = INITIAL_SLOTNUMBER;
    uint256 currentTimestamp = INITIAL_TIMESTAMP;

    constructor() payable {
        vm.roll(INITIAL_SLOTNUMBER);
        vm.warp(INITIAL_TIMESTAMP);
    }

    function testBlock(uint256 y) public {
        // no need to use `y`
        assert(block.number >= INITIAL_SLOTNUMBER);
    }

    function testTimestamp(uint256 y) public {
        // no need to use `y`
        assert(block.timestamp >= INITIAL_TIMESTAMP);
    }

    function testBlockIncremental(uint256 y) public {
        // no need to use `y`
        assert(block.number >= currentBlock);
        currentBlock = block.number;
    }

    function testTimestampIncremental(uint256 y) public {
        // no need to use `y`
        assert(block.timestamp >= currentTimestamp);
        currentTimestamp = block.timestamp;
    }
}
