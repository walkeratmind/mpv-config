# MPV Config

Scripts for mpv and useful default Configs

see [mpv manual](https://mpv.io/manual/master/)

---

- [MPV Config](#mpv-config)
  - [Features](#features)
  - [scripts](#scripts)
  - [Usage](#usage)
  - [Install](#install)
  - [Setup the configs](#setup-the-configs)

## Features

- Download subtitle when mpv starts or using key `b` with [autosub](https://github.com/davidde/mpv-autosub) script which uses [subliminal](https://github.com/Diaoul/subliminal).
- Fix sub timing by `Ctrl + z` and `ctrl  + x`.
- Copy or paste the file path in mpv.
- loads playlist entries automatically before and after the currently played file.
- Create and manage playlist using [mpv-playlistmanager](https://github.com/jonniek/mpv-playlistmanager).

## scripts
1. [appendURL](https://github.com/jonniek/mpv-scripts/blob/master/appendURL.lua)
2. [autoload](https://github.com/mpv-player/mpv/tree/master/TOOLS/lua)
3. [autosub](https://github.com/davidde/mpv-autosub)
4. [fix-sub-timing](https://github.com/walkeratmind/mpv-config/blob/master/scripts/fix-sub-timing.lua)
5. [mpv-playlistmanager](https://github.com/jonniek/mpv-playlistmanager)
6. [UndoRedo](https://github.com/Eisa01/mpv-scripts)
## Usage
| Key   | Effect  |
|---|---|
|  `b` |   load subtitle for the the palying file using autosub |
| `alt + u` | load subtitle using subselect from opensubtitles |
| `/`| subtitle step by +1 |
| `shift + /`| subtitle step by -1 |
| `ctrl + shift + c` | copy file path |
| `ctrl + shift + v` | paste file path |
| `ctrl + z` | rewind to previous time |
## Install

1. Install mpv from any package managers like Linux: apt, [brew](https://brew.sh/), pacman, yum adn for Windows: [winget](https://github.com/microsoft/winget-cli), [chocolatey](https://chocolatey.org/install), [scoop](https://scoop.sh/) or directlry from [project](https://mpv.io/installation/).

## Setup the configs

1. Clone the project and cd into directory.
```bash
git clone https://github.com/walkeratmind/mpv-config & cd mpv-config
```

2. Run `setup.sh` to link the configs.
```bash
sudo bash setup.sh
```
