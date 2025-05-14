#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Admin.TradingStatusModel.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Admin.TradingStatusModel::Admin.TradingStatusModel()
{
	//__init();
}

Admin.TradingStatusModel::~Admin.TradingStatusModel()
{
	//__cleanup();
}

void
Admin.TradingStatusModel::__init()
{
	//symbol = std::string();
	//timestamp_nanos = long(0);
	//timestamp = null;
	//is_trading_live = bool(false);
	//is_trading_halted = bool(false);
	//is_trading_in_order_acceptance_period = bool(false);
	//is_trading_paused = bool(false);
	//is_reason_halt_news_pending = bool(false);
	//is_reason_ipo_not_yet_trading = bool(false);
	//is_reason_ipo_deferred = bool(false);
	//is_reason_halt_news_dissemination = bool(false);
	//is_reason_ipo_order_acceptance_period = bool(false);
	//is_reason_ipo_pre_launch_period = bool(false);
	//is_reason_market_wide_circuit_breaker_level1 = bool(false);
	//is_reason_market_wide_circuit_breaker_level2 = bool(false);
	//is_reason_market_wide_circuit_breaker_level3 = bool(false);
	//is_reason_not_applicable = bool(false);
	//is_reason_not_available = bool(false);
}

void
Admin.TradingStatusModel::__cleanup()
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
	//if(is_trading_live != NULL) {
	//
	//delete is_trading_live;
	//is_trading_live = NULL;
	//}
	//if(is_trading_halted != NULL) {
	//
	//delete is_trading_halted;
	//is_trading_halted = NULL;
	//}
	//if(is_trading_in_order_acceptance_period != NULL) {
	//
	//delete is_trading_in_order_acceptance_period;
	//is_trading_in_order_acceptance_period = NULL;
	//}
	//if(is_trading_paused != NULL) {
	//
	//delete is_trading_paused;
	//is_trading_paused = NULL;
	//}
	//if(is_reason_halt_news_pending != NULL) {
	//
	//delete is_reason_halt_news_pending;
	//is_reason_halt_news_pending = NULL;
	//}
	//if(is_reason_ipo_not_yet_trading != NULL) {
	//
	//delete is_reason_ipo_not_yet_trading;
	//is_reason_ipo_not_yet_trading = NULL;
	//}
	//if(is_reason_ipo_deferred != NULL) {
	//
	//delete is_reason_ipo_deferred;
	//is_reason_ipo_deferred = NULL;
	//}
	//if(is_reason_halt_news_dissemination != NULL) {
	//
	//delete is_reason_halt_news_dissemination;
	//is_reason_halt_news_dissemination = NULL;
	//}
	//if(is_reason_ipo_order_acceptance_period != NULL) {
	//
	//delete is_reason_ipo_order_acceptance_period;
	//is_reason_ipo_order_acceptance_period = NULL;
	//}
	//if(is_reason_ipo_pre_launch_period != NULL) {
	//
	//delete is_reason_ipo_pre_launch_period;
	//is_reason_ipo_pre_launch_period = NULL;
	//}
	//if(is_reason_market_wide_circuit_breaker_level1 != NULL) {
	//
	//delete is_reason_market_wide_circuit_breaker_level1;
	//is_reason_market_wide_circuit_breaker_level1 = NULL;
	//}
	//if(is_reason_market_wide_circuit_breaker_level2 != NULL) {
	//
	//delete is_reason_market_wide_circuit_breaker_level2;
	//is_reason_market_wide_circuit_breaker_level2 = NULL;
	//}
	//if(is_reason_market_wide_circuit_breaker_level3 != NULL) {
	//
	//delete is_reason_market_wide_circuit_breaker_level3;
	//is_reason_market_wide_circuit_breaker_level3 = NULL;
	//}
	//if(is_reason_not_applicable != NULL) {
	//
	//delete is_reason_not_applicable;
	//is_reason_not_applicable = NULL;
	//}
	//if(is_reason_not_available != NULL) {
	//
	//delete is_reason_not_available;
	//is_reason_not_available = NULL;
	//}
	//
}

void
Admin.TradingStatusModel::fromJson(char* jsonStr)
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
	const gchar *is_trading_liveKey = "is_trading_live";
	node = json_object_get_member(pJsonObject, is_trading_liveKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_trading_live, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_trading_haltedKey = "is_trading_halted";
	node = json_object_get_member(pJsonObject, is_trading_haltedKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_trading_halted, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_trading_in_order_acceptance_periodKey = "is_trading_in_order_acceptance_period";
	node = json_object_get_member(pJsonObject, is_trading_in_order_acceptance_periodKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_trading_in_order_acceptance_period, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_trading_pausedKey = "is_trading_paused";
	node = json_object_get_member(pJsonObject, is_trading_pausedKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_trading_paused, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_reason_halt_news_pendingKey = "is_reason_halt_news_pending";
	node = json_object_get_member(pJsonObject, is_reason_halt_news_pendingKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_reason_halt_news_pending, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_reason_ipo_not_yet_tradingKey = "is_reason_ipo_not_yet_trading";
	node = json_object_get_member(pJsonObject, is_reason_ipo_not_yet_tradingKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_reason_ipo_not_yet_trading, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_reason_ipo_deferredKey = "is_reason_ipo_deferred";
	node = json_object_get_member(pJsonObject, is_reason_ipo_deferredKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_reason_ipo_deferred, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_reason_halt_news_disseminationKey = "is_reason_halt_news_dissemination";
	node = json_object_get_member(pJsonObject, is_reason_halt_news_disseminationKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_reason_halt_news_dissemination, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_reason_ipo_order_acceptance_periodKey = "is_reason_ipo_order_acceptance_period";
	node = json_object_get_member(pJsonObject, is_reason_ipo_order_acceptance_periodKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_reason_ipo_order_acceptance_period, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_reason_ipo_pre_launch_periodKey = "is_reason_ipo_pre_launch_period";
	node = json_object_get_member(pJsonObject, is_reason_ipo_pre_launch_periodKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_reason_ipo_pre_launch_period, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_reason_market_wide_circuit_breaker_level1Key = "is_reason_market_wide_circuit_breaker_level1";
	node = json_object_get_member(pJsonObject, is_reason_market_wide_circuit_breaker_level1Key);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_reason_market_wide_circuit_breaker_level1, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_reason_market_wide_circuit_breaker_level2Key = "is_reason_market_wide_circuit_breaker_level2";
	node = json_object_get_member(pJsonObject, is_reason_market_wide_circuit_breaker_level2Key);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_reason_market_wide_circuit_breaker_level2, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_reason_market_wide_circuit_breaker_level3Key = "is_reason_market_wide_circuit_breaker_level3";
	node = json_object_get_member(pJsonObject, is_reason_market_wide_circuit_breaker_level3Key);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_reason_market_wide_circuit_breaker_level3, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_reason_not_applicableKey = "is_reason_not_applicable";
	node = json_object_get_member(pJsonObject, is_reason_not_applicableKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_reason_not_applicable, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_reason_not_availableKey = "is_reason_not_available";
	node = json_object_get_member(pJsonObject, is_reason_not_availableKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_reason_not_available, node, "bool", "");
		} else {
			
		}
	}
}

Admin.TradingStatusModel::Admin.TradingStatusModel(char* json)
{
	this->fromJson(json);
}

char*
Admin.TradingStatusModel::toJson()
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
	if (isprimitive("bool")) {
		bool obj = getIsTradingLive();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_trading_liveKey = "is_trading_live";
	json_object_set_member(pJsonObject, is_trading_liveKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsTradingHalted();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_trading_haltedKey = "is_trading_halted";
	json_object_set_member(pJsonObject, is_trading_haltedKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsTradingInOrderAcceptancePeriod();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_trading_in_order_acceptance_periodKey = "is_trading_in_order_acceptance_period";
	json_object_set_member(pJsonObject, is_trading_in_order_acceptance_periodKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsTradingPaused();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_trading_pausedKey = "is_trading_paused";
	json_object_set_member(pJsonObject, is_trading_pausedKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsReasonHaltNewsPending();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_reason_halt_news_pendingKey = "is_reason_halt_news_pending";
	json_object_set_member(pJsonObject, is_reason_halt_news_pendingKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsReasonIpoNotYetTrading();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_reason_ipo_not_yet_tradingKey = "is_reason_ipo_not_yet_trading";
	json_object_set_member(pJsonObject, is_reason_ipo_not_yet_tradingKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsReasonIpoDeferred();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_reason_ipo_deferredKey = "is_reason_ipo_deferred";
	json_object_set_member(pJsonObject, is_reason_ipo_deferredKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsReasonHaltNewsDissemination();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_reason_halt_news_disseminationKey = "is_reason_halt_news_dissemination";
	json_object_set_member(pJsonObject, is_reason_halt_news_disseminationKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsReasonIpoOrderAcceptancePeriod();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_reason_ipo_order_acceptance_periodKey = "is_reason_ipo_order_acceptance_period";
	json_object_set_member(pJsonObject, is_reason_ipo_order_acceptance_periodKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsReasonIpoPreLaunchPeriod();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_reason_ipo_pre_launch_periodKey = "is_reason_ipo_pre_launch_period";
	json_object_set_member(pJsonObject, is_reason_ipo_pre_launch_periodKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsReasonMarketWideCircuitBreakerLevel1();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_reason_market_wide_circuit_breaker_level1Key = "is_reason_market_wide_circuit_breaker_level1";
	json_object_set_member(pJsonObject, is_reason_market_wide_circuit_breaker_level1Key, node);
	if (isprimitive("bool")) {
		bool obj = getIsReasonMarketWideCircuitBreakerLevel2();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_reason_market_wide_circuit_breaker_level2Key = "is_reason_market_wide_circuit_breaker_level2";
	json_object_set_member(pJsonObject, is_reason_market_wide_circuit_breaker_level2Key, node);
	if (isprimitive("bool")) {
		bool obj = getIsReasonMarketWideCircuitBreakerLevel3();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_reason_market_wide_circuit_breaker_level3Key = "is_reason_market_wide_circuit_breaker_level3";
	json_object_set_member(pJsonObject, is_reason_market_wide_circuit_breaker_level3Key, node);
	if (isprimitive("bool")) {
		bool obj = getIsReasonNotApplicable();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_reason_not_applicableKey = "is_reason_not_applicable";
	json_object_set_member(pJsonObject, is_reason_not_applicableKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsReasonNotAvailable();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_reason_not_availableKey = "is_reason_not_available";
	json_object_set_member(pJsonObject, is_reason_not_availableKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Admin.TradingStatusModel::getSymbol()
{
	return symbol;
}

void
Admin.TradingStatusModel::setSymbol(std::string  symbol)
{
	this->symbol = symbol;
}

long long
Admin.TradingStatusModel::getTimestampNanos()
{
	return timestamp_nanos;
}

void
Admin.TradingStatusModel::setTimestampNanos(long long  timestamp_nanos)
{
	this->timestamp_nanos = timestamp_nanos;
}

std::string
Admin.TradingStatusModel::getTimestamp()
{
	return timestamp;
}

void
Admin.TradingStatusModel::setTimestamp(std::string  timestamp)
{
	this->timestamp = timestamp;
}

bool
Admin.TradingStatusModel::getIsTradingLive()
{
	return is_trading_live;
}

void
Admin.TradingStatusModel::setIsTradingLive(bool  is_trading_live)
{
	this->is_trading_live = is_trading_live;
}

bool
Admin.TradingStatusModel::getIsTradingHalted()
{
	return is_trading_halted;
}

void
Admin.TradingStatusModel::setIsTradingHalted(bool  is_trading_halted)
{
	this->is_trading_halted = is_trading_halted;
}

bool
Admin.TradingStatusModel::getIsTradingInOrderAcceptancePeriod()
{
	return is_trading_in_order_acceptance_period;
}

void
Admin.TradingStatusModel::setIsTradingInOrderAcceptancePeriod(bool  is_trading_in_order_acceptance_period)
{
	this->is_trading_in_order_acceptance_period = is_trading_in_order_acceptance_period;
}

bool
Admin.TradingStatusModel::getIsTradingPaused()
{
	return is_trading_paused;
}

void
Admin.TradingStatusModel::setIsTradingPaused(bool  is_trading_paused)
{
	this->is_trading_paused = is_trading_paused;
}

bool
Admin.TradingStatusModel::getIsReasonHaltNewsPending()
{
	return is_reason_halt_news_pending;
}

void
Admin.TradingStatusModel::setIsReasonHaltNewsPending(bool  is_reason_halt_news_pending)
{
	this->is_reason_halt_news_pending = is_reason_halt_news_pending;
}

bool
Admin.TradingStatusModel::getIsReasonIpoNotYetTrading()
{
	return is_reason_ipo_not_yet_trading;
}

void
Admin.TradingStatusModel::setIsReasonIpoNotYetTrading(bool  is_reason_ipo_not_yet_trading)
{
	this->is_reason_ipo_not_yet_trading = is_reason_ipo_not_yet_trading;
}

bool
Admin.TradingStatusModel::getIsReasonIpoDeferred()
{
	return is_reason_ipo_deferred;
}

void
Admin.TradingStatusModel::setIsReasonIpoDeferred(bool  is_reason_ipo_deferred)
{
	this->is_reason_ipo_deferred = is_reason_ipo_deferred;
}

bool
Admin.TradingStatusModel::getIsReasonHaltNewsDissemination()
{
	return is_reason_halt_news_dissemination;
}

void
Admin.TradingStatusModel::setIsReasonHaltNewsDissemination(bool  is_reason_halt_news_dissemination)
{
	this->is_reason_halt_news_dissemination = is_reason_halt_news_dissemination;
}

bool
Admin.TradingStatusModel::getIsReasonIpoOrderAcceptancePeriod()
{
	return is_reason_ipo_order_acceptance_period;
}

void
Admin.TradingStatusModel::setIsReasonIpoOrderAcceptancePeriod(bool  is_reason_ipo_order_acceptance_period)
{
	this->is_reason_ipo_order_acceptance_period = is_reason_ipo_order_acceptance_period;
}

bool
Admin.TradingStatusModel::getIsReasonIpoPreLaunchPeriod()
{
	return is_reason_ipo_pre_launch_period;
}

void
Admin.TradingStatusModel::setIsReasonIpoPreLaunchPeriod(bool  is_reason_ipo_pre_launch_period)
{
	this->is_reason_ipo_pre_launch_period = is_reason_ipo_pre_launch_period;
}

bool
Admin.TradingStatusModel::getIsReasonMarketWideCircuitBreakerLevel1()
{
	return is_reason_market_wide_circuit_breaker_level1;
}

void
Admin.TradingStatusModel::setIsReasonMarketWideCircuitBreakerLevel1(bool  is_reason_market_wide_circuit_breaker_level1)
{
	this->is_reason_market_wide_circuit_breaker_level1 = is_reason_market_wide_circuit_breaker_level1;
}

bool
Admin.TradingStatusModel::getIsReasonMarketWideCircuitBreakerLevel2()
{
	return is_reason_market_wide_circuit_breaker_level2;
}

void
Admin.TradingStatusModel::setIsReasonMarketWideCircuitBreakerLevel2(bool  is_reason_market_wide_circuit_breaker_level2)
{
	this->is_reason_market_wide_circuit_breaker_level2 = is_reason_market_wide_circuit_breaker_level2;
}

bool
Admin.TradingStatusModel::getIsReasonMarketWideCircuitBreakerLevel3()
{
	return is_reason_market_wide_circuit_breaker_level3;
}

void
Admin.TradingStatusModel::setIsReasonMarketWideCircuitBreakerLevel3(bool  is_reason_market_wide_circuit_breaker_level3)
{
	this->is_reason_market_wide_circuit_breaker_level3 = is_reason_market_wide_circuit_breaker_level3;
}

bool
Admin.TradingStatusModel::getIsReasonNotApplicable()
{
	return is_reason_not_applicable;
}

void
Admin.TradingStatusModel::setIsReasonNotApplicable(bool  is_reason_not_applicable)
{
	this->is_reason_not_applicable = is_reason_not_applicable;
}

bool
Admin.TradingStatusModel::getIsReasonNotAvailable()
{
	return is_reason_not_available;
}

void
Admin.TradingStatusModel::setIsReasonNotAvailable(bool  is_reason_not_available)
{
	this->is_reason_not_available = is_reason_not_available;
}


