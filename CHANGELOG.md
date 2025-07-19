# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.1.0] - 2025-07-20

### Added
- `BinaryGcd.of/1` function for computing GCD of multiple numbers
- Comprehensive documentation for multi-number GCD computation
- Updated README.md with examples for both single-pair and multi-number GCD
- Enhanced project description to reflect multi-number support

### Features
- Support for computing GCD of lists of integers
- Iterative approach: computes GCD of first two numbers, then uses result with next number
- Maintains same performance characteristics as single-pair computation

### Technical Details
- Extends binary GCD algorithm to work with multiple numbers
- Backward compatible with existing `of/2` function

## [1.0.0] - 2025-07-18

### Added
- Initial implementation of BinaryGcd module with `of/2` function
- Binary GCD algorithm (Stein's algorithm) implementation
- Comprehensive documentation with usage examples
- Full test suite with edge cases
- Code quality tools integration (nstandard, credo, dialyzer)
- Documentation generation with ExDoc
- Spell checking with Spellweaver
- GitHub Actions CI workflow for automated testing and code quality checks
- Dependabot configuration for automated dependency updates
- Development tooling setup

### Features
- Fast GCD computation using Stein's algorithm
- Pure Elixir implementation with no external dependencies for core logic
- Support for large integers with efficient bitwise operations
- Comprehensive error handling and edge case coverage
- Well-documented API with detailed examples

### Technical Details
- Uses only bitwise operations and subtraction (no division)
- Optimized for large numbers where traditional Euclidean algorithm is slower
- Handles edge cases: zero values, single zero, and coprime numbers
- Type specifications for better code quality and IDE support


---

## Version History

- **1.1.0**: Added multi-number GCD computation with `of/1` function
- **1.0.0**: Initial stable release with complete BinaryGcd implementation

## Contributing

When contributing to this project, please update this changelog by adding a new entry under the [Unreleased] section. The entry should follow the format:

```
### Added
- New feature description

### Changed
- Changed feature description

### Deprecated
- Deprecated feature description

### Removed
- Removed feature description

### Fixed
- Bug fix description

### Security
- Security fix description
```

## Release Process

1. Update version in `mix.exs`
2. Update this changelog with release date
3. Create a git tag for the release
4. Push changes and tag to repository
