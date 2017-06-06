# My Personal Dotfiles

## Usage

### Step 1. Install Command Line Tools

```bash
$ xcode-select --install
```

### Step 2. Clone dotfiles

```bash
$ git clone https://github.com/AWEEKJ/dotfiles.git
$ cd ~/dotfiles
$ chmod +x setup.sh
$ sh setup.sh
```

### (Optional) Step 3. Restore setting files with mackup

```bash
$ mackup restore
```

See [mackup](https://github.com/lra/mackup) instruction for more informations.

### Step 4. Set ssh keys

```bash
$ cp YOUR_OWN_BACKUP_DIRECTORY/.ssh/* ~/.ssh
$ chmod -R 600 ~/.ssh
```

### Step 5. More applications

Install applications in [manual](https://github.com/AWEEKJ/dotfiles/tree/master/manual) manually.
