/*
 * Level3.ClearBookModel.h
 *
 * Represents the response DTO for clear book information
 */

#ifndef _Level3.ClearBookModel_H_
#define _Level3.ClearBookModel_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents the response DTO for clear book information
 *
 *  \ingroup Models
 *
 */

class Level3.ClearBookModel : public Object {
public:
	/*! \brief Constructor.
	 */
	Level3.ClearBookModel();
	Level3.ClearBookModel(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Level3.ClearBookModel();

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
	/*! \brief Get Time when the book was cleared as DateTime
	 */
	std::string getTimestamp();

	/*! \brief Set Time when the book was cleared as DateTime
	 */
	void setTimestamp(std::string  timestamp);

private:
	std::string symbol;
	long long timestamp_nanos;
	std::string timestamp;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Level3.ClearBookModel_H_ */
