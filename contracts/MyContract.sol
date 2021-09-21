pragma solidity >=0.6.0 <0.9.0;


import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "hardhat/console.sol";


contract MyContract is Ownable {

  address public tokenAddress;

constructor(address _token) {
  require(_token != address(0), "invalid token address");

  tokenAddress = _token;

  }

  function addLiquidity(uint256 _tokenAmount) public payable {
     IERC20 token = IERC20(tokenAddress);
     token.transferFrom(msg.sender, address(this), _tokenAmount);
 }

  function getReserve() public view returns (uint256) {
  return IERC20(tokenAddress).balanceOf(address(this));
}


function getAmount(
  uint256 inputAmount,
  uint256 inputReserve,
  uint256 outputReserve
) private pure returns (uint256) {
  require(inputReserve > 0 && outputReserve > 0, "invalid reserves");

  return (inputAmount * outputReserve) / (inputReserve + inputAmount);
}





}
