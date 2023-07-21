source ~/.zplug/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug 'plugins/git', from:oh-my-zsh
zplug "spaceship-prompt/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

# Then, source plugins and add commands to $PATH
zplug load
