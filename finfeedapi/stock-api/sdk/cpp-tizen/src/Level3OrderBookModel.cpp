#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Level3.OrderBookModel.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Level3.OrderBookModel::Level3.OrderBookModel()
{
	//__init();
}

Level3.OrderBookModel::~Level3.OrderBookModel()
{
	//__cleanup();
}

void
Level3.OrderBookModel::__init()
{
	//add_order = new Level3.AddOrderModel();
	//delete_order = new Level3.DeleteOrderModel();
	//modify_order = new Level3.ModifyOrderModel();
	//executed_order = new Level3.ExecutedOrderModel();
	//clear_book = new Level3.ClearBookModel();
}

void
Level3.OrderBookModel::__cleanup()
{
	//if(add_order != NULL) {
	//
	//delete add_order;
	//add_order = NULL;
	//}
	//if(delete_order != NULL) {
	//
	//delete delete_order;
	//delete_order = NULL;
	//}
	//if(modify_order != NULL) {
	//
	//delete modify_order;
	//modify_order = NULL;
	//}
	//if(executed_order != NULL) {
	//
	//delete executed_order;
	//executed_order = NULL;
	//}
	//if(clear_book != NULL) {
	//
	//delete clear_book;
	//clear_book = NULL;
	//}
	//
}

void
Level3.OrderBookModel::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *add_orderKey = "add_order";
	node = json_object_get_member(pJsonObject, add_orderKey);
	if (node !=NULL) {
	

		if (isprimitive("Level3.AddOrderModel")) {
			jsonToValue(&add_order, node, "Level3.AddOrderModel", "Level3.AddOrderModel");
		} else {
			
			Level3.AddOrderModel* obj = static_cast<Level3.AddOrderModel*> (&add_order);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *delete_orderKey = "delete_order";
	node = json_object_get_member(pJsonObject, delete_orderKey);
	if (node !=NULL) {
	

		if (isprimitive("Level3.DeleteOrderModel")) {
			jsonToValue(&delete_order, node, "Level3.DeleteOrderModel", "Level3.DeleteOrderModel");
		} else {
			
			Level3.DeleteOrderModel* obj = static_cast<Level3.DeleteOrderModel*> (&delete_order);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *modify_orderKey = "modify_order";
	node = json_object_get_member(pJsonObject, modify_orderKey);
	if (node !=NULL) {
	

		if (isprimitive("Level3.ModifyOrderModel")) {
			jsonToValue(&modify_order, node, "Level3.ModifyOrderModel", "Level3.ModifyOrderModel");
		} else {
			
			Level3.ModifyOrderModel* obj = static_cast<Level3.ModifyOrderModel*> (&modify_order);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *executed_orderKey = "executed_order";
	node = json_object_get_member(pJsonObject, executed_orderKey);
	if (node !=NULL) {
	

		if (isprimitive("Level3.ExecutedOrderModel")) {
			jsonToValue(&executed_order, node, "Level3.ExecutedOrderModel", "Level3.ExecutedOrderModel");
		} else {
			
			Level3.ExecutedOrderModel* obj = static_cast<Level3.ExecutedOrderModel*> (&executed_order);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *clear_bookKey = "clear_book";
	node = json_object_get_member(pJsonObject, clear_bookKey);
	if (node !=NULL) {
	

		if (isprimitive("Level3.ClearBookModel")) {
			jsonToValue(&clear_book, node, "Level3.ClearBookModel", "Level3.ClearBookModel");
		} else {
			
			Level3.ClearBookModel* obj = static_cast<Level3.ClearBookModel*> (&clear_book);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

Level3.OrderBookModel::Level3.OrderBookModel(char* json)
{
	this->fromJson(json);
}

char*
Level3.OrderBookModel::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("Level3.AddOrderModel")) {
		Level3.AddOrderModel obj = getAddOrder();
		node = converttoJson(&obj, "Level3.AddOrderModel", "");
	}
	else {
		
		Level3.AddOrderModel obj = static_cast<Level3.AddOrderModel> (getAddOrder());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *add_orderKey = "add_order";
	json_object_set_member(pJsonObject, add_orderKey, node);
	if (isprimitive("Level3.DeleteOrderModel")) {
		Level3.DeleteOrderModel obj = getDeleteOrder();
		node = converttoJson(&obj, "Level3.DeleteOrderModel", "");
	}
	else {
		
		Level3.DeleteOrderModel obj = static_cast<Level3.DeleteOrderModel> (getDeleteOrder());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *delete_orderKey = "delete_order";
	json_object_set_member(pJsonObject, delete_orderKey, node);
	if (isprimitive("Level3.ModifyOrderModel")) {
		Level3.ModifyOrderModel obj = getModifyOrder();
		node = converttoJson(&obj, "Level3.ModifyOrderModel", "");
	}
	else {
		
		Level3.ModifyOrderModel obj = static_cast<Level3.ModifyOrderModel> (getModifyOrder());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *modify_orderKey = "modify_order";
	json_object_set_member(pJsonObject, modify_orderKey, node);
	if (isprimitive("Level3.ExecutedOrderModel")) {
		Level3.ExecutedOrderModel obj = getExecutedOrder();
		node = converttoJson(&obj, "Level3.ExecutedOrderModel", "");
	}
	else {
		
		Level3.ExecutedOrderModel obj = static_cast<Level3.ExecutedOrderModel> (getExecutedOrder());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *executed_orderKey = "executed_order";
	json_object_set_member(pJsonObject, executed_orderKey, node);
	if (isprimitive("Level3.ClearBookModel")) {
		Level3.ClearBookModel obj = getClearBook();
		node = converttoJson(&obj, "Level3.ClearBookModel", "");
	}
	else {
		
		Level3.ClearBookModel obj = static_cast<Level3.ClearBookModel> (getClearBook());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *clear_bookKey = "clear_book";
	json_object_set_member(pJsonObject, clear_bookKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

Level3.AddOrderModel
Level3.OrderBookModel::getAddOrder()
{
	return add_order;
}

void
Level3.OrderBookModel::setAddOrder(Level3.AddOrderModel  add_order)
{
	this->add_order = add_order;
}

Level3.DeleteOrderModel
Level3.OrderBookModel::getDeleteOrder()
{
	return delete_order;
}

void
Level3.OrderBookModel::setDeleteOrder(Level3.DeleteOrderModel  delete_order)
{
	this->delete_order = delete_order;
}

Level3.ModifyOrderModel
Level3.OrderBookModel::getModifyOrder()
{
	return modify_order;
}

void
Level3.OrderBookModel::setModifyOrder(Level3.ModifyOrderModel  modify_order)
{
	this->modify_order = modify_order;
}

Level3.ExecutedOrderModel
Level3.OrderBookModel::getExecutedOrder()
{
	return executed_order;
}

void
Level3.OrderBookModel::setExecutedOrder(Level3.ExecutedOrderModel  executed_order)
{
	this->executed_order = executed_order;
}

Level3.ClearBookModel
Level3.OrderBookModel::getClearBook()
{
	return clear_book;
}

void
Level3.OrderBookModel::setClearBook(Level3.ClearBookModel  clear_book)
{
	this->clear_book = clear_book;
}


