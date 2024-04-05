# Passbolt packaging repository

This repository contains all the configurations required to
package passbolt for the multiple distributions supported.

## How to run the tests?

This repo relies on kitchen-ci to run automated tests on multiple target distributions.

### Requirements

- docker
- ruby
- bundler

Install the dependencies with bundler:

```bash
bundle install
```

### Running the tests 

List all available targets:

```bash
bundle exec kitchen list
```

Run the tests:

```bash
PASSBOLT_FLAVOUR=ce PASSBOLT_COMPONENT=stable PASSBOLT_VERSION=4.0.1 API_CLONE_BRANCH=master LOCAL_CREDS=/home/youruser/.docker/config.json bundle exec kitchen verify filesystem-benchmarks-debian-bookworm -t tests/integration
```

To test public code you need to modify `tests/test_env.sh` file and point to the repo of passbolt_api you want to package and test.

Connect to a specific running instance:

```bash
bundle exec kitchen login filesystem-benchmarks-debian-bookworm
```
