# Ubuntu Linux Kernel

## 查看当前的内核版本

```bash
uname -r
```

## 查看当前已经安装的内核

```bash
dpkg -l|grep linux-image
```

## 查询可以安装的内核列表

```bash
sudo apt-cache search linux-image-6.2
```

## 安装内核

```bash
sudo apt install -y linux-modules-6.2.0-39-generic
```

## Ref

https://blog.csdn.net/u010608421/article/details/115658479
