#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "V1.MetricInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;

V1.MetricInfo::V1.MetricInfo()
{
	//__init();
}

V1.MetricInfo::~V1.MetricInfo()
{
	//__cleanup();
}

void
V1.MetricInfo::__init()
{
	//metric_id = std::string();
	//description = std::string();
	//source_id = std::string();
}

void
V1.MetricInfo::__cleanup()
{
	//if(metric_id != NULL) {
	//
	//delete metric_id;
	//metric_id = NULL;
	//}
	//if(description != NULL) {
	//
	//delete description;
	//description = NULL;
	//}
	//if(source_id != NULL) {
	//
	//delete source_id;
	//source_id = NULL;
	//}
	//
}

void
V1.MetricInfo::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *metric_idKey = "metric_id";
	node = json_object_get_member(pJsonObject, metric_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&metric_id, node, "std::string", "");
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
	const gchar *source_idKey = "source_id";
	node = json_object_get_member(pJsonObject, source_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&source_id, node, "std::string", "");
		} else {
			
		}
	}
}

V1.MetricInfo::V1.MetricInfo(char* json)
{
	this->fromJson(json);
}

char*
V1.MetricInfo::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getMetricId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *metric_idKey = "metric_id";
	json_object_set_member(pJsonObject, metric_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDescription();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *descriptionKey = "description";
	json_object_set_member(pJsonObject, descriptionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSourceId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *source_idKey = "source_id";
	json_object_set_member(pJsonObject, source_idKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
V1.MetricInfo::getMetricId()
{
	return metric_id;
}

void
V1.MetricInfo::setMetricId(std::string  metric_id)
{
	this->metric_id = metric_id;
}

std::string
V1.MetricInfo::getDescription()
{
	return description;
}

void
V1.MetricInfo::setDescription(std::string  description)
{
	this->description = description;
}

std::string
V1.MetricInfo::getSourceId()
{
	return source_id;
}

void
V1.MetricInfo::setSourceId(std::string  source_id)
{
	this->source_id = source_id;
}


