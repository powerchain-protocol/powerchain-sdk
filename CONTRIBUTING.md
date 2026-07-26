# Contributing to PowerChain Web3.js

First, thank you for your interest in contributing to the PowerChain Network.

PowerChain is an open-source project focused on building enterprise AI-native financial infrastructure. We welcome contributions from developers, security researchers, technical writers, designers and community members.

Before contributing, please read this document together with:

- CODE_OF_CONDUCT.md
- SECURITY.md
- GOVERNANCE.md
- ARCHITECTURE.md
- README.md

---

# Table of Contents

- Code of Conduct
- Ways to Contribute
- Getting Started
- Development Environment
- Repository Structure
- Branch Strategy
- Development Workflow
- Coding Standards
- Testing
- Documentation
- Commit Guidelines
- Pull Requests
- Release Process
- Security
- Reporting Bugs
- Feature Requests
- Discussions
- Community
- License

---

# Code of Conduct

This project follows the PowerChain Code of Conduct.

By participating, you agree to foster a welcoming, respectful and inclusive community.

Please read:

CODE_OF_CONDUCT.md

---

# Ways to Contribute

We welcome contributions including:

- Bug fixes
- New SDK features
- Performance improvements
- Documentation
- Examples
- Tutorials
- API improvements
- Testing
- Security improvements
- Developer tooling
- CI/CD improvements
- Infrastructure
- Internationalisation
- Accessibility

---

# Development Requirements

Minimum requirements:

| Tool | Version |
|------|---------|
| Node.js | 20 LTS or newer |
| pnpm | 10+ |
| TypeScript | 5.x |
| Git | Latest |
| Docker | Recommended |

---

# Clone the Repository

```bash
git clone https://github.com/powerchain/web3.js.git

cd web3.js
```

---

# Install Dependencies

```bash
pnpm install
```

---

# Build

```bash
pnpm build
```

---

# Development

```bash
pnpm dev
```

---

# Run Tests

```bash
pnpm test
```

---

# Type Check

```bash
pnpm typecheck
```

---

# Lint

```bash
pnpm lint
```

---

# Format

```bash
pnpm format
```

---

# Repository Structure

```
apps/
packages/
contracts/
programs/
registry/
docs/
examples/
templates/
tests/
benchmarks/
tools/
scripts/
```

---

# Branch Strategy

Use short, descriptive branch names.

Examples

```
feature/wallet-standard

feature/payment-links

feature/exchange-routing

fix/transaction-builder

fix/token2022

docs/api-reference

refactor/client-runtime

perf/cache

test/websocket
```

---

# Development Workflow

1. Fork the repository.

2. Create a feature branch.

3. Write code.

4. Add or update tests.

5. Update documentation.

6. Run all checks.

7. Submit a Pull Request.

---

# Coding Standards

PowerChain follows modern TypeScript best practices.

## Requirements

- TypeScript Strict Mode
- ES Modules
- Strong typing
- No `any` in public APIs
- Tree-shakeable exports
- Small focused modules
- Backwards compatibility where practical

---

# Style Guide

- Prefer immutable data
- Use async/await
- Avoid callback APIs
- Write self-documenting code
- Prefer composition over inheritance
- Avoid breaking public APIs
- Keep functions focused and testable

---

# Public API Guidelines

Public APIs should:

- be stable
- be documented
- include examples
- include TypeScript definitions
- include tests
- avoid breaking changes during beta unless necessary

---

# Documentation

Every feature should include documentation.

Update when appropriate:

- README.md
- SDK Guide
- API Reference
- Examples
- Tutorials
- Migration Guides

Documentation should be clear, concise and include working examples.

---

# Testing

Every contribution should include appropriate tests.

## Test Types

- Unit Tests
- Integration Tests
- End-to-End Tests
- Compatibility Tests
- Performance Tests

Run:

```bash
pnpm test
```

Coverage should not decrease without justification.

---

# Performance

When introducing new functionality, consider:

- Bundle size
- Startup time
- Memory usage
- Network requests
- Latency
- Tree shaking
- Browser compatibility

---

# Security

Security is a shared responsibility.

Please:

- never commit secrets
- validate user input
- use parameterised queries
- minimise dependencies
- avoid introducing vulnerable packages

For vulnerabilities:

See SECURITY.md

Do not open public GitHub issues for security reports.

---

# Commit Messages

PowerChain uses Conventional Commits.

Examples:

```
feat(wallet): add wallet recovery

feat(exchange): support route simulation

fix(payments): correct invoice status

docs(api): improve authentication guide

perf(client): reduce bundle size

test(wallet): add transaction tests

refactor(runtime): simplify middleware

chore(ci): update GitHub Actions
```

---

# Pull Requests

Before submitting:

- Code builds successfully
- Tests pass
- Lint passes
- Formatting passes
- Documentation updated
- Changelog updated if applicable

Provide:

- summary
- motivation
- screenshots (if UI)
- test plan
- breaking changes (if any)

---

# Reporting Bugs

Please include:

- SDK version
- Node.js version
- Operating system
- Runtime
- Browser (if applicable)
- Reproduction steps
- Expected behaviour
- Actual behaviour
- Logs

---

# Feature Requests

Feature requests should explain:

- problem
- proposed solution
- alternatives considered
- use cases

Large proposals may require an RFC.

---

# RFC Process

Major architectural changes should begin with an RFC.

Examples:

- new public APIs
- protocol changes
- package restructuring
- breaking changes
- runtime support
- transport changes

---

# Release Process

The project follows:

- Semantic Versioning
- Conventional Commits
- Keep a Changelog
- Changesets
- Automated Releases

Current release:

**v1.0.0-beta**

---

# Continuous Integration

Every Pull Request runs:

- Install
- Build
- Type Check
- Lint
- Tests
- Coverage
- Bundle Analysis
- Security Scans
- Dependency Review
- CodeQL

Pull Requests must pass all required checks before merging.

---

# Community

Community participation is encouraged through:

- GitHub Issues
- GitHub Discussions
- Pull Requests
- Documentation
- Example Applications

Be respectful and constructive.

---

# Recognition

All contributors are recognised through GitHub's contributor graph and release acknowledgements.

---

# License

By contributing to this repository, you agree that your contributions are licensed under the Apache License 2.0.

See LICENSE for details.

---

<div align="center">

### Thank You

Every contribution—whether code, documentation, testing, design or feedback—helps improve the PowerChain ecosystem.

**PowerChain Web3.js**

Enterprise AI-Native Financial Infrastructure

Version **v1.0.0-beta**

</div>
