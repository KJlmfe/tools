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
