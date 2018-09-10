#version=$1
version=jre8-oracle
if [ -z "${version}" ]; then
   echo "[error:] version is not specified."
   echo "[usage:] $0 <version>"    	
   exit 1
fi

sudo docker login --username=junboqi@foxmail.com registry.cn-hangzhou.aliyuncs.com
sudo docker tag [ImageId] registry.cn-hangzhou.aliyuncs.com/qijunbo/tomcat:${version}
sudo docker push registry.cn-hangzhou.aliyuncs.com/qijunbo/tomcat:${version}