const EtherMovier = artifacts.require("EtherMovier");
contract("EtherMovier", (accounts) => {
  let [alice, bob, server] = accounts;
  let contractInstance;
  beforeEach(async () => {
    contractInstance = await EtherMovier.new();
  });

  it("With Draw", async () => {
    const tmp = await contractInstance.withDraw({from: alice});
    console.log('-------------------------------------')
    console.log(tmp)
    console.log('-------------------------------------')
    // expect(result.receipt.status).to.equal(true);
  })

  it("Move Ether", async () => {
    var tmp = await contractInstance.moveMoney(bob, 1000000000, {from: alice});
    console.log('-------------------------------------')
    console.log(tmp)
    console.log('-------------------------------------')
    // expect(result.receipt.status).to.equal(true);
  })

})