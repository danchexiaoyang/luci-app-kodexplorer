module("luci.controller.onliner",package.seeall)
nixio=require"nixio"
function index()
entry({"admin","status","onliner"},alias("admin","status","onliner","onliner"),_("在线设备"))
entry({"admin","status","onliner","onliner"},template("onliner/onliner"),_("在线设备"),1)
entry({"admin", "status","onliner","setnlbw"}, call("set_nlbw"))
end
