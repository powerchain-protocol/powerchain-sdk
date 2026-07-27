#!/usr/bin/env bash
set -euo pipefail

ROOT="powerchain"

mkdir -p "$ROOT"

DIRS=(
".github/workflows"
".github/ISSUE_TEMPLATE"
".github/DISCUSSION_TEMPLATE"

".changeset"
".husky"
".vscode"
".devcontainer"

"assets/logo"
"assets/icons"
"assets/images"
"assets/screenshots"
"assets/diagrams"

"apps/dashboard"
"apps/explorer"
"apps/wallet"
"apps/marketplace"
"apps/exchange"
"apps/treasury"
"apps/payments"
"apps/governance"
"apps/identity"
"apps/ai-copilot"
"apps/playground"

"contracts/token"
"contracts/nft"
"contracts/payments"
"contracts/treasury"
"contracts/exchange"
"contracts/marketplace"
"contracts/governance"
"contracts/staking"
"contracts/validator"
"contracts/escrow"
"contracts/energy"

"programs/core"
"programs/accounts"
"programs/staking"
"programs/governance"
"programs/exchange"
"programs/treasury"
"programs/payments"
"programs/energy"

"examples/javascript"
"examples/typescript"
"examples/react"
"examples/nextjs"
"examples/vue"
"examples/angular"
"examples/node"
"examples/express"
"examples/fastify"
"examples/nestjs"
"examples/docker"
"examples/kubernetes"

"runtime/docker"
"runtime/kubernetes"
"runtime/helm"
"runtime/terraform"

"scripts"

"test/unit"
"test/integration"
"test/e2e"
"test/performance"
"test/security"

"benchmarks"

"tools/generators"
"tools/release"
"tools/migration"

"templates/starter"
"templates/wallet"
"templates/dapp"
"templates/marketplace"
"templates/payment-gateway"

"specifications/openapi"
"specifications/graphql"
"specifications/asyncapi"
"specifications/protobuf"
"specifications/rpc"
)

PACKAGES=(
web3.js
rpc
providers
transport
websocket
subscriptions
wallet
signer
hd-wallet
keystore
accounts
address
transaction
tx-builder
receipts
contract
abi
program
events
token
token-2022
nft
metadata
exchange-sdk
payments-sdk
treasury-sdk
marketplace-sdk
governance-sdk
energy-sdk
ai-sdk
auth
identity
cache
middleware
plugins
crypto
encoding
hashing
base58
units
config
constants
errors
types
utils
logger
telemetry
analytics
storage
graphql
rest
cli
codegen
testing
react
react-ui
vue
angular
node
python
go
rust
flutter
mobile
)

for d in "${DIRS[@]}"; do
    mkdir -p "$ROOT/$d"
done

for pkg in "${PACKAGES[@]}"; do
    mkdir -p "$ROOT/packages/$pkg"/{src,examples,test,benchmarks}
    touch "$ROOT/packages/$pkg/README.md"
    touch "$ROOT/packages/$pkg/CHANGELOG.md"
    touch "$ROOT/packages/$pkg/LICENSE"
    touch "$ROOT/packages/$pkg/package.json"
    touch "$ROOT/packages/$pkg/tsconfig.json"
    touch "$ROOT/packages/$pkg/tsup.config.ts"
    touch "$ROOT/packages/$pkg/vitest.config.ts"
    touch "$ROOT/packages/$pkg/biome.json"
    touch "$ROOT/packages/$pkg/.npmignore"
    touch "$ROOT/packages/$pkg/src/index.ts"
done

ROOT_FILES=(
README.md
LICENSE
CHANGELOG.md
ROADMAP.md
CONTRIBUTING.md
SECURITY.md
CODE_OF_CONDUCT.md
GOVERNANCE.md
package.json
pnpm-workspace.yaml
turbo.json
tsconfig.base.json
biome.json
.editorconfig
.gitignore
.gitattributes
.npmrc
.prettierignore
.prettierrc
)

for f in "${ROOT_FILES[@]}"; do
    touch "$ROOT/$f"
done

echo "✅ PowerChain repository created."