#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Admin.AdminMessageModel.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Admin.AdminMessageModel::Admin.AdminMessageModel()
{
	//__init();
}

Admin.AdminMessageModel::~Admin.AdminMessageModel()
{
	//__cleanup();
}

void
Admin.AdminMessageModel::__init()
{
	//trading_status = new Admin.TradingStatusModel();
	//official_price = new Admin.OfficialPriceModel();
	//security_event = new Admin.SecurityEventModel();
	//auction_information = new Admin.AuctionInformationModel();
	//short_sale_price_test = new Admin.ShortSalePriceTestStatusModel();
	//operational_halt_status = new Admin.OperationalHaltStatusModel();
	//retail_liquidity_indicator = new Admin.RetailLiquidityIndicatorModel();
	//system_event = new Admin.SystemEventModel();
	//security_directory = new Admin.SecurityDirectoryModel();
}

void
Admin.AdminMessageModel::__cleanup()
{
	//if(trading_status != NULL) {
	//
	//delete trading_status;
	//trading_status = NULL;
	//}
	//if(official_price != NULL) {
	//
	//delete official_price;
	//official_price = NULL;
	//}
	//if(security_event != NULL) {
	//
	//delete security_event;
	//security_event = NULL;
	//}
	//if(auction_information != NULL) {
	//
	//delete auction_information;
	//auction_information = NULL;
	//}
	//if(short_sale_price_test != NULL) {
	//
	//delete short_sale_price_test;
	//short_sale_price_test = NULL;
	//}
	//if(operational_halt_status != NULL) {
	//
	//delete operational_halt_status;
	//operational_halt_status = NULL;
	//}
	//if(retail_liquidity_indicator != NULL) {
	//
	//delete retail_liquidity_indicator;
	//retail_liquidity_indicator = NULL;
	//}
	//if(system_event != NULL) {
	//
	//delete system_event;
	//system_event = NULL;
	//}
	//if(security_directory != NULL) {
	//
	//delete security_directory;
	//security_directory = NULL;
	//}
	//
}

void
Admin.AdminMessageModel::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *trading_statusKey = "trading_status";
	node = json_object_get_member(pJsonObject, trading_statusKey);
	if (node !=NULL) {
	

		if (isprimitive("Admin.TradingStatusModel")) {
			jsonToValue(&trading_status, node, "Admin.TradingStatusModel", "Admin.TradingStatusModel");
		} else {
			
			Admin.TradingStatusModel* obj = static_cast<Admin.TradingStatusModel*> (&trading_status);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *official_priceKey = "official_price";
	node = json_object_get_member(pJsonObject, official_priceKey);
	if (node !=NULL) {
	

		if (isprimitive("Admin.OfficialPriceModel")) {
			jsonToValue(&official_price, node, "Admin.OfficialPriceModel", "Admin.OfficialPriceModel");
		} else {
			
			Admin.OfficialPriceModel* obj = static_cast<Admin.OfficialPriceModel*> (&official_price);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *security_eventKey = "security_event";
	node = json_object_get_member(pJsonObject, security_eventKey);
	if (node !=NULL) {
	

		if (isprimitive("Admin.SecurityEventModel")) {
			jsonToValue(&security_event, node, "Admin.SecurityEventModel", "Admin.SecurityEventModel");
		} else {
			
			Admin.SecurityEventModel* obj = static_cast<Admin.SecurityEventModel*> (&security_event);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *auction_informationKey = "auction_information";
	node = json_object_get_member(pJsonObject, auction_informationKey);
	if (node !=NULL) {
	

		if (isprimitive("Admin.AuctionInformationModel")) {
			jsonToValue(&auction_information, node, "Admin.AuctionInformationModel", "Admin.AuctionInformationModel");
		} else {
			
			Admin.AuctionInformationModel* obj = static_cast<Admin.AuctionInformationModel*> (&auction_information);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *short_sale_price_testKey = "short_sale_price_test";
	node = json_object_get_member(pJsonObject, short_sale_price_testKey);
	if (node !=NULL) {
	

		if (isprimitive("Admin.ShortSalePriceTestStatusModel")) {
			jsonToValue(&short_sale_price_test, node, "Admin.ShortSalePriceTestStatusModel", "Admin.ShortSalePriceTestStatusModel");
		} else {
			
			Admin.ShortSalePriceTestStatusModel* obj = static_cast<Admin.ShortSalePriceTestStatusModel*> (&short_sale_price_test);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *operational_halt_statusKey = "operational_halt_status";
	node = json_object_get_member(pJsonObject, operational_halt_statusKey);
	if (node !=NULL) {
	

		if (isprimitive("Admin.OperationalHaltStatusModel")) {
			jsonToValue(&operational_halt_status, node, "Admin.OperationalHaltStatusModel", "Admin.OperationalHaltStatusModel");
		} else {
			
			Admin.OperationalHaltStatusModel* obj = static_cast<Admin.OperationalHaltStatusModel*> (&operational_halt_status);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *retail_liquidity_indicatorKey = "retail_liquidity_indicator";
	node = json_object_get_member(pJsonObject, retail_liquidity_indicatorKey);
	if (node !=NULL) {
	

		if (isprimitive("Admin.RetailLiquidityIndicatorModel")) {
			jsonToValue(&retail_liquidity_indicator, node, "Admin.RetailLiquidityIndicatorModel", "Admin.RetailLiquidityIndicatorModel");
		} else {
			
			Admin.RetailLiquidityIndicatorModel* obj = static_cast<Admin.RetailLiquidityIndicatorModel*> (&retail_liquidity_indicator);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *system_eventKey = "system_event";
	node = json_object_get_member(pJsonObject, system_eventKey);
	if (node !=NULL) {
	

		if (isprimitive("Admin.SystemEventModel")) {
			jsonToValue(&system_event, node, "Admin.SystemEventModel", "Admin.SystemEventModel");
		} else {
			
			Admin.SystemEventModel* obj = static_cast<Admin.SystemEventModel*> (&system_event);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *security_directoryKey = "security_directory";
	node = json_object_get_member(pJsonObject, security_directoryKey);
	if (node !=NULL) {
	

		if (isprimitive("Admin.SecurityDirectoryModel")) {
			jsonToValue(&security_directory, node, "Admin.SecurityDirectoryModel", "Admin.SecurityDirectoryModel");
		} else {
			
			Admin.SecurityDirectoryModel* obj = static_cast<Admin.SecurityDirectoryModel*> (&security_directory);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

Admin.AdminMessageModel::Admin.AdminMessageModel(char* json)
{
	this->fromJson(json);
}

char*
Admin.AdminMessageModel::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("Admin.TradingStatusModel")) {
		Admin.TradingStatusModel obj = getTradingStatus();
		node = converttoJson(&obj, "Admin.TradingStatusModel", "");
	}
	else {
		
		Admin.TradingStatusModel obj = static_cast<Admin.TradingStatusModel> (getTradingStatus());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *trading_statusKey = "trading_status";
	json_object_set_member(pJsonObject, trading_statusKey, node);
	if (isprimitive("Admin.OfficialPriceModel")) {
		Admin.OfficialPriceModel obj = getOfficialPrice();
		node = converttoJson(&obj, "Admin.OfficialPriceModel", "");
	}
	else {
		
		Admin.OfficialPriceModel obj = static_cast<Admin.OfficialPriceModel> (getOfficialPrice());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *official_priceKey = "official_price";
	json_object_set_member(pJsonObject, official_priceKey, node);
	if (isprimitive("Admin.SecurityEventModel")) {
		Admin.SecurityEventModel obj = getSecurityEvent();
		node = converttoJson(&obj, "Admin.SecurityEventModel", "");
	}
	else {
		
		Admin.SecurityEventModel obj = static_cast<Admin.SecurityEventModel> (getSecurityEvent());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *security_eventKey = "security_event";
	json_object_set_member(pJsonObject, security_eventKey, node);
	if (isprimitive("Admin.AuctionInformationModel")) {
		Admin.AuctionInformationModel obj = getAuctionInformation();
		node = converttoJson(&obj, "Admin.AuctionInformationModel", "");
	}
	else {
		
		Admin.AuctionInformationModel obj = static_cast<Admin.AuctionInformationModel> (getAuctionInformation());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *auction_informationKey = "auction_information";
	json_object_set_member(pJsonObject, auction_informationKey, node);
	if (isprimitive("Admin.ShortSalePriceTestStatusModel")) {
		Admin.ShortSalePriceTestStatusModel obj = getShortSalePriceTest();
		node = converttoJson(&obj, "Admin.ShortSalePriceTestStatusModel", "");
	}
	else {
		
		Admin.ShortSalePriceTestStatusModel obj = static_cast<Admin.ShortSalePriceTestStatusModel> (getShortSalePriceTest());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *short_sale_price_testKey = "short_sale_price_test";
	json_object_set_member(pJsonObject, short_sale_price_testKey, node);
	if (isprimitive("Admin.OperationalHaltStatusModel")) {
		Admin.OperationalHaltStatusModel obj = getOperationalHaltStatus();
		node = converttoJson(&obj, "Admin.OperationalHaltStatusModel", "");
	}
	else {
		
		Admin.OperationalHaltStatusModel obj = static_cast<Admin.OperationalHaltStatusModel> (getOperationalHaltStatus());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *operational_halt_statusKey = "operational_halt_status";
	json_object_set_member(pJsonObject, operational_halt_statusKey, node);
	if (isprimitive("Admin.RetailLiquidityIndicatorModel")) {
		Admin.RetailLiquidityIndicatorModel obj = getRetailLiquidityIndicator();
		node = converttoJson(&obj, "Admin.RetailLiquidityIndicatorModel", "");
	}
	else {
		
		Admin.RetailLiquidityIndicatorModel obj = static_cast<Admin.RetailLiquidityIndicatorModel> (getRetailLiquidityIndicator());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *retail_liquidity_indicatorKey = "retail_liquidity_indicator";
	json_object_set_member(pJsonObject, retail_liquidity_indicatorKey, node);
	if (isprimitive("Admin.SystemEventModel")) {
		Admin.SystemEventModel obj = getSystemEvent();
		node = converttoJson(&obj, "Admin.SystemEventModel", "");
	}
	else {
		
		Admin.SystemEventModel obj = static_cast<Admin.SystemEventModel> (getSystemEvent());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *system_eventKey = "system_event";
	json_object_set_member(pJsonObject, system_eventKey, node);
	if (isprimitive("Admin.SecurityDirectoryModel")) {
		Admin.SecurityDirectoryModel obj = getSecurityDirectory();
		node = converttoJson(&obj, "Admin.SecurityDirectoryModel", "");
	}
	else {
		
		Admin.SecurityDirectoryModel obj = static_cast<Admin.SecurityDirectoryModel> (getSecurityDirectory());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *security_directoryKey = "security_directory";
	json_object_set_member(pJsonObject, security_directoryKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

Admin.TradingStatusModel
Admin.AdminMessageModel::getTradingStatus()
{
	return trading_status;
}

void
Admin.AdminMessageModel::setTradingStatus(Admin.TradingStatusModel  trading_status)
{
	this->trading_status = trading_status;
}

Admin.OfficialPriceModel
Admin.AdminMessageModel::getOfficialPrice()
{
	return official_price;
}

void
Admin.AdminMessageModel::setOfficialPrice(Admin.OfficialPriceModel  official_price)
{
	this->official_price = official_price;
}

Admin.SecurityEventModel
Admin.AdminMessageModel::getSecurityEvent()
{
	return security_event;
}

void
Admin.AdminMessageModel::setSecurityEvent(Admin.SecurityEventModel  security_event)
{
	this->security_event = security_event;
}

Admin.AuctionInformationModel
Admin.AdminMessageModel::getAuctionInformation()
{
	return auction_information;
}

void
Admin.AdminMessageModel::setAuctionInformation(Admin.AuctionInformationModel  auction_information)
{
	this->auction_information = auction_information;
}

Admin.ShortSalePriceTestStatusModel
Admin.AdminMessageModel::getShortSalePriceTest()
{
	return short_sale_price_test;
}

void
Admin.AdminMessageModel::setShortSalePriceTest(Admin.ShortSalePriceTestStatusModel  short_sale_price_test)
{
	this->short_sale_price_test = short_sale_price_test;
}

Admin.OperationalHaltStatusModel
Admin.AdminMessageModel::getOperationalHaltStatus()
{
	return operational_halt_status;
}

void
Admin.AdminMessageModel::setOperationalHaltStatus(Admin.OperationalHaltStatusModel  operational_halt_status)
{
	this->operational_halt_status = operational_halt_status;
}

Admin.RetailLiquidityIndicatorModel
Admin.AdminMessageModel::getRetailLiquidityIndicator()
{
	return retail_liquidity_indicator;
}

void
Admin.AdminMessageModel::setRetailLiquidityIndicator(Admin.RetailLiquidityIndicatorModel  retail_liquidity_indicator)
{
	this->retail_liquidity_indicator = retail_liquidity_indicator;
}

Admin.SystemEventModel
Admin.AdminMessageModel::getSystemEvent()
{
	return system_event;
}

void
Admin.AdminMessageModel::setSystemEvent(Admin.SystemEventModel  system_event)
{
	this->system_event = system_event;
}

Admin.SecurityDirectoryModel
Admin.AdminMessageModel::getSecurityDirectory()
{
	return security_directory;
}

void
Admin.AdminMessageModel::setSecurityDirectory(Admin.SecurityDirectoryModel  security_directory)
{
	this->security_directory = security_directory;
}


