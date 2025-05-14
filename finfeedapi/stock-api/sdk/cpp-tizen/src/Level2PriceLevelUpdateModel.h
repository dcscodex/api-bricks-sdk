/*
 * Level2.PriceLevelUpdateModel.h
 *
 * Represents the response DTO for price level update information
 */

#ifndef _Level2.PriceLevelUpdateModel_H_
#define _Level2.PriceLevelUpdateModel_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents the response DTO for price level update information
 *
 *  \ingroup Models
 *
 */

class Level2.PriceLevelUpdateModel : public Object {
public:
	/*! \brief Constructor.
	 */
	Level2.PriceLevelUpdateModel();
	Level2.PriceLevelUpdateModel(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Level2.PriceLevelUpdateModel();

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
	/*! \brief Get Time when the price level update was recorded as DateTime
	 */
	std::string getTimestamp();

	/*! \brief Set Time when the price level update was recorded as DateTime
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get Indicates if this is a price level update for the Buy Side.
	 */
	bool getIsSideBuy();

	/*! \brief Set Indicates if this is a price level update for the Buy Side.
	 */
	void setIsSideBuy(bool  is_side_buy);
	/*! \brief Get Indicates if event processing is complete.
	 */
	bool getIsEventProcessingComplete();

	/*! \brief Set Indicates if event processing is complete.
	 */
	void setIsEventProcessingComplete(bool  is_event_processing_complete);
	/*! \brief Get Aggregate quoted size at the price level
	 */
	int getSize();

	/*! \brief Set Aggregate quoted size at the price level
	 */
	void setSize(int  size);
	/*! \brief Get Price level as decimal
	 */
	double getPrice();

	/*! \brief Set Price level as decimal
	 */
	void setPrice(double  price);

private:
	std::string symbol;
	long long timestamp_nanos;
	std::string timestamp;
	bool is_side_buy;
	bool is_event_processing_complete;
	int size;
	double price;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Level2.PriceLevelUpdateModel_H_ */
