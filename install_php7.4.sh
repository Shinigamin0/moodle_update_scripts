#!/bin/bash
php_version=7.4    
apt install software-properties-common
add-apt-repository ppa:ondrej/php -y
apt update
apt install \
php$php_version \
php$php_version-common \
php$php_version-mysql \
php$php_version-pgsql \
php$php_version-snmp \
php$php_version-ldap \
php$php_version-xml \
php$php_version-xmlrpc \
php$php_version-curl \
php$php_version-gd \
php$php_version-imagick \
php$php_version-cli \
php$php_version-dev \
php$php_version-imap \
php$php_version-mbstring \
php$php_version-opcache \
php$php_version-soap \
php$php_version-zip \
php$php_version-intl \
php$php_version-exif
apt-get clean
