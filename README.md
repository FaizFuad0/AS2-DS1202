# ds1202-project

## 1. What this project is

This repository is my DS1202 practical project. It contains a small Bash script, `sysinfo.sh`, that reports basic information about the Linux system it runs on. The repository was built step by step with Git, using a feature branch that was merged back into `main` and pushed to GitHub.

### What `sysinfo.sh` reports

- Hostname and current user
- Current date and time
- Operating system and kernel version
- System uptime
- CPU information
- Memory usage
- Disk usage
- Logging section (added on the `feature-logging` branch): each run is recorded to a log file with a timestamp

> Edit this list so it matches exactly what your script prints.

## 2. Repository structure

```
ds1202-project/
├── README.md
├── sysinfo.sh
└── <other directories you created, e.g. logs/, scripts/>
```

> Replace with the real output of `ls -R` or `tree` from your project.

## 3. Step-by-step setup

### 3.1 Generate an SSH key

```bash
ssh-keygen -t ed25519 -C "26FTT1099@student.pb.edu.bn"
cat ~/.ssh/id_ed25519.pub
```

Copy the public key and add it to GitHub under **Settings → SSH and GPG keys → New SSH key**. Test the connection:

```bash
ssh -T git@github.com
```

### 3.2 Log in to the machine

```bash
ssh 26FTT1099@iib.politeknikbrunei.com
```

> Fill in the server or VM you used for this assignment.

### 3.3 Create the directories

```bash
mkdir -p ~/ds1202-project
cd ~/ds1202-project
# create any other directories your project needs, e.g.:
mkdir -p logs
```

### 3.4 Set permissions

Make the script executable and protect the files appropriately:

```bash
chmod +x sysinfo.sh
chmod 755 sysinfo.sh      # owner: rwx, group/others: r-x
chmod 700 logs            # only the owner can access logs (adjust if needed)
ls -l                     # verify permissions
```

### 3.5 Initialise Git

```bash
git init -b main
git config user.name "Your Name"
git config user.email "your_email@example.com"
```

## 4. How to run the script

From the repository root:

```bash
./sysinfo.sh
```

or, without the executable bit:

```bash
bash sysinfo.sh
```

The report is printed to the terminal, and the logging section writes an entry to the log file each time the script runs.

## 5. Git workflow used

1. **Initial commit on `main`**: added the directory structure and the first version of `sysinfo.sh`.
   ```bash
   git add . && git commit -m "Add directory structure and sysinfo script"
   ```
2. **Branch**: created a feature branch for the new logging section.
   ```bash
   git switch -c feature-logging
   ```
3. **Edit and test**: added the logging section to `sysinfo.sh` and tested it.
4. **Commit on the branch**:
   ```bash
   git commit -am "Add logging section to sysinfo"
   ```
5. **Merge**: switched back to `main` and merged the feature branch. Any merge conflict was resolved manually and the resolution was committed.
   ```bash
   git switch main
   git merge feature-logging
   ```
6. **Push**: created a public repository on GitHub, added it as a remote, and pushed both branches.
   ```bash
   git remote add origin git@github.com:<you>/ds1202-project.git
   git push -u origin main
   git push origin feature-logging
   ```

## 6. Screenshots in the evidence PDF

| # | Screenshot | What it shows |
|---|------------|---------------|
| 1 | SSH key generation | `ssh-keygen` output and the public key |
| 2 | GitHub SSH key / login test | Key added to GitHub and `ssh -T git@github.com` success |
| 3 | Directory creation | `mkdir` and `ls -R` / `tree` output |
| 4 | Permissions | `chmod` and `ls -l` showing the permissions |
| 5 | Running `sysinfo.sh` | Script output in the terminal |
| 6 | First commit | `git add` / `git commit` and `git log` |
| 7 | Feature branch | `git switch -c feature-logging` and `git branch` |
| 8 | Logging section tested | Script output and log file after the edit |
| 9 | Merge into `main` | `git merge feature-logging` (and conflict resolution, if any) |
| 10 | Git log graph | `git log --oneline --graph --all` |
| 11 | Remote and push | `git remote -v` and the output of both `git push` commands |
| 12 | GitHub repository page | Public repo showing `main`, `feature-logging` and `README.md` |

> Adjust the numbers and descriptions so the list matches the screenshots in your PDF exactly.
