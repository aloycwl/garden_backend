/*
To be deployed in Goerli testnet for Aave testing
LendingPool (mainnet): 0x7d2768dE32b0b80b7a3454c06BdAc94A69DDc7A9
*/
pragma solidity>0.8.0;//SPDX-License-Identifier:None

interface ILendingPool {
    function deposit(address asset,uint256 amount,address onBehalfOf,uint16 referralCode) external;
}

contract Main{
    ILendingPool private ilp;
    constructor(){
        ilp=ILendingPool(0x4bd5643ac6f66a5237E18bfA7d47cF22f1c9F210);

    }
    function swap()external{
        /*
        Get approval of transferring ETH from msg.sender to this address(this)
        */

        /*
        Put into aave and get stETH
        */

        /*
        0xdc24316b9ae028f1497c275eb9192a3ea0f67022
        Exchange from curve.fi and get ETH
        */

        /*
        Transfer back to msg.sender the exchanged ETH
        Deduct admin fee
        */
    }
}