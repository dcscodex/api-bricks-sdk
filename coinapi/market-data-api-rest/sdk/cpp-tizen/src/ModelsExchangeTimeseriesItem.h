/*
 * Models.ExchangeTimeseriesItem.h
 *
 * Represents a timeseries item with price and volume information.
 */

#ifndef _Models.ExchangeTimeseriesItem_H_
#define _Models.ExchangeTimeseriesItem_H_


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

class Models.ExchangeTimeseriesItem : public Object {
public:
	/*! \brief Constructor.
	 */
	Models.ExchangeTimeseriesItem();
	Models.ExchangeTimeseriesItem(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Models.ExchangeTimeseriesItem();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get The start time of the time period.
	 */
	std::string getTimePeriodStart();

	/*! \brief Set The start time of the time period.
	 */
	void setTimePeriodStart(std::string  time_period_start);
	/*! \brief Get The end time of the time period.
	 */
	std::string getTimePeriodEnd();

	/*! \brief Set The end time of the time period.
	 */
	void setTimePeriodEnd(std::string  time_period_end);
	/*! \brief Get The time when the price opened.
	 */
	std::string getTimeOpen();

	/*! \brief Set The time when the price opened.
	 */
	void setTimeOpen(std::string  time_open);
	/*! \brief Get The time when the price closed.
	 */
	std::string getTimeClose();

	/*! \brief Set The time when the price closed.
	 */
	void setTimeClose(std::string  time_close);
	/*! \brief Get The opening price.
	 */
	double getPriceOpen();

	/*! \brief Set The opening price.
	 */
	void setPriceOpen(double  price_open);
	/*! \brief Get The highest price during the time period.
	 */
	double getPriceHigh();

	/*! \brief Set The highest price during the time period.
	 */
	void setPriceHigh(double  price_high);
	/*! \brief Get The lowest price during the time period.
	 */
	double getPriceLow();

	/*! \brief Set The lowest price during the time period.
	 */
	void setPriceLow(double  price_low);
	/*! \brief Get The closing price.
	 */
	double getPriceClose();

	/*! \brief Set The closing price.
	 */
	void setPriceClose(double  price_close);
	/*! \brief Get The total volume traded during the time period.
	 */
	double getVolumeTraded();

	/*! \brief Set The total volume traded during the time period.
	 */
	void setVolumeTraded(double  volume_traded);
	/*! \brief Get The number of trades executed during the time period.
	 */
	long long getTradesCount();

	/*! \brief Set The number of trades executed during the time period.
	 */
	void setTradesCount(long long  trades_count);
	/*! \brief Get 
	 */
	std::string getSymbolIdExchange();

	/*! \brief Set 
	 */
	void setSymbolIdExchange(std::string  symbol_id_exchange);
	/*! \brief Get 
	 */
	std::string getSymbolIdCoinapi();

	/*! \brief Set 
	 */
	void setSymbolIdCoinapi(std::string  symbol_id_coinapi);

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
	std::string symbol_id_exchange;
	std::string symbol_id_coinapi;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Models.ExchangeTimeseriesItem_H_ */
