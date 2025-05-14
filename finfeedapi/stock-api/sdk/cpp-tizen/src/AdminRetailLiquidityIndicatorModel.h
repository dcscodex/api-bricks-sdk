/*
 * Admin.RetailLiquidityIndicatorModel.h
 *
 * Represents the response DTO for retail liquidity indicator information
 */

#ifndef _Admin.RetailLiquidityIndicatorModel_H_
#define _Admin.RetailLiquidityIndicatorModel_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents the response DTO for retail liquidity indicator information
 *
 *  \ingroup Models
 *
 */

class Admin.RetailLiquidityIndicatorModel : public Object {
public:
	/*! \brief Constructor.
	 */
	Admin.RetailLiquidityIndicatorModel();
	Admin.RetailLiquidityIndicatorModel(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Admin.RetailLiquidityIndicatorModel();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get The stock symbol
	 */
	std::string getSymbol();

	/*! \brief Set The stock symbol
	 */
	void setSymbol(std::string  symbol);
	/*! \brief Get Original timestamp in nanoseconds since epoch
	 */
	long long getTimestampNanos();

	/*! \brief Set Original timestamp in nanoseconds since epoch
	 */
	void setTimestampNanos(long long  timestamp_nanos);
	/*! \brief Get Time when the retail liquidity indicator was recorded as DateTime
	 */
	std::string getTimestamp();

	/*! \brief Set Time when the retail liquidity indicator was recorded as DateTime
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get Retail liquidity indicator as byte value
	 */
	int getRetailLiquidityIndicator();

	/*! \brief Set Retail liquidity indicator as byte value
	 */
	void setRetailLiquidityIndicator(int  retail_liquidity_indicator);
	/*! \brief Get Retail liquidity indicator as character string
	 */
	std::string getRetailLiquidityIndicatorCode();

	/*! \brief Set Retail liquidity indicator as character string
	 */
	void setRetailLiquidityIndicatorCode(std::string  retail_liquidity_indicator_code);
	/*! \brief Get Human-readable description of the retail liquidity indicator
	 */
	std::string getRetailLiquidityIndicatorText();

	/*! \brief Set Human-readable description of the retail liquidity indicator
	 */
	void setRetailLiquidityIndicatorText(std::string  retail_liquidity_indicator_text);
	/*! \brief Get Indicates if the indicator is 'Not Applicable' (' '/0x20).
	 */
	bool getIsRetailIndicatorNotApplicable();

	/*! \brief Set Indicates if the indicator is 'Not Applicable' (' '/0x20).
	 */
	void setIsRetailIndicatorNotApplicable(bool  is_retail_indicator_not_applicable);
	/*! \brief Get Indicates if there is 'Buy interest for Retail' ('A'/0x41).
	 */
	bool getIsRetailIndicatorBuyInterest();

	/*! \brief Set Indicates if there is 'Buy interest for Retail' ('A'/0x41).
	 */
	void setIsRetailIndicatorBuyInterest(bool  is_retail_indicator_buy_interest);
	/*! \brief Get Indicates if there is 'Sell interest for Retail' ('B'/0x42).
	 */
	bool getIsRetailIndicatorSellInterest();

	/*! \brief Set Indicates if there is 'Sell interest for Retail' ('B'/0x42).
	 */
	void setIsRetailIndicatorSellInterest(bool  is_retail_indicator_sell_interest);
	/*! \brief Get Indicates if there is 'Buy and sell interest for Retail' ('C'/0x43).
	 */
	bool getIsRetailIndicatorBuyAndSellInterest();

	/*! \brief Set Indicates if there is 'Buy and sell interest for Retail' ('C'/0x43).
	 */
	void setIsRetailIndicatorBuyAndSellInterest(bool  is_retail_indicator_buy_and_sell_interest);

private:
	std::string symbol;
	long long timestamp_nanos;
	std::string timestamp;
	int retail_liquidity_indicator;
	std::string retail_liquidity_indicator_code;
	std::string retail_liquidity_indicator_text;
	bool is_retail_indicator_not_applicable;
	bool is_retail_indicator_buy_interest;
	bool is_retail_indicator_sell_interest;
	bool is_retail_indicator_buy_and_sell_interest;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Admin.RetailLiquidityIndicatorModel_H_ */
