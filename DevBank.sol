
pragma solidity 0.8.0;

// The inheritance from the IERC20 is required for the contract to access these functions externally
interface IERC20 {
    function transfer(address recipient, uint amount) external returns (bool);
    function transferFrom(
        address sender,
        address recipient,
        uint amount
    ) external returns (bool);

}

contract DevBank {

        // variable that will pass in the beb20 token address, in this example usdt 
    address public usdt = 0x77c24f0Af71257C0ee26e0E0a108F940D1698d53;
        // link user accounts to token balance in the contract
    mapping(address => uint) internal bankBalance;


        // allow user to deposit tokens in contract
    function depositTokens(uint _amount) public {
        // Trasnfer users usdt tokens to contract
        IERC20(usdt).transferFrom(msg.sender, address(this), _amount);
        // Update the users bank balance in map
        bankBalance[msg.sender] = bankBalance[msg.sender] + _amount;

    }

        // allow user to withdraw their tokens from the contract
     function withdrawTokens(uint _amount) public {
            // reqire the amount to be less than users balance
        require(bankBalance[msg.sender] >= _amount, "insufficent funds");
            // reduce the users account
        bankBalance[msg.sender] = bankBalance[msg.sender] - _amount;
            // transfer usdt tokens from contract to user
        IERC20(usdt).transfer(msg.sender, _amount);
    
    }

}


//contract launched on the Rinkeby testnet 0xA4b9954143a8540aCeA2568261600e1411ADA6c8