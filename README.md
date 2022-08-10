# droca

:construction:
Very much a work in progress!!!

## Organization

### common
Common files across any OS

### Windows
Files specific to Windows

### Linux
Files specific to Linux

### macOS
Files specific to macOS

### utils
Utilities

## New Machine

### Install `git`
- Install `git`

```cmd
# Windows
winget install git
```

- Clone repo
```cmd
git clone https://github.com/curtisalexander/droca.git
```

### Install `Nushell`
- Install `Nushell`

```cmd
# Windows
winget install nushell
```

### Symlink files
Run __ utility to symlink files
- Windows &rarr;
- Linux &rarr;
- macOS &rarr;

## Add a New File

### Windows
Making a symbolic link

```ps1
# open PowerShell as an Admin
New-Item -Type SymbolicLink -Target "C:\Users\myusername\code\droca\common\.gitconfig" -Path "C:\Users\myusername\.gitconfig"
```

## Remove a File
