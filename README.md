<div align="center">

<picture>
  <img src="./assets/logo-green.png" alt="PowerChain" width="120">
</picture>

# @powerchain/web3.js

### Official JavaScript & TypeScript SDK for the PowerChain Network

Build enterprise-grade blockchain applications, digital payments, treasury systems, AI-native financial infrastructure, renewable energy marketplaces, and digital asset platforms.

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

PowerChain Web3.js is the official JavaScript and TypeScript SDK for the **PowerChain Network**, providing a comprehensive development platform for building secure, scalable and production-ready applications across digital finance, renewable energy and enterprise infrastructure.

Designed for developers, enterprises, utilities, financial institutions, governments and ecosystem partners, the SDK delivers a modular, strongly typed and extensible API for interacting with the PowerChain ecosystem. It unifies blockchain infrastructure, digital assets, programmable payments, treasury management, tokenised renewable energy, carbon markets, AI-native automation and enterprise services through a consistent developer experience.

Built with a modern, layered architecture, PowerChain Web3.js supports multiple JavaScript runtimes—including Node.js, browsers, serverless platforms and edge environments—while maintaining a stable, backwards-compatible public API. Every component is engineered for reliability, performance and long-term maintainability, enabling applications to scale from prototypes to enterprise deployments.

The SDK embraces modern software engineering and cloud-native best practices, including TypeScript-first development, Semantic Versioning (SemVer), OpenAPI, JSON-RPC, GraphQL, OpenTelemetry, automated testing, continuous integration, software supply-chain security, signed package provenance and comprehensive developer documentation. Its modular package architecture, tree-shakeable ES Modules and enterprise-grade tooling help teams build faster while maintaining security, observability and operational excellence.

Whether you are developing digital payment platforms, treasury systems, renewable energy marketplaces, carbon credit exchanges, tokenised asset platforms, AI-powered financial services or enterprise blockchain applications, PowerChain Web3.js provides the foundational SDK for building on the PowerChain Network with confidence.

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
- IoT Devices

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
|----------|----------|
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

# Architecture Overview

```
Applications

 Next.js │ React │ Vue │ Angular │ Node.js │ Mobile

                    │

         @powerchain/web3.js SDK

                    │

 Wallet │ Payments │ Treasury │ Exchange

 AI │ Energy │ Governance │ Analytics

                    │

 Client │ Middleware │ Plugins │ Events

                    │

 REST │ JSON-RPC │ GraphQL │ WebSocket

                    │

       PowerChain Network

                    │

 Solana │ Helius │ Jupiter │ Pyth
```

For a detailed overview, see **ARCHITECTURE.md**.

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

```ts
import { PowerChainClient } from "@powerchain/web3.js";

const client = new PowerChainClient({
  network: "mainnet",
});

const wallet = await client.wallet.create();

console.log(wallet.address);
```

Create a payment:

```ts
const payment = await client.payments.create({
  amount: 100,
  currency: "USDC",
  recipient: wallet.address,
});
```

Get a swap quote:

```ts
const quote = await client.exchange.quote({
  inputMint: "...",
  outputMint: "...",
  amount: 1000000,
});
```

---

# Repository Structure

```
apps/
packages/
contracts/
programs/
registry/
specifications/
schemas/
runtime/
platform/
developer/
examples/
templates/
docs/
tests/
benchmarks/
tools/
scripts/
```

---

# Official Packages

| Package | Description |
|----------|-------------|
| @powerchain/web3.js | Core SDK |
| @powerchain/sdk | Enterprise SDK |
| @powerchain/react | React Integration |
| @powerchain/react-ui | React UI Components |
| @powerchain/vue | Vue SDK |
| @powerchain/angular | Angular SDK |
| @powerchain/node | Node.js SDK |
| @powerchain/python | Python SDK |
| @powerchain/go | Go SDK |
| @powerchain/rust | Rust SDK |
| @powerchain/flutter | Flutter SDK |
| @powerchain/cli | Developer CLI |
| @powerchain/testing | Testing Utilities |
| @powerchain/codegen | Code Generator |

---

# Supported Platforms

## Runtimes

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
- Svelte
- Astro
- Remix
- Nuxt

---

# Performance Goals

| Metric | Target |
|---------|---------|
| SDK Initialisation | < 50 ms |
| Wallet Creation | < 100 ms |
| Transaction Build | < 20 ms |
| Bundle Size | < 150 kB (gzip) |
| Memory Usage | < 20 MB |

Optimisations include:

- Tree Shaking
- Lazy Loading
- HTTP Keep-Alive
- Automatic Retry
- Request Batching
- Response Caching
- Streaming APIs
- OpenTelemetry Instrumentation

---

# Compatibility Matrix

| Component | Supported |
|------------|-----------|
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

PowerChain follows modern security best practices.

## Authentication

- OAuth 2.1
- OpenID Connect
- JWT
- API Keys
- Passkeys (WebAuthn)
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
- Dependency Review
- Secret Scanning
- Third-Party Licence Audits

## Compliance

- GDPR-ready Architecture
- SOC 2-aligned Controls
- ISO/IEC 27001-aligned Practices
- Audit Logging
- Data Protection

---

# Example Applications

Production-ready examples are available for:

```
examples/

nextjs/
react/
react-native/
vue/
node/
express/
fastify/
nestjs/
electron/
docker/
kubernetes/
```

Examples include:

- Wallet Authentication
- Payments
- Token Swaps
- Treasury Dashboard
- AI Copilot
- Renewable Energy Marketplace
- Governance Portal

---

# Documentation

```
Getting Started
Architecture
SDK Guide
API Reference
Wallet
Payments
Treasury
Exchange
Marketplace
Energy
AI Platform
Governance
Deployment
Security
Examples
Tutorials
Migration Guides
Release Notes
```

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

Current release:

**v1.0.0-beta**

Upcoming milestones:

- Stable v1.0
- Local Emulator
- Developer Sandbox
- Mobile SDKs
- Enhanced AI Services
- Additional Language SDKs
- Expanded Enterprise Integrations

---

# Release Lifecycle

| Stage | Status |
|---------|--------|
| Alpha | Experimental |
| **Beta** | Current |
| Release Candidate | Planned |
| Stable | Planned |
| Long-Term Support | Planned |

PowerChain follows:

- Semantic Versioning
- Conventional Commits
- Keep a Changelog
- Automated Releases
- Signed Git Tags

---

# Contributing

Contributions are welcome.

Please read:

- CONTRIBUTING.md
- CODE_OF_CONDUCT.md
- SECURITY.md
- GOVERNANCE.md

before submitting issues or pull requests.

---

# Community

- GitHub Discussions
- GitHub Issues
- Release Notes
- Roadmap
- Changelog

---

# Support

- Documentation
- API Reference
- Examples
- Tutorials
- Enterprise Support

---

# License

Licensed under the **Apache License 2.0**.

See the **LICENSE** file for details.

---

<div align="center">

## PowerChain Network

**Enterprise AI-Native Financial Infrastructure**

**@powerchain/web3.js**

**Version v1.0.0-beta**

Built for developers, enterprises and the future of digital infrastructure.

</div>
