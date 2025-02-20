Mumu Proxy
===

# Set

```powershell
adb -s 127.0.0.1:16448 shell settings put global http_proxy proxy.xxxxxx.xyz:7890
adb -s 127.0.0.1:16448 shell settings put global https_proxy proxy.xxxxxx.xyz:7890
```

# Unset

```powershell
adb -s 127.0.0.1:16448 shell settings put global http_proxy :0
adb -s 127.0.0.1:16448 shell settings put global https_proxy :0
```

# Ref

https://www.bilibili.com/opus/933490929724030978
