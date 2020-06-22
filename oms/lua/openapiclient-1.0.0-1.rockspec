package = "openapiclient"
version = "1.0.0-1"
source = {
	url = "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
}

description = {
	summary = "API client genreated by OpenAPI Generator",
	detailed = [[
OMS Project]],
	homepage = "https://openapi-generator.tech",
	license = "Unlicense",
	maintainer = "OpenAPI Generator contributors",
}

dependencies = {
	"lua >= 5.2",
	"http",
	"dkjson",
	"basexx"
}

build = {
	type = "builtin",
	modules = {
		["openapiclient.api.balances_api"] = "openapiclient/api/balances_api.lua";
		["openapiclient.api.orders_api"] = "openapiclient/api/orders_api.lua";
		["openapiclient.api.positions_api"] = "openapiclient/api/positions_api.lua";
		["openapiclient.model.balance"] = "openapiclient/model/balance.lua";
		["openapiclient.model.balance_data"] = "openapiclient/model/balance_data.lua";
		["openapiclient.model.cancel_all_order"] = "openapiclient/model/cancel_all_order.lua";
		["openapiclient.model.cancel_order"] = "openapiclient/model/cancel_order.lua";
		["openapiclient.model.create_order400"] = "openapiclient/model/create_order400.lua";
		["openapiclient.model.messages"] = "openapiclient/model/messages.lua";
		["openapiclient.model.messages_info"] = "openapiclient/model/messages_info.lua";
		["openapiclient.model.messages_ok"] = "openapiclient/model/messages_ok.lua";
		["openapiclient.model.new_order"] = "openapiclient/model/new_order.lua";
		["openapiclient.model.order"] = "openapiclient/model/order.lua";
		["openapiclient.model.order_data"] = "openapiclient/model/order_data.lua";
		["openapiclient.model.order_live"] = "openapiclient/model/order_live.lua";
		["openapiclient.model.order_status"] = "openapiclient/model/order_status.lua";
		["openapiclient.model.position"] = "openapiclient/model/position.lua";
		["openapiclient.model.position_data"] = "openapiclient/model/position_data.lua";
		["openapiclient.model.time_in_force"] = "openapiclient/model/time_in_force.lua";
	}
}
