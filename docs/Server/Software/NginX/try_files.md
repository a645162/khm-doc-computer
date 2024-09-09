# try_files

最好把`location /`放到最后

```conf
	location / {
		root  /usr/share/nginx/web/group-center-dashboard;
		# index index.html;
		try_files $uri $uri/ /index.html;
	}
```

## Ref

https://blog.csdn.net/qq_52385631/article/details/123905925
https://cloud.tencent.com/developer/information/NGINX%20-%E5%88%B7%E6%96%B0SPA%E5%BA%94%E7%94%A8%E4%B8%AD%E7%9A%84%E5%AD%90%E8%B7%AF%E7%94%B1-salon
https://zhuanlan.zhihu.com/p/33379828?from_voters_page=true
