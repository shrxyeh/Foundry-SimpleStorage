// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    //main function that is used when deploying the contract
    function run() external returns (SimpleStorage) {
        vm.startBroadcast();

        SimpleStorage simpleStorage = new SimpleStorage();//Deploy smart contract,"new" keyword creates a contract in solidity

        vm.stopBroadcast();
        return simpleStorage;
    }
}