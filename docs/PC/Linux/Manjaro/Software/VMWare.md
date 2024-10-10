# VMWare

## Install Dep

```bash
sudo pacman -S fuse2 gtkmm linux-headers pcsclite libcanberra 
yay -S --noconfirm --needed ncurses5-compat-libs
```

## Install VMWare Workstation

```bash
# yay -S vmware-workstation
yay -S --noconfirm --needed  vmware-workstation
```

## 提示vmmon或者vmnet模块有问题

新的内核可能需要这个步骤

```bash
yay -S vmware-host-modules-dkms-git
```

## 启动服务

```bash
sudo systemctl enable vmware-networks.service  vmware-usbarbitrator.service
sudo systemctl start vmware-networks.service  vmware-usbarbitrator.service

# sudo systemctl enable vmware-networks.service  vmware-usbarbitrator.service vmware-hostd.service
# sudo systemctl start vmware-networks.service  vmware-usbarbitrator.service vmware-hostd.service
```

## 加载VMware模块

```bash
sudo modprobe -a vmw_vmci vmmon
```

## 启动

```bash
# Launch VMware Workstation Pro:
vmware

# Launch VMware Workstation Player
vmplayer
```

## Ref

https://segmentfault.com/a/1190000042268631
https://blog.csdn.net/qq_41376740/article/details/121735498
https://cn.linux-console.net/?p=21589
