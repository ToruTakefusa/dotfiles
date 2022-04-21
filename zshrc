#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
source $HOME/.cargo/env
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
export RUST_SRC_PATH=$HOME/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin:$HOME/.cargo/bin

alias emacs="emacs -nw"
