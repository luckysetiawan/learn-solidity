// SPDX-License-Identifier: MIT
pragma solidity >=0.8.22 <0.8.24;

// Donation contract
contract Donation {
    // received donation in wei
    uint receivedDonations;

    // giveDonation gives donation in wei
    function giveDonation() payable public {
        receivedDonations += msg.value;
    }

    // getReceivedDonations returns received donations in wei
    function getReceivedDonations() public view returns (uint) {
        return receivedDonations;
    }

    // claimDonation allows the specified address to claim all donations
    function claimDonation(address payable recipient) payable public {
        uint contractBalance = address(this).balance;
        require(contractBalance > 0, "No balance to claim");

        payable(recipient).transfer(contractBalance);
    }
}
