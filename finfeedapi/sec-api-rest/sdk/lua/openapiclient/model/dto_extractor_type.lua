--[[
  FinFeedAPI SEC REST API

  No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

  The version of the OpenAPI document: v1
  Contact: support@apibricks.io
  Generated by: https://openapi-generator.tech
]]

-- dto_extractor_type class
local dto_extractor_type = {}
local dto_extractor_type_mt = {
	__name = "dto_extractor_type";
	__index = dto_extractor_type;
}

local function cast_dto_extractor_type(t)
	return setmetatable(t, dto_extractor_type_mt)
end

local function new_dto_extractor_type()
	return cast_dto_extractor_type({
	})
end

return {
	cast = cast_dto_extractor_type;
	new = new_dto_extractor_type;
}
