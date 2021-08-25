pragma solidity ^0.5.16;

contract MojitoTokenMock {
    string public constant name = "MojitoToken";
    string public constant symbol = "MJT";
    uint8 public constant decimals = 18;
    uint public totalSupply = 25_000_000e18;

    mapping(address => uint256) internal balances;

    constructor() public {
        balances[msg.sender] = totalSupply;
    }

    function balanceOf(address account) external view returns (uint) {
        return balances[account];
    }

}
