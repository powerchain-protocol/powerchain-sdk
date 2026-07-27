<div align="center">

<img src="./assets/logo-green.png" alt="PowerChain" width="120" />

# @powerchain/web3.js

### Official JavaScript & TypeScript SDK for the PowerChain Network

Build enterprise-grade blockchain applications, digital payments, treasury systems, AI-native financial infrastructure, renewable energy marketplaces and digital asset platforms.

[![Version](https://img.shields.io/badge/version-v1.0.0--beta-blue)](#)
[![License](https://img.shields.io/badge/license-Apache%202.0-green)](#)
[![Node.js](https://img.shields.io/badge/node-20%2B-brightgreen)](#)
[![TypeScript](https://img.shields.io/badge/typescript-5.x-3178C6)](#)
[![ESM](https://img.shields.io/badge/esm-native-orange)](#)
[![OpenAPI](https://img.shields.io/badge/OpenAPI-3.1-success)](#)

**Documentation** • **API Reference** • **Examples** • **Playground** • **Changelog**

</div>

---

# Enterprise AI-Native Renewable Energy & Financial Infrastructure

PowerChain Web3.js is the official JavaScript and TypeScript SDK for the **PowerChain Network**, providing a production-ready development platform for enterprise blockchain, programmable finance, renewable energy infrastructure and AI-native applications.

Designed for developers, enterprises, financial institutions, utilities, governments and ecosystem partners, the SDK delivers a modular, strongly typed and extensible API that unifies blockchain infrastructure, digital assets, programmable payments, treasury management, tokenised renewable energy, carbon markets, AI-powered automation and enterprise services through a consistent developer experience.

Built using a modern layered architecture, PowerChain Web3.js supports **Node.js**, browsers, serverless platforms, edge runtimes and mobile applications while maintaining a stable, backwards-compatible public API. Tree-shakeable ES Modules, OpenAPI, GraphQL, JSON-RPC, OpenTelemetry, Semantic Versioning, signed package provenance and enterprise-grade tooling enable teams to build secure, observable and scalable applications from prototype to production.

---

# Architecture Overview

PowerChain Web3.js is organised into a layered architecture that cleanly separates application frameworks, SDK modules, middleware, transport protocols and blockchain infrastructure. This modular design enables excellent maintainability, extensibility and long-term compatibility across every supported runtime.

<p align="center">
  <img src="./assets/architecture.png" alt="PowerChain Web3.js Architecture" width="1100" />
</p>

<p align="center">
  <sub>
    PowerChain Web3.js layered architecture illustrating the application,
    SDK, middleware, transport and blockchain infrastructure layers.
  </sub>
</p>

## Architecture Layers

| Layer | Components |
| :---- | :--------- |
| **Applications** | Next.js • React • Vue • Angular • Node.js • Mobile • Serverless |
| **SDK Modules** | Wallet • Payments • Treasury • Exchange • Marketplace • AI • Energy • Governance |
| **SDK Core** | Client • Middleware • Plugins • Authentication • Events • Caching |
| **Transport** | REST • JSON-RPC • GraphQL • WebSocket • Streaming APIs |
| **Infrastructure** | PowerChain Network • Solana • Helius • Jupiter • Pyth • Enterprise Services |

For the complete technical architecture, see **[ARCHITECTURE.md](./ARCHITECTURE.md)**.

---

# Why PowerChain?

PowerChain combines enterprise cloud architecture with modern blockchain infrastructure to simplify application development.

## Enterprise Platform

- Enterprise-grade SDK
- TypeScript First
- Stable Public APIs
- Modular Architecture
- Tree Shakeable Packages
- Plugin Framework
- Middleware Pipeline
- Production Ready

## Financial Infrastructure

- Payments
- Treasury
- Exchange
- Wallets
- Settlement
- Billing
- Payroll
- Escrow
- Marketplace

## Blockchain

- Wallets
- Programs
- Transactions
- SPL Tokens
- Token-2022
- Cross-Chain
- Smart Contracts
- Transaction Simulation
- Address Lookup Tables

## Renewable Energy

- GridOS™
- Solar
- Wind
- Battery Storage
- Hydrogen
- Energy Marketplace
- Renewable Energy Certificates
- Carbon Credits

## Artificial Intelligence

- Financial Copilot
- Treasury Copilot
- Risk Engine
- Fraud Detection
- AI Agents
- Forecasting
- Workflow Automation

---

# Features

| Category | Features |
| :------- | :------- |
| Wallet | Wallets, Accounts, Signing, Recovery |
| Blockchain | Transactions, Programs, Tokens, Metadata |
| Payments | Checkout, Billing, Invoices, Settlement |
| Treasury | Accounts, Liquidity, Forecasting |
| Exchange | Swap, Bridge, Portfolio |
| Marketplace | Products, Orders, Escrow |
| Energy | Renewable Assets, GridOS™, Carbon Credits |
| AI | Agents, Copilot, Risk, Analytics |
| Enterprise | Identity, Audit, Policy Engine |
| Developer | CLI, Playground, Examples |

---

# Installation

## pnpm

```bash
pnpm add @powerchain/web3.js
```

## npm

```bash
npm install @powerchain/web3.js
```

## yarn

```bash
yarn add @powerchain/web3.js
```

---

# Quick Start

```typescript
import { PowerChainClient } from "@powerchain/web3.js";

const client = new PowerChainClient({
  network: "mainnet",
});

const wallet = await client.wallet.create();

console.log(wallet.address);

const payment = await client.payments.create({
  amount: 100,
  currency: "USDC",
  recipient: wallet.address,
});

const quote = await client.exchange.quote({
  inputMint: "...",
  outputMint: "...",
  amount: 1000000,
});
```

---

# Repository Structure

```text
apps/
packages/
contracts/
programs/
registry/
runtime/
platform/
schemas/
specifications/
examples/
templates/
developer/
docs/
tests/
benchmarks/
tools/
scripts/
```

---

# Official Packages

| Package | Description |
| :------ | :---------- |
| `@powerchain/web3.js` | Core SDK |
| `@powerchain/sdk` | Enterprise SDK |
| `@powerchain/react` | React Integration |
| `@powerchain/react-ui` | UI Component Library |
| `@powerchain/vue` | Vue SDK |
| `@powerchain/angular` | Angular SDK |
| `@powerchain/node` | Node.js Runtime |
| `@powerchain/python` | Python SDK |
| `@powerchain/go` | Go SDK |
| `@powerchain/rust` | Rust SDK |
| `@powerchain/flutter` | Flutter SDK |
| `@powerchain/cli` | Developer CLI |
| `@powerchain/testing` | Testing Framework |
| `@powerchain/codegen` | OpenAPI Code Generator |

---

# Supported Platforms

## JavaScript Runtimes

- Node.js
- Browser
- Bun
- Deno
- React Native
- Electron
- Cloudflare Workers
- Vercel Edge Runtime

## Frameworks

- Next.js
- React
- Vue
- Angular
- Astro
- Remix
- Nuxt
- Svelte

---

# Performance Goals

| Metric | Target |
| :----- | -----: |
| SDK Initialisation | < 50 ms |
| Wallet Creation | < 100 ms |
| Transaction Build | < 20 ms |
| Bundle Size | < 150 kB (gzip) |
| Memory Usage | < 20 MB |

Optimised with:

- Tree Shaking
- Lazy Loading
- HTTP Keep-Alive
- Request Batching
- Automatic Retry
- Streaming APIs
- OpenTelemetry
- Response Caching

---

# Compatibility Matrix

| Component | Version |
| :-------- | :------ |
| Node.js | 20 LTS+ |
| TypeScript | 5.x |
| pnpm | 10+ |
| npm | 10+ |
| Browser | Modern Browsers |
| PowerChain Mainnet | ✅ |
| PowerChain Testnet | ✅ |
| Solana Mainnet | ✅ |
| Solana Devnet | ✅ |

---

# Security & Compliance

PowerChain follows enterprise software engineering and cloud security best practices.

## Authentication

- OAuth 2.1
- OpenID Connect
- JWT
- API Keys
- Passkeys
- Service Accounts

## Authorisation

- Role-Based Access Control (RBAC)
- Attribute-Based Access Control (ABAC)
- Policy Engine

## Supply Chain Security

- Apache-2.0
- CodeQL
- SBOM Generation
- Package Provenance
- Signed Releases
- Secret Scanning
- Dependency Review
- Licence Auditing

## Compliance

- GDPR-ready Architecture
- SOC 2-aligned Controls
- ISO/IEC 27001-aligned Practices
- Audit Logging
- Data Protection

---

# Example Applications

Production-ready examples include:

- Wallet Authentication
- Payments
- Treasury Dashboard
- Token Swaps
- AI Financial Copilot
- Renewable Energy Marketplace
- Governance Portal

```text
examples/
├── nextjs/
├── react/
├── vue/
├── react-native/
├── node/
├── express/
├── fastify/
├── nestjs/
├── electron/
├── docker/
└── kubernetes/
```

---

# Documentation

- Getting Started
- Architecture
- SDK Guide
- API Reference
- Wallet
- Payments
- Treasury
- Exchange
- Marketplace
- Energy
- AI Platform
- Governance
- Security
- Deployment
- Tutorials
- Examples
- Migration Guides
- Release Notes

---

# Development

```bash
pnpm install

pnpm build

pnpm lint

pnpm test

pnpm typecheck
```

---

# Roadmap

## Current Release

- **v1.0.0-beta**

## Upcoming

- Stable v1.0
- Local Emulator
- Developer Sandbox
- Mobile SDKs
- Enterprise Connectors
- Additional Language SDKs
- Expanded AI Services

---

# Release Lifecycle

| Stage | Status |
| :---- | :----- |
| Alpha | Experimental |
| **Beta** | Current |
| Release Candidate | Planned |
| Stable | Planned |
| Long-Term Support | Planned |

PowerChain follows:

- Semantic Versioning
- Conventional Commits
- Keep a Changelog
- Signed Releases
- Automated Publishing

---

# Contributing

We welcome contributions from developers and ecosystem partners.

Please review:

- `CONTRIBUTING.md`
- `CODE_OF_CONDUCT.md`
- `SECURITY.md`
- `GOVERNANCE.md`

before opening issues or pull requests.

---

# Community

- GitHub Discussions
- GitHub Issues
- Changelog
- Roadmap
- Release Notes

---

# Support

- Documentation
- API Reference
- Tutorials
- Examples
- Enterprise Support

---

# License

Licensed under the **Apache License 2.0**.

See **LICENSE** for details.

---

<div align="center">

## PowerChain Network

### Enterprise AI-Native Renewable Energy & Financial Infrastructure

**@powerchain/web3.js**

Version **v1.0.0-beta**

Built for developers, enterprises and the future of programmable digital infrastructure.

</div>
