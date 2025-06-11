/*
 * Level1.QuoteUpdateModel.h
 *
 * Represents the response DTO for quote update information
 */

#ifndef _Level1.QuoteUpdateModel_H_
#define _Level1.QuoteUpdateModel_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents the response DTO for quote update information
 *
 *  \ingroup Models
 *
 */

class Level1.QuoteUpdateModel : public Object {
public:
	/*! \brief Constructor.
	 */
	Level1.QuoteUpdateModel();
	Level1.QuoteUpdateModel(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Level1.QuoteUpdateModel();

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
	/*! \brief Get Time when the quote update was recorded as DateTime
	 */
	std::string getTimestamp();

	/*! \brief Set Time when the quote update was recorded as DateTime
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get Gets whether the symbol is available for trading True if active, False if halted, paused, or otherwise not available
	 */
	bool getIsSymbolAvailable();

	/*! \brief Set Gets whether the symbol is available for trading True if active, False if halted, paused, or otherwise not available
	 */
	void setIsSymbolAvailable(bool  is_symbol_available);
	/*! \brief Get Gets whether the market session is regular or pre/post-market True if pre/post-market session, False if regular market session
	 */
	bool getIsPrePostMarketSession();

	/*! \brief Set Gets whether the market session is regular or pre/post-market True if pre/post-market session, False if regular market session
	 */
	void setIsPrePostMarketSession(bool  is_pre_post_market_session);
	/*! \brief Get Ask size in number of shares
	 */
	int getAskSize();

	/*! \brief Set Ask size in number of shares
	 */
	void setAskSize(int  ask_size);
	/*! \brief Get Ask price as decimal
	 */
	double getAskPrice();

	/*! \brief Set Ask price as decimal
	 */
	void setAskPrice(double  ask_price);
	/*! \brief Get Bid price as decimal
	 */
	double getBidPrice();

	/*! \brief Set Bid price as decimal
	 */
	void setBidPrice(double  bid_price);
	/*! \brief Get Bid size in number of shares
	 */
	int getBidSize();

	/*! \brief Set Bid size in number of shares
	 */
	void setBidSize(int  bid_size);

private:
	std::string symbol;
	long long timestamp_nanos;
	std::string timestamp;
	bool is_symbol_available;
	bool is_pre_post_market_session;
	int ask_size;
	double ask_price;
	double bid_price;
	int bid_size;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Level1.QuoteUpdateModel_H_ */
