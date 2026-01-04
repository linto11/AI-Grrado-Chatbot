# AI-Grrado-Chatbot Project

[![CI](https://github.com/linto11/AI-Grrado-Chatbot/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/linto11/AI-Grrado-Chatbot/actions/workflows/ci.yml)
[![Python](https://img.shields.io/badge/python-3.13%2B-blue)](https://www.python.org/)
[![License: Apache-2.0](https://img.shields.io/badge/License-Apache_2.0-green.svg)](LICENSE)
[![Tech Stack](https://img.shields.io/badge/stack-Python%20%7C%20Faker%20%7C%20GitHub%20Actions%20%7C%20Foundry-lightgrey)](#tech-stack)

Structured data generator for AI/ML experimentation and chatbot scenarios.

## Project structure
- DataGenerator/generator.py: Generates synthetic CSVs (garages, services, users, vehicles, service history, issues, image diagnostics).
- _requirements.txt: Pinned Python dependencies (includes Faker).
- .github/: CI workflow and templates for issues/PRs.
- CONTRIBUTING.md, CODE_OF_CONDUCT.md, CHANGELOG.md: Collaboration and release notes.

## Tech stack
- Python 3.13+
- Faker for synthetic data
- GitHub Actions for CI
- Microsoft Foundry-compatible workspace assets (.foundry/ ignored; add as needed)

## Prerequisites
- Python 3.13+ (tested with 3.13)
- PowerShell on Windows (or any shell if you adapt paths)

## Quickstart
1) Clone and open PowerShell at the repo root.
2) Create and activate a virtual environment:
   ```pwsh
   python -m venv .venv
   .\.venv\Scripts\Activate.ps1
   ```
3) Install dependencies:
   ```pwsh
   pip install -r _requirements.txt
   ```
4) Generate data:
   ```pwsh
   python DataGenerator/generator.py
   ```
   CSVs are written to ./data/.

## Updating dependencies
- Add new libs to `_requirements.txt` (pin versions).
- Capture the current env for reuse:
  ```pwsh
  pip freeze > _requirements.txt
  ```

## Troubleshooting
- Activation blocked? Allow for the session:
  ```pwsh
  Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
  ```
- Install errors? Upgrade pip then retry:
  ```pwsh
  python -m pip install --upgrade pip
  pip install -r _requirements.txt
  ```

## Contributing
See CONTRIBUTING.md and CODE_OF_CONDUCT.md. Open issues/PRs using the templates in .github/.

## License
Apache-2.0. See LICENSE.
