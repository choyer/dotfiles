# CRH's .dotfiles

Carl Hoyer's dotfiles (currently tuned for use with [Omarchy](https://github.com/basecamp/omarchy)), managed by [chezmoi](https://www.chezmoi.io)

Install them via:  

```console
chezmoi init choyer
```

Verify what's different from yours via:  

```console
chezmoi diff
```

Apply them via:  

```console
chezmoi apply
```

## Omarchy Conveniences

1. Define Omarchy packages to install by modifying:  
[home/.chezmoiscripts/linux/run_onchange_after_06-install-omarchy-packages.sh.tmpl](home/.chezmoiscripts/linux/run_onchange_after_06-install-omarchy-packages.sh.tmpl)

2. Define Omarchy AUR Packages to install by modifying:  
[home/.chezmoiscripts/linux/run_onchange_after_08-install-omarchy-aur-packages.sh.tmpl](home/.chezmoiscripts/linux/run_onchange_after_08-install-omarchy-aur-packages.sh.tmpl)

3. Define Omarchy Plugins to install by modifying:  
[home/.chezmoiscripts/linux/run_onchange_after_10-install-omarchy-plugins.sh.tmpl](home/.chezmoiscripts/linux/run_onchange_after_10-install-omarchy-plugins.sh.tmpl)

## Baked-in chezmoi Bash Aliases

```console
# Core shortcuts
alias cz="chezmoi"
alias cza="chezmoi add"
alias cze="chezmoi edit"
alias czp="chezmoi diff"
alias czapply="chezmoi apply"

# Quick CD into the source directory
alias czcd="chezmoi cd"

# Sync changes (pull from git, apply, push back)
alias czsync="chezmoi update"
```
