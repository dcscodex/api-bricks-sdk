/*
 * Admin.SecurityEventModel.h
 *
 * Represents the response DTO for security event information
 */

#ifndef _Admin.SecurityEventModel_H_
#define _Admin.SecurityEventModel_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents the response DTO for security event information
 *
 *  \ingroup Models
 *
 */

class Admin.SecurityEventModel : public Object {
public:
	/*! \brief Constructor.
	 */
	Admin.SecurityEventModel();
	Admin.SecurityEventModel(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Admin.SecurityEventModel();

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
	/*! \brief Get Time when the security event was recorded as DateTime
	 */
	std::string getTimestamp();

	/*! \brief Set Time when the security event was recorded as DateTime
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get Security event as byte value
	 */
	int getSecurityEvent();

	/*! \brief Set Security event as byte value
	 */
	void setSecurityEvent(int  security_event);
	/*! \brief Get Security event as character string ('O' or 'C')
	 */
	std::string getSecurityEventCode();

	/*! \brief Set Security event as character string ('O' or 'C')
	 */
	void setSecurityEventCode(std::string  security_event_code);
	/*! \brief Get Human-readable description of the security event
	 */
	std::string getSecurityEventText();

	/*! \brief Set Human-readable description of the security event
	 */
	void setSecurityEventText(std::string  security_event_text);
	/*! \brief Get Indicates if the security event is 'Opening Process Complete' ('O'/0x4f).
	 */
	bool getIsOpeningProcessComplete();

	/*! \brief Set Indicates if the security event is 'Opening Process Complete' ('O'/0x4f).
	 */
	void setIsOpeningProcessComplete(bool  is_opening_process_complete);
	/*! \brief Get Indicates if the security event is 'Closing Process Complete' ('C'/0x43).
	 */
	bool getIsClosingProcessComplete();

	/*! \brief Set Indicates if the security event is 'Closing Process Complete' ('C'/0x43).
	 */
	void setIsClosingProcessComplete(bool  is_closing_process_complete);

private:
	std::string symbol;
	long long timestamp_nanos;
	std::string timestamp;
	int security_event;
	std::string security_event_code;
	std::string security_event_text;
	bool is_opening_process_complete;
	bool is_closing_process_complete;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Admin.SecurityEventModel_H_ */
