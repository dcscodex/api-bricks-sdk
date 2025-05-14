#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "DTO.FilingSortBy.h"

using namespace std;
using namespace Tizen::ArtikCloud;

DTO.FilingSortBy::DTO.FilingSortBy()
{
	//__init();
}

DTO.FilingSortBy::~DTO.FilingSortBy()
{
	//__cleanup();
}

void
DTO.FilingSortBy::__init()
{
}

void
DTO.FilingSortBy::__cleanup()
{
	//
}

void
DTO.FilingSortBy::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
}

DTO.FilingSortBy::DTO.FilingSortBy(char* json)
{
	this->fromJson(json);
}

char*
DTO.FilingSortBy::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}


