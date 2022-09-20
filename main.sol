/*
To be deployed in Goerli testnet for Aave testing
LendingPool (mainnet): 0x7d2768dE32b0b80b7a3454c06BdAc94A69DDc7A9
REDO TO WETH Gateway
*/
pragma solidity>0.8.0;//SPDX-License-Identifier:None

interface ILendingPool {
    //asset to deposit, amount, aToken receiver, referralCode (0 default)
    function deposit(address,uint,address,uint) external;
}

contract Main{
    ILendingPool private ilp;

    constructor(){
        ilp=ILendingPool(0x4bd5643ac6f66a5237E18bfA7d47cF22f1c9F210);

    }
    function swap(uint amt)external payable{
        /*
        Get approval of transferring ETH from msg.sender to this address(this)
        */

        /*
        Put into aave and get stETH
        */
        ilp.deposit(address(0),amt,address(this),0);

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