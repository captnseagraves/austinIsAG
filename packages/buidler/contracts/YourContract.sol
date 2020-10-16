pragma solidity >=0.6.0 <0.7.0;

import "@nomiclabs/buidler/console.sol";

contract YourContract {

  uint8 public count = 1;
  uint256 public timeOfDeploy = block.timestamp;
  address public owner;

  constructor () public {
    owner = 0x90D4CeD092C11a6Af9D352Bf3648Bb55288fd113;
  }

  function dec() public {
    count = count - 1;
  }

  event SetPurpose(address sender, string purpose);
  event ChangeOwner(address sender, address owner, address newOwner);

  string public purpose = "🛠 Programming Unstoppable Money";

  function setPurpose(string memory newPurpose) public {
    require(msg.sender == owner);

    purpose = newPurpose;
    console.log(msg.sender,"set purpose to",purpose);
    emit SetPurpose(msg.sender, purpose);
  }

  function changeOwner(address newOwner) public {
    owner = newOwner;
    console.log(msg.sender,"changed owner to",owner,newOwner);
    emit ChangeOwner(msg.sender, owner, newOwner);
  }

}
