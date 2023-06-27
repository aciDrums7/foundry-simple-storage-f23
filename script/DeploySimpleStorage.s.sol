// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        // ? 'vm' is a special keyword in the Forge Standard Library (path: "./lib/forge-std")
        // ! we can use the 'vm' keyword only in Foundry!
        // * It's related to something called 'cheatcodes' (future deeper explanation)
        vm.startBroadcast();
        // ? startBoroadcast() says: "everything after this line in this function"
        // ? send it to the RPC
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast();
        return simpleStorage;
    }
}
