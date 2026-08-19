# CRH's .dotfiles

Carl Hoyer's dotfiles, managed by [chezmoi](https://www.chezmoi.io)

Install them via:  

```console
chezmoi init choyer
```

Verify what's different from yours via:  

```console
chezmoi diff
```
```
```

Apply them via:  

```console
chezmoi apply
```
```
```

## Baked-in chezmoi Aliases

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
