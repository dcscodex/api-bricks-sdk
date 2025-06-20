--[[
  CoinAPI Market Data REST API

  No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

  The version of the OpenAPI document: v1
  Contact: support@apibricks.io
  Generated by: https://openapi-generator.tech
]]

-- v1_exchange_rates_timeseries_item class
local v1_exchange_rates_timeseries_item = {}
local v1_exchange_rates_timeseries_item_mt = {
	__name = "v1_exchange_rates_timeseries_item";
	__index = v1_exchange_rates_timeseries_item;
}

local function cast_v1_exchange_rates_timeseries_item(t)
	return setmetatable(t, v1_exchange_rates_timeseries_item_mt)
end

local function new_v1_exchange_rates_timeseries_item(time_period_start, time_period_end, time_open, time_close, rate_open, rate_high, rate_low, rate_close)
	return cast_v1_exchange_rates_timeseries_item({
		["time_period_start"] = time_period_start;
		["time_period_end"] = time_period_end;
		["time_open"] = time_open;
		["time_close"] = time_close;
		["rate_open"] = rate_open;
		["rate_high"] = rate_high;
		["rate_low"] = rate_low;
		["rate_close"] = rate_close;
	})
end

return {
	cast = cast_v1_exchange_rates_timeseries_item;
	new = new_v1_exchange_rates_timeseries_item;
}
