docker:
	docker build  . -t dragondjf/shadowsocks-docker

deploy:docker
	docker-compose  up -d
