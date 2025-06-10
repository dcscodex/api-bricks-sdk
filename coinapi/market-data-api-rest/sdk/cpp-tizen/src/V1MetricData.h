/*
 * V1.MetricData.h
 *
 * Represents a data model for metric data.
 */

#ifndef _V1.MetricData_H_
#define _V1.MetricData_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents a data model for metric data.
 *
 *  \ingroup Models
 *
 */

class V1.MetricData : public Object {
public:
	/*! \brief Constructor.
	 */
	V1.MetricData();
	V1.MetricData(char* str);

	/*! \brief Destructor.
	 */
	virtual ~V1.MetricData();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Gets or sets the symbol id.
	 */
	std::string getSymbolId();

	/*! \brief Set Gets or sets the symbol id.
	 */
	void setSymbolId(std::string  symbol_id);
	/*! \brief Get Gets or sets the time at which the value is recorded.
	 */
	std::string getTime();

	/*! \brief Set Gets or sets the time at which the value is recorded.
	 */
	void setTime(std::string  time);
	/*! \brief Get Gets or sets the value of the metric.
	 */
	double getValue();

	/*! \brief Set Gets or sets the value of the metric.
	 */
	void setValue(double  value);

private:
	std::string symbol_id;
	std::string time;
	double value;
	void __init();
	void __cleanup();

};
}
}

#endif /* _V1.MetricData_H_ */
