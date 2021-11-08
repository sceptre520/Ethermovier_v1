const EtherMovier = artifacts.require("EtherMovier");

module.exports = function (deployer) {
  deployer.deploy(EtherMovier);
};
