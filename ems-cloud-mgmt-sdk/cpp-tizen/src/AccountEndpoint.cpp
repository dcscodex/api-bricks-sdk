#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "AccountEndpoint.h"

using namespace std;
using namespace Tizen::ArtikCloud;

AccountEndpoint::AccountEndpoint()
{
	//__init();
}

AccountEndpoint::~AccountEndpoint()
{
	//__cleanup();
}

void
AccountEndpoint::__init()
{
	//exchange_id = std::string();
	//location_id = std::string();
	//endpoint_schema = std::string();
	//endpoint_host = std::string();
	//endpoint_url = std::string();
}

void
AccountEndpoint::__cleanup()
{
	//if(exchange_id != NULL) {
	//
	//delete exchange_id;
	//exchange_id = NULL;
	//}
	//if(location_id != NULL) {
	//
	//delete location_id;
	//location_id = NULL;
	//}
	//if(endpoint_schema != NULL) {
	//
	//delete endpoint_schema;
	//endpoint_schema = NULL;
	//}
	//if(endpoint_host != NULL) {
	//
	//delete endpoint_host;
	//endpoint_host = NULL;
	//}
	//if(endpoint_url != NULL) {
	//
	//delete endpoint_url;
	//endpoint_url = NULL;
	//}
	//
}

void
AccountEndpoint::fromJson(char* jsonStr)
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
	const gchar *location_idKey = "location_id";
	node = json_object_get_member(pJsonObject, location_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&location_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *endpoint_schemaKey = "endpoint_schema";
	node = json_object_get_member(pJsonObject, endpoint_schemaKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&endpoint_schema, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *endpoint_hostKey = "endpoint_host";
	node = json_object_get_member(pJsonObject, endpoint_hostKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&endpoint_host, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *endpoint_urlKey = "endpoint_url";
	node = json_object_get_member(pJsonObject, endpoint_urlKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&endpoint_url, node, "std::string", "");
		} else {
			
		}
	}
}

AccountEndpoint::AccountEndpoint(char* json)
{
	this->fromJson(json);
}

char*
AccountEndpoint::toJson()
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
		std::string obj = getLocationId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *location_idKey = "location_id";
	json_object_set_member(pJsonObject, location_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getEndpointSchema();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *endpoint_schemaKey = "endpoint_schema";
	json_object_set_member(pJsonObject, endpoint_schemaKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getEndpointHost();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *endpoint_hostKey = "endpoint_host";
	json_object_set_member(pJsonObject, endpoint_hostKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getEndpointUrl();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *endpoint_urlKey = "endpoint_url";
	json_object_set_member(pJsonObject, endpoint_urlKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
AccountEndpoint::getExchangeId()
{
	return exchange_id;
}

void
AccountEndpoint::setExchangeId(std::string  exchange_id)
{
	this->exchange_id = exchange_id;
}

std::string
AccountEndpoint::getLocationId()
{
	return location_id;
}

void
AccountEndpoint::setLocationId(std::string  location_id)
{
	this->location_id = location_id;
}

std::string
AccountEndpoint::getEndpointSchema()
{
	return endpoint_schema;
}

void
AccountEndpoint::setEndpointSchema(std::string  endpoint_schema)
{
	this->endpoint_schema = endpoint_schema;
}

std::string
AccountEndpoint::getEndpointHost()
{
	return endpoint_host;
}

void
AccountEndpoint::setEndpointHost(std::string  endpoint_host)
{
	this->endpoint_host = endpoint_host;
}

std::string
AccountEndpoint::getEndpointUrl()
{
	return endpoint_url;
}

void
AccountEndpoint::setEndpointUrl(std::string  endpoint_url)
{
	this->endpoint_url = endpoint_url;
}


