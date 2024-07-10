// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

interface ITest {
    function val() external view returns (uint256);
    function test() external;
    
}

contract CallBack {
    uint256 public val;

    fallback() external {
        val = ITest(msg.sender).val();
    }

    function test(address target) external {
        ITest(target).test();
    }
    
}

contract TestStorage {
    uint256 public val;

    function test() public {
        val = 123;
        bytes memory b = "";
        (bool success, bytes memory result) = msg.sender.call(b);
        require(success, "Low-Level call failed");
    }


}

// contract TestTransientStorage {
//     bytes32 constant SLOT = 0;

//     function test() public {
//         assembly {
//             tstore(SLOT, 321)
//         }
//     }
// }