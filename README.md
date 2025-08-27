[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-2e0aaae1b6195c2367325f4f02e2d04e9abb55f0b24a779b69b11b9e10269abc.svg)](https://classroom.github.com/online_ide?assignment_repo_id=20183582&assignment_repo_type=AssignmentRepo)
# Study Environment (Codespaces + Jupyter)

This repo is a **template** for per-participant study instances (via GitHub Classroom).

**What’s included**
- Pinned Python env + Jupyter kernel (`Python (study)`)
- Preinstalled VS Code extensions: Jupyter, Python
- On create: installs our custom VSIX and fetches any small assets (checksum-guarded)

**First run (participant)**
1. Click the Classroom invite link → your private repo is created.
2. Click “Open in Codespaces”.
3. Open `notebooks/00_check_env.ipynb` and run the first cell.
4. You should see the kernel `Python (study)` and versions printed.

**Troubleshooting**
- If the kernel is missing, reload the window.
- If the VSIX didn’t install, run: `Developer: Toggle Developer Tools` and check logs, or `code --list-extensions` in the terminal.


