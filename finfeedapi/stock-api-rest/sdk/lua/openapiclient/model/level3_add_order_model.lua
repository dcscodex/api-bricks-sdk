--[[
  FinFeedAPI Stock REST API

  No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

  The version of the OpenAPI document: v1
  Contact: support@apibricks.io
  Generated by: https://openapi-generator.tech
]]

-- level3_add_order_model class
local level3_add_order_model = {}
local level3_add_order_model_mt = {
	__name = "level3_add_order_model";
	__index = level3_add_order_model;
}

local function cast_level3_add_order_model(t)
	return setmetatable(t, level3_add_order_model_mt)
end

local function new_level3_add_order_model(symbol, timestamp_nanos, timestamp, is_side_buy, size, price, order_id)
	return cast_level3_add_order_model({
		["symbol"] = symbol;
		["timestamp_nanos"] = timestamp_nanos;
		["timestamp"] = timestamp;
		["is_side_buy"] = is_side_buy;
		["size"] = size;
		["price"] = price;
		["order_id"] = order_id;
	})
end

return {
	cast = cast_level3_add_order_model;
	new = new_level3_add_order_model;
}
