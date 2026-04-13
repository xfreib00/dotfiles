# Dotfiles

## Info

In this repository are stored all of my basic dotfiles. They are organized in
manner usefull for GNU Stow command.

GNU Stow creates simlinks from these dotfiles to your user home directory while
keeping the directory structure.

## Usage
To install specific dotfiles use:

`stow [name of the directory]`

eg. `stow nvim` to create simlinks to `$HOME/.config/nvim`

## Dependencies
Apart from all programs needed for these config files. There is only one
dependecy and that is GNU Stow.
