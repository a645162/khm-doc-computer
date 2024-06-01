# Todesk

无法登陆(无法显示二维码)为没有打开todesk.service核心服务导致

```bash
sudo systemctl start todeskd.service
sudo systemctl enable todeskd.service
```

## 无字

缺少noto-fonts-cjk字体导致

```bash
sudo pacman -S noto-fonts-cjk
```

## Ref
https://zhuanlan.zhihu.com/p/665192315
