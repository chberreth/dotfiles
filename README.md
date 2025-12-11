# README


## Initialize project

⚠️ Current state requires to install `unzip`, `pipx` to use the dofiles. Afterwards, just run

```bash

    chezmoi init git@github.com:chberreth/dotfiles.git

    # eventually
    chmod +x ~/bin/chezmoi

    # See differences between local files and chezmoi state. `chezmoi status` for more detailed view
    chezmoi diff

    # Apply all changes from chezmoi to your system
    chezmoi apply
```

## Important commands 

```bash

    # Add or update a specific or multiple files
    chezmoi add ~/.zshrc ~/.bashrc

    # Add a directory recursively
    chezmoi add -r ~/.config/

    # pull latest changes from 
    chezmoi update 


    # Edit a file (modify chezmoi source, not local file) and apply changes after editing
    chezmoi edit ~/.zshrc
    chezmoi apply
    # ⚠️ Not recommended. Rather edit files in dotfiles repo, push it and `chezmoi update`
```
