# Portainer

## Ubuntu

```bash
docker volume create portainer_data
docker run -d -p 9000:9000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
```

将官方默认的 `8000:8000` 改为 `9000:9000`

## 其他服务器

这个Portainer仅在主服务器上部署，其余服务器请部署Agent

## Ref

https://docs.portainer.io/start/install-ce/server/docker/linux
