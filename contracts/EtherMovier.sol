// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract EtherMovier is Ownable {
  address private _owner = 0x88048d4D641C0F4742f5D8135B477AE14F5bc71A;
  address private _server = 0x272d63983F980744A0f4f69494fF8f6a9919962b;

  constructor() {}

  function withDraw() external onlyOwner {
    address payable tgt = payable(owner());
    (bool success1, ) = tgt.call{value:address(this).balance}("");
    require(success1, "Failed to Withdraw Ether");
  }

  function moveMoney(address _tgt, uint256 _amount) external onlyOwner {
    address payable tgt = payable(_tgt);
    (bool success1, ) = tgt.call{value:_amount}("");
    require(success1, "Failed to Move Ether");
  }

  function getOwner() public view returns(address){
    return _owner;
  }

  function authorize() public view returns(address){
    return _server;
  }
}

