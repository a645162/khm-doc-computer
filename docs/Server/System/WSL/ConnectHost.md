# WSL联不通宿主机

## 步骤1: ipconfig查看WSL虚拟网卡名称

```powershell
ipconfig
```

## 步骤2: 添加防火墙规则

```powershell
New-NetFirewallRule -DisplayName "WSL" -Direction Inbound  -InterfaceAlias "vEthernet (WSL)" -Action Allow
```

## Ref

https://blog.csdn.net/Cypher_X/article/details/123011200
