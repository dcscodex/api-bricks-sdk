#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Indexes.IndexDefinitionSnapshotEntry.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Indexes.IndexDefinitionSnapshotEntry::Indexes.IndexDefinitionSnapshotEntry()
{
	//__init();
}

Indexes.IndexDefinitionSnapshotEntry::~Indexes.IndexDefinitionSnapshotEntry()
{
	//__cleanup();
}

void
Indexes.IndexDefinitionSnapshotEntry::__init()
{
	//index_id = std::string();
	//timestamp = null;
	//value = double(0);
}

void
Indexes.IndexDefinitionSnapshotEntry::__cleanup()
{
	//if(index_id != NULL) {
	//
	//delete index_id;
	//index_id = NULL;
	//}
	//if(timestamp != NULL) {
	//
	//delete timestamp;
	//timestamp = NULL;
	//}
	//if(value != NULL) {
	//
	//delete value;
	//value = NULL;
	//}
	//
}

void
Indexes.IndexDefinitionSnapshotEntry::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *index_idKey = "index_id";
	node = json_object_get_member(pJsonObject, index_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&index_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *timestampKey = "timestamp";
	node = json_object_get_member(pJsonObject, timestampKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&timestamp, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *valueKey = "value";
	node = json_object_get_member(pJsonObject, valueKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&value, node, "double", "");
		} else {
			
		}
	}
}

Indexes.IndexDefinitionSnapshotEntry::Indexes.IndexDefinitionSnapshotEntry(char* json)
{
	this->fromJson(json);
}

char*
Indexes.IndexDefinitionSnapshotEntry::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getIndexId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *index_idKey = "index_id";
	json_object_set_member(pJsonObject, index_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTimestamp();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *timestampKey = "timestamp";
	json_object_set_member(pJsonObject, timestampKey, node);
	if (isprimitive("double")) {
		double obj = getValue();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *valueKey = "value";
	json_object_set_member(pJsonObject, valueKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Indexes.IndexDefinitionSnapshotEntry::getIndexId()
{
	return index_id;
}

void
Indexes.IndexDefinitionSnapshotEntry::setIndexId(std::string  index_id)
{
	this->index_id = index_id;
}

std::string
Indexes.IndexDefinitionSnapshotEntry::getTimestamp()
{
	return timestamp;
}

void
Indexes.IndexDefinitionSnapshotEntry::setTimestamp(std::string  timestamp)
{
	this->timestamp = timestamp;
}

double
Indexes.IndexDefinitionSnapshotEntry::getValue()
{
	return value;
}

void
Indexes.IndexDefinitionSnapshotEntry::setValue(double  value)
{
	this->value = value;
}


