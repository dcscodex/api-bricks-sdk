--[[
  CoinAPI Market Data REST API

  No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

  The version of the OpenAPI document: v1
  Contact: support@apibricks.io
  Generated by: https://openapi-generator.tech
]]

-- v1_metric_info class
local v1_metric_info = {}
local v1_metric_info_mt = {
	__name = "v1_metric_info";
	__index = v1_metric_info;
}

local function cast_v1_metric_info(t)
	return setmetatable(t, v1_metric_info_mt)
end

local function new_v1_metric_info(metric_id, description, source_id)
	return cast_v1_metric_info({
		["metric_id"] = metric_id;
		["description"] = description;
		["source_id"] = source_id;
	})
end

return {
	cast = cast_v1_metric_info;
	new = new_v1_metric_info;
}
