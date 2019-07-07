# dotfiles  
[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)  
  
Jinsuke's dotfilesってやつ　これから良くなっていきます  
  
# 使い方(Installation)  
~~installer.shとかsetup.shとかそんなものはないから適当にコピーして使ってくれ~~  
→なんか生えたので、それっぽいインストール方法を書いておきます。  
## 基本(Basic)  
```
$ git clone --recursive git@github.com:1n5k/dotfiles  
$ ./install.sh  
```
 
### (Another basic)  
```  
$ git clone https://github.com/1n5k/dotfiles  
$ git submodule init  
$ git submodule update  
```  
  
## gitがない人用  
```  
curl -L raw.github.com/1n5k/dotfiles/master/install.sh | bash  
```  


