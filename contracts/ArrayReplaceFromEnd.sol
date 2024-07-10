// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract ArrayReplaceFromEnd {
    uint256[] public arr;

    function remove(uint256 _index) public {
        arr[_index] = arr[arr.length - 1];
        arr.pop();
    }

    function test() public {
        arr = [1, 2, 3, 4];

        remove(1);

        assert(arr[0] == 1);
        assert(arr[1] == 3);
        assert(arr[2] == 4);
        assert(arr.length ==3);
        
        
    }
}