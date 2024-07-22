# GPU Burn

## Windows

## Linux

https://github.com/wilicc/gpu-burn

首先确认正确安装CUDA以及配置环境变量，使用`nvcc --version`检查。

```bash
git clone https://github.com/wilicc/gpu-burn.git
cd gpu-burn
make COMPUTE=<compute capability value>
```
