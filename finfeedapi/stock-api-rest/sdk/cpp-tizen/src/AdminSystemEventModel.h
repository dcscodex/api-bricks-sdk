/*
 * Admin.SystemEventModel.h
 *
 * Represents the response DTO for system event information
 */

#ifndef _Admin.SystemEventModel_H_
#define _Admin.SystemEventModel_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents the response DTO for system event information
 *
 *  \ingroup Models
 *
 */

class Admin.SystemEventModel : public Object {
public:
	/*! \brief Constructor.
	 */
	Admin.SystemEventModel();
	Admin.SystemEventModel(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Admin.SystemEventModel();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Original timestamp in nanoseconds since epoch
	 */
	long long getTimestampNanos();

	/*! \brief Set Original timestamp in nanoseconds since epoch
	 */
	void setTimestampNanos(long long  timestamp_nanos);
	/*! \brief Get Time when the system event was recorded as DateTime
	 */
	std::string getTimestamp();

	/*! \brief Set Time when the system event was recorded as DateTime
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get System event as byte value
	 */
	int getSystemEvent();

	/*! \brief Set System event as byte value
	 */
	void setSystemEvent(int  system_event);
	/*! \brief Get System event as string
	 */
	std::string getSystemEventCode();

	/*! \brief Set System event as string
	 */
	void setSystemEventCode(std::string  system_event_code);
	/*! \brief Get Human-readable description of the system event
	 */
	std::string getSystemEventText();

	/*! \brief Set Human-readable description of the system event
	 */
	void setSystemEventText(std::string  system_event_text);
	/*! \brief Get Indicates if the system event is 'Start of Messages' (O). Outside of heartbeat messages on the lower level protocol,  the start of day message is the first message sent in any trading session.
	 */
	bool getIsSystemEventStartOfMessages();

	/*! \brief Set Indicates if the system event is 'Start of Messages' (O). Outside of heartbeat messages on the lower level protocol,  the start of day message is the first message sent in any trading session.
	 */
	void setIsSystemEventStartOfMessages(bool  is_system_event_start_of_messages);
	/*! \brief Get Indicates if the system event is 'Start of System Hours' (S). This message indicates that IEX is open and ready to start accepting orders.
	 */
	bool getIsSystemEventStartOfSystemHours();

	/*! \brief Set Indicates if the system event is 'Start of System Hours' (S). This message indicates that IEX is open and ready to start accepting orders.
	 */
	void setIsSystemEventStartOfSystemHours(bool  is_system_event_start_of_system_hours);
	/*! \brief Get Indicates if the system event is 'Start of Regular Market Hours' (R). This message indicates that DAY and GTX orders, as well as market orders and pegged orders,  are available for execution on IEX.
	 */
	bool getIsSystemEventStartOfRegularMarketHours();

	/*! \brief Set Indicates if the system event is 'Start of Regular Market Hours' (R). This message indicates that DAY and GTX orders, as well as market orders and pegged orders,  are available for execution on IEX.
	 */
	void setIsSystemEventStartOfRegularMarketHours(bool  is_system_event_start_of_regular_market_hours);
	/*! \brief Get Indicates if the system event is 'End of Regular Market Hours' (M). This message indicates that DAY orders, market orders, and pegged orders  are no longer accepted by IEX.
	 */
	bool getIsSystemEventEndOfRegularMarketHours();

	/*! \brief Set Indicates if the system event is 'End of Regular Market Hours' (M). This message indicates that DAY orders, market orders, and pegged orders  are no longer accepted by IEX.
	 */
	void setIsSystemEventEndOfRegularMarketHours(bool  is_system_event_end_of_regular_market_hours);
	/*! \brief Get Indicates if the system event is 'End of System Hours' (E). This message indicates that IEX is now closed and will not accept  any new orders during this trading session. It is still possible  to receive messages after the end of day.
	 */
	bool getIsSystemEventEndOfSystemHours();

	/*! \brief Set Indicates if the system event is 'End of System Hours' (E). This message indicates that IEX is now closed and will not accept  any new orders during this trading session. It is still possible  to receive messages after the end of day.
	 */
	void setIsSystemEventEndOfSystemHours(bool  is_system_event_end_of_system_hours);
	/*! \brief Get Indicates if the system event is 'End of Messages' (C). This is always the last message sent in any trading session.
	 */
	bool getIsSystemEventEndOfMessages();

	/*! \brief Set Indicates if the system event is 'End of Messages' (C). This is always the last message sent in any trading session.
	 */
	void setIsSystemEventEndOfMessages(bool  is_system_event_end_of_messages);

private:
	long long timestamp_nanos;
	std::string timestamp;
	int system_event;
	std::string system_event_code;
	std::string system_event_text;
	bool is_system_event_start_of_messages;
	bool is_system_event_start_of_system_hours;
	bool is_system_event_start_of_regular_market_hours;
	bool is_system_event_end_of_regular_market_hours;
	bool is_system_event_end_of_system_hours;
	bool is_system_event_end_of_messages;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Admin.SystemEventModel_H_ */
