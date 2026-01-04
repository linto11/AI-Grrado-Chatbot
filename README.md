# AI-Grrado-Chatbot-Project Setup

Follow these steps to run the project in a clean environment.

## Prerequisites
- Python 3.13 (or compatible with the code you write)
- PowerShell (Windows)

## Setup
1) Clone or unzip the project.
2) Open PowerShell at the project root.
3) Create and activate the virtual environment (if not already present):
   ```pwsh
   python -m venv .venv
   .\.venv\Scripts\Activate.ps1
   ```
4) Install dependencies from the shared list:
   ```pwsh
   pip install -r _requirements.txt
   ```

## Running the generator
1) Ensure the virtual environment is active (prompt shows `(.venv)`).
2) Run the data generator script:
   ```pwsh
   python DataGenerator/generator.py
   ```

## Updating dependencies
- When you add libraries, pin them in `_requirements.txt` (e.g., `numpy==1.26.4`).
- To capture the current environment for reuse:
  ```pwsh
  pip freeze > _requirements.txt
  ```

## Troubleshooting
- If activation fails, allow the script execution policy for the current session:
  ```pwsh
  Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
  ```
- If `pip install` fails, upgrade pip and retry:
  ```pwsh
  python -m pip install --upgrade pip
  pip install -r _requirements.txt
  ```
