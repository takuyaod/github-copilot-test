# GitHub Copilot Test Repository

This is a minimal test repository for GitHub Copilot functionality with a README.md file and these instructions.

**ALWAYS follow these instructions first. Only use search or bash commands if the information here is incomplete or found to be in error.**

## Working Effectively

### Repository Structure
- Repository root contains a README.md file and .github directory
- .github/copilot-instructions.md contains these instructions
- No build system, dependencies, or source code currently exists
- No .github workflows or CI/CD pipelines are configured
- This is intentionally a minimal test repository

### Basic Commands (All commands execute instantly - < 1 second)
- **Always navigate to repository first**: `cd /home/runner/work/github-copilot-test/github-copilot-test`
- **Check repository status**: `git status`
- **List all files**: `ls -la`
- **View README content**: `cat README.md`
- **Find all markdown files**: `find . -type f -name "*.md"`
- **Check git branches**: `git branch -a`
- **View recent commits**: `git log --oneline -10`

### Development Setup
- **Do not attempt to install dependencies** - none exist
- **Do not attempt to run build processes** - none exist  
- **Do not attempt to run tests** - none exist
- **Do not attempt to start applications** - none exist
- **This repository is intentionally minimal** for testing purposes

## Validation

### Current State Validation
- Repository contains README.md and .github/copilot-instructions.md
- README.md contains single line: "# github-copilot-test"
- .github directory contains these copilot instructions
- No package managers (npm, pip, cargo, etc.) are configured
- No build tools are present

### Testing Changes
- **Always run `git status`** to check for changes before and after modifications
- **Always run `ls -la`** to verify file structure remains as expected
- **For any new files added, run `git status`** to validate they are properly tracked
- **Never commit files without validating** they contain expected content
- **Always validate commands work** before documenting them in instructions

## Common Tasks

The following are outputs from frequently run commands. Reference them instead of running bash commands to save time.

### Repository root listing
```
ls -la
total 20
drwxr-xr-x 4 runner docker 4096 Aug 27 07:18 .
drwxr-xr-x 3 runner docker 4096 Aug 27 07:15 ..
drwxr-xr-x 7 runner docker 4096 Aug 27 07:19 .git
drwxr-xr-x 2 runner docker 4096 Aug 27 07:18 .github
-rw-r--r-- 1 runner docker   21 Aug 27 07:16 README.md
```

### Find markdown files
```
find . -type f -name "*.md"
./README.md
./.github/copilot-instructions.md
```

### README.md content
```
cat README.md
# github-copilot-test
```

### Git status
```
git status
On branch copilot/fix-4
Your branch is up to date with 'origin/copilot/fix-4'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	.github/

nothing added to commit but untracked files present (use "git add" to track)
```

### Current branches
```
git branch -a
* copilot/fix-4
  remotes/origin/copilot/fix-4
```

## Instructions for Adding Code

**When adding code to this repository, follow these mandatory steps:**

### For Web Applications
- **Add package.json** for Node.js projects with `npm init`
- **Include build scripts** in package.json (build, test, dev, start)
- **Add .gitignore** with node_modules, dist/, .env patterns
- **Document build time expectations** - typically 1-5 minutes for simple projects
- **Include exact commands**: `npm install`, `npm run build`, `npm run test`
- **NEVER CANCEL** builds - wait for completion, set timeouts to 10+ minutes
- **Always test the application** after building by navigating and testing functionality

### For Python Applications  
- **Add requirements.txt** or Pipfile for dependencies
- **Add .gitignore** with __pycache__, .venv, .env patterns
- **Document setup**: `python -m venv venv`, `source venv/bin/activate`, `pip install -r requirements.txt`
- **Include exact test commands**: `python -m pytest` or `python -m unittest`
- **Set timeouts to 15+ minutes** for package installation
- **Always run the application** and test functionality after setup

### For Other Languages
- **Add appropriate project files** (Cargo.toml, pom.xml, etc.)
- **Include language-specific .gitignore** patterns from gitignore.io
- **Document exact dependency installation** steps with full commands
- **Document build and test commands** with timing expectations
- **Include SDK/runtime installation** if not standard
- **Test actual functionality** not just compilation

### Build Time Guidelines
- **Simple projects**: 1-5 minutes build time
- **Medium projects**: 5-15 minutes build time  
- **Large projects**: 15-45 minutes build time
- **NEVER CANCEL** any build process
- **Set timeouts appropriately**: Add 50% buffer to measured times
- **Document exact timing** after measuring actual builds

### General Guidelines
- **Always include .gitignore** appropriate for the project type
- **Document any environment setup requirements** with exact download URLs
- **Include validation steps** for verifying changes work correctly
- **Add CI/CD workflows** to .github/workflows/ as needed
- **Update these instructions** when adding significant functionality
- **Measure and document timing** for all build/test operations
- **Include "NEVER CANCEL" warnings** for long-running operations
- **Test end-to-end scenarios** not just basic startup/shutdown

## Mandatory Validation Process

**When making any changes to this repository:**

1. **Run `git status`** to see current state
2. **Make your changes** with minimal modifications
3. **Run `git status`** again to verify only expected files changed
4. **Validate all commands work** by running them end-to-end
5. **Test actual functionality** not just compilation/startup
6. **Measure execution time** of any new build/test commands
7. **Update these instructions** if new processes are added
8. **Document exact timeout values** needed for CI/CD

## Critical Reminders

- **NEVER CANCEL** any build, test, or installation process
- **Always wait for completion** even if it takes 45+ minutes
- **Set timeouts 50% higher** than measured execution times
- **Test real functionality** not just that code runs
- **Document exact commands** that work, not approximations
- **Update timing estimates** based on actual measurements

## Important Notes

- **This repository is currently minimal** and serves as a test case for GitHub Copilot
- **No actual application functionality exists** to validate beyond basic file operations
- **All listed commands execute instantly** (< 1 second) 
- **When code is added, update these instructions** with specific build/test timings
- **Always validate new instructions** by running commands and measuring execution time
- **Follow the imperative guidance above** - these are requirements, not suggestions
- **Do not skip validation steps** even if they seem unnecessary for simple changes