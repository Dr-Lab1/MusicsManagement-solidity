// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import './_isOwner.sol';

contract MusiciansManager is _isOwner{
  
  struct Track {
    string title;
    uint duration;
  }

  struct Musician {
    string name;
    Track[] tracks;
  }

  mapping(address => Musician) Musicians;

  function addMusician (address _address, string memory _name) external onlyOwner {
    require(bytes(Musicians[_address].name).length == 0, "Le musician existe deja");
    Musicians[_address].name = _name;
  }

  function getMusician (address _address) external view returns (Musician memory) {
    return Musicians[_address];
  }

  function addTrack(address _address, string memory _title, uint _duration) external onlyOwner {
    Track memory thisTrack = Track(_title, _duration);
    Musicians[_address].tracks.push(thisTrack);
  }

  function getTracks(address _address) external view returns (Track [] memory) {
    return Musicians[_address].tracks;
  } 
}
