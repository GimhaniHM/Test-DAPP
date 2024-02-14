// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BethToken is ERC20 {

    address payable public owner; //Initialize the owner of the contract to eb deployed

    mapping(address account => uint256) private _balances;

    constructor() ERC20("BethToken", "FCX") {
        owner = payable(msg.sender);    //declare the owner of the contract

        // Mints 100,000 tokens to the contract to be deployed
        _mint(owner, 1000000 * (10 ** uint256(decimals())));
        // _mint(owner, initialSuply);
    }

    // /**
    //  * @dev Overrides {ERC20-balanceOf} to include additional functionality.
    //  */
    // function balanceOf(address account) public view override returns (uint256) {
    //     return _balances[account];
    // }

    // /**
    //  * @dev Overrides {ERC20-approve} to include additional functionality.
    //  */
    // function approve(address spender, uint256 value) public override returns (bool) {
    //     // address owner = _msgSender();
    //     _approve(owner, spender, value);
    //     return true;
    // }

    // /**
    //  * @dev Overrides {ERC20-transferFrom} to include additional functionality.
    //  */
    // function transferFrom(address from, address to, uint256 value) public override returns (bool) {
    //     address spender = _msgSender();
    //     _spendAllowance(from, spender, value);
    //     _transfer(from, to, value);
    //     return true;
    // }

    // /**
    //  * @dev Overrides {ERC20-decimals} to set the decimals to 18.
    //  */
    // function decimals() public view virtual override returns (uint8) {
    //     return 18;
    // }
}