# Portainer-Podman

## 创建

```bash
# Must
systemctl enable --now podman.socket

podman volume create portainer_data

podman run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always --privileged -v /run/podman/podman.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:2.22.0
```

## 启动失败

```bash
rm -rf /run/podman/podman.sock
```
