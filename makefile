-include .env

deploy-sepolia:; forge script script/DeployBasicNft.s.sol --rpc-url $(SEPOLIA_RPC_URL) --broadcast --account sepoliaMine --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv


deploy-anvil:; forge script script/DeployBasicNft.s.sol --rpc-url $(ANVIL_RPC_URL) --broadcast --account defaultKey -vvvv

mint:; forge script script/Interactions.s.sol:MintBasicNft --rpc-url $(SEPOLIA_RPC_URL) --broadcast --account sepoliaMine -vvvv