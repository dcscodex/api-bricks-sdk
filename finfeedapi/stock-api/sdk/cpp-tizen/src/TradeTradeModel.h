/*
 * Trade.TradeModel.h
 *
 * Represents the response DTO for a single trade event (report or break).
 */

#ifndef _Trade.TradeModel_H_
#define _Trade.TradeModel_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents the response DTO for a single trade event (report or break).
 *
 *  \ingroup Models
 *
 */

class Trade.TradeModel : public Object {
public:
	/*! \brief Constructor.
	 */
	Trade.TradeModel();
	Trade.TradeModel(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Trade.TradeModel();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Indicates if this record represents a trade break (true) or a trade report (false).
	 */
	bool getIsTradeBreak();

	/*! \brief Set Indicates if this record represents a trade break (true) or a trade report (false).
	 */
	void setIsTradeBreak(bool  is_trade_break);
	/*! \brief Get The stock symbol.
	 */
	std::string getSymbol();

	/*! \brief Set The stock symbol.
	 */
	void setSymbol(std::string  symbol);
	/*! \brief Get Original timestamp in nanoseconds since epoch.
	 */
	long long getTimestampNanos();

	/*! \brief Set Original timestamp in nanoseconds since epoch.
	 */
	void setTimestampNanos(long long  timestamp_nanos);
	/*! \brief Get Time when the event was recorded as DateTime (UTC).
	 */
	std::string getTimestamp();

	/*! \brief Set Time when the event was recorded as DateTime (UTC).
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get Trade volume (or break volume) in number of shares.
	 */
	int getSize();

	/*! \brief Set Trade volume (or break volume) in number of shares.
	 */
	void setSize(int  size);
	/*! \brief Get Trade price (or break price) as decimal.
	 */
	double getPrice();

	/*! \brief Set Trade price (or break price) as decimal.
	 */
	void setPrice(double  price);
	/*! \brief Get IEX trade identifier (same for report and its corresponding break).
	 */
	long long getTradeId();

	/*! \brief Set IEX trade identifier (same for report and its corresponding break).
	 */
	void setTradeId(long long  trade_id);
	/*! \brief Get Bit 7 (Mask 0x80): Intermarket Sweep Flag.  True: Intermarket Sweep Order (\"ISO\").  False: Non-Intermarket Sweep Order.
	 */
	bool getIsIntermarketSweep();

	/*! \brief Set Bit 7 (Mask 0x80): Intermarket Sweep Flag.  True: Intermarket Sweep Order (\"ISO\").  False: Non-Intermarket Sweep Order.
	 */
	void setIsIntermarketSweep(bool  is_intermarket_sweep);
	/*! \brief Get Bit 6 (Mask 0x40): Extended Hours Flag.  True: Extended Hours Trade (i.e., Form T sale condition).  False: Regular Market Session Trade.
	 */
	bool getIsExtendedHoursTrade();

	/*! \brief Set Bit 6 (Mask 0x40): Extended Hours Flag.  True: Extended Hours Trade (i.e., Form T sale condition).  False: Regular Market Session Trade.
	 */
	void setIsExtendedHoursTrade(bool  is_extended_hours_trade);
	/*! \brief Get Bit 5 (Mask 0x20): Odd Lot Flag.  True: Odd Lot Trade.  False: Round or Mixed Lot Trade.
	 */
	bool getIsOddLotTrade();

	/*! \brief Set Bit 5 (Mask 0x20): Odd Lot Flag.  True: Odd Lot Trade.  False: Round or Mixed Lot Trade.
	 */
	void setIsOddLotTrade(bool  is_odd_lot_trade);
	/*! \brief Get Bit 4 (Mask 0x10): Trade Through Exempt Flag.  True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS.  False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS.  Applied when the taking order was an ISO that traded through a protected quotation,  OR the NBBO was crossed at the time of the trade,  OR the trade occurred through a self-helped venue's quotation,  OR the trade was a single-price cross.
	 */
	bool getIsTradeThroughExempt();

	/*! \brief Set Bit 4 (Mask 0x10): Trade Through Exempt Flag.  True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS.  False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS.  Applied when the taking order was an ISO that traded through a protected quotation,  OR the NBBO was crossed at the time of the trade,  OR the trade occurred through a self-helped venue's quotation,  OR the trade was a single-price cross.
	 */
	void setIsTradeThroughExempt(bool  is_trade_through_exempt);
	/*! \brief Get Bit 3 (Mask 0x08): Single-price Cross Trade Flag.  True: Trade resulting from a single-price cross.  False: Execution during continuous trading.
	 */
	bool getIsSinglePriceCrossTrade();

	/*! \brief Set Bit 3 (Mask 0x08): Single-price Cross Trade Flag.  True: Trade resulting from a single-price cross.  False: Execution during continuous trading.
	 */
	void setIsSinglePriceCrossTrade(bool  is_single_price_cross_trade);

private:
	bool is_trade_break;
	std::string symbol;
	long long timestamp_nanos;
	std::string timestamp;
	int size;
	double price;
	long long trade_id;
	bool is_intermarket_sweep;
	bool is_extended_hours_trade;
	bool is_odd_lot_trade;
	bool is_trade_through_exempt;
	bool is_single_price_cross_trade;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Trade.TradeModel_H_ */
