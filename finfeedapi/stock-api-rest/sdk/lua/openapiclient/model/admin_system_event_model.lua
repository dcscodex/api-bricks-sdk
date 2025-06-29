--[[
  FinFeedAPI Stock REST API

  No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

  The version of the OpenAPI document: v1
  Contact: support@apibricks.io
  Generated by: https://openapi-generator.tech
]]

-- admin_system_event_model class
local admin_system_event_model = {}
local admin_system_event_model_mt = {
	__name = "admin_system_event_model";
	__index = admin_system_event_model;
}

local function cast_admin_system_event_model(t)
	return setmetatable(t, admin_system_event_model_mt)
end

local function new_admin_system_event_model(timestamp_nanos, timestamp, system_event, system_event_code, system_event_text, is_system_event_start_of_messages, is_system_event_start_of_system_hours, is_system_event_start_of_regular_market_hours, is_system_event_end_of_regular_market_hours, is_system_event_end_of_system_hours, is_system_event_end_of_messages)
	return cast_admin_system_event_model({
		["timestamp_nanos"] = timestamp_nanos;
		["timestamp"] = timestamp;
		["system_event"] = system_event;
		["system_event_code"] = system_event_code;
		["system_event_text"] = system_event_text;
		["is_system_event_start_of_messages"] = is_system_event_start_of_messages;
		["is_system_event_start_of_system_hours"] = is_system_event_start_of_system_hours;
		["is_system_event_start_of_regular_market_hours"] = is_system_event_start_of_regular_market_hours;
		["is_system_event_end_of_regular_market_hours"] = is_system_event_end_of_regular_market_hours;
		["is_system_event_end_of_system_hours"] = is_system_event_end_of_system_hours;
		["is_system_event_end_of_messages"] = is_system_event_end_of_messages;
	})
end

return {
	cast = cast_admin_system_event_model;
	new = new_admin_system_event_model;
}
