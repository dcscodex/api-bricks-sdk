#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "V1.ExternalAsset.h"

using namespace std;
using namespace Tizen::ArtikCloud;

V1.ExternalAsset::V1.ExternalAsset()
{
	//__init();
}

V1.ExternalAsset::~V1.ExternalAsset()
{
	//__cleanup();
}

void
V1.ExternalAsset::__init()
{
	//asset_id = std::string();
	//description = std::string();
	//asset_type = std::string();
}

void
V1.ExternalAsset::__cleanup()
{
	//if(asset_id != NULL) {
	//
	//delete asset_id;
	//asset_id = NULL;
	//}
	//if(description != NULL) {
	//
	//delete description;
	//description = NULL;
	//}
	//if(asset_type != NULL) {
	//
	//delete asset_type;
	//asset_type = NULL;
	//}
	//
}

void
V1.ExternalAsset::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *asset_idKey = "asset_id";
	node = json_object_get_member(pJsonObject, asset_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&asset_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *descriptionKey = "description";
	node = json_object_get_member(pJsonObject, descriptionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&description, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *asset_typeKey = "asset_type";
	node = json_object_get_member(pJsonObject, asset_typeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&asset_type, node, "std::string", "");
		} else {
			
		}
	}
}

V1.ExternalAsset::V1.ExternalAsset(char* json)
{
	this->fromJson(json);
}

char*
V1.ExternalAsset::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getAssetId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *asset_idKey = "asset_id";
	json_object_set_member(pJsonObject, asset_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDescription();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *descriptionKey = "description";
	json_object_set_member(pJsonObject, descriptionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAssetType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *asset_typeKey = "asset_type";
	json_object_set_member(pJsonObject, asset_typeKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
V1.ExternalAsset::getAssetId()
{
	return asset_id;
}

void
V1.ExternalAsset::setAssetId(std::string  asset_id)
{
	this->asset_id = asset_id;
}

std::string
V1.ExternalAsset::getDescription()
{
	return description;
}

void
V1.ExternalAsset::setDescription(std::string  description)
{
	this->description = description;
}

std::string
V1.ExternalAsset::getAssetType()
{
	return asset_type;
}

void
V1.ExternalAsset::setAssetType(std::string  asset_type)
{
	this->asset_type = asset_type;
}


