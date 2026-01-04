# AI-Grrado-Chatbot Project

Structured data generator for AI/ML experimentation and chatbot scenarios.

## Project structure
- DataGenerator/generator.py: Generates synthetic CSVs (garages, services, users, vehicles, service history, issues, image diagnostics).
- _requirements.txt: Pinned Python dependencies (includes Faker).
- .github/: CI workflow and templates for issues/PRs.
- CONTRIBUTING.md, CODE_OF_CONDUCT.md, CHANGELOG.md: Collaboration and release notes.

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
