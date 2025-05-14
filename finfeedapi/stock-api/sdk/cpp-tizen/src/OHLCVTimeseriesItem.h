/*
 * OHLCV.TimeseriesItem.h
 *
 * Represents a timeseries item with price and volume information.
 */

#ifndef _OHLCV.TimeseriesItem_H_
#define _OHLCV.TimeseriesItem_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents a timeseries item with price and volume information.
 *
 *  \ingroup Models
 *
 */

class OHLCV.TimeseriesItem : public Object {
public:
	/*! \brief Constructor.
	 */
	OHLCV.TimeseriesItem();
	OHLCV.TimeseriesItem(char* str);

	/*! \brief Destructor.
	 */
	virtual ~OHLCV.TimeseriesItem();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Gets or sets the start time of the time period.
	 */
	std::string getTimePeriodStart();

	/*! \brief Set Gets or sets the start time of the time period.
	 */
	void setTimePeriodStart(std::string  time_period_start);
	/*! \brief Get Gets or sets the end time of the time period.
	 */
	std::string getTimePeriodEnd();

	/*! \brief Set Gets or sets the end time of the time period.
	 */
	void setTimePeriodEnd(std::string  time_period_end);
	/*! \brief Get Gets or sets the time when the price opened.
	 */
	std::string getTimeOpen();

	/*! \brief Set Gets or sets the time when the price opened.
	 */
	void setTimeOpen(std::string  time_open);
	/*! \brief Get Gets or sets the time when the price closed.
	 */
	std::string getTimeClose();

	/*! \brief Set Gets or sets the time when the price closed.
	 */
	void setTimeClose(std::string  time_close);
	/*! \brief Get Gets or sets the opening price.
	 */
	double getPriceOpen();

	/*! \brief Set Gets or sets the opening price.
	 */
	void setPriceOpen(double  price_open);
	/*! \brief Get Gets or sets the highest price during the time period.
	 */
	double getPriceHigh();

	/*! \brief Set Gets or sets the highest price during the time period.
	 */
	void setPriceHigh(double  price_high);
	/*! \brief Get Gets or sets the lowest price during the time period.
	 */
	double getPriceLow();

	/*! \brief Set Gets or sets the lowest price during the time period.
	 */
	void setPriceLow(double  price_low);
	/*! \brief Get Gets or sets the closing price.
	 */
	double getPriceClose();

	/*! \brief Set Gets or sets the closing price.
	 */
	void setPriceClose(double  price_close);
	/*! \brief Get Gets or sets the total volume traded during the time period.
	 */
	double getVolumeTraded();

	/*! \brief Set Gets or sets the total volume traded during the time period.
	 */
	void setVolumeTraded(double  volume_traded);
	/*! \brief Get Gets or sets the number of trades executed during the time period.
	 */
	long long getTradesCount();

	/*! \brief Set Gets or sets the number of trades executed during the time period.
	 */
	void setTradesCount(long long  trades_count);

private:
	std::string time_period_start;
	std::string time_period_end;
	std::string time_open;
	std::string time_close;
	double price_open;
	double price_high;
	double price_low;
	double price_close;
	double volume_traded;
	long long trades_count;
	void __init();
	void __cleanup();

};
}
}

#endif /* _OHLCV.TimeseriesItem_H_ */
