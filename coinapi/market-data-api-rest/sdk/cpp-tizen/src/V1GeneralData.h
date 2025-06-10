/*
 * V1.GeneralData.h
 *
 * Class representation of general metric data. This class is an XML type with name &#39;general_data&#39; and inherits from the BaseCsvModel class.
 */

#ifndef _V1.GeneralData_H_
#define _V1.GeneralData_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Class representation of general metric data. This class is an XML type with name 'general_data' and inherits from the BaseCsvModel class.
 *
 *  \ingroup Models
 *
 */

class V1.GeneralData : public Object {
public:
	/*! \brief Constructor.
	 */
	V1.GeneralData();
	V1.GeneralData(char* str);

	/*! \brief Destructor.
	 */
	virtual ~V1.GeneralData();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Gets or sets the entry time for the data point.
	 */
	std::string getEntryTime();

	/*! \brief Set Gets or sets the entry time for the data point.
	 */
	void setEntryTime(std::string  entry_time);
	/*! \brief Get Gets or sets the received time for the data point.
	 */
	std::string getRecvTime();

	/*! \brief Set Gets or sets the received time for the data point.
	 */
	void setRecvTime(std::string  recv_time);
	/*! \brief Get Gets or sets the identifier for the exchange.
	 */
	std::string getExchangeId();

	/*! \brief Set Gets or sets the identifier for the exchange.
	 */
	void setExchangeId(std::string  exchange_id);
	/*! \brief Get Gets or sets the identifier for the asset.
	 */
	std::string getAssetId();

	/*! \brief Set Gets or sets the identifier for the asset.
	 */
	void setAssetId(std::string  asset_id);
	/*! \brief Get Gets or sets the identifier for the symbol.
	 */
	std::string getSymbolId();

	/*! \brief Set Gets or sets the identifier for the symbol.
	 */
	void setSymbolId(std::string  symbol_id);
	/*! \brief Get Gets or sets the identifier for the metric.
	 */
	std::string getMetricId();

	/*! \brief Set Gets or sets the identifier for the metric.
	 */
	void setMetricId(std::string  metric_id);
	/*! \brief Get Gets or sets the decimal value for the metric.
	 */
	double getValueDecimal();

	/*! \brief Set Gets or sets the decimal value for the metric.
	 */
	void setValueDecimal(double  value_decimal);
	/*! \brief Get Gets or sets the textual representation of the value for the metric.
	 */
	std::string getValueText();

	/*! \brief Set Gets or sets the textual representation of the value for the metric.
	 */
	void setValueText(std::string  value_text);
	/*! \brief Get Gets or sets the timestamp value for the metric.
	 */
	std::string getValueTime();

	/*! \brief Set Gets or sets the timestamp value for the metric.
	 */
	void setValueTime(std::string  value_time);

private:
	std::string entry_time;
	std::string recv_time;
	std::string exchange_id;
	std::string asset_id;
	std::string symbol_id;
	std::string metric_id;
	double value_decimal;
	std::string value_text;
	std::string value_time;
	void __init();
	void __cleanup();

};
}
}

#endif /* _V1.GeneralData_H_ */
