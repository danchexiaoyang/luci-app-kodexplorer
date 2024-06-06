# Copyright (C) 2018-2020 Lienol <lawlienol@gmail.com>
#
# This is free software, licensed under the GNU General Public License v3.
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI support for KodExplorer
LUCI_DEPENDS:=+nginx +unzip +zoneinfo-asia +php8 +php8-cgi +php8-fpm +php8-mod-curl +php8-mod-dom +php8-mod-exif +php8-mod-fileinfo +php8-mod-filter +php8-mod-ftp +php8-mod-gd +php8-mod-gettext +php8-mod-iconv +php8-mod-intl +php8-mod-ldap +php8-mod-mbstring +php8-mod-mysqli +php8-mod-mysqlnd +php8-mod-opcache +php8-mod-openssl +php8-mod-pdo +php8-mod-pdo-mysql +php8-mod-pdo-sqlite +php8-mod-session +php8-mod-simplexml +php8-mod-sockets +php8-mod-sqlite3 +php8-mod-xml +php8-mod-zip +php8-pecl-imagick +php8-pecl-mcrypt +php8-pecl-redis
LUCI_PKGARCH:=all
PKG_VERSION:=13
PKG_DATE:=20210505

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
