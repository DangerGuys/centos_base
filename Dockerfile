FROM centos:latest
MAINTAINER DangerGuy "13331432720@163.com"
LABEL version="1.0.0" 

#更改时区为北京时区
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone

#防止访问数据库公网地址
#RUN echo "172.17.254.255 rm-2ze3zk2327k92186do.mysql.rds.aliyuncs.com" >> /etc/hosts

#更新yum源为阿里云镜像站
RUN curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
RUN yum clean all

#安装基础应用
RUN yum -y install tar iproute wget samba-client
