source ~/.zplug/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug 'plugins/git', from:oh-my-zsh

# Then, source plugins and add commands to $PATH
zplug load
