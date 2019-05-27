const ERC20 = artifacts.require('ERC20');

module.exports = function(deployer) {
  deployer.deploy(ERC20,"tttoken","TT",18,1000000);
};

