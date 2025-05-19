#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Metadata.Exchange.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Metadata.Exchange::Metadata.Exchange()
{
	//__init();
}

Metadata.Exchange::~Metadata.Exchange()
{
	//__cleanup();
}

void
Metadata.Exchange::__init()
{
	//exchange_id = std::string();
	//website = std::string();
	//name = std::string();
}

void
Metadata.Exchange::__cleanup()
{
	//if(exchange_id != NULL) {
	//
	//delete exchange_id;
	//exchange_id = NULL;
	//}
	//if(website != NULL) {
	//
	//delete website;
	//website = NULL;
	//}
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
	//}
	//
}

void
Metadata.Exchange::fromJson(char* jsonStr)
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
	const gchar *websiteKey = "website";
	node = json_object_get_member(pJsonObject, websiteKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&website, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *nameKey = "name";
	node = json_object_get_member(pJsonObject, nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&name, node, "std::string", "");
		} else {
			
		}
	}
}

Metadata.Exchange::Metadata.Exchange(char* json)
{
	this->fromJson(json);
}

char*
Metadata.Exchange::toJson()
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
		std::string obj = getWebsite();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *websiteKey = "website";
	json_object_set_member(pJsonObject, websiteKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nameKey = "name";
	json_object_set_member(pJsonObject, nameKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Metadata.Exchange::getExchangeId()
{
	return exchange_id;
}

void
Metadata.Exchange::setExchangeId(std::string  exchange_id)
{
	this->exchange_id = exchange_id;
}

std::string
Metadata.Exchange::getWebsite()
{
	return website;
}

void
Metadata.Exchange::setWebsite(std::string  website)
{
	this->website = website;
}

std::string
Metadata.Exchange::getName()
{
	return name;
}

void
Metadata.Exchange::setName(std::string  name)
{
	this->name = name;
}


