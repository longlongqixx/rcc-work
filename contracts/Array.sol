// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Array {
    uint256[] public arr;
    uint256[] public arr2 = [1,2,3];

    uint256[10] public myFixedSizeArray;

    function get(uint256 i) public view returns (uint256) {
        return arr[i];
    }

    function getArr() public view returns (uint256[] memory) {
        return arr;
    }

    function push(uint256 i) public {
        arr.push(i);
    }

    function pop() public {
        arr.pop();
    }

    function getLength() public view returns (uint256) {
        return arr.length;
    }

    // 按索引删除元素 数组长度不会变 原来元素值变为默认值
    function remove(uint256 index) public {
        delete arr[index];
    }





    
}