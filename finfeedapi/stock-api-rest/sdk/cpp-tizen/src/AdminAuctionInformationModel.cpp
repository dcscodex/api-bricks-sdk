#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Admin.AuctionInformationModel.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Admin.AuctionInformationModel::Admin.AuctionInformationModel()
{
	//__init();
}

Admin.AuctionInformationModel::~Admin.AuctionInformationModel()
{
	//__cleanup();
}

void
Admin.AuctionInformationModel::__init()
{
	//symbol = std::string();
	//timestamp_nanos = long(0);
	//timestamp = null;
	//auction_type = int(0);
	//auction_type_code = std::string();
	//auction_type_text = std::string();
	//is_auction_type_opening = bool(false);
	//is_auction_type_closing = bool(false);
	//is_auction_type_ipo = bool(false);
	//is_auction_type_halt = bool(false);
	//is_auction_type_volatility = bool(false);
	//paired_shares = int(0);
	//reference_price = double(0);
	//indicative_clearing_price = double(0);
	//imbalance_shares = int(0);
	//imbalance_side = int(0);
	//imbalance_side_code = std::string();
	//imbalance_side_text = std::string();
	//is_imbalance_side_buy = bool(false);
	//is_imbalance_side_sell = bool(false);
	//is_imbalance_side_none = bool(false);
	//extension_number = int(0);
	//scheduled_auction_time_seconds = int(0);
	//scheduled_auction_time = null;
	//auction_book_clearing_price = double(0);
	//collar_reference_price = double(0);
	//lower_auction_collar = double(0);
	//upper_auction_collar = double(0);
}

void
Admin.AuctionInformationModel::__cleanup()
{
	//if(symbol != NULL) {
	//
	//delete symbol;
	//symbol = NULL;
	//}
	//if(timestamp_nanos != NULL) {
	//
	//delete timestamp_nanos;
	//timestamp_nanos = NULL;
	//}
	//if(timestamp != NULL) {
	//
	//delete timestamp;
	//timestamp = NULL;
	//}
	//if(auction_type != NULL) {
	//
	//delete auction_type;
	//auction_type = NULL;
	//}
	//if(auction_type_code != NULL) {
	//
	//delete auction_type_code;
	//auction_type_code = NULL;
	//}
	//if(auction_type_text != NULL) {
	//
	//delete auction_type_text;
	//auction_type_text = NULL;
	//}
	//if(is_auction_type_opening != NULL) {
	//
	//delete is_auction_type_opening;
	//is_auction_type_opening = NULL;
	//}
	//if(is_auction_type_closing != NULL) {
	//
	//delete is_auction_type_closing;
	//is_auction_type_closing = NULL;
	//}
	//if(is_auction_type_ipo != NULL) {
	//
	//delete is_auction_type_ipo;
	//is_auction_type_ipo = NULL;
	//}
	//if(is_auction_type_halt != NULL) {
	//
	//delete is_auction_type_halt;
	//is_auction_type_halt = NULL;
	//}
	//if(is_auction_type_volatility != NULL) {
	//
	//delete is_auction_type_volatility;
	//is_auction_type_volatility = NULL;
	//}
	//if(paired_shares != NULL) {
	//
	//delete paired_shares;
	//paired_shares = NULL;
	//}
	//if(reference_price != NULL) {
	//
	//delete reference_price;
	//reference_price = NULL;
	//}
	//if(indicative_clearing_price != NULL) {
	//
	//delete indicative_clearing_price;
	//indicative_clearing_price = NULL;
	//}
	//if(imbalance_shares != NULL) {
	//
	//delete imbalance_shares;
	//imbalance_shares = NULL;
	//}
	//if(imbalance_side != NULL) {
	//
	//delete imbalance_side;
	//imbalance_side = NULL;
	//}
	//if(imbalance_side_code != NULL) {
	//
	//delete imbalance_side_code;
	//imbalance_side_code = NULL;
	//}
	//if(imbalance_side_text != NULL) {
	//
	//delete imbalance_side_text;
	//imbalance_side_text = NULL;
	//}
	//if(is_imbalance_side_buy != NULL) {
	//
	//delete is_imbalance_side_buy;
	//is_imbalance_side_buy = NULL;
	//}
	//if(is_imbalance_side_sell != NULL) {
	//
	//delete is_imbalance_side_sell;
	//is_imbalance_side_sell = NULL;
	//}
	//if(is_imbalance_side_none != NULL) {
	//
	//delete is_imbalance_side_none;
	//is_imbalance_side_none = NULL;
	//}
	//if(extension_number != NULL) {
	//
	//delete extension_number;
	//extension_number = NULL;
	//}
	//if(scheduled_auction_time_seconds != NULL) {
	//
	//delete scheduled_auction_time_seconds;
	//scheduled_auction_time_seconds = NULL;
	//}
	//if(scheduled_auction_time != NULL) {
	//
	//delete scheduled_auction_time;
	//scheduled_auction_time = NULL;
	//}
	//if(auction_book_clearing_price != NULL) {
	//
	//delete auction_book_clearing_price;
	//auction_book_clearing_price = NULL;
	//}
	//if(collar_reference_price != NULL) {
	//
	//delete collar_reference_price;
	//collar_reference_price = NULL;
	//}
	//if(lower_auction_collar != NULL) {
	//
	//delete lower_auction_collar;
	//lower_auction_collar = NULL;
	//}
	//if(upper_auction_collar != NULL) {
	//
	//delete upper_auction_collar;
	//upper_auction_collar = NULL;
	//}
	//
}

void
Admin.AuctionInformationModel::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *symbolKey = "symbol";
	node = json_object_get_member(pJsonObject, symbolKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&symbol, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *timestamp_nanosKey = "timestamp_nanos";
	node = json_object_get_member(pJsonObject, timestamp_nanosKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&timestamp_nanos, node, "long long", "");
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
	const gchar *auction_typeKey = "auction_type";
	node = json_object_get_member(pJsonObject, auction_typeKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&auction_type, node, "int", "");
		} else {
			
		}
	}
	const gchar *auction_type_codeKey = "auction_type_code";
	node = json_object_get_member(pJsonObject, auction_type_codeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&auction_type_code, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *auction_type_textKey = "auction_type_text";
	node = json_object_get_member(pJsonObject, auction_type_textKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&auction_type_text, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *is_auction_type_openingKey = "is_auction_type_opening";
	node = json_object_get_member(pJsonObject, is_auction_type_openingKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_auction_type_opening, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_auction_type_closingKey = "is_auction_type_closing";
	node = json_object_get_member(pJsonObject, is_auction_type_closingKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_auction_type_closing, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_auction_type_ipoKey = "is_auction_type_ipo";
	node = json_object_get_member(pJsonObject, is_auction_type_ipoKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_auction_type_ipo, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_auction_type_haltKey = "is_auction_type_halt";
	node = json_object_get_member(pJsonObject, is_auction_type_haltKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_auction_type_halt, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_auction_type_volatilityKey = "is_auction_type_volatility";
	node = json_object_get_member(pJsonObject, is_auction_type_volatilityKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_auction_type_volatility, node, "bool", "");
		} else {
			
		}
	}
	const gchar *paired_sharesKey = "paired_shares";
	node = json_object_get_member(pJsonObject, paired_sharesKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&paired_shares, node, "int", "");
		} else {
			
		}
	}
	const gchar *reference_priceKey = "reference_price";
	node = json_object_get_member(pJsonObject, reference_priceKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&reference_price, node, "double", "");
		} else {
			
		}
	}
	const gchar *indicative_clearing_priceKey = "indicative_clearing_price";
	node = json_object_get_member(pJsonObject, indicative_clearing_priceKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&indicative_clearing_price, node, "double", "");
		} else {
			
		}
	}
	const gchar *imbalance_sharesKey = "imbalance_shares";
	node = json_object_get_member(pJsonObject, imbalance_sharesKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&imbalance_shares, node, "int", "");
		} else {
			
		}
	}
	const gchar *imbalance_sideKey = "imbalance_side";
	node = json_object_get_member(pJsonObject, imbalance_sideKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&imbalance_side, node, "int", "");
		} else {
			
		}
	}
	const gchar *imbalance_side_codeKey = "imbalance_side_code";
	node = json_object_get_member(pJsonObject, imbalance_side_codeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&imbalance_side_code, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *imbalance_side_textKey = "imbalance_side_text";
	node = json_object_get_member(pJsonObject, imbalance_side_textKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&imbalance_side_text, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *is_imbalance_side_buyKey = "is_imbalance_side_buy";
	node = json_object_get_member(pJsonObject, is_imbalance_side_buyKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_imbalance_side_buy, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_imbalance_side_sellKey = "is_imbalance_side_sell";
	node = json_object_get_member(pJsonObject, is_imbalance_side_sellKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_imbalance_side_sell, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_imbalance_side_noneKey = "is_imbalance_side_none";
	node = json_object_get_member(pJsonObject, is_imbalance_side_noneKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_imbalance_side_none, node, "bool", "");
		} else {
			
		}
	}
	const gchar *extension_numberKey = "extension_number";
	node = json_object_get_member(pJsonObject, extension_numberKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&extension_number, node, "int", "");
		} else {
			
		}
	}
	const gchar *scheduled_auction_time_secondsKey = "scheduled_auction_time_seconds";
	node = json_object_get_member(pJsonObject, scheduled_auction_time_secondsKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&scheduled_auction_time_seconds, node, "int", "");
		} else {
			
		}
	}
	const gchar *scheduled_auction_timeKey = "scheduled_auction_time";
	node = json_object_get_member(pJsonObject, scheduled_auction_timeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&scheduled_auction_time, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *auction_book_clearing_priceKey = "auction_book_clearing_price";
	node = json_object_get_member(pJsonObject, auction_book_clearing_priceKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&auction_book_clearing_price, node, "double", "");
		} else {
			
		}
	}
	const gchar *collar_reference_priceKey = "collar_reference_price";
	node = json_object_get_member(pJsonObject, collar_reference_priceKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&collar_reference_price, node, "double", "");
		} else {
			
		}
	}
	const gchar *lower_auction_collarKey = "lower_auction_collar";
	node = json_object_get_member(pJsonObject, lower_auction_collarKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&lower_auction_collar, node, "double", "");
		} else {
			
		}
	}
	const gchar *upper_auction_collarKey = "upper_auction_collar";
	node = json_object_get_member(pJsonObject, upper_auction_collarKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&upper_auction_collar, node, "double", "");
		} else {
			
		}
	}
}

Admin.AuctionInformationModel::Admin.AuctionInformationModel(char* json)
{
	this->fromJson(json);
}

char*
Admin.AuctionInformationModel::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getSymbol();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *symbolKey = "symbol";
	json_object_set_member(pJsonObject, symbolKey, node);
	if (isprimitive("long long")) {
		long long obj = getTimestampNanos();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
	}
	const gchar *timestamp_nanosKey = "timestamp_nanos";
	json_object_set_member(pJsonObject, timestamp_nanosKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTimestamp();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *timestampKey = "timestamp";
	json_object_set_member(pJsonObject, timestampKey, node);
	if (isprimitive("int")) {
		int obj = getAuctionType();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *auction_typeKey = "auction_type";
	json_object_set_member(pJsonObject, auction_typeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAuctionTypeCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *auction_type_codeKey = "auction_type_code";
	json_object_set_member(pJsonObject, auction_type_codeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAuctionTypeText();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *auction_type_textKey = "auction_type_text";
	json_object_set_member(pJsonObject, auction_type_textKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsAuctionTypeOpening();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_auction_type_openingKey = "is_auction_type_opening";
	json_object_set_member(pJsonObject, is_auction_type_openingKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsAuctionTypeClosing();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_auction_type_closingKey = "is_auction_type_closing";
	json_object_set_member(pJsonObject, is_auction_type_closingKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsAuctionTypeIpo();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_auction_type_ipoKey = "is_auction_type_ipo";
	json_object_set_member(pJsonObject, is_auction_type_ipoKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsAuctionTypeHalt();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_auction_type_haltKey = "is_auction_type_halt";
	json_object_set_member(pJsonObject, is_auction_type_haltKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsAuctionTypeVolatility();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_auction_type_volatilityKey = "is_auction_type_volatility";
	json_object_set_member(pJsonObject, is_auction_type_volatilityKey, node);
	if (isprimitive("int")) {
		int obj = getPairedShares();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *paired_sharesKey = "paired_shares";
	json_object_set_member(pJsonObject, paired_sharesKey, node);
	if (isprimitive("double")) {
		double obj = getReferencePrice();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *reference_priceKey = "reference_price";
	json_object_set_member(pJsonObject, reference_priceKey, node);
	if (isprimitive("double")) {
		double obj = getIndicativeClearingPrice();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *indicative_clearing_priceKey = "indicative_clearing_price";
	json_object_set_member(pJsonObject, indicative_clearing_priceKey, node);
	if (isprimitive("int")) {
		int obj = getImbalanceShares();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *imbalance_sharesKey = "imbalance_shares";
	json_object_set_member(pJsonObject, imbalance_sharesKey, node);
	if (isprimitive("int")) {
		int obj = getImbalanceSide();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *imbalance_sideKey = "imbalance_side";
	json_object_set_member(pJsonObject, imbalance_sideKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getImbalanceSideCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *imbalance_side_codeKey = "imbalance_side_code";
	json_object_set_member(pJsonObject, imbalance_side_codeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getImbalanceSideText();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *imbalance_side_textKey = "imbalance_side_text";
	json_object_set_member(pJsonObject, imbalance_side_textKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsImbalanceSideBuy();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_imbalance_side_buyKey = "is_imbalance_side_buy";
	json_object_set_member(pJsonObject, is_imbalance_side_buyKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsImbalanceSideSell();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_imbalance_side_sellKey = "is_imbalance_side_sell";
	json_object_set_member(pJsonObject, is_imbalance_side_sellKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsImbalanceSideNone();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_imbalance_side_noneKey = "is_imbalance_side_none";
	json_object_set_member(pJsonObject, is_imbalance_side_noneKey, node);
	if (isprimitive("int")) {
		int obj = getExtensionNumber();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *extension_numberKey = "extension_number";
	json_object_set_member(pJsonObject, extension_numberKey, node);
	if (isprimitive("int")) {
		int obj = getScheduledAuctionTimeSeconds();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *scheduled_auction_time_secondsKey = "scheduled_auction_time_seconds";
	json_object_set_member(pJsonObject, scheduled_auction_time_secondsKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getScheduledAuctionTime();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *scheduled_auction_timeKey = "scheduled_auction_time";
	json_object_set_member(pJsonObject, scheduled_auction_timeKey, node);
	if (isprimitive("double")) {
		double obj = getAuctionBookClearingPrice();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *auction_book_clearing_priceKey = "auction_book_clearing_price";
	json_object_set_member(pJsonObject, auction_book_clearing_priceKey, node);
	if (isprimitive("double")) {
		double obj = getCollarReferencePrice();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *collar_reference_priceKey = "collar_reference_price";
	json_object_set_member(pJsonObject, collar_reference_priceKey, node);
	if (isprimitive("double")) {
		double obj = getLowerAuctionCollar();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *lower_auction_collarKey = "lower_auction_collar";
	json_object_set_member(pJsonObject, lower_auction_collarKey, node);
	if (isprimitive("double")) {
		double obj = getUpperAuctionCollar();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *upper_auction_collarKey = "upper_auction_collar";
	json_object_set_member(pJsonObject, upper_auction_collarKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Admin.AuctionInformationModel::getSymbol()
{
	return symbol;
}

void
Admin.AuctionInformationModel::setSymbol(std::string  symbol)
{
	this->symbol = symbol;
}

long long
Admin.AuctionInformationModel::getTimestampNanos()
{
	return timestamp_nanos;
}

void
Admin.AuctionInformationModel::setTimestampNanos(long long  timestamp_nanos)
{
	this->timestamp_nanos = timestamp_nanos;
}

std::string
Admin.AuctionInformationModel::getTimestamp()
{
	return timestamp;
}

void
Admin.AuctionInformationModel::setTimestamp(std::string  timestamp)
{
	this->timestamp = timestamp;
}

int
Admin.AuctionInformationModel::getAuctionType()
{
	return auction_type;
}

void
Admin.AuctionInformationModel::setAuctionType(int  auction_type)
{
	this->auction_type = auction_type;
}

std::string
Admin.AuctionInformationModel::getAuctionTypeCode()
{
	return auction_type_code;
}

void
Admin.AuctionInformationModel::setAuctionTypeCode(std::string  auction_type_code)
{
	this->auction_type_code = auction_type_code;
}

std::string
Admin.AuctionInformationModel::getAuctionTypeText()
{
	return auction_type_text;
}

void
Admin.AuctionInformationModel::setAuctionTypeText(std::string  auction_type_text)
{
	this->auction_type_text = auction_type_text;
}

bool
Admin.AuctionInformationModel::getIsAuctionTypeOpening()
{
	return is_auction_type_opening;
}

void
Admin.AuctionInformationModel::setIsAuctionTypeOpening(bool  is_auction_type_opening)
{
	this->is_auction_type_opening = is_auction_type_opening;
}

bool
Admin.AuctionInformationModel::getIsAuctionTypeClosing()
{
	return is_auction_type_closing;
}

void
Admin.AuctionInformationModel::setIsAuctionTypeClosing(bool  is_auction_type_closing)
{
	this->is_auction_type_closing = is_auction_type_closing;
}

bool
Admin.AuctionInformationModel::getIsAuctionTypeIpo()
{
	return is_auction_type_ipo;
}

void
Admin.AuctionInformationModel::setIsAuctionTypeIpo(bool  is_auction_type_ipo)
{
	this->is_auction_type_ipo = is_auction_type_ipo;
}

bool
Admin.AuctionInformationModel::getIsAuctionTypeHalt()
{
	return is_auction_type_halt;
}

void
Admin.AuctionInformationModel::setIsAuctionTypeHalt(bool  is_auction_type_halt)
{
	this->is_auction_type_halt = is_auction_type_halt;
}

bool
Admin.AuctionInformationModel::getIsAuctionTypeVolatility()
{
	return is_auction_type_volatility;
}

void
Admin.AuctionInformationModel::setIsAuctionTypeVolatility(bool  is_auction_type_volatility)
{
	this->is_auction_type_volatility = is_auction_type_volatility;
}

int
Admin.AuctionInformationModel::getPairedShares()
{
	return paired_shares;
}

void
Admin.AuctionInformationModel::setPairedShares(int  paired_shares)
{
	this->paired_shares = paired_shares;
}

double
Admin.AuctionInformationModel::getReferencePrice()
{
	return reference_price;
}

void
Admin.AuctionInformationModel::setReferencePrice(double  reference_price)
{
	this->reference_price = reference_price;
}

double
Admin.AuctionInformationModel::getIndicativeClearingPrice()
{
	return indicative_clearing_price;
}

void
Admin.AuctionInformationModel::setIndicativeClearingPrice(double  indicative_clearing_price)
{
	this->indicative_clearing_price = indicative_clearing_price;
}

int
Admin.AuctionInformationModel::getImbalanceShares()
{
	return imbalance_shares;
}

void
Admin.AuctionInformationModel::setImbalanceShares(int  imbalance_shares)
{
	this->imbalance_shares = imbalance_shares;
}

int
Admin.AuctionInformationModel::getImbalanceSide()
{
	return imbalance_side;
}

void
Admin.AuctionInformationModel::setImbalanceSide(int  imbalance_side)
{
	this->imbalance_side = imbalance_side;
}

std::string
Admin.AuctionInformationModel::getImbalanceSideCode()
{
	return imbalance_side_code;
}

void
Admin.AuctionInformationModel::setImbalanceSideCode(std::string  imbalance_side_code)
{
	this->imbalance_side_code = imbalance_side_code;
}

std::string
Admin.AuctionInformationModel::getImbalanceSideText()
{
	return imbalance_side_text;
}

void
Admin.AuctionInformationModel::setImbalanceSideText(std::string  imbalance_side_text)
{
	this->imbalance_side_text = imbalance_side_text;
}

bool
Admin.AuctionInformationModel::getIsImbalanceSideBuy()
{
	return is_imbalance_side_buy;
}

void
Admin.AuctionInformationModel::setIsImbalanceSideBuy(bool  is_imbalance_side_buy)
{
	this->is_imbalance_side_buy = is_imbalance_side_buy;
}

bool
Admin.AuctionInformationModel::getIsImbalanceSideSell()
{
	return is_imbalance_side_sell;
}

void
Admin.AuctionInformationModel::setIsImbalanceSideSell(bool  is_imbalance_side_sell)
{
	this->is_imbalance_side_sell = is_imbalance_side_sell;
}

bool
Admin.AuctionInformationModel::getIsImbalanceSideNone()
{
	return is_imbalance_side_none;
}

void
Admin.AuctionInformationModel::setIsImbalanceSideNone(bool  is_imbalance_side_none)
{
	this->is_imbalance_side_none = is_imbalance_side_none;
}

int
Admin.AuctionInformationModel::getExtensionNumber()
{
	return extension_number;
}

void
Admin.AuctionInformationModel::setExtensionNumber(int  extension_number)
{
	this->extension_number = extension_number;
}

int
Admin.AuctionInformationModel::getScheduledAuctionTimeSeconds()
{
	return scheduled_auction_time_seconds;
}

void
Admin.AuctionInformationModel::setScheduledAuctionTimeSeconds(int  scheduled_auction_time_seconds)
{
	this->scheduled_auction_time_seconds = scheduled_auction_time_seconds;
}

std::string
Admin.AuctionInformationModel::getScheduledAuctionTime()
{
	return scheduled_auction_time;
}

void
Admin.AuctionInformationModel::setScheduledAuctionTime(std::string  scheduled_auction_time)
{
	this->scheduled_auction_time = scheduled_auction_time;
}

double
Admin.AuctionInformationModel::getAuctionBookClearingPrice()
{
	return auction_book_clearing_price;
}

void
Admin.AuctionInformationModel::setAuctionBookClearingPrice(double  auction_book_clearing_price)
{
	this->auction_book_clearing_price = auction_book_clearing_price;
}

double
Admin.AuctionInformationModel::getCollarReferencePrice()
{
	return collar_reference_price;
}

void
Admin.AuctionInformationModel::setCollarReferencePrice(double  collar_reference_price)
{
	this->collar_reference_price = collar_reference_price;
}

double
Admin.AuctionInformationModel::getLowerAuctionCollar()
{
	return lower_auction_collar;
}

void
Admin.AuctionInformationModel::setLowerAuctionCollar(double  lower_auction_collar)
{
	this->lower_auction_collar = lower_auction_collar;
}

double
Admin.AuctionInformationModel::getUpperAuctionCollar()
{
	return upper_auction_collar;
}

void
Admin.AuctionInformationModel::setUpperAuctionCollar(double  upper_auction_collar)
{
	this->upper_auction_collar = upper_auction_collar;
}


