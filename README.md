## Medusa-timestamp-bug-POC

Simple repo to recreate Medusa backwards timestamp bug. 

Requirements:
* [foundry](https://github.com/foundry-rs/foundry)
* [medusa@v0.1.3](https://github.com/crytic/medusa/releases/tag/v0.1.3)

To install dependencies:
```bash
forge install
```

Tu run the test with Medusa:
```bash
medusa fuzz
```

To run the test with Echinda:
```bash
echidna src/CryticTester.sol --contract CryticTester --config ./echidna.config.yaml
```