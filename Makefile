
################ BUILD ################
build: build_api build_mock_api build_tests

build_tests:
	./bin/solc solidity-cborutils=${PWD}/node_modules/solidity-cborutils/ @openzeppelin=${PWD}/node_modules/@openzeppelin/ @ensdomains=${PWD}/node_modules/@ensdomains/ contracts/v0.8/tests/market.test.sol --output-dir ./build/v0.8/tests --overwrite --bin --hashes --opcodes --abi
	./bin/solc solidity-cborutils=${PWD}/node_modules/solidity-cborutils/ @openzeppelin=${PWD}/node_modules/@openzeppelin/ @ensdomains=${PWD}/node_modules/@ensdomains/ contracts/v0.8/tests/miner.test.sol --output-dir ./build/v0.8/tests --overwrite --bin --hashes --opcodes --abi
	./bin/solc solidity-cborutils=${PWD}/node_modules/solidity-cborutils/ @openzeppelin=${PWD}/node_modules/@openzeppelin/ @ensdomains=${PWD}/node_modules/@ensdomains/ contracts/v0.8/tests/power.test.sol --output-dir ./build/v0.8/tests --overwrite --bin --hashes --opcodes --abi
	./bin/solc solidity-cborutils=${PWD}/node_modules/solidity-cborutils/ @openzeppelin=${PWD}/node_modules/@openzeppelin/ @ensdomains=${PWD}/node_modules/@ensdomains/ contracts/v0.8/tests/account.test.sol --output-dir ./build/v0.8/tests --overwrite --bin --hashes --opcodes --abi
	./bin/solc solidity-cborutils=${PWD}/node_modules/solidity-cborutils/ @openzeppelin=${PWD}/node_modules/@openzeppelin/ @ensdomains=${PWD}/node_modules/@ensdomains/ contracts/v0.8/tests/datacap.test.sol --output-dir ./build/v0.8/tests --overwrite --bin --hashes --opcodes --abi
	./bin/solc solidity-cborutils=${PWD}/node_modules/solidity-cborutils/ @openzeppelin=${PWD}/node_modules/@openzeppelin/ @ensdomains=${PWD}/node_modules/@ensdomains/ contracts/v0.8/tests/init.test.sol --output-dir ./build/v0.8/tests --overwrite --bin --hashes --opcodes --abi
	./bin/solc solidity-cborutils=${PWD}/node_modules/solidity-cborutils/ @openzeppelin=${PWD}/node_modules/@openzeppelin/ @ensdomains=${PWD}/node_modules/@ensdomains/ contracts/v0.8/tests/multisig.test.sol --output-dir ./build/v0.8/tests --overwrite --bin --hashes --opcodes --abi
	./bin/solc solidity-cborutils=${PWD}/node_modules/solidity-cborutils/ @openzeppelin=${PWD}/node_modules/@openzeppelin/ @ensdomains=${PWD}/node_modules/@ensdomains/ contracts/v0.8/tests/verifreg.test.sol --output-dir ./build/v0.8/tests --overwrite --bin --hashes --opcodes --abi
	./bin/solc solidity-cborutils=${PWD}/node_modules/solidity-cborutils/ @openzeppelin=${PWD}/node_modules/@openzeppelin/ @ensdomains=${PWD}/node_modules/@ensdomains/ contracts/v0.8/tests/precompiles.test.sol --output-dir ./build/v0.8/tests --overwrite --bin --hashes --opcodes --abi
	./bin/solc solidity-cborutils=${PWD}/node_modules/solidity-cborutils/ @openzeppelin=${PWD}/node_modules/@openzeppelin/ @ensdomains=${PWD}/node_modules/@ensdomains/ contracts/v0.8/tests/send.test.sol --output-dir ./build/v0.8/tests --overwrite --bin --hashes --opcodes --abi
	./bin/solc @zondax/solidity-bignumber=${PWD}/node_modules/@zondax/solidity-bignumber/ solidity-cborutils=${PWD}/node_modules/solidity-cborutils/ @openzeppelin=${PWD}/node_modules/@openzeppelin/ @ensdomains=${PWD}/node_modules/@ensdomains/ contracts/v0.8/mocks/tests/market.test.sol --output-dir ./build/v0.8/mocks/tests --overwrite --bin --hashes --opcodes --abi
	./bin/solc @zondax/solidity-bignumber=${PWD}/node_modules/@zondax/solidity-bignumber/ solidity-cborutils=${PWD}/node_modules/solidity-cborutils/ @openzeppelin=${PWD}/node_modules/@openzeppelin/ @ensdomains=${PWD}/node_modules/@ensdomains/ contracts/v0.8/mocks/tests/miner.test.sol --output-dir ./build/v0.8/mocks/tests --overwrite --bin --hashes --opcodes --abi


build_api:
	./bin/solc solidity-cborutils=${PWD}/node_modules/solidity-cborutils/ @openzeppelin=${PWD}/node_modules/@openzeppelin/ @ensdomains=${PWD}/node_modules/@ensdomains/ contracts/v0.8/MarketAPI.sol --output-dir ./build/v0.8 --overwrite --bin --hashes --opcodes --abi
	./bin/solc solidity-cborutils=${PWD}/node_modules/solidity-cborutils/ @openzeppelin=${PWD}/node_modules/@openzeppelin/ @ensdomains=${PWD}/node_modules/@ensdomains/ contracts/v0.8/MinerAPI.sol --output-dir ./build/v0.8 --overwrite --bin --hashes --opcodes --abi
	./bin/solc solidity-cborutils=${PWD}/node_modules/solidity-cborutils/ @openzeppelin=${PWD}/node_modules/@openzeppelin/ @ensdomains=${PWD}/node_modules/@ensdomains/ contracts/v0.8/VerifRegAPI.sol --output-dir ./build/v0.8 --overwrite --bin --hashes --opcodes --abi
	./bin/solc solidity-cborutils=${PWD}/node_modules/solidity-cborutils/ @openzeppelin=${PWD}/node_modules/@openzeppelin/ @ensdomains=${PWD}/node_modules/@ensdomains/ contracts/v0.8/PowerAPI.sol --output-dir ./build/v0.8 --overwrite --bin --hashes --opcodes --abi
	./bin/solc solidity-cborutils=${PWD}/node_modules/solidity-cborutils/ @openzeppelin=${PWD}/node_modules/@openzeppelin/ @ensdomains=${PWD}/node_modules/@ensdomains/ contracts/v0.8/DataCapAPI.sol --output-dir ./build/v0.8 --overwrite --bin --hashes --opcodes --abi
	./bin/solc solidity-cborutils=${PWD}/node_modules/solidity-cborutils/ @openzeppelin=${PWD}/node_modules/@openzeppelin/ @ensdomains=${PWD}/node_modules/@ensdomains/ contracts/v0.8/InitAPI.sol --output-dir ./build/v0.8 --overwrite --bin --hashes --opcodes --abi
	./bin/solc solidity-cborutils=${PWD}/node_modules/solidity-cborutils/ @openzeppelin=${PWD}/node_modules/@openzeppelin/ @ensdomains=${PWD}/node_modules/@ensdomains/ contracts/v0.8/AccountAPI.sol --output-dir ./build/v0.8 --overwrite --bin --hashes --opcodes --abi
	./bin/solc solidity-cborutils=${PWD}/node_modules/solidity-cborutils/ @openzeppelin=${PWD}/node_modules/@openzeppelin/ @ensdomains=${PWD}/node_modules/@ensdomains/ contracts/v0.8/MultisigAPI.sol --output-dir ./build/v0.8 --overwrite --bin --hashes --opcodes --abi
	./bin/solc solidity-cborutils=${PWD}/node_modules/solidity-cborutils/ @openzeppelin=${PWD}/node_modules/@openzeppelin/ @ensdomains=${PWD}/node_modules/@ensdomains/ contracts/v0.8/PrecompilesAPI.sol --output-dir ./build/v0.8 --overwrite --bin --hashes --opcodes --abi
	./bin/solc solidity-cborutils=${PWD}/node_modules/solidity-cborutils/ @openzeppelin=${PWD}/node_modules/@openzeppelin/ @ensdomains=${PWD}/node_modules/@ensdomains/ contracts/v0.8/Utils.sol --output-dir ./build/v0.8 --overwrite --bin --hashes --opcodes --abi
	./bin/solc solidity-cborutils=${PWD}/node_modules/solidity-cborutils/ @openzeppelin=${PWD}/node_modules/@openzeppelin/ @ensdomains=${PWD}/node_modules/@ensdomains/ contracts/v0.8/SendAPI.sol --output-dir ./build/v0.8 --overwrite --bin --hashes --opcodes --abi

build_mock_api:
	./bin/solc @zondax/solidity-bignumber=${PWD}/node_modules/@zondax/solidity-bignumber/ solidity-cborutils=${PWD}/node_modules/solidity-cborutils/ @openzeppelin=${PWD}/node_modules/@openzeppelin/ @ensdomains=${PWD}/node_modules/@ensdomains/ contracts/v0.8/mocks/MarketMockAPI.sol --output-dir ./build/v0.8/mocks --overwrite --bin --hashes --opcodes --abi
	./bin/solc @zondax/solidity-bignumber=${PWD}/node_modules/@zondax/solidity-bignumber/ solidity-cborutils=${PWD}/node_modules/solidity-cborutils/ @openzeppelin=${PWD}/node_modules/@openzeppelin/ @ensdomains=${PWD}/node_modules/@ensdomains/ contracts/v0.8/mocks/MinerMockAPI.sol --output-dir ./build/v0.8/mocks --overwrite --bin --hashes --opcodes --abi

build_builtin_actors:
	cd testing/builtin-actors && make bundle-hyperspace

get_method_nums:
	cd script && cargo r

################ DEPLOY ################

deploy_api: deploy_miner_api deploy_market_api deploy_verifreg_api deploy_power_api

deploy_miner_api:
	mkdir -p hardhat/contracts && cp -rf contracts/* hardhat/contracts/. && cd hardhat && yarn hardhat deploy --tags MinerAPI

deploy_market_api:
	mkdir -p hardhat/contracts && cp -rf contracts/* hardhat/contracts/. && cd hardhat && yarn hardhat deploy --tags MarketAPI

deploy_verifreg_api:
	mkdir -p hardhat/contracts && cp -rf contracts/* hardhat/contracts/. && cd hardhat && yarn hardhat deploy --tags VerifRegAPI

deploy_power_api:
	mkdir -p hardhat/contracts && cp -rf contracts/* hardhat/contracts/. && cd hardhat && yarn hardhat deploy --tags PowerAPI

deploy_simple_coin:
	cd hardhat && yarn hardhat deploy --tags SimpleCoin

################ TESTS ################

test_miner_cbor_serialization:
	cd hardhat && yarn hardhat change-beneficiary --beneficiary 0xaaaa12 --quota 12222 --expiration 1111 --contractaddress $(CONTRACT_ADDRESS)

test_market_cbor_serialization:
	cd hardhat && yarn hardhat withdraw_balance --providerorclient 0xaaaa12 --tokenamount 12222 --contractaddress $(CONTRACT_ADDRESS)

test_integration: build build_builtin_actors
	cd testing && cargo test

test_miner_integration: build build_builtin_actors
	cd testing && cargo test miner_test

test_market_integration: build build_builtin_actors
	cd testing && cargo test market_test

test_power_integration: build build_builtin_actors
	cd testing && cargo test power_test

test_verifreg_integration: build build_builtin_actors
	cd testing && cargo test verifreg_test

test_datacap_integration: build build_builtin_actors
	cd testing && cargo test datacap_test

test_init_integration: build build_builtin_actors
	cd testing && cargo test init_test

test_account_integration: build build_builtin_actors
	cd testing && cargo test account_test

test_multisig_integration: build build_builtin_actors
	cd testing && cargo test multisig_test

test_precompiles_integration: build build_builtin_actors
	cd testing && cargo test precompiles_test

test_send_integration: build build_builtin_actors
	cd testing && cargo test send_test

################ DEPS ################

install_solc_linux:
	wget https://github.com/ethereum/solidity/releases/download/v0.8.17/solc-static-linux
	mv solc-static-linux bin/solc
	chmod +x bin/solc

install_solc_win:
	@echo "No Windows. Only Linux."

install_solc_mac:
	wget https://github.com/ethereum/solidity/releases/download/v0.8.17/solc-macos
	mv solc-macos bin/solc
	chmod +x bin/solc

install-llvm-ci:
	echo 'deb http://apt.llvm.org/focal/ llvm-toolchain-focal-13 main' | sudo tee /etc/apt/sources.list.d/llvm.list
	wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
	sudo apt-get update
	sudo apt-get install clang-13 llvm-13-dev lld-13 libclang-13-dev
