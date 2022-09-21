/*
To be deployed in Goerli testnet for Aave testing
WETH Gateway (mainnet): 0xEFFC18fC3b7eb8E676dac549E0c693ad50D1Ce31
LendingPool (mainnet): 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9
*/
pragma solidity>0.8.0;//SPDX-License-Identifier:None

interface IWETHGateway {
    //amount, lending pool address, aToken receiver, referralCode (0 default)
    function depositETH(uint,address,address,uint)external;
}

contract Main{
    IWETHGateway private iwg;

    constructor(){
        iwg=IWETHGateway(0x3bd3a20Ac9Ff1dda1D99C0dFCE6D65C4960B3627);

    }
    function swap(uint amt)external payable{
        //Put into aave and get aToken
        iwg.depositETH(amt,0x4bd5643ac6f66a5237E18bfA7d47cF22f1c9F210,address(this),0);

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