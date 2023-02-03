# Private blockchain chat

WIP, im far away from finishing this.

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js
```

This smart contract allows two addresses in the blockchain to chat privately between them.

this smart contract must be used together with the 
private-blockchain-chat js library.


Important note: We need to have the public key of all the receipients in order to send them a message. They will need to sign a "i want to receive messages from the blockchain" transaction. behind the scenes it should call a smart contract where the address will send their public key. then whenever we want a send a message to them we can retrieve the pubkey from the smartcontract.

payload will be a base64 encoded stringified json with this format
{
    payloadHash: "md5 of unencrypted content"
    s: {
        p: "encryptedDataString",
    }
    r: {
        p: "encryptedDataString"
    }
}

payloadHash: we prefer md5 instead of sha256 since its shorter. this field is
used to make sure that the same string is being encrypted for both parties.

"s" stands for sender
"r" stands for receiver
"p" stands for payload