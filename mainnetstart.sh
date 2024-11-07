export COIN_NAME=PSC
export NETWORK=Privix Smart Chain
export SUBNETWORK=Mainnet
export ETHEREUM_JSONRPC_VARIANTgeth
export LINK_TO_OTHER_EXPLORERS=false
export COIN=PSC
export CHAIN_ID=16969696

export LOGO=/images/blockscout_logo.svg
export ETHEREUM_JSONRPC_WS_URL=ws://localhost:8545/ws
export ETHEREUM_JSONRPC_TRACE_URL=http://localhost:8545
export ETHEREUM_JSONRPC_HTTP_URL=http://localhost:8545
export CUSTOM_CONTRACT_ADDRESSES_${VALIDATOR-CONTRACT}=0x0000000000000000000000000000000000001001
export ETHEREUM_JSONRPC_PENDING_TRANSACTIONS_TYPE=geth
export DISPLAY_TOKEN_ICONS=true
export DISABLE_ADD_TO_MM_BUTTON=false
export VALIDATORS_CONTRACT=0x0000000000000000000000000000000000001001
export SOURCIFY_INTEGRATION_ENABLED=true
export POS_STAKING_CONTRACT=0x0000000000000000000000000000000000001001
export ENABLE_SOURCIFY_INTEGRATION=true
export DISABLE_EXCHANGE_RATES=true
export ENABLE_TXS_STATS=true
export SHOW_TXS_CHART=true
export HIDE_BLOCK_MINER=false
export SUPPORTED_CHAINS='[]'
export OTHER_EXPLORERS='{}'
export SHOW_PRICE_CHART=false
export INDEXER_DISABLE_INTERNAL_TRANSACTIONS_FETCHER=true
export API_V2_ENABLED=true
export MIX_ENV=prod
export DATABASE_URL=postgresql://nlg:nlg@localhost:5432/blockscout-mainnet
export BLOCKSCOUT_PROTOCOL=https
export BLOCKSCOUT_HOST=localhost
export SECRET_KEY_BASE=zUBYvm+qX1mPn84BElO/tX1ydzMU3VV8DCMR1JqakNkq6hbY+FS/TU/X4XoJbVYE
mix compile

 mix phx.digest
 bash build.sh
#mix do ecto.drop, ecto.create, ecto.migrate
mix do ecto.create, ecto.migrate

export PORT=3000
export BLOCKSCOUT_HOST=mainnet.privixscan.io
export BLOCKSCOUT_PROTOCOL=https
mix phx.server
