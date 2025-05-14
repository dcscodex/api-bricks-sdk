/*
 * Admin.OperationalHaltStatusModel.h
 *
 * Represents the response DTO for operational halt status information
 */

#ifndef _Admin.OperationalHaltStatusModel_H_
#define _Admin.OperationalHaltStatusModel_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents the response DTO for operational halt status information
 *
 *  \ingroup Models
 *
 */

class Admin.OperationalHaltStatusModel : public Object {
public:
	/*! \brief Constructor.
	 */
	Admin.OperationalHaltStatusModel();
	Admin.OperationalHaltStatusModel(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Admin.OperationalHaltStatusModel();

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
	/*! \brief Get Time when the operational halt status was recorded as DateTime
	 */
	std::string getTimestamp();

	/*! \brief Set Time when the operational halt status was recorded as DateTime
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get Operational halt status as byte value
	 */
	int getOperationalHaltStatus();

	/*! \brief Set Operational halt status as byte value
	 */
	void setOperationalHaltStatus(int  operational_halt_status);
	/*! \brief Get Operational halt status as character string
	 */
	std::string getOperationalHaltStatusCode();

	/*! \brief Set Operational halt status as character string
	 */
	void setOperationalHaltStatusCode(std::string  operational_halt_status_code);
	/*! \brief Get Human-readable description of the operational halt status
	 */
	std::string getOperationalHaltStatusText();

	/*! \brief Set Human-readable description of the operational halt status
	 */
	void setOperationalHaltStatusText(std::string  operational_halt_status_text);
	/*! \brief Get Indicates if the status is 'IEX specific operational trading halt' ('O'/0x4f).
	 */
	bool getIsOperationallyHalted();

	/*! \brief Set Indicates if the status is 'IEX specific operational trading halt' ('O'/0x4f).
	 */
	void setIsOperationallyHalted(bool  is_operationally_halted);
	/*! \brief Get Indicates if the status is 'Not operationally halted on IEX' ('N'/0x4e).
	 */
	bool getIsNotOperationallyHalted();

	/*! \brief Set Indicates if the status is 'Not operationally halted on IEX' ('N'/0x4e).
	 */
	void setIsNotOperationallyHalted(bool  is_not_operationally_halted);

private:
	std::string symbol;
	long long timestamp_nanos;
	std::string timestamp;
	int operational_halt_status;
	std::string operational_halt_status_code;
	std::string operational_halt_status_text;
	bool is_operationally_halted;
	bool is_not_operationally_halted;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Admin.OperationalHaltStatusModel_H_ */
