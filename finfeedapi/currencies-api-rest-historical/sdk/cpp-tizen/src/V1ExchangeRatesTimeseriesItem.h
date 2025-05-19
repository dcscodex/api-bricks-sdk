/*
 * V1.ExchangeRatesTimeseriesItem.h
 *
 * Represents an item in the exchange rate timeseries.
 */

#ifndef _V1.ExchangeRatesTimeseriesItem_H_
#define _V1.ExchangeRatesTimeseriesItem_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents an item in the exchange rate timeseries.
 *
 *  \ingroup Models
 *
 */

class V1.ExchangeRatesTimeseriesItem : public Object {
public:
	/*! \brief Constructor.
	 */
	V1.ExchangeRatesTimeseriesItem();
	V1.ExchangeRatesTimeseriesItem(char* str);

	/*! \brief Destructor.
	 */
	virtual ~V1.ExchangeRatesTimeseriesItem();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Gets or sets the start time of the period.
	 */
	std::string getTimePeriodStart();

	/*! \brief Set Gets or sets the start time of the period.
	 */
	void setTimePeriodStart(std::string  time_period_start);
	/*! \brief Get Gets or sets the end time of the period.
	 */
	std::string getTimePeriodEnd();

	/*! \brief Set Gets or sets the end time of the period.
	 */
	void setTimePeriodEnd(std::string  time_period_end);
	/*! \brief Get Gets or sets the opening time of the period.
	 */
	std::string getTimeOpen();

	/*! \brief Set Gets or sets the opening time of the period.
	 */
	void setTimeOpen(std::string  time_open);
	/*! \brief Get Gets or sets the closing time of the period.
	 */
	std::string getTimeClose();

	/*! \brief Set Gets or sets the closing time of the period.
	 */
	void setTimeClose(std::string  time_close);
	/*! \brief Get Gets or sets the opening rate for the period.
	 */
	double getRateOpen();

	/*! \brief Set Gets or sets the opening rate for the period.
	 */
	void setRateOpen(double  rate_open);
	/*! \brief Get Gets or sets the highest rate for the period.
	 */
	double getRateHigh();

	/*! \brief Set Gets or sets the highest rate for the period.
	 */
	void setRateHigh(double  rate_high);
	/*! \brief Get Gets or sets the lowest rate for the period.
	 */
	double getRateLow();

	/*! \brief Set Gets or sets the lowest rate for the period.
	 */
	void setRateLow(double  rate_low);
	/*! \brief Get Gets or sets the closing rate for the period.
	 */
	double getRateClose();

	/*! \brief Set Gets or sets the closing rate for the period.
	 */
	void setRateClose(double  rate_close);

private:
	std::string time_period_start;
	std::string time_period_end;
	std::string time_open;
	std::string time_close;
	double rate_open;
	double rate_high;
	double rate_low;
	double rate_close;
	void __init();
	void __cleanup();

};
}
}

#endif /* _V1.ExchangeRatesTimeseriesItem_H_ */
