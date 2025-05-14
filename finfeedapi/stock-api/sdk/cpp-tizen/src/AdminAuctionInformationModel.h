/*
 * Admin.AuctionInformationModel.h
 *
 * Represents the response DTO for auction information
 */

#ifndef _Admin.AuctionInformationModel_H_
#define _Admin.AuctionInformationModel_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents the response DTO for auction information
 *
 *  \ingroup Models
 *
 */

class Admin.AuctionInformationModel : public Object {
public:
	/*! \brief Constructor.
	 */
	Admin.AuctionInformationModel();
	Admin.AuctionInformationModel(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Admin.AuctionInformationModel();

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
	/*! \brief Get Time when the auction data was recorded as DateTime
	 */
	std::string getTimestamp();

	/*! \brief Set Time when the auction data was recorded as DateTime
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get Type of auction as byte value
	 */
	int getAuctionType();

	/*! \brief Set Type of auction as byte value
	 */
	void setAuctionType(int  auction_type);
	/*! \brief Get Type of auction as character string
	 */
	std::string getAuctionTypeCode();

	/*! \brief Set Type of auction as character string
	 */
	void setAuctionTypeCode(std::string  auction_type_code);
	/*! \brief Get Human-readable description of the auction type
	 */
	std::string getAuctionTypeText();

	/*! \brief Set Human-readable description of the auction type
	 */
	void setAuctionTypeText(std::string  auction_type_text);
	/*! \brief Get Indicates if the auction type is 'Opening Auction' ('O'/0x4f).
	 */
	bool getIsAuctionTypeOpening();

	/*! \brief Set Indicates if the auction type is 'Opening Auction' ('O'/0x4f).
	 */
	void setIsAuctionTypeOpening(bool  is_auction_type_opening);
	/*! \brief Get Indicates if the auction type is 'Closing Auction' ('C'/0x43).
	 */
	bool getIsAuctionTypeClosing();

	/*! \brief Set Indicates if the auction type is 'Closing Auction' ('C'/0x43).
	 */
	void setIsAuctionTypeClosing(bool  is_auction_type_closing);
	/*! \brief Get Indicates if the auction type is 'IPO Auction' ('I'/0x49).
	 */
	bool getIsAuctionTypeIpo();

	/*! \brief Set Indicates if the auction type is 'IPO Auction' ('I'/0x49).
	 */
	void setIsAuctionTypeIpo(bool  is_auction_type_ipo);
	/*! \brief Get Indicates if the auction type is 'Halt Auction' ('H'/0x48).
	 */
	bool getIsAuctionTypeHalt();

	/*! \brief Set Indicates if the auction type is 'Halt Auction' ('H'/0x48).
	 */
	void setIsAuctionTypeHalt(bool  is_auction_type_halt);
	/*! \brief Get Indicates if the auction type is 'Volatility Auction' ('V'/0x56).
	 */
	bool getIsAuctionTypeVolatility();

	/*! \brief Set Indicates if the auction type is 'Volatility Auction' ('V'/0x56).
	 */
	void setIsAuctionTypeVolatility(bool  is_auction_type_volatility);
	/*! \brief Get Number of shares paired at the Reference Price
	 */
	int getPairedShares();

	/*! \brief Set Number of shares paired at the Reference Price
	 */
	void setPairedShares(int  paired_shares);
	/*! \brief Get Reference price as decimal
	 */
	double getReferencePrice();

	/*! \brief Set Reference price as decimal
	 */
	void setReferencePrice(double  reference_price);
	/*! \brief Get Indicative clearing price as decimal
	 */
	double getIndicativeClearingPrice();

	/*! \brief Set Indicative clearing price as decimal
	 */
	void setIndicativeClearingPrice(double  indicative_clearing_price);
	/*! \brief Get Number of unpaired shares at the Reference Price
	 */
	int getImbalanceShares();

	/*! \brief Set Number of unpaired shares at the Reference Price
	 */
	void setImbalanceShares(int  imbalance_shares);
	/*! \brief Get Side of the imbalance as byte value
	 */
	int getImbalanceSide();

	/*! \brief Set Side of the imbalance as byte value
	 */
	void setImbalanceSide(int  imbalance_side);
	/*! \brief Get Side of the imbalance as character string
	 */
	std::string getImbalanceSideCode();

	/*! \brief Set Side of the imbalance as character string
	 */
	void setImbalanceSideCode(std::string  imbalance_side_code);
	/*! \brief Get Human-readable description of the imbalance side
	 */
	std::string getImbalanceSideText();

	/*! \brief Set Human-readable description of the imbalance side
	 */
	void setImbalanceSideText(std::string  imbalance_side_text);
	/*! \brief Get Indicates if there is a buy-side imbalance ('B'/0x42).
	 */
	bool getIsImbalanceSideBuy();

	/*! \brief Set Indicates if there is a buy-side imbalance ('B'/0x42).
	 */
	void setIsImbalanceSideBuy(bool  is_imbalance_side_buy);
	/*! \brief Get Indicates if there is a sell-side imbalance ('S'/0x53).
	 */
	bool getIsImbalanceSideSell();

	/*! \brief Set Indicates if there is a sell-side imbalance ('S'/0x53).
	 */
	void setIsImbalanceSideSell(bool  is_imbalance_side_sell);
	/*! \brief Get Indicates if there is no imbalance ('N'/0x4e).
	 */
	bool getIsImbalanceSideNone();

	/*! \brief Set Indicates if there is no imbalance ('N'/0x4e).
	 */
	void setIsImbalanceSideNone(bool  is_imbalance_side_none);
	/*! \brief Get Number of extensions to the auction
	 */
	int getExtensionNumber();

	/*! \brief Set Number of extensions to the auction
	 */
	void setExtensionNumber(int  extension_number);
	/*! \brief Get Scheduled auction time in seconds since epoch
	 */
	int getScheduledAuctionTimeSeconds();

	/*! \brief Set Scheduled auction time in seconds since epoch
	 */
	void setScheduledAuctionTimeSeconds(int  scheduled_auction_time_seconds);
	/*! \brief Get Scheduled time for the auction as DateTime
	 */
	std::string getScheduledAuctionTime();

	/*! \brief Set Scheduled time for the auction as DateTime
	 */
	void setScheduledAuctionTime(std::string  scheduled_auction_time);
	/*! \brief Get Auction book clearing price as decimal
	 */
	double getAuctionBookClearingPrice();

	/*! \brief Set Auction book clearing price as decimal
	 */
	void setAuctionBookClearingPrice(double  auction_book_clearing_price);
	/*! \brief Get Collar reference price as decimal
	 */
	double getCollarReferencePrice();

	/*! \brief Set Collar reference price as decimal
	 */
	void setCollarReferencePrice(double  collar_reference_price);
	/*! \brief Get Lower auction collar as decimal
	 */
	double getLowerAuctionCollar();

	/*! \brief Set Lower auction collar as decimal
	 */
	void setLowerAuctionCollar(double  lower_auction_collar);
	/*! \brief Get Upper auction collar as decimal
	 */
	double getUpperAuctionCollar();

	/*! \brief Set Upper auction collar as decimal
	 */
	void setUpperAuctionCollar(double  upper_auction_collar);

private:
	std::string symbol;
	long long timestamp_nanos;
	std::string timestamp;
	int auction_type;
	std::string auction_type_code;
	std::string auction_type_text;
	bool is_auction_type_opening;
	bool is_auction_type_closing;
	bool is_auction_type_ipo;
	bool is_auction_type_halt;
	bool is_auction_type_volatility;
	int paired_shares;
	double reference_price;
	double indicative_clearing_price;
	int imbalance_shares;
	int imbalance_side;
	std::string imbalance_side_code;
	std::string imbalance_side_text;
	bool is_imbalance_side_buy;
	bool is_imbalance_side_sell;
	bool is_imbalance_side_none;
	int extension_number;
	int scheduled_auction_time_seconds;
	std::string scheduled_auction_time;
	double auction_book_clearing_price;
	double collar_reference_price;
	double lower_auction_collar;
	double upper_auction_collar;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Admin.AuctionInformationModel_H_ */
