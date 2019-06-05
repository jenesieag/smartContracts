pragma solidity 0.4.24;

contract Gettersetter{
    
    int public add;
    
    function n(int _1st, int _2nd, int _3rd){
        add = _1st + _2nd + _3rd                                ; 
    }

}

    // string public msg = "hello hello";
    
    
    // function set(string _msg){
    //     msg = _msg;
    // } 
