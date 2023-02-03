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