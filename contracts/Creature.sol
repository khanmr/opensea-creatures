pragma solidity ^0.5.0;

import "./TradeableERC721Token.sol";
import "@openzeppelin/contracts/ownership/Ownable.sol";

/**
 * @title Creature
 * Creature - a contract for my non-fungible creatures.
 */
contract Creature is TradeableERC721Token {
    constructor(address _proxyRegistryAddress)
        public
        TradeableERC721Token("ShibaInu", "DOGE", _proxyRegistryAddress)
    {}

    function baseTokenURI() public view returns (string memory) {
        return "https://opensea-creatures-api.herokuapp.com/api/creature/";
    }
}
