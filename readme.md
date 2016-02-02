## POCSCAN

 Pocscan是一款开源 Poc 调用框架,可轻松调用Pocsuite,Tangscan,Beebeeto <font color=red>按照官方规范编写</font>的 Poc对目标域名进行扫描，通过 Docker 一键部署，麻麻再也不怕搭建麻烦了 。

### Screenshots

        //放两张屏幕截图

### Installation

1. 安装Docker

        $ curl -sSL https://get.daocloud.io/docker | sh 
        $ sudo systemctl start docker

2. 启动MySql,并建立数据库Pocscan.

        //sql语句

3. 找到代码目录下的/pocsanui/settings.py

        DATABASES = {
            'default': {
                'ENGINE': 'django.db.backends.mysql', 
                'NAME': 'biliscan',     # 数据库名
                'USER': 'root',         # 数据库用户名
                'PASSWORD': '123456',   # 数据库密码
                'HOST': '127.0.0.1',    # 数据库ip
                'PORT': '3306',
            }
        }
        
4. 运行docker

        docker run -d -v /tmp/pocscan/:/www -p 8090:8000 ubuntu/pocscan:latest
        /*
        -v /tmp/pocscan/:/www 是将本地的/tmp/pocscan挂载到容器的/www目录中
        -p 8090:8000 是将本地的8090端口映射到容器的8000端口
        以上参数根据实际情况自行配置
        */
        
        
5. 把poc文件按找分类放到/pocscan/pocs/下的文件夹

6. 安装chrome插件,设置好API地址
    
        http://127.0.0.1:8081/scan/     #注意scan后面要用"/",注意scan后面要用"/",注意scan后面要用"/"。重要的事情说三次

### TO DO

1. 集群化部署
2. 集成sqlmapapi

### FAQ

Q: 搭建为啥扫不出漏洞啊？

A: Pocscan 只是提供一个框架，不提供 Poc , 扫不出洞说明你的 Poc 不够多不够牛逼。



### 问题反馈 当程序出现日天的bug，或者你有更好的建议想法时，请联系我们
