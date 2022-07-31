var Migrations = artifacts.require("./Migrations.sol");
var Battleship = artifacts.require("./Battleship.sol");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(Battleship);
};
