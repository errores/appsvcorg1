#
# Dockerfile for Apache/PHP/MySQL
#
FROM ubuntu:16.04
MAINTAINER a <a@gmail.com>


# ========
# ENV vars
# ========

































# ssh
ENV SSH_PASSWD "root:Docker!"

# app
ENV APP_HOME "/home/site/wwwroot"
#
ENV DOCKER_BUILD_HOME "/dockerbuild"


# ====================
# Download and Install
# ~. tools
# 1. essentials
# 2. apache httpd
# 3. mariadb
# 4. php
# 5. phpmyadmin
# 6. ssh
# ====================

WORKDIR $DOCKER_BUILD_HOME
RUN set -ex \
	# --------
	# ~. tools
	# --------
	&& tools=" \
		g++ \
		gcc \
		make \
		pkg-config \
		wget \
	" \
	&& apt-get update \
	&& apt-get install -y -V --no-install-recommends $tools \
	&& rm -r /var/lib/apt/lists/* \

	# ------------------------
	# 1. essentials
	# ------------------------
	&& essentials=" \
		ca-certificates \
	" \
	&& apt-get update \
	&& apt-get install -y -V --no-install-recommends $essentials \
	&& rm -r /var/lib/apt/lists/* \













































































































































	# ------------------------
	# 6. ssh
	# ------------------------
	&& apt-get update \
	&& apt-get install -y --no-install-recommends openssh-server \
	&& echo "$SSH_PASSWD" | chpasswd \

	# ------------------------
	# ~. clean up
	# ------------------------
	&& apt-get purge -y -V -o APT::AutoRemove::RecommendsImportant=false --auto-remove $tools \
	&& apt-get autoremove -y	


# =========
# Configure
# =========












# ssh
COPY sshd_config /etc/ssh/



















# =====
# final
# =====
COPY entrypoint.sh /usr/local/bin/
RUN chmod u+x /usr/local/bin/entrypoint.sh
EXPOSE 2222 80
ENTRYPOINT ["entrypoint.sh"]
