FROM  python:2.7

LABEL maintainer="ding465398889@163.com"

RUN apt-get update && \
    apt-get install -y  python-pip python-m2crypto &&\
    pip install shadowsocks

RUN mkdir -p /shadowsocks

WORKDIR /shadowsocks

Add config.json .

EXPOSE 8888

CMD ["/usr/local/bin/ssserver", "-c" ,"config.json"]
