# Docker Overlay2 目录空间占用过大

## 主要步骤

1. 逐级查看当前目录下的各目录大小

```bash
du -sh *
```

发现罪魁祸首为Docker的`Overlay2`目录

2. 查找大于5G的文件夹

```bash
cd /var/lib/docker/overlay2
du -h --max-depth=1 --threshold=5G
```

3. 查看该文件夹下的各目录大小

```bash
du -sh *
```

发现为`tmp`目录

4. 解决问题

删除tmp目录下的内容(tmp为临时目录)

## 参考

https://learnku.com/articles/85263
