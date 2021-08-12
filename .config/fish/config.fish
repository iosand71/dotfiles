# default configs
set fish_greeting
set fish_complete_path ~/.config/fish/completions/ \
  /usr/local/share/fish/completions/ \
  /usr/local/share/fish/vendor_completions.d/ \
  $fish_complete_path

# Env variables
set ANDROID_HOME /Users/andreaiosio/Android
fish_add_path -p /usr/local/sbin /usr/local/bin /usr/bin /bin /usr/sbin /sbin /usr/X11/bin $ANDROID_HOME/tools $ANDROID_HOME/platform-tools
set LC_CTYPE en_US.UTF-8
set LC_ALL en_US.UTF-8
set KUBECONFIG $HOME/.kube/config:$HOME/.kube/config-shared-eks:$HOME/.kube/config-ciro
set LANG it_IT.UTF-8
set SDKMAN_DIR /Users/andreaiosio/.sdkman
set -x GOPATH $HOME/go
fish_add_path /usr/local/go/bin $GOPATH/bin

if status is-interactive
    # bindings
    bind -M insert \ca beginning-of-line
    bind -M insert \ce end-of-line
    fzf_configure_bindings --directory=\cp
end

