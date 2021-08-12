## MGOBE 下架说明

由于腾讯云侧业务方向调整，MGOBE 将无法创建新的游戏，因此 MGOBE 服务将从 Cocos Service 服务面板中下架，对于正在使用的用户来说，将无法进行 SDK 自动安装以及实时服务器的管理。

###  SDK

* 对于 SDK 安装来说，开发者可手动从 [腾讯云 MGOBE SDK 下载](https://cloud.tencent.com/document/product/1038/33406) 处下载，并拖动到 CocosCreator（`2.x 和 3.x 系列均可`）的资源管理中，以及插件的方式导入。

### 实时服务器

对于实时服务器的编译
* 如果开发者原先使用 MGOBE 插件中提供的实时服务器管理方案，可以在 `${当前项目目录}/serverless/mgobe-server/${实时服务器 ID}` 中手动执行 `npx gulp`，执行 `npx gulp` 前请确认已经执行过 `npm install `；

* 如果开发者使用的是自行从 [腾讯云 MGOBE 实时服务器框架](https://cloud.tencent.com/document/product/1038/35044) 下载，请参考腾讯云的文档进行开发

对于实时服务器的发布，需要开发者前往 [腾讯云 MGOBE 控制台](https://console.cloud.tencent.com/minigamecloud/server/serverMgobe) [参考文档](https://cloud.tencent.com/document/product/1038/34950)进行发布。

### 附件
另外 MGOBE 中实时服务器的框架源码可以从 `${当前用户目录}/.CocosCreator/services/mgobe/resources/mgobexs_tmpl.zip` 目录获取。  
[下载地址](https://service.cocos.com/document/zh/attach/mgobexs_tmpl.zip)