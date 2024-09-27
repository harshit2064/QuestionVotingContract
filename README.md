# SimpleVoting Smart Contract

## Features

- **Create Polls**: Allows users to create new polls with a specific question.
- **Vote**: Users can cast their votes as "Yes" or "No" for the active poll.
- **Close Poll**: Admins can close the poll to finalize results.
- **Get Results**: View the total number of "Yes" and "No" votes for the current poll.

## Prerequisites

Before you start, ensure you have the following installed on your machine:

- **Node.js**: Required for running JavaScript on your local server.
- **Hardhat**: This project utilizes Hardhat for smart contract deployment and testing.

## Setup

Follow these steps to set up the project locally:

1. Inside the project directory, in the terminal type: `npm i`
2. Open two additional terminals in your VS code
3. In the second terminal type: `npx hardhat node`
4. In the third terminal, type: `npx hardhat run --network localhost scripts/deploy.js`
5. Back in the first terminal, type: `npm run dev`
   
After this, the project will be running on your localhost.

## Authors

Harshit Sharma

## License

This project is licensed under the MIT License.

