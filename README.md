# FundMe Smart Contract Project

A decentralized crowdfunding smart contract built with Foundry, following the Cyfrin Foundry Course. This project demonstrates:

- Smart contract development with Solidity
- Price feed integration using Chainlink oracles
- Comprehensive testing with Foundry
- Network forking for realistic testing

## 🎯 Learning Objectives Completed

### Core Concepts

- ✅ **Smart Contract Architecture**: Built a funding contract with withdrawal functionality
- ✅ **Library Usage**: Implemented `PriceConverter` library for ETH/USD conversions
- ✅ **Chainlink Integration**: Connected to Chainlink price feeds for real-time ETH prices
- ✅ **Access Control**: Implemented owner-only withdrawal functionality

### Testing & Development

- ✅ **Unit Testing**: Created comprehensive tests for contract functionality
- ✅ **Network Forking**: Successfully set up tests to run on Sepolia testnet fork
- ✅ **Environment Configuration**: Properly configured `.env` files for RPC URLs
- ✅ **Debugging Skills**: Resolved network mismatch and API key authentication issues

### Technical Challenges Overcome

- 🔧 **Internal Library Testing**: Learned to test internal library functions using helper contracts
- 🔧 **Network Compatibility**: Fixed price feed version mismatches between networks
- 🔧 **RPC Configuration**: Set up proper Alchemy API keys and network endpoints

## 📁 Project Structure

```
foundry-fund-me-f25/
├── src/
│   ├── FundMe.sol              # Main crowdfunding contract
│   └── PriceConverter.sol      # ETH/USD price conversion library
├── script/
│   └── DeployFundMe.s.sol      # Deployment script
├── test/
│   ├── FundMeTest.t.sol        # Main contract tests
│   └── PriceConverterTest.t.sol # Library tests (learning exercise)
├── .env                        # Environment variables (RPC URLs)
└── foundry.toml               # Foundry configuration
```

## 🚀 Quick Start

### Prerequisites

- [Foundry](https://book.getfoundry.sh/getting-started/installation)
- Alchemy or Infura API key for network forking

### Installation

```bash
git clone <your-repo-url>
cd foundry-fund-me-f25
forge install
```

### Environment Setup

Create a `.env` file:

```bash
SEPOLIA_RPC_URL=https://eth-sepolia.g.alchemy.com/v2/YOUR_API_KEY
MAINNET_RPC_URL=https://eth-mainnet.g.alchemy.com/v2/YOUR_API_KEY
```

## 🧪 Testing

### Run all tests (with Sepolia fork):

```bash
forge test --fork-url $SEPOLIA_RPC_URL
```

### Run tests with verbose output:

```bash
forge test --fork-url $SEPOLIA_RPC_URL -vvv
```

### Run specific test:

```bash
forge test --match-test testPriceFeedVersionIsAccurate --fork-url $SEPOLIA_RPC_URL
```

## 📊 Key Learning Insights

### Network Understanding

- **Sepolia Testnet**: ETH/USD price feed returns version `4`
- **Mainnet**: Different price feed versions - learned about network-specific contract addresses
- **Local Testing**: Requires forking live networks to access external contracts like Chainlink

### Smart Contract Patterns

- **Library Pattern**: Used for reusable price conversion logic
- **Access Control**: `onlyOwner` modifier for secure withdrawals
- **Error Handling**: Custom errors for gas optimization
- **State Management**: Tracking funders and funded amounts

### Development Best Practices

- Always test with realistic network conditions
- Use environment variables for sensitive configuration
- Implement comprehensive test coverage
- Document learning progress and challenges

## 🔧 Foundry Commands

### Build

```shell
forge build
```

### Test

```shell
forge test
```

### Format

```shell
forge fmt
```

### Gas Snapshots

```shell
forge snapshot
```

### Local Development

```shell
anvil
```

### Deploy

```shell
forge script script/DeployFundMe.s.sol --rpc-url <your_rpc_url> --private-key <your_private_key>
```

## 📚 Resources

- [Foundry Book](https://book.getfoundry.sh/)
- [Chainlink Price Feeds](https://docs.chain.link/data-feeds/price-feeds/addresses)
- [Cyfrin Foundry Course](https://github.com/Cyfrin/foundry-full-course-f23)

## 🤝 Contributing

This is a learning project following the Cyfrin Foundry course. Feel free to:

- Suggest improvements
- Report issues
- Share learning resources

---

**Status**: 🟡 Learning in Progress - Following Cyfrin Foundry Course
