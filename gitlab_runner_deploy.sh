env=$1
docs_server_host='47.105.193.122'
current=`date "+%Y-%m-%d %H:%M:%S"`  
timeStamp=`date -d "$current" +%s`
api_path='/data/path/apidocs'
to_path='/data/path/to'




if [ "${env}" = "testing" ]; then
ssh  deployer@${docs_server_host} "rm -rf /data/path/servicedocs/cocos-service/*"
scp  -r  ./cocos-service/*  deployer@${docs_server_host}:/data/path/servicedocs/cocos-service/
ssh  deployer@${docs_server_host} "cd /data/path/servicedocs/cocos-service && gitbook build "
ssh  deployer@${docs_server_host} "  rsync  -r /data/path/servicedocs/cocos-service/_book/  deployer@120.27.71.250:/var/www/DocsService/live/service/manual/zh"
fi



if [ "${env}" = "pro" ]; then
ssh  deployer@${docs_server_host} "rm -rf /data/path/servicedocs/cocos-service/*"
scp  -r  ./cocos-service/*  deployer@${docs_server_host}:/data/path/servicedocs/cocos-service/
ssh  deployer@${docs_server_host} "cd /data/path/servicedocs/cocos-service  && gitbook build "
ssh  deployer@${docs_server_host} " sudo rsync  -r /data/path/servicedocs/cocos-service/_book/  deployer@172.31.101.193:/data/web/docs_cocos_com/gitbook/service/manual/zh"
fi
