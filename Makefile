# 版权所有 (C) 2018-2020 Lienol <lawlienol@gmail.com>
#
# 这是一个自由软件，根据 GNU 通用公共许可证 v3 许可。
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI support for KodExplorer
LUCI_DEPENDS:=+nginx +unzip +zoneinfo-asia +php8 +php8-cgi +php8-fpm +php8-mod-curl +php8-mod-dom +php8-mod-exif +php8-mod-fileinfo +php8-mod-filter +php8-mod-ftp +php8-mod-gd +php8-mod-gettext +php8-mod-iconv +php8-mod-intl +php8-mod-ldap +php8-mod-mbstring +php8-mod-mysqli +php8-mod-mysqlnd +php8-mod-opcache +php8-mod-openssl +php8-mod-pdo +php8-mod-pdo-mysql +php8-mod-pdo-sqlite +php8-mod-session +php8-mod-simplexml +php8-mod-sockets +php8-mod-sqlite3 +php8-mod-xml +php8-mod-zip +php8-pecl-imagick +php8-pecl-mcrypt +php8-pecl-redis
LUCI_PKGARCH:=all
PKG_VERSION:=1
PKG_DATE:=20240701

include $(TOPDIR)/feeds/luci/luci.mk

define Package/luci-app-kodexplorer
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=3. Applications
  TITLE:=$(LUCI_TITLE)
  DEPENDS:=$(LUCI_DEPENDS)
  PKGARCH:=$(LUCI_PKGARCH)
endef

define Package/luci-app-kodexplorer/description
  LuCI 对 KodExplorer 的支持，一个用于 OpenWrt 平台的强大网页文件管理器。
endef

define Build/Prepare
	$(call Build/Prepare/Default)
endef

define Build/Compile
	$(call Build/Compile/Default)
endef

$(eval $(call BuildPackage,luci-app-kodexplorer))
