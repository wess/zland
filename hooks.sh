echo "Loading hooks..."

# DIRENV
eval "$(direnv hook zsh)"

# RUST
source ~/.cargo/env 

# RBENV
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
eval "$(rbenv init -)"

# PYENV
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

# NODENV
eval "$(nodenv init -)"