﻿智能固定资产管理

固定资产，无处不在，应用极广，如企业办公室的电脑、配件、饮水机、冰箱、微波炉。。。等等，那么，如何更好地管理N多个固定资产，让它们有序可放、有依可循、不被忘记、不被忽略呢？OK，智能固定资产管理，为您解决问题，让您更顺心！智能固定资产管理通过系统化管理和维护您的固资以及分类，拿起您的手机即可随时随地盘点！

安装与部署：

1、克隆源码

选择一个剩余空间最大的磁盘，如E盘，分别新建三个文件夹Asset，Asset/Publish，Asset/Source，从github下载源码至Asset/Source目录，执行命令下载
git clone https://github.com/qq283335746/Asset.git

2、下载并安装sql server数据库以及管理工具

下载并安装SQL Server 2017 Express（sql server2005、sql server2008 r2等版本都行），下载地址：https://www.microsoft.com/zh-cn/sql-server/sql-server-downloads，下载并安装SSMS管理工具：https://docs.microsoft.com/zh-cn/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-2017

3、安装数据库

打开sql server管理工具，并附加TygaSoftAspnetDb、AssetDb数据库

4、下载并安装visual studio

https://visualstudio.microsoft.com/zh-hans/downloads/

5、使用visual studio打开解决方案文件，并运行源码、发布项目

6、运行，看到登录界面，登录账号：admin  admin123456

安装与部署参考：

[windows iis10 部署](docs/Win10)


智能固定资产管理技术点标签：

后端：webservice、wcf、linq、ado.net、sql server、三层架构

前端：jquery、easyui、ionic、cordova、Barcode、RFID

移动端：android、ios

技术、业务、交流联系：qq:283335746！

智能固定资产管理截图如下：

![image](https://github.com/qq283335746/My/blob/master/MyImages/Asset/asset001.png)
![image](https://github.com/qq283335746/My/blob/master/MyImages/Asset/asset002.png)
![image](https://github.com/qq283335746/My/blob/master/MyImages/Asset/asset003.png)
![image](https://github.com/qq283335746/My/blob/master/MyImages/Asset/asset004.png)
![image](https://github.com/qq283335746/My/blob/master/MyImages/Asset/asset005.png)
