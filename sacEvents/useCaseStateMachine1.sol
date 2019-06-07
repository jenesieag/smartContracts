pragma solidity 0.4.24;
contract sacEvents {
    address owner;
    
    enum Events{
        GeneralAssembly,
        DepartmentWeek,
        ChristmasParty
    }
    Events events;
    constructor(){
        owner = msg.sender;
    }
    
    modifier onlyMaitenance(){
        require(msg.sender == owner);
        _;
    }
    function attendGenAssembly() public view returns(string){
        require(events == Events.GeneralAssembly);
        return('welcome to General Assembly');
    }
    function attendDeptWeek() public view returns(string){
        require(events == Events.DepartmentWeek);
        return('welcome to department week!');
    }
    function attendChristMasParty()public view returns(string){
        require(events == Events.ChristmasParty);
        return("Merry Christmas!");
    }
    function changeEvent(int _eventID) onlyMaitenance{
        if(_eventID == 1){
            events = Events.GeneralAssembly;
        }
        else if(_eventID == 2){
            events = Events.DepartmentWeek;
        }
        else if(_eventID == 3){
            events = Events.ChristmasParty;
        
        }
    }
}

