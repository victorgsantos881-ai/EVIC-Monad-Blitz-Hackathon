async function main() {
  const Token = await ethers.getContractFactory("EVICToken");
  const token = await Token.deploy();

  await token.waitForDeployment();

  console.log("EVIC Token deployed:", await token.getAddress());
}

main().catch(console.error);

