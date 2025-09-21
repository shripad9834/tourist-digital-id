// async function main() {
//   const TouristDigitalID = await ethers.getContractFactory("SIH");
//   const contract = await TouristDigitalID.deploy();
//   await contract.deployed();

//   console.log("✅ Contract deployed to:", contract.address);
// }

// main().catch((error) => {
//   console.error(error);
//   process.exitCode = 1;
// });




import hardhat from "hardhat";
const { ethers } = hardhat;


async function main() {
  const TouristDigitalID = await ethers.getContractFactory("TouristDigitalID");

  const contract = await TouristDigitalID.deploy();
  await contract.deployed();

  console.log("✅ Contract deployed to:", contract.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
