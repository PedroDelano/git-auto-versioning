# Obsidian Auto Versioning

# How to use

Simply clone the repo, then make an alias in ~/.bashrc, as such:

```bash
echo "alias obsidian-auto-versioning='bash $(pwd)/obsidian-auto-versioning.sh'" >> ~/.bashrc
echo "alias obsidian-auto-versioning='bash $(pwd)/obsidian-auto-versioning.sh'" >> ~/.zshrc
```

Then, you can use the command `obsidian-auto-versioning` to run the script. As a example:

```bash
obsidian-auto-versioning /path/to/your/obsidian/vault
```

It's recomended to put into crontab, as such:

```bash
crontab -e
```

Then, add the following line:

```bash
0 * * * * /path/to/obsidian-auto-versioning.sh /path/to/your/obsidian/vault
```

This will run the script every hour.