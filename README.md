# git Auto Versioning

# How to use

Simply clone the repo, then make an alias in ~/.bashrc, as such:

```bash
echo "alias git-auto-versioning='bash $(pwd)/git-auto-versioning.sh'" >> ~/.bashrc
echo "alias git-auto-versioning='bash $(pwd)/git-auto-versioning.sh'" >> ~/.zshrc
```

Then, you can use the command `git-auto-versioning` to run the script. As a example:

```bash
git-auto-versioning /path/to/your/git/vault
```

It's recomended to put into crontab, as such:

```bash
crontab -e
```

Then, add the following line:

```bash
0 * * * * /path/to/git-auto-versioning.sh /path/to/your/git/vault
```

This will run the script every hour.
