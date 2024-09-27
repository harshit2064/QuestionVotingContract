// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract QuestionVoting {
    struct Poll {
        string question;
        uint256 yesVotes;
        uint256 noVotes;
        bool isActive;
    }

    Poll public currentPoll;

    // to create a new poll
    function createPoll(string memory _question) public {
        require(!currentPoll.isActive, "A poll is already active");

        currentPoll = Poll({
            question: _question,
            yesVotes: 0,
            noVotes: 0,
            isActive: true
        });
    }

    // to vote
    function vote(bool _vote) public {
        assert(currentPoll.isActive);

        if (_vote) {
            currentPoll.yesVotes++;
        } else {
            currentPoll.noVotes++;
        }
    }

    // to close the poll and get results
    function closePoll() public {
        if (!currentPoll.isActive) {
            revert("Poll is already closed");
        }

        currentPoll.isActive = false;
    }

    // to get poll results
    function getResults() public view returns (string memory, uint256, uint256) {
        return (currentPoll.question, currentPoll.yesVotes, currentPoll.noVotes);
    }
}
