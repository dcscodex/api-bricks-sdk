#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Mvc.ValidationProblemDetails.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Mvc.ValidationProblemDetails::Mvc.ValidationProblemDetails()
{
	//__init();
}

Mvc.ValidationProblemDetails::~Mvc.ValidationProblemDetails()
{
	//__cleanup();
}

void
Mvc.ValidationProblemDetails::__init()
{
	//type = std::string();
	//title = std::string();
	//status = int(0);
	//detail = std::string();
	//instance = std::string();
	//new std::map()std::map> errors;
}

void
Mvc.ValidationProblemDetails::__cleanup()
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
	//if(errors != NULL) {
	//errors.RemoveAll(true);
	//delete errors;
	//errors = NULL;
	//}
	//
}

void
Mvc.ValidationProblemDetails::fromJson(char* jsonStr)
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
	const gchar *errorsKey = "errors";
	node = json_object_get_member(pJsonObject, errorsKey);
	if (node !=NULL) {
	
		{
			JsonObject* json_obj = json_node_get_object(node);
			map<string,string> new_map;
			json_object_foreach_member(json_obj,helper_func,&new_map);
			errors = new_map;
		}
		
	}
}

Mvc.ValidationProblemDetails::Mvc.ValidationProblemDetails(char* json)
{
	this->fromJson(json);
}

char*
Mvc.ValidationProblemDetails::toJson()
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


	{
		JsonObject* json_obj;
		map<string, string> new_list = static_cast<map <string, string> > (getErrors());
		json_obj = json_object_new();
		for (map<string, string>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			string obj = (*it).first;
			string obj2 = (*it).second;
			JsonNode* tempnode = json_from_string(obj2.c_str(),NULL);
			json_object_set_member(json_obj, obj.c_str(), tempnode);
		}
	node = json_node_alloc();
	json_node_init_object(node, json_obj);
	json_object_unref(json_obj);
	}

	const gchar *errorsKey = "errors";
	json_object_set_member(pJsonObject, errorsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Mvc.ValidationProblemDetails::getType()
{
	return type;
}

void
Mvc.ValidationProblemDetails::setType(std::string  type)
{
	this->type = type;
}

std::string
Mvc.ValidationProblemDetails::getTitle()
{
	return title;
}

void
Mvc.ValidationProblemDetails::setTitle(std::string  title)
{
	this->title = title;
}

int
Mvc.ValidationProblemDetails::getStatus()
{
	return status;
}

void
Mvc.ValidationProblemDetails::setStatus(int  status)
{
	this->status = status;
}

std::string
Mvc.ValidationProblemDetails::getDetail()
{
	return detail;
}

void
Mvc.ValidationProblemDetails::setDetail(std::string  detail)
{
	this->detail = detail;
}

std::string
Mvc.ValidationProblemDetails::getInstance()
{
	return instance;
}

void
Mvc.ValidationProblemDetails::setInstance(std::string  instance)
{
	this->instance = instance;
}

std::map<string, string>
Mvc.ValidationProblemDetails::getErrors()
{
	return errors;
}

void
Mvc.ValidationProblemDetails::setErrors(std::map <string, string> errors)
{
	this->errors = errors;
}


