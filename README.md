# 🔧 Tools

## Mac

- brew
- 1Password
- Alfred
- Shadowsocks
- iTerm2
- oh-my-zsh
- autojump
- htop
- nvm
- cnpm
- zsh-autosuggestions
- CheatSheet
- keycastr
- Dropbox

## Chrome插件

- Vimium


## Shell命令

### 配置ssh key

`ssh-keygen -f ~/.ssh/id_rsa.github -C "Work Mac"` 会生成`id_rsa.github`,`id_rsa.github.pub` 在`~/.ssh`(把pub存到github网站里）

`~/.ssh/config`文件配置

```
Host github.com
    HostName github.com
    IdentityFile ~/.ssh/id_rsa.github
```

### Link文件

把`~/.vimrc`映射到 `/Users/kjlmfe/Code/tools/vimrc` （源文件还是在它该在的位置，避免产生因为环境路径问题，然后通过link生成快捷方式，集中放在tools仓库里跟踪管理）

`ln -si $(pwd)/.vimrc /Users/kjlmfe/Code/tools/vimrc` （一定要用全路径）

- s create a symbolic link 可以理解为快捷方式，删除快捷方式，不会删除元文件，但可以通过快捷方式去修改源文件
- i 交互式询问是否覆盖等
