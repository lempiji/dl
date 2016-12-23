# dl

English / [日本語](https://github.com/lempiji/dl/blob/master/README.ja.md)

Display D-man aimed to correct users who accidentally enter `dl` instead of `ls`.

## D-man

```
  _   _
 (_) (_)
/______ \
\\(O(O \/
 | | | |
 | |_| |
/______/
  <   >
 (_) (_)
```

## Usage

### Simple

1. Install the [dub](http://code.dlang.org/download)
2. Enter "`dub run dl`"

### Correct typings firmly

1. Install [git](https://git-scm.com)
2. Launch a terminal and go to some folder
3. Execute this commands  
  ```bash
  git clone https://github.com/lempiji/dl.git
  cd dl
  dub build
  ```
4. Add the PATH to current directory
5. Enter "`dl`" by mistake

### Use on Windows
This command doesn't work on cmd.exe, because it use the "ANSI escape code"
I recommend to use [Visual Studio Code](https://code.visualstudio.com), if use Windows.

