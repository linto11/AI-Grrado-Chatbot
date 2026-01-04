# Contributing

Thank you for taking the time to contribute!

## Getting started
- Use Python 3.13+ and PowerShell on Windows (or a recent shell on other OSes).
- Create a virtual environment in the repo root: `python -m venv .venv` and activate it.
- Install dependencies: `pip install -r _requirements.txt`.

## Development workflow
- Keep changes small and focused. Include clear descriptions in PRs.
- Run a quick sanity check before submitting:
  - `python -m compileall DataGenerator`
- If you add dependencies, pin them in `_requirements.txt`.
- Update docs when behavior or setup changes.

## Branching and commits
- Branch from `main`.
- Use clear commit messages (imperative mood) and keep history tidy.

## Pull requests
- Describe the change, motivation, and testing performed.
- Link related issues if any.

## Reporting issues
- For bugs, include steps to reproduce, expected vs actual behavior, logs/errors, and environment details.
- For feature requests, describe the use-case and desired outcome.
