// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

import "@openzeppelin/contracts/access/Ownable.sol";

contract SimpleStorage is Ownable {
    uint256 s_favoriteNumber;

    constructor(uint256 _x) {
        s_favoriteNumber = _x;
    }

    function setNumber(uint256 _x) external onlyOwner {
        s_favoriteNumber = _x;
    }

    function getNumber() external view returns (uint256) {
        return s_favoriteNumber;
    }
}
