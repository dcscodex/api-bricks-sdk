#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "V1.Icon.h"

using namespace std;
using namespace Tizen::ArtikCloud;

V1.Icon::V1.Icon()
{
	//__init();
}

V1.Icon::~V1.Icon()
{
	//__cleanup();
}

void
V1.Icon::__init()
{
	//exchange_id = std::string();
	//asset_id = std::string();
	//url = std::string();
}

void
V1.Icon::__cleanup()
{
	//if(exchange_id != NULL) {
	//
	//delete exchange_id;
	//exchange_id = NULL;
	//}
	//if(asset_id != NULL) {
	//
	//delete asset_id;
	//asset_id = NULL;
	//}
	//if(url != NULL) {
	//
	//delete url;
	//url = NULL;
	//}
	//
}

void
V1.Icon::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *exchange_idKey = "exchange_id";
	node = json_object_get_member(pJsonObject, exchange_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&exchange_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *asset_idKey = "asset_id";
	node = json_object_get_member(pJsonObject, asset_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&asset_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *urlKey = "url";
	node = json_object_get_member(pJsonObject, urlKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&url, node, "std::string", "");
		} else {
			
		}
	}
}

V1.Icon::V1.Icon(char* json)
{
	this->fromJson(json);
}

char*
V1.Icon::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getExchangeId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *exchange_idKey = "exchange_id";
	json_object_set_member(pJsonObject, exchange_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAssetId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *asset_idKey = "asset_id";
	json_object_set_member(pJsonObject, asset_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getUrl();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *urlKey = "url";
	json_object_set_member(pJsonObject, urlKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
V1.Icon::getExchangeId()
{
	return exchange_id;
}

void
V1.Icon::setExchangeId(std::string  exchange_id)
{
	this->exchange_id = exchange_id;
}

std::string
V1.Icon::getAssetId()
{
	return asset_id;
}

void
V1.Icon::setAssetId(std::string  asset_id)
{
	this->asset_id = asset_id;
}

std::string
V1.Icon::getUrl()
{
	return url;
}

void
V1.Icon::setUrl(std::string  url)
{
	this->url = url;
}


