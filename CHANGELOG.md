# Change Log

All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased](https://github.com/passbolt/charts-passbolt/compare/v0.3.0...HEAD)

## [1.0.1] - 2023-05-11

This release contains breaking changes. Starting with passbolt v4
we are no longer supporting php7.3 and our packages set the minimum dependencies
to php 7.4

### Added

- Set php version to minimum 7.4 on debian and rpm packages
- Check the status of the subscription prior to upgrading.

### Fixed

- Use fullchain certificate on rpm letsencrypt [#1](https://github.com/passbolt/passbolt_packaging/pull/1)
