## Task-1-kbs SavingsBank Smart Contract

This contract works like a digital piggy bank.

# Ownership
 The owner is the person who deploys the contract.
 The owner's address is saved using `msg.sender` in the constructor.
 Only the owner is allowed to withdraw ETH.

# Security Check
 The contract checks that the owner does not withdraw more ETH than the contract has.
 This is done using a `require` statement.
