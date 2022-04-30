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

Simply put a shell script in ``install.d``. You can also create a script with the same name but with ``.test`` at the end, to check if the package manager is installed.

When you are done, please submit a pull request to the repo.

## Suported package managers (so far)

- apt (debian and debian based)

- pacman (arch and arch based)

- xbps (void linux)

- yay (aur)

- paru (aur)

- fwupd (firmware)

- flatpak

- snap

- npm global install
