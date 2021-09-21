pragma solidity >=0.6.0 <0.9.0;


import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "hardhat/console.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract TokenB is ERC20 {

	using SafeMath for uint256;

	constructor(
		string memory name,
		string memory symbol,
		uint256 initialSupply
	) ERC20(name, symbol) {
		_mint(msg.sender, initialSupply);
		}
}
