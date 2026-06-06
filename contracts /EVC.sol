// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract EVICUSD {

    string public constant name = "EVIC USD";
    string public constant symbol = "EVIC";
    uint8 public constant decimals = 18;

    uint256 public totalSupply;
    address public owner;

    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;

    event Transfer(
        address indexed from,
        address indexed to,
        uint256 value
    );

    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    // Constructor sem argumentos
    constructor() {
        owner = msg.sender;

        uint256 initialSupply = 1000000 * (10 ** uint256(decimals));

        totalSupply = initialSupply;
        balanceOf[msg.sender] = initialSupply;

        emit Transfer(address(0), msg.sender, initialSupply);
    }

    // Transferencia simples
    function transfer(address to, uint256 value)
        public
        returns (bool)
    {
        require(to != address(0), "Invalid address");
        require(balanceOf[msg.sender] >= value, "Insufficient balance");

        balanceOf[msg.sender] -= value;
        balanceOf[to] += value;

        emit Transfer(msg.sender, to, value);

        return true;
    }

    // Aprovar gasto
    function approve(address spender, uint256 value)
        public
        returns (bool)
    {
        allowance[msg.sender][spender] = value;

        emit Approval(msg.sender, spender, value);

        return true;
    }

    // Transferencia autorizada
    function transferFrom(
        address from,
        address to,
        uint256 value
    )
        public
        returns (bool)
    {
        require(to != address(0), "Invalid address");
        require(balanceOf[from] >= value, "Insufficient balance");
        require(
            allowance[from][msg.sender] >= value,
            "Allowance exceeded"
        );

        allowance[from][msg.sender] -= value;
        balanceOf[from] -= value;
        balanceOf[to] += value;

        emit Transfer(from, to, value);

        return true;
    }

    // Faucet para demonstração do hackathon
    function faucet(address to, uint256 amount)
        public
        onlyOwner
    {
        uint256 mintAmount = amount * (10 ** uint256(decimals));

        totalSupply += mintAmount;
        balanceOf[to] += mintAmount;

        emit Transfer(address(0), to, mintAmount);
    }
}
