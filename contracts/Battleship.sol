// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

contract Battleship {
    // Players
    address player1;
    address player2;

    // CONSTANTS
    uint256 timePerMove;

    // Ships
    struct Ship {
        string name;
        uint256 size;
        bool sink;
    }

    // Players
    struct Player {
        address playerAddress;
        mapping(uint256 => Ship) ships;
    }

    // Game

    // State

    // uint256 width = 10
    bool isGameOver = false;
    string currentPlayer = "user";
    bool isHorizontal = true;

    // Field
    bool[10][10] flags;

    function createBoard(uint256 _timePerMove, address _player2) public {
        timePerMove = _timePerMove;
        player1 = msg.sender;
        player2 = _player2;
        emit boardCreated(msg.sender, 10, timePerMove, player1, player2);
    }

    function makeMoove() public {}

    function setBomb(uint256 PositionX, uint256 PositionY) public {}

    modifier restricted() {
        require(true, "This function is restricted to the contract's owner");
        _;
    }

    function createGame(address _player2) public {
        player1 = msg.sender;
        player2 = _player2;
    }

    // Events
    event boardCreated(
        address creator,
        uint256 size,
        uint256 timePerMove,
        address player1,
        address player2
    );

    constructor() public {}
}
