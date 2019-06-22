# これは何
+ emacs25以上の.emacs.dです。
+ Linux(Ubuntu18.04, Arch Linux), mac OS(iTerm2), Windows 10, WSL(ConEmu)での動作を確認しています。
+ Tor(The onion routing)を使用した環境での利用は想定されていません。

# Dependency
## Font
+ Noto Mono for Powerline
+ Noto Sans CJK JP

## System
+ emacs(>=25)
+ git(latest)

# How to install
```
git clone --recursive https://github.com/1n5k/.emacs.d.git ~/.emacs.d
cd ~/.emacs.d
git checkout (linux|macos|windows|WSL)
```

## Another way  
```
git clone https://github.com/1n5k/.emacs.d ~/.emacs.d
cd ~/.emacs.d
git submodule init
git submodule update
git checkout (linux|macos|windows|WSL)
```

# 参考文献 
+ http://extra-vision.blogspot.com/2016/07/emacs.html
