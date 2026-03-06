# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Homebrew tap (`omair-inam/tap`) containing custom formulae and casks for packages not in the official Homebrew repositories.

- **Formulae** (`Formula/`): Source-based packages (Ruby classes inheriting `Formula`)
- **Casks** (`Casks/`): macOS GUI applications (Ruby DSL using `cask`)

Install: `brew install omair-inam/tap/<formula>` or `brew tap omair-inam/tap` first.

## Testing

Run the full Homebrew test suite locally:
```shell
brew test-bot --only-tap-syntax
```

Test a specific formula:
```shell
brew test <formula-name>
```

Audit a formula or cask:
```shell
brew audit --strict --online <formula-or-cask>
```

## CI/CD

Two GitHub Actions workflows:
- **tests.yml** (`brew test-bot`): Runs on PRs and pushes to `main`. Tests on ubuntu-22.04, macos-13, macos-14. Uploads bottle artifacts on PRs.
- **publish.yml** (`brew pr-pull`): Triggered when a PR is labeled `pr-pull`. Pulls bottles, pushes to `main`, and deletes the PR branch.

## Conventions

- Formulae use Ruby class syntax (`class FooBar < Formula`)
- Casks use the `cask "name" do ... end` DSL
- Each formula/cask must include: `desc`, `homepage`, `url`, `sha256`, and `version`
- Formulae should include a `test` block
- Cask names with version suffixes (e.g., `insomnia2023`, `forklift3`) pin to specific major versions
