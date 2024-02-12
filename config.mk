TRAEFIK_BRIDGE ?= traefiknet
USER_GID ?= $(shell id -ur)
USER_UID ?= $(shell id -gr)
NAME ?= $(notdir $(CURDIR))
HOSTNAME ?= $(NAME).docker.localhost
MYSQL_IMAGE ?= quay.io/amery/docker-alpine-mariadb
MYSQL_SERVER ?= db
MYSQL_DATABASE ?= $(NAME)
MYSQL_USER ?= $(MYSQL_DATABASE)
MYSQL_PASSWORD ?= secret1
MYSQL_ROOT_PASSWORD ?= secret2
NGINX_IMAGE ?= quay.io/amery/docker-alpine-nginx
PHP_IMAGE ?= quay.io/amery/docker-alpine-php7:latest
PHP_MAX_UPLOAD_MB ?= 4096
PHP_MEMORY_LIMIT_MB ?= 256
