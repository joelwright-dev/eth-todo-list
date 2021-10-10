// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

contract TodoList {
    //State variable - written to the blockchain
    //Public allows us to read the value of taskCount
    //uints cannot be negative
    uint public taskCount = 0;

    //Structs are objects that have attributes
    struct Task {
        uint id;
        string content;
        bool completed;
    }

    //Associative Array, stores a key => value pair
    mapping(uint => Task) public tasks;

    //Triggered every time something happens within the smart contract
    event TaskCreated(
        uint id,
        string content,
        bool completed
    );

    event TaskCompleted(
        uint id,
        bool completed
    );

    //Constructer function called when contract is run for the first run
    constructor() public {
        createTask("Become a blockchain developer");
    }

    //What comes after memory is a function input, here it is _content
    function createTask(string memory _content) public {
        taskCount ++;
        //reference mapping
        tasks[taskCount] = Task(taskCount, _content, false);
        //Trigger event
        emit TaskCreated(taskCount, _content, false);
    }

    function toggleCompleted(uint _id) public {
        Task memory _task = tasks[_id];
        _task.completed = !_task.completed;
        tasks[_id] = _task;
        emit TaskCompleted(_id, _task.completed);
    }
}