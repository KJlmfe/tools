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

#### 硬链接管理dotfiles

把当前目录下的`vimrc`映射到`~/.vimrc`(我们用硬链接方式去管理这些dotfiles，可以避免误删除)

ln -i ./vimrc ~/.vimrc (ln默认是硬链接）

- `-i` 交互式询问是否覆盖等

> 在linux中，多个文件名指向同一索引点是存在的。一般这种链接是硬链接。硬链接的作用是允许一个文件拥有多个有效路径名，这样用户就可以建立硬链接到重要文件，起到防止“误删”的功能。
> 因为对应目录的索引节点有一个以上的链接，只删除一个链接并不影响索引节点本身和其他的链接，只有当最后一个链接被删除后，文件的数据块及目录的链接才会被释放。也就是说，至此文件才被真正删除。

#### 软链接创建快捷方式

把当前位置的目录映射到桌面上

软连接 `ln -si $(pwd) /Users/kjlmfe/Desktop/tools` （软连接必须要用全路径）

- `-s` create a symbolic link 可以理解为快捷方式，删除快捷方式，不会删除元文件，但可以通过快捷方式去修改源文件
