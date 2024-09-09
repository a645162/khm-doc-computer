# Network Mode

`~/.wslconfig`

```ini
[experimental]
autoMemoryReclaim=gradual  
networkingMode=mirrored
dnsTunneling=true
firewall=true
autoProxy=true
```

networkingMode 为mirrored 表示网络模式使用镜像模式，会镜像宿主机的网络设置，能更好的集成宿主机和WSL的网络。

autoProxy 开启了自动代理的功能，意味 WSL 自动配置代理设置。

`wsl --shutdown`

## Ref

https://overstarry.vip/posts/wsl_error1/
https://blog.csdn.net/m0_57830768/article/details/137495770
