// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";
import {DeployFundMe} from "../script/DeployFundMe.s.sol";

contract FundMeTest is Test {
    FundMe fundMe;

    function setUp() external {
        DeployFundMe deployFundMe = new DeployFundMe();
        fundMe = deployFundMe.run();
    }

    function testMinimumDollarisFive() public view {
        assertEq(fundMe.MINIMUM_USD(), 5e18);
    }

    function testOwnerIsMsgSender() public view {
        console.log("Owner address:", msg.sender);
        console.log("FundMe owner address:", fundMe.i_owner());
        console.log("This address:", address(this));
        assertEq(fundMe.i_owner(), msg.sender);
    }

    function testPriceFeedVersionIsAccurate() public view {
        uint256 version = fundMe.getVersion();
        console.log(version);
        assertEq(version, 4);
    }

    /*
    What can we do to work with addresses outside our system ?

    1. Unit
        - Testing a specific part of our code
    2. Integration
        - Testing how our code works with other parts of our code 
    3. Forked
        - Testing our code on a simulated real environment
    4. Staging
        - Testing our code in a real environment that is not production
    */
}
