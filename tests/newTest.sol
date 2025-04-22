// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts@4.8.0/access/Ownable.sol";
import "@openzeppelin/contracts@4.8.0/token/ERC721/ERC721.sol";

contract DracoUnity is ERC721, Ownable{
  constructor( )ERC721("DracoUnity", "DUN"){}
  function safeMint(address to , uint256 tokenId)  external onlyOwner{
      _safeMint(to,tokenId);
  }

}