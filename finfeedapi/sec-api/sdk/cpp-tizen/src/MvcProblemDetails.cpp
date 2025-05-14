#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Mvc.ProblemDetails.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Mvc.ProblemDetails::Mvc.ProblemDetails()
{
	//__init();
}

Mvc.ProblemDetails::~Mvc.ProblemDetails()
{
	//__cleanup();
}

void
Mvc.ProblemDetails::__init()
{
	//type = std::string();
	//title = std::string();
	//status = int(0);
	//detail = std::string();
	//instance = std::string();
}

void
Mvc.ProblemDetails::__cleanup()
{
	//if(type != NULL) {
	//
	//delete type;
	//type = NULL;
	//}
	//if(title != NULL) {
	//
	//delete title;
	//title = NULL;
	//}
	//if(status != NULL) {
	//
	//delete status;
	//status = NULL;
	//}
	//if(detail != NULL) {
	//
	//delete detail;
	//detail = NULL;
	//}
	//if(instance != NULL) {
	//
	//delete instance;
	//instance = NULL;
	//}
	//
}

void
Mvc.ProblemDetails::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *typeKey = "type";
	node = json_object_get_member(pJsonObject, typeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&type, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *titleKey = "title";
	node = json_object_get_member(pJsonObject, titleKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&title, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *statusKey = "status";
	node = json_object_get_member(pJsonObject, statusKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&status, node, "int", "");
		} else {
			
		}
	}
	const gchar *detailKey = "detail";
	node = json_object_get_member(pJsonObject, detailKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&detail, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *instanceKey = "instance";
	node = json_object_get_member(pJsonObject, instanceKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&instance, node, "std::string", "");
		} else {
			
		}
	}
}

Mvc.ProblemDetails::Mvc.ProblemDetails(char* json)
{
	this->fromJson(json);
}

char*
Mvc.ProblemDetails::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *typeKey = "type";
	json_object_set_member(pJsonObject, typeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTitle();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *titleKey = "title";
	json_object_set_member(pJsonObject, titleKey, node);
	if (isprimitive("int")) {
		int obj = getStatus();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *statusKey = "status";
	json_object_set_member(pJsonObject, statusKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDetail();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *detailKey = "detail";
	json_object_set_member(pJsonObject, detailKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getInstance();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *instanceKey = "instance";
	json_object_set_member(pJsonObject, instanceKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Mvc.ProblemDetails::getType()
{
	return type;
}

void
Mvc.ProblemDetails::setType(std::string  type)
{
	this->type = type;
}

std::string
Mvc.ProblemDetails::getTitle()
{
	return title;
}

void
Mvc.ProblemDetails::setTitle(std::string  title)
{
	this->title = title;
}

int
Mvc.ProblemDetails::getStatus()
{
	return status;
}

void
Mvc.ProblemDetails::setStatus(int  status)
{
	this->status = status;
}

std::string
Mvc.ProblemDetails::getDetail()
{
	return detail;
}

void
Mvc.ProblemDetails::setDetail(std::string  detail)
{
	this->detail = detail;
}

std::string
Mvc.ProblemDetails::getInstance()
{
	return instance;
}

void
Mvc.ProblemDetails::setInstance(std::string  instance)
{
	this->instance = instance;
}


