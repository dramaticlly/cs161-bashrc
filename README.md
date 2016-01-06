ece344-bashrc
============

bashrc file for ece344 development

By Kenny Yu

## Install

    cd ~
    git clone https://github.com/dramaticlly/ece344-bashrc.git 
    cp ~/ece344-bashrc/bashrc ~/.bashrc && source ~/.bashrc


## Usage
**Attention**
* make sure you already have directory structure like $HOME/ece344/os161 
* make sure you have sys161 simulator configuration file  
```
cd ~/ece344/root      
cp /cad2/ece344s/cs161/bin/sys161.conf.sample sys161.conf  
```  

**configure and build need assignment number(ASST0,ASST1,ASST2,ASST3)**  
####Configure Kernel 
`kc ASST0`  
####Build Kernel 
`kb ASST0`  
####Run Kernel (kr)  
`kr`  
####Debug Kernel will need 2 terminal opened at same time:  
1. Run window:  open and wait for debuger connection  
`kd`   
2. Debug window, gdb 
`kg`  
using(`target remote unix:.sockets/gdb` ) to join the running socket    

## Contents

* `bashrc` - contains a prompt that shows the current branch; sources aliases
* `aliases.sh` - contains useful aliases for working with os161
* `git-prompt.sh` - library for adding git information to the prompt
