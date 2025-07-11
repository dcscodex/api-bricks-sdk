--[[
  CoinAPI Indexes REST API

  No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

  The version of the OpenAPI document: v1
  Contact: support@apibricks.io
  Generated by: https://openapi-generator.tech
]]

-- indexes_index_definition_snapshot_entry class
local indexes_index_definition_snapshot_entry = {}
local indexes_index_definition_snapshot_entry_mt = {
	__name = "indexes_index_definition_snapshot_entry";
	__index = indexes_index_definition_snapshot_entry;
}

local function cast_indexes_index_definition_snapshot_entry(t)
	return setmetatable(t, indexes_index_definition_snapshot_entry_mt)
end

local function new_indexes_index_definition_snapshot_entry(index_id, timestamp, value)
	return cast_indexes_index_definition_snapshot_entry({
		["index_id"] = index_id;
		["timestamp"] = timestamp;
		["value"] = value;
	})
end

return {
	cast = cast_indexes_index_definition_snapshot_entry;
	new = new_indexes_index_definition_snapshot_entry;
}
