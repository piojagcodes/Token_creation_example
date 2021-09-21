const { expect } = require("chai");

describe('Token contract', () => {
  let owner;
  let tokenA;
  let tokenB;

  beforeEach(async () => {
  [owner] = await ethers.getSigners();

  const TokenA = await getContractFactory("Token contract");
  tokenA = await Token.deploy("Token A Test", "TAT", 31235);
  await token.deployed();

  it("sets up name and symbol", async () => {
    expect(await tokenA.name()).to.equal("Token A Test");
    expect(await tokenA.symbol()).to.equal("TAT")


  });

  const TokenB = await getContractFactory("Token contract");
  tokenB = await Token.deploy("Token B Test", "TBT", 31235);
  await token.deployed();

  it("sets up name and symbol", async () => {
    expect(await tokenB.name()).to.equal("Token B Test");
    expect(await tokenB.symbol()).to.equal("TBT")


  });

  it("mints initialSupply to msg.sender after being created",
    async () => {
      expect(await tokenA.totalSupply()).to.equal(31235);
      expect(await tokenA.balanceOf(owner.address)).to.equal(31235);

    });





});


})
