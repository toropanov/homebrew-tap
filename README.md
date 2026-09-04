# toropanov/homebrew-tap

[![Formula CI](https://github.com/toropanov/homebrew-tap/actions/workflows/ci.yml/badge.svg)](https://github.com/toropanov/homebrew-tap/actions/workflows/ci.yml)
[![Feedshell release](https://img.shields.io/github/v/release/toropanov/feedshell?display_name=tag&sort=semver)](https://github.com/toropanov/feedshell/releases)
[![Homebrew](https://img.shields.io/badge/Homebrew-tap-FBB040?logo=homebrew&logoColor=white)](https://brew.sh)

Official Homebrew tap for [Anton Toropanov's](https://github.com/toropanov) command-line tools.

## Install a formula

```sh
brew install toropanov/tap/feedshell
```

Homebrew 6 may ask you to explicitly trust a third-party formula before installing it:

```sh
brew trust --formula toropanov/tap/feedshell
```

## Available formulae

| Formula | Description | Install |
| --- | --- | --- |
| [`feedshell`](https://github.com/toropanov/feedshell) | Terminal RSS and Atom reader with Vim-style navigation. | `brew install toropanov/tap/feedshell` |

## Updating

Homebrew updates tapped repositories when you run:

```sh
brew update
brew upgrade
```

To upgrade only Feedshell:

```sh
brew upgrade feedshell
```

## Maintainers

Each formula must reference a stable upstream release, pin its SHA-256 checksum, declare runtime dependencies, and include a functional `test` block. Before publishing a change, run:

```sh
brew audit --strict --online toropanov/tap/feedshell
brew install --build-from-source toropanov/tap/feedshell
brew test toropanov/tap/feedshell
```

Formula CI runs these checks on macOS for every push and pull request.
