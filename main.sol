/*
To be deployed in Goerli testnet for Aave testing
WETH Gateway (mainnet): 0xEFFC18fC3b7eb8E676dac549E0c693ad50D1Ce31
LendingPool (mainnet): 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9
*/
pragma solidity>0.8.0;//SPDX-License-Identifier:None

interface ILendingPool {
    //asset to deposit, amount, aToken receiver, referralCode (0 default)
    function deposit(address,uint,address,uint) external;
}

contract Main{
    ILendingPool private ilp;

    constructor(){
        ilp=ILendingPool(0x3bd3a20Ac9Ff1dda1D99C0dFCE6D65C4960B3627);

    }
    function swap(uint amt)external payable{
        /*
        Get approval of transferring ETH from msg.sender to this address(this)
        */

        /*
        Put into aave and get stETH
        */
        //0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9
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