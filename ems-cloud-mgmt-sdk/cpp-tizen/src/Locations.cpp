#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Locations.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Locations::Locations()
{
	//__init();
}

Locations::~Locations()
{
	//__cleanup();
}

void
Locations::__init()
{
	//location_id = std::string();
	//region_name = std::string();
	//provider_name = std::string();
}

void
Locations::__cleanup()
{
	//if(location_id != NULL) {
	//
	//delete location_id;
	//location_id = NULL;
	//}
	//if(region_name != NULL) {
	//
	//delete region_name;
	//region_name = NULL;
	//}
	//if(provider_name != NULL) {
	//
	//delete provider_name;
	//provider_name = NULL;
	//}
	//
}

void
Locations::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *location_idKey = "location_id";
	node = json_object_get_member(pJsonObject, location_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&location_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *region_nameKey = "region_name";
	node = json_object_get_member(pJsonObject, region_nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&region_name, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *provider_nameKey = "provider_name";
	node = json_object_get_member(pJsonObject, provider_nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&provider_name, node, "std::string", "");
		} else {
			
		}
	}
}

Locations::Locations(char* json)
{
	this->fromJson(json);
}

char*
Locations::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getLocationId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *location_idKey = "location_id";
	json_object_set_member(pJsonObject, location_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRegionName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *region_nameKey = "region_name";
	json_object_set_member(pJsonObject, region_nameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getProviderName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *provider_nameKey = "provider_name";
	json_object_set_member(pJsonObject, provider_nameKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Locations::getLocationId()
{
	return location_id;
}

void
Locations::setLocationId(std::string  location_id)
{
	this->location_id = location_id;
}

std::string
Locations::getRegionName()
{
	return region_name;
}

void
Locations::setRegionName(std::string  region_name)
{
	this->region_name = region_name;
}

std::string
Locations::getProviderName()
{
	return provider_name;
}

void
Locations::setProviderName(std::string  provider_name)
{
	this->provider_name = provider_name;
}


