/*
 * Level3.ExecutedOrderModel.h
 *
 * Represents the response DTO for order executed information
 */

#ifndef _Level3.ExecutedOrderModel_H_
#define _Level3.ExecutedOrderModel_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents the response DTO for order executed information
 *
 *  \ingroup Models
 *
 */

class Level3.ExecutedOrderModel : public Object {
public:
	/*! \brief Constructor.
	 */
	Level3.ExecutedOrderModel();
	Level3.ExecutedOrderModel(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Level3.ExecutedOrderModel();

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
	/*! \brief Get Time when the order was executed as DateTime
	 */
	std::string getTimestamp();

	/*! \brief Set Time when the order was executed as DateTime
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get Order identifier reference
	 */
	long long getOrderIdReference();

	/*! \brief Set Order identifier reference
	 */
	void setOrderIdReference(long long  order_id_reference);
	/*! \brief Get Sale condition flags for the execution as byte value
	 */
	int getSaleConditionFlags();

	/*! \brief Set Sale condition flags for the execution as byte value
	 */
	void setSaleConditionFlags(int  sale_condition_flags);
	/*! \brief Get Bit 7 (Mask 0x80): Intermarket Sweep Flag True: Intermarket Sweep Order (\"ISO\") False: Non-Intermarket Sweep Order
	 */
	bool getIsIntermarketSweep();

	/*! \brief Set Bit 7 (Mask 0x80): Intermarket Sweep Flag True: Intermarket Sweep Order (\"ISO\") False: Non-Intermarket Sweep Order
	 */
	void setIsIntermarketSweep(bool  is_intermarket_sweep);
	/*! \brief Get Bit 6 (Mask 0x40): Extended Hours Flag True: Extended Hours Trade (i.e., Form T sale condition) False: Regular Market Session Trade
	 */
	bool getIsExtendedHoursTrade();

	/*! \brief Set Bit 6 (Mask 0x40): Extended Hours Flag True: Extended Hours Trade (i.e., Form T sale condition) False: Regular Market Session Trade
	 */
	void setIsExtendedHoursTrade(bool  is_extended_hours_trade);
	/*! \brief Get Bit 5 (Mask 0x20): Odd Lot Flag True: Odd Lot Trade False: Round or Mixed Lot Trade
	 */
	bool getIsOddLotTrade();

	/*! \brief Set Bit 5 (Mask 0x20): Odd Lot Flag True: Odd Lot Trade False: Round or Mixed Lot Trade
	 */
	void setIsOddLotTrade(bool  is_odd_lot_trade);
	/*! \brief Get Bit 4 (Mask 0x10): Trade Through Exempt Flag True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS
	 */
	bool getIsTradeThroughExempt();

	/*! \brief Set Bit 4 (Mask 0x10): Trade Through Exempt Flag True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS
	 */
	void setIsTradeThroughExempt(bool  is_trade_through_exempt);
	/*! \brief Get Bit 3 (Mask 0x08): Single-price Cross Trade Flag True: Trade resulting from a single-price cross False: Execution during continuous trading
	 */
	bool getIsSinglePriceCrossTrade();

	/*! \brief Set Bit 3 (Mask 0x08): Single-price Cross Trade Flag True: Trade resulting from a single-price cross False: Execution during continuous trading
	 */
	void setIsSinglePriceCrossTrade(bool  is_single_price_cross_trade);
	/*! \brief Get Trade volume in number of shares
	 */
	int getSize();

	/*! \brief Set Trade volume in number of shares
	 */
	void setSize(int  size);
	/*! \brief Get Execution price as decimal
	 */
	double getPrice();

	/*! \brief Set Execution price as decimal
	 */
	void setPrice(double  price);
	/*! \brief Get IEX trade identifier
	 */
	long long getTradeId();

	/*! \brief Set IEX trade identifier
	 */
	void setTradeId(long long  trade_id);

private:
	std::string symbol;
	long long timestamp_nanos;
	std::string timestamp;
	long long order_id_reference;
	int sale_condition_flags;
	bool is_intermarket_sweep;
	bool is_extended_hours_trade;
	bool is_odd_lot_trade;
	bool is_trade_through_exempt;
	bool is_single_price_cross_trade;
	int size;
	double price;
	long long trade_id;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Level3.ExecutedOrderModel_H_ */
