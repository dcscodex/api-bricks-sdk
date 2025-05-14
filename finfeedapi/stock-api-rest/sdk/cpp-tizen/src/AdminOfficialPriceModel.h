/*
 * Admin.OfficialPriceModel.h
 *
 * Represents the response DTO for official price information
 */

#ifndef _Admin.OfficialPriceModel_H_
#define _Admin.OfficialPriceModel_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents the response DTO for official price information
 *
 *  \ingroup Models
 *
 */

class Admin.OfficialPriceModel : public Object {
public:
	/*! \brief Constructor.
	 */
	Admin.OfficialPriceModel();
	Admin.OfficialPriceModel(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Admin.OfficialPriceModel();

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
	/*! \brief Get Time when the official price was recorded as DateTime
	 */
	std::string getTimestamp();

	/*! \brief Set Time when the official price was recorded as DateTime
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get Type of price as byte value
	 */
	int getPriceType();

	/*! \brief Set Type of price as byte value
	 */
	void setPriceType(int  price_type);
	/*! \brief Get Type of price as character string
	 */
	std::string getPriceTypeCode();

	/*! \brief Set Type of price as character string
	 */
	void setPriceTypeCode(std::string  price_type_code);
	/*! \brief Get Human-readable description of the price type
	 */
	std::string getPriceTypeText();

	/*! \brief Set Human-readable description of the price type
	 */
	void setPriceTypeText(std::string  price_type_text);
	/*! \brief Get Indicates if the price type is 'IEX Official Opening Price' ('Q'/0x51).
	 */
	bool getIsPriceTypeOpening();

	/*! \brief Set Indicates if the price type is 'IEX Official Opening Price' ('Q'/0x51).
	 */
	void setIsPriceTypeOpening(bool  is_price_type_opening);
	/*! \brief Get Indicates if the price type is 'IEX Official Closing Price' ('M'/0x4d).
	 */
	bool getIsPriceTypeClosing();

	/*! \brief Set Indicates if the price type is 'IEX Official Closing Price' ('M'/0x4d).
	 */
	void setIsPriceTypeClosing(bool  is_price_type_closing);
	/*! \brief Get Official price as decimal
	 */
	double getOfficialPrice();

	/*! \brief Set Official price as decimal
	 */
	void setOfficialPrice(double  official_price);

private:
	std::string symbol;
	long long timestamp_nanos;
	std::string timestamp;
	int price_type;
	std::string price_type_code;
	std::string price_type_text;
	bool is_price_type_opening;
	bool is_price_type_closing;
	double official_price;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Admin.OfficialPriceModel_H_ */
