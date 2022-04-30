# UpdateAll

A universal update script.

## Installation

Just ``git clone`` the repo, no compilation needed!

## Running

In the root of the repo run

```
./updateall.sh
```

## Adding package managers

Simply put a shell script in ``install.d``. You can also create a script with the same name but with ``.detect`` at the end, to check if the package manager is installed.

When you are done, please submit a pull request to the repo.

## Supported package managers (so far)

- apt (Debian and Debian based)

- pacman (arch and arch based)

- xbps (void linux)

- yay (AUR)

- paru (AUR)

- fwupd (firmware)

- flatpak

- snap

- npm global install

- cargo (requires cargo-install-upgrade)

- nix (nixos only)
