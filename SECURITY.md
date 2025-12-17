# Security Policy

## Supported Versions

| Version | Supported          |
| ------- | ------------------ |
| 0.1.x   | :white_check_mark: |

## Reporting a Vulnerability

We take security seriously at GitLoom. If you discover a security vulnerability, please follow responsible disclosure practices.

### How to Report

1. **Email**: Send details to [security@hyperpolymath.org](mailto:security@hyperpolymath.org)
2. **Encryption**: Use our [GPG key](https://hyperpolymath.org/gpg/security.asc) for sensitive reports
3. **Do NOT** create public GitHub issues for security vulnerabilities

### What to Include

- Description of the vulnerability
- Steps to reproduce
- Potential impact assessment
- Any suggested fixes (optional)

### Response Timeline

- **Acknowledgment**: Within 48 hours
- **Initial Assessment**: Within 7 days
- **Resolution Target**: Within 90 days (varies by severity)

### Security Measures

This repository implements:

- **SHA-pinned GitHub Actions** - All CI/CD actions use immutable commit SHAs
- **Dependabot** - Automated dependency vulnerability scanning
- **OSSF Scorecard** - Security posture assessment
- **TruffleHog** - Secret detection in CI
- **CodeQL** - Static analysis (when applicable)
- **Supply Chain Integrity** - Sigstore attestation support

### Security Standards

We follow the [Rhodium Standard Repository (RSR)](https://github.com/hyperpolymath/rhodium-standard) guidelines:

- No weak cryptography (MD5/SHA1 blocked for security use)
- HTTPS enforced (no HTTP URLs except localhost)
- No hardcoded secrets
- SPDX license headers on all source files
- Consent-aware HTTP framework compliance

### Acknowledgments

We maintain a [security acknowledgments page](https://hyperpolymath.org/security/acknowledgments) to recognize responsible disclosures.

## Contact

- **Security Team**: security@hyperpolymath.org
- **GPG Key**: https://hyperpolymath.org/gpg/security.asc
- **security.txt**: [.well-known/security.txt](.well-known/security.txt)
