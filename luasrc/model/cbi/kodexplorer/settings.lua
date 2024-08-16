m = Map("kodexplorer")
m.title = translate("可道云")
m.description = translate("可道云是一款快速高效的私有云和在线文档管理系统，为个人网站、企业私有云部署、网络存储、在线文档管理和在线办公提供安全、可控、易用和高度可定制的私有云产品。拥有类似 Windows 的界面和操作习惯，可以无需适应即可快速上手。支持数百种常见文件格式的在线预览，并且可扩展，易于定制。")

m:append(Template("kodexplorer/status"))

s = m:section(TypedSection, "global", translate("全局设置"))
s.anonymous = true
s.addremove = false

o = s:option(Flag, "enable", translate("启用"))
o.rmempty = false

o = s:option(Value, "port", translate("Nginx HTTP端口"))
o.datatype = "port"
o.default = 8081
o.rmempty = false

-- 新增 HTTPS 开关
o = s:option(Flag, "https_enable", translate("启用 HTTPS"))
o.rmempty = true  -- 设置为 true，表示可为空
o.default = false -- 默认关闭

o = s:option(Value, "https_port", translate("HTTPS 端口"))
o.datatype = "port"
o.default = 8443
o:depends("https_enable", 1)  -- 仅在启用 HTTPS 时显示
o.rmempty = true  -- 将其设置为 true，表示可为空

o = s:option(Value, "ssl_certificate", translate("SSL 证书路径"))
o.datatype = "file"
o.description = translate("输入 SSL 证书的路径，例如 /etc/nginx/ssl/server.crt")
o:depends("https_enable", 1)  -- 仅在启用 HTTPS 时显示
o.rmempty = true  -- 将其设置为 true，表示可为空

o = s:option(Value, "ssl_certificate_key", translate("SSL 证书密钥路径"))
o.datatype = "file"
o.description = translate("输入 SSL 证书密钥的路径，例如 /etc/nginx/ssl/server.key")
o:depends("https_enable", 1)  -- 仅在启用 HTTPS 时显示
o.rmempty = true  -- 将其设置为 true，表示可为空

o = s:option(Value, "memory_limit", translate("最大内存使用量"))
o.description = translate("如果您的设备有较多内存，可以增加此值。")
o.default = "8M"
o.rmempty = false

o = s:option(Value, "post_max_size", translate("最大 POST 容量"))
o.description = translate("此值不能大于最大内存使用量")
o.default = "12M"
o.rmempty = false

o = s:option(Value, "upload_max_filesize", translate("上传文件的最大内存使用量"))
o.description = translate("此值不能大于最大 POST 容量")
o.default = "12M"
o.rmempty = false

o = s:option(Value, "storage_device_path", translate("存储设备路径"))
o.description = translate("数据存放路径，输入路径例如，/mnt/sda1/")
o.default = "/mnt/sda1/"
o.rmempty = false

o = s:option(Value, "project_directory", translate("项目目录"))
o.description = translate("存放可道云项目运行文件的路径，输入路径例如，/mnt/sda1/kodexplorer")
o.default = "/mnt/sda1/kodexplorer"
o.rmempty = false

s:append(Template("kodexplorer/version"))

o = s:option(Button, "_download", translate("手动更新"))
o.description = translate("确保您有足够的空间。<br /><font style='color:red'>首次运行时务必填写设备路径和存储路径，然后保存应用。然后手动下载，否则无法使用！</font>")
o.template = "kodexplorer/download"
o.inputstyle = "apply"
o.btnclick = "downloadClick(this);"
o.id = "download_btn"

return m
