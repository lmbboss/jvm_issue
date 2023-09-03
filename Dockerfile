FROM openjdk:17-jdk-slim

#作者
MAINTAINER mingbin <761707964@qq.com>

#系统编码
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

#声明一个挂载点，容器内此路径会对应宿主机的某个文件夹
VOLUME /root/dockerTmp

#应用构建成功后的jar文件被复制到镜像内，名字也改成了app.jar
ADD target/jvm_issue-0.0.1-SNAPSHOT.jar app.jar
#启动容器时的进程
ENTRYPOINT ["java","-jar","/app.jar"]
#暴露8080端口
EXPOSE 8080