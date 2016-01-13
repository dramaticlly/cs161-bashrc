# Useful aliases for ece344

os161-build() {
    #check if 1st arg is empty string
    if [ -z "$1" ]; then \
        echo "Usage: kbuild ASSTN"
        return 1
    fi
    # pushd: push to the stack and cd to arg directory
    pushd "$HOME/ece344/os161/kern/compile/$1"
    #bmake -j4 && bmake install -s #need to replace with our make
    make depend && make && make install
    popd
}

os161-config() {
    if [ -z "$1" ]; then
        echo "Usage: kconfig ASSTN"
        return 1
    fi
    pushd "$HOME/ece344/os161/kern/conf"
    ./config "$1"
    popd
    pushd "$HOME/ece344/os161/kern/compile/$1"
    #bmake -s -j4 depend
    make depend 
    popd
    os161-build "$1"
}

os161-run() {
    bash -c "cd ~/ece344/root && sys161 kernel \"$@\""
}

os161-debug() {
    bash -c "cd ~/ece344/root && sys161 -w kernel \"$@\""
}

GeneratenewCscope() {
    echo 'generate new scope file'
    bash -c "cd ~/ece344/os161/kern && find . -name '*.[cshS]' > cscope.files"
}

#seems we dont need this 
: <<'END'
os161-user-build() {
    if [ "$1" ]; then
        pushd "$HOME/ece344/os161/userland/$1"
        bmake depend -s && bmake && bmake install
        return 0
    fi
    pushd "$HOME/ece344/os161/"
    bmake -s
    popd
    pushd "$HOME/ece344/os161/userland"
    bmake -s -j4 depend && bmake -s -j4 && bmake install -s -j4
    popd
}
END

# Aliases for searching. Should run from top-level os161 directory
# e.g. gg "syscall"
#alias gg='git grep -ni'
#alias todo='gg TODO'
alias grep='grep -ni --color'
alias gtodo='grep r TODO *'
alias b='cd ..'
alias j='cd ~/ece344/os161'
alias ls='ls --color'
alias la='ls -la'

# Aliases to config, build, run, debug, and start gdb
# kc and kb take a configuration file in kern/conf as an argument.
# e.g. kc ASST0
# e.g. kb ASST3-OPT
alias kc='os161-config'
alias kconfig=kc
alias kb='os161-build'
alias kbuild=kb
alias kr='os161-run'
alias krun=kr
alias kd='os161-debug'
alias kdebug=kd
alias kg='cd ~/ece344/root && cs161-gdb kernel'
alias kgdb=kg
alias nspe='GeneratenewCscope' 
#alias ub='os161-user-build'
#alias ubuild=ub

# Aliases to move to common directories
alias cdk='cd $HOME/ece344/os161'
alias cdr='cd $HOME/ece344/root'
#alias cdu='cd $HOME/ece344/os161/userland'
