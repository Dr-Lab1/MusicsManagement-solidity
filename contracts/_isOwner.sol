// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract _isOwner {
  address owner;
  constructor() public {
    owner = msg.sender;
  }

  modifier onlyOwner{
    require(owner == msg.sender, "Vous n'etes pas le proprietaire");
    _;
  }
}
