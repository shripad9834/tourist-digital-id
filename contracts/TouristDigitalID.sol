// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TouristDigitalID {
    struct Tourist {
        string uid;           
        string blockchainId;  
        string aadhaarHash;   
        string itineraryHash; 
        string emergencyHash; 
        uint256 validUntil;
    }

    mapping(string => Tourist) public tourists;

    event TouristRegistered(string uid, string blockchainId, string txHash);

    function registerTourist(
        string memory _uid,
        string memory _blockchainId,
        string memory _aadhaarHash,
        string memory _itineraryHash,
        string memory _emergencyHash,
        uint256 _validUntil
    ) public {
        tourists[_uid] = Tourist(
            _uid, _blockchainId, _aadhaarHash, _itineraryHash, _emergencyHash, _validUntil
        );
        emit TouristRegistered(_uid, _blockchainId, "stored");
    }

    function getTourist(string memory _uid) public view returns (Tourist memory) {
        return tourists[_uid];
    }
}
