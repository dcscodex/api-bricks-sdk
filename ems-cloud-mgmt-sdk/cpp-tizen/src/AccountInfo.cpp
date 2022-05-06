#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "AccountInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;

AccountInfo::AccountInfo()
{
	//__init();
}

AccountInfo::~AccountInfo()
{
	//__cleanup();
}

void
AccountInfo::__init()
{
	//exchange_id = std::string();
}

void
AccountInfo::__cleanup()
{
	//if(exchange_id != NULL) {
	//
	//delete exchange_id;
	//exchange_id = NULL;
	//}
	//
}

void
AccountInfo::fromJson(char* jsonStr)
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
}

AccountInfo::AccountInfo(char* json)
{
	this->fromJson(json);
}

char*
AccountInfo::toJson()
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
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
AccountInfo::getExchangeId()
{
	return exchange_id;
}

void
AccountInfo::setExchangeId(std::string  exchange_id)
{
	this->exchange_id = exchange_id;
}


