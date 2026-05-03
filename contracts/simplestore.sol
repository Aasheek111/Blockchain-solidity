// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract store{

    uint  public favnum;

    function storing(uint fav) public{
        favnum = fav;
    }
    //struct 
    struct People{
        uint favnum;
        string name;
    }

// People public people =People({favnum: 10, name: "sajid"});

mapping(string=>uint) public nameToFavNum;

People[] public people;
//memory for temporary and storage for permanent 
//if we use string as a paramater then we have you use either memory or storage
function addPerson(uint fav, string  memory naam )public {
    people.push(People(fav,naam));
    //mapping 
    nameToFavNum[naam]=fav;
}
function getdata() public view returns (People[] memory){
     return people;
}

    function retrive() public view returns (uint){
        return favnum;
    }

}
