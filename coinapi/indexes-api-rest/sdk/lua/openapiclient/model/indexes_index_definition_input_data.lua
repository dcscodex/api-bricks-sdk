--[[
  CoinAPI Indexes REST API

  No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

  The version of the OpenAPI document: v1
  Contact: support@apibricks.io
  Generated by: https://openapi-generator.tech
]]

-- indexes_index_definition_input_data class
local indexes_index_definition_input_data = {}
local indexes_index_definition_input_data_mt = {
	__name = "indexes_index_definition_input_data";
	__index = indexes_index_definition_input_data;
}

local function cast_indexes_index_definition_input_data(t)
	return setmetatable(t, indexes_index_definition_input_data_mt)
end

local function new_indexes_index_definition_input_data(exchange_id, exchange_symbol_id, base_asset_id, quote_asset_id, begin_date, end_date, status, status_info, last_modification_time)
	return cast_indexes_index_definition_input_data({
		["exchangeId"] = exchange_id;
		["exchangeSymbolId"] = exchange_symbol_id;
		["baseAssetId"] = base_asset_id;
		["quoteAssetId"] = quote_asset_id;
		["beginDate"] = begin_date;
		["endDate"] = end_date;
		["status"] = status;
		["statusInfo"] = status_info;
		["lastModificationTime"] = last_modification_time;
	})
end

return {
	cast = cast_indexes_index_definition_input_data;
	new = new_indexes_index_definition_input_data;
}
