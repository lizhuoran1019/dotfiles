# zsh
安装：
```
yay -S zsh oh-my-zsh-git
```
```
yay -S zsh-autosuggestions zsh-completions zsh-syntax-highlighting zsh-theme-powerlevel10k oh-my-zsh-plugin-autosuggestions

```
```
cp /usr/share/oh-my-zsh/zshrc ~/.zshrc
```
然后在.zshrc文件末尾添加
```
source $HOME/.zshrc-personal
```

# ranger
参考网页：[ranger配置和使用](https://www.zssnp.top/2021/06/03/ranger/#%E6%B7%BB%E5%8A%A0%E6%96%87%E4%BB%B6%E7%AE%A1%E7%90%86%E5%99%A8%E5%9B%BE%E6%A0%87)

## 添加文件管理器图标
```bash
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
```
## 预览代码高亮
```
yay -S highlight
```
## 图片预览
```
yay -S w3m imlib2
```


# tmux
参考：[tmux进阶之tmuxinator](https://www.jianshu.com/p/49b70f705acf)
## tmuxinator
安装
```
yay -S aur/tmuxinator
```
