const { ethers } = require('hardhat');

async function main() {
  const [deployer] = await ethers.getSigners();

  const CONTRACT_ADDRESS = '0xdfAFED304f463E509531c410f5ca68B27f8914e4';

  console.log('Deploying contracts with the account:', deployer.address);

  const BethelInvoice = await ethers.getContractFactory('BethelInvoice'); // Fetching bytecode and ABI
  const bethelinvoice = await BethelInvoice.deploy(CONTRACT_ADDRESS);   // Create the instance of our smart contract
  await bethelinvoice.deployed(); // Deploy our smart contract

  console.log('Storage deployed to :', bethelinvoice.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
