/*
 * Position_data.h
 *
 * 
 */

#ifndef _Position_data_H_
#define _Position_data_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class Position_data : public Object {
public:
	/*! \brief Constructor.
	 */
	Position_data();
	Position_data(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Position_data();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Unique position ID
	 */
	std::string getId();

	/*! \brief Set Unique position ID
	 */
	void setId(std::string  id);
	/*! \brief Get The contract for this position.
	 */
	std::string getSymbolExchange();

	/*! \brief Set The contract for this position.
	 */
	void setSymbolExchange(std::string  symbol_exchange);
	/*! \brief Get The coinapi contract for this position.
	 */
	std::string getSymbolCoinapi();

	/*! \brief Set The coinapi contract for this position.
	 */
	void setSymbolCoinapi(std::string  symbol_coinapi);
	/*! \brief Get 
	 */
	long long getAvgEntryPrice();

	/*! \brief Set 
	 */
	void setAvgEntryPrice(long long  avg_entry_price);
	/*! \brief Get The current position amount in contracts.
	 */
	long long getQuantity();

	/*! \brief Set The current position amount in contracts.
	 */
	void setQuantity(long long  quantity);
	/*! \brief Get 
	 */
	bool getIsBuy();

	/*! \brief Set 
	 */
	void setIsBuy(bool  is_buy);
	/*! \brief Get Unrealised PNL is all the unrealised profit or loss coming from your portfolio's open positions.
	 */
	long long getUnrealisedPnL();

	/*! \brief Set Unrealised PNL is all the unrealised profit or loss coming from your portfolio's open positions.
	 */
	void setUnrealisedPnL(long long  unrealised_pn_l);
	/*! \brief Get 1 / initMarginReq.
	 */
	long long getLeverage();

	/*! \brief Set 1 / initMarginReq.
	 */
	void setLeverage(long long  leverage);
	/*! \brief Get True/false depending on whether you set cross margin on this position.
	 */
	bool getCrossMargin();

	/*! \brief Set True/false depending on whether you set cross margin on this position.
	 */
	void setCrossMargin(bool  cross_margin);
	/*! \brief Get Once markPrice reaches this price, this position will be liquidated.
	 */
	long long getLiquidationPrice();

	/*! \brief Set Once markPrice reaches this price, this position will be liquidated.
	 */
	void setLiquidationPrice(long long  liquidation_price);
	/*! \brief Get 
	 */
	std::string getRawData();

	/*! \brief Set 
	 */
	void setRawData(std::string  raw_data);

private:
	std::string id;
	std::string symbol_exchange;
	std::string symbol_coinapi;
	long long avg_entry_price;
	long long quantity;
	bool is_buy;
	long long unrealised_pn_l;
	long long leverage;
	bool cross_margin;
	long long liquidation_price;
	std::string raw_data;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Position_data_H_ */
