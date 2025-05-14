/*
 * Admin.ShortSalePriceTestStatusModel.h
 *
 * Represents the response DTO for short sale price test status information
 */

#ifndef _Admin.ShortSalePriceTestStatusModel_H_
#define _Admin.ShortSalePriceTestStatusModel_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents the response DTO for short sale price test status information
 *
 *  \ingroup Models
 *
 */

class Admin.ShortSalePriceTestStatusModel : public Object {
public:
	/*! \brief Constructor.
	 */
	Admin.ShortSalePriceTestStatusModel();
	Admin.ShortSalePriceTestStatusModel(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Admin.ShortSalePriceTestStatusModel();

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
	/*! \brief Get Time when the short sale price test status was recorded as DateTime
	 */
	std::string getTimestamp();

	/*! \brief Set Time when the short sale price test status was recorded as DateTime
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get Short sale price test status as byte value
	 */
	int getShortSalePriceTestStatus();

	/*! \brief Set Short sale price test status as byte value
	 */
	void setShortSalePriceTestStatus(int  short_sale_price_test_status);
	/*! \brief Get Short sale price test status as hex string
	 */
	std::string getShortSalePriceTestStatusCode();

	/*! \brief Set Short sale price test status as hex string
	 */
	void setShortSalePriceTestStatusCode(std::string  short_sale_price_test_status_code);
	/*! \brief Get Human-readable description of the short sale price test status
	 */
	std::string getShortSalePriceTestStatusText();

	/*! \brief Set Human-readable description of the short sale price test status
	 */
	void setShortSalePriceTestStatusText(std::string  short_sale_price_test_status_text);
	/*! \brief Get Indicates if the short sale price test is not in effect
	 */
	bool getIsShortSalePriceTestNotInEffect();

	/*! \brief Set Indicates if the short sale price test is not in effect
	 */
	void setIsShortSalePriceTestNotInEffect(bool  is_short_sale_price_test_not_in_effect);
	/*! \brief Get Indicates if the short sale price test is in effect
	 */
	bool getIsShortSalePriceTestInEffect();

	/*! \brief Set Indicates if the short sale price test is in effect
	 */
	void setIsShortSalePriceTestInEffect(bool  is_short_sale_price_test_in_effect);
	/*! \brief Get Detail of the short sale price test as byte value
	 */
	int getDetail();

	/*! \brief Set Detail of the short sale price test as byte value
	 */
	void setDetail(int  detail);
	/*! \brief Get Detail of the short sale price test as character string
	 */
	std::string getDetailCode();

	/*! \brief Set Detail of the short sale price test as character string
	 */
	void setDetailCode(std::string  detail_code);
	/*! \brief Get Human-readable description of the short sale price test detail
	 */
	std::string getDetailText();

	/*! \brief Set Human-readable description of the short sale price test detail
	 */
	void setDetailText(std::string  detail_text);
	/*! \brief Get Indicates if there is no price test in place
	 */
	bool getIsDetailNoPriceTest();

	/*! \brief Set Indicates if there is no price test in place
	 */
	void setIsDetailNoPriceTest(bool  is_detail_no_price_test);
	/*! \brief Get Indicates if the short sale price test restriction is in effect due to an intraday price drop
	 */
	bool getIsDetailActivated();

	/*! \brief Set Indicates if the short sale price test restriction is in effect due to an intraday price drop
	 */
	void setIsDetailActivated(bool  is_detail_activated);
	/*! \brief Get Indicates if the short sale price test restriction remains in effect from prior day
	 */
	bool getIsDetailContinued();

	/*! \brief Set Indicates if the short sale price test restriction remains in effect from prior day
	 */
	void setIsDetailContinued(bool  is_detail_continued);
	/*! \brief Get Indicates if the short sale price test restriction is deactivated
	 */
	bool getIsDetailDeactivated();

	/*! \brief Set Indicates if the short sale price test restriction is deactivated
	 */
	void setIsDetailDeactivated(bool  is_detail_deactivated);
	/*! \brief Get Indicates if the detail is not available
	 */
	bool getIsDetailNotAvailable();

	/*! \brief Set Indicates if the detail is not available
	 */
	void setIsDetailNotAvailable(bool  is_detail_not_available);

private:
	std::string symbol;
	long long timestamp_nanos;
	std::string timestamp;
	int short_sale_price_test_status;
	std::string short_sale_price_test_status_code;
	std::string short_sale_price_test_status_text;
	bool is_short_sale_price_test_not_in_effect;
	bool is_short_sale_price_test_in_effect;
	int detail;
	std::string detail_code;
	std::string detail_text;
	bool is_detail_no_price_test;
	bool is_detail_activated;
	bool is_detail_continued;
	bool is_detail_deactivated;
	bool is_detail_not_available;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Admin.ShortSalePriceTestStatusModel_H_ */
