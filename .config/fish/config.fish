set ANDROID_HOME /Users/andreaiosio/Android
fish_add_path /usr/local/sbin /usr/local/bin /usr/bin /bin /usr/sbin /sbin /usr/X11/bin $ANDROID_HOME/tools $ANDROID_HOME/platform-tools
set LC_CTYPE en_US.UTF-8
set LC_ALL en_US.UTF-8
set KUBECONFIG $HOME/.kube/config:$HOME/.kube/config-shared-eks:$HOME/.kube/config-ciro
set LANG it_IT.UTF-8
set SDKMAN_DIR /Users/andreaiosio/.sdkman

if status is-interactive
    # bindings
    bind -M insert \ca beginning-of-line
    bind -M insert \ce end-of-line
    fzf_configure_bindings --directory=\cp
end

