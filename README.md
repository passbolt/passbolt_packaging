# Passbolt packaging repository

This repository contains all the configurations required to package Passbolt for multiple Linux distributions.

## Requirements

- Docker
- Ruby
- Bundler

Install the dependencies:
```bash
# Configure bundle to use local path
bundle config set --local path '.bundle'
bundle install
```

## Environment Variables

Required variables:
```bash
export PASSBOLT_FLAVOUR=pro        # or 'ce' for Community Edition
export PASSBOLT_COMPONENT=stable   # release channel
export PASSBOLT_VERSION=5.1.1      # version to test
export API_CLONE_BRANCH=master     # API branch to test
```

Optional variables:
```bash
export LOCAL_CREDS=/path/to/docker/config.json  # if using private Docker registry
```

## Running Tests

### List Available Test Instances
```bash
bundle exec kitchen list
```

### Test Commands

1. **Complete Test Run** (creates, installs, tests, and destroys):
```bash
bundle exec kitchen test filesystem-benchmarks-debian-bookworm -t tests/integration
```

2. **Step-by-Step Testing** (useful for debugging):
```bash
# Create test environment
bundle exec kitchen create filesystem-benchmarks-debian-bookworm

# Install and configure
bundle exec kitchen converge filesystem-benchmarks-debian-bookworm

# Run tests only
bundle exec kitchen verify filesystem-benchmarks-debian-bookworm -t tests/integration

# Login to test instance
bundle exec kitchen login filesystem-benchmarks-debian-bookworm

# Clean up when done
bundle exec kitchen destroy filesystem-benchmarks-debian-bookworm
```

3. **Keep Container After Testing** (for debugging):
```bash
bundle exec kitchen test filesystem-benchmarks-debian-bookworm --destroy=never
```

### Available Test Suites

- `filesystem-benchmarks`: Tests file system setup and permissions
- `purge-benchmarks`: Tests package removal
- `runtime-benchmarks`: Tests running application
- `break-benchmarks`: Tests error handling

### Available Platforms

- `debian-bookworm`
- `ubuntu-24.04`
- `almalinux-9`
- `rockylinux-9`
- `opensuse-leap-15`

### Test Options

- Run with debug logging:
```bash
bundle exec kitchen test -l debug
```

- Run specific test file:
```bash
bundle exec kitchen verify filesystem-benchmarks-debian-bookworm -t tests/integration/filesystem-benchmarks/controls/systemfiles.rb
```

- Test multiple platforms:
```bash
bundle exec kitchen test filesystem-benchmarks-* -t tests/integration
```

## Test Structure

- `tests/integration/`: Contains InSpec tests that verify the installation
- `tests/cookbooks/`: Contains Chef recipes for building and installing packages
- `tests/fixtures/`: Contains test data and configurations

## Debugging

To inspect a running test instance:
1. Use `--destroy=never` when running tests
2. Login to the container:
```bash
bundle exec kitchen login filesystem-benchmarks-debian-bookworm
```
3. Inside the container, you can check:
   - Log files: `/var/log/passbolt/`
   - Configuration: `/etc/passbolt/`
   - Service status: `systemctl status nginx`, `systemctl status php-fpm`

## Modifying Test Environment

To test public code, modify `tests/test_env.sh` to point to the Passbolt API repository you want to package and test.
