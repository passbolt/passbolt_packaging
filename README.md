# Passbolt packaging repository

This repository contains all the configurations required to
package passbolt for the multiple distributions supported.

## How to run the tests?

This repo relies on kitchen-ci to run automated tests on multiple target distributions.

### Requirements

- docker
- ruby
- bundler
- Valid credentials for private registry in creds.json

Install the dependencies with bundler:

```bash
bundle install
```

List all available targets:

```bash
bundle exec kitchen list
```

Run the tests:

```bash
PASSBOLT_FLAVOUR=ce PASSBOLT_COMPONENT=stable PASSBOLT_VERSION=4.0.1 API_CLONE_BRANCH=master bundle exec kitchen verify filesystem-benchmarks-debian-bookworm -t tests/integration
```

Connect to a specific running instance:

```bash
bundle exec kitchen login filesystem-benchmarks-debian-bookworm
```
