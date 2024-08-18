# AMD RocM WSL

## Install

https://rocm.docs.amd.com/projects/radeon/en/latest/docs/install/wsl/install-radeon.html

## Install PyTorch

```bash
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/rocm6.1
```

https://rocm.docs.amd.com/projects/radeon/en/latest/docs/install/wsl/install-pytorch.html

## PyTorch Support WSL

```bash
location=`pip show torch | grep Location | awk -F ": " '{print $2}'`
cd ${location}/torch/lib/
rm libhsa-runtime64.so*
cp /opt/rocm/lib/libhsa-runtime64.so.1.2 libhsa-runtime64.so
```

## GLIBCXX

```bash
strings /usr/lib/x86_64-linux-gnu/libstdc++.so.6 | grep GLIBCXX

cd /home/cedric/anaconda3/envs/decdiff_env/bin/../lib/
mv libstdc++.so.6 libstdc++.so.6.old
ln -s /usr/lib/x86_64-linux-gnu/libstdc++.so.6 libstdc++.so.6
```

## Ref

https://rocm.docs.amd.com/projects/radeon/en/latest/docs/install/wsl/install-radeon.html
https://rocm.docs.amd.com/projects/radeon/en/latest/docs/install/wsl/install-pytorch.html
https://pytorch.org/get-started/locally/
https://blog.csdn.net/CCCDeric/article/details/129292944
