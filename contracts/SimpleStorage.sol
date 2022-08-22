pragma solidity 0.6.0;
// SPDX-License-Identifier: MIT


contract SimpleStorage {

    uint256 public favoriteNumber;
    // bool favBool = false;
    // string favString = 'string';
    // int256 favInt = -5;
    // address favAd = 0x9756c55902e9274D63e401e580B42a972bE63D89;
    // bytes32 favBytes = 'cat';

    // max value of bytes is 32
    // uint means unsigned int.. ie. neither positive or negative
    // if no value is passed to favNumber, it get initialized or assigned 0
    function store(uint256 _favNumber) public returns(uint256) {
        favoriteNumber = _favNumber;
        return _favNumber;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber; 
    }
    // there are two keywords that define functions that you don't have to make a transaction on
    // view : reading data off the blockchain not making any transaction.. color blue 
    // pure: functions that do some form of maths

    struct People {
        uint256 favoriteNumber;
        string name;
    }
    // People public person = People({
    //     favoriteNumber : 20,
    //     name : 'John Doe'
    // });

    // dynamicarray
    People[] public people;

    mapping(string => uint256) public nameToFavoriteNumber;
    // adynamic array [1]

    // function to add to the array
    function addToArray(string memory _name, uint256 _favNumber) public {

        people.push(People({favoriteNumber: _favNumber, name:_name}));

        nameToFavoriteNumber[_name] = _favNumber;
    }
    
    // to find specific data such as name or fav number of any index



}

// there are four types of visibility in solidity
// external, public , internal and private
// public - can be called by anybody
// external - can't be called by thesame contract
// internal - can only be called by other functions in the contract
//  private, most restrictive as it can only visible in the contract they're defined
// if visibility isn't set its automatially set to internal