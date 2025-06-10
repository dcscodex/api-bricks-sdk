#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "V1.Metric.h"

using namespace std;
using namespace Tizen::ArtikCloud;

V1.Metric::V1.Metric()
{
	//__init();
}

V1.Metric::~V1.Metric()
{
	//__cleanup();
}

void
V1.Metric::__init()
{
	//metric_id = std::string();
	//description = std::string();
}

void
V1.Metric::__cleanup()
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
	//
}

void
V1.Metric::fromJson(char* jsonStr)
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
}

V1.Metric::V1.Metric(char* json)
{
	this->fromJson(json);
}

char*
V1.Metric::toJson()
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
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
V1.Metric::getMetricId()
{
	return metric_id;
}

void
V1.Metric::setMetricId(std::string  metric_id)
{
	this->metric_id = metric_id;
}

std::string
V1.Metric::getDescription()
{
	return description;
}

void
V1.Metric::setDescription(std::string  description)
{
	this->description = description;
}


