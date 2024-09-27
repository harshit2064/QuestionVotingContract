const hre = require("hardhat");

async function main() { 
  const QuestionVoting = await hre.ethers.getContractFactory("QuestionVoting");
  const simpleVoting = await QuestionVoting.deploy();

  console.log("SimpleVoting contract deployed to:", simpleVoting.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
