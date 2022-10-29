// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract MySBT is ERC1155, Pausable, Ownable {
    
    using Counters for Counters.Counter;
    Counters.Counter private _tokenCounter;

    constructor() ERC1155("") {}

    function mint(
        address operator,
        address from,
        address to,
        uint256 id,
        uint256 amount,
        bytes memory data
    ) public onlyOwner {
        _beforeTokenTransfer(operator, from, to, id, amount, data);
        _tokenCounter.increment();
        uint256 newItemId = _tokenCounter.current();
        _mint(to, newItemId, amount, data);
    }

    function _beforeTokenTransfer(
        address operator,
        address from,
        address to,
        uint256[] memory ids,
        uint256[] memory amounts,
        bytes memory data
    ) internal pure override(ERC1155) {
        require(from == address(0), "Err: token is SOUL BOUND");
        super._beforeTokenTransfer(operator, from, to, ids, amounts, data);
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }
}