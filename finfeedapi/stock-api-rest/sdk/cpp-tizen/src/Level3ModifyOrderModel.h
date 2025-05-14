/*
 * Level3.ModifyOrderModel.h
 *
 * Represents the response DTO for order modify information
 */

#ifndef _Level3.ModifyOrderModel_H_
#define _Level3.ModifyOrderModel_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents the response DTO for order modify information
 *
 *  \ingroup Models
 *
 */

class Level3.ModifyOrderModel : public Object {
public:
	/*! \brief Constructor.
	 */
	Level3.ModifyOrderModel();
	Level3.ModifyOrderModel(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Level3.ModifyOrderModel();

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
	/*! \brief Get Time when the order was modified as DateTime (UTC)
	 */
	std::string getTimestamp();

	/*! \brief Set Time when the order was modified as DateTime (UTC)
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get Order identifier reference
	 */
	long long getOrderIdReference();

	/*! \brief Set Order identifier reference
	 */
	void setOrderIdReference(long long  order_id_reference);
	/*! \brief Get Indicates if priority is reseted
	 */
	bool getIsPriorityReset();

	/*! \brief Set Indicates if priority is reseted
	 */
	void setIsPriorityReset(bool  is_priority_reset);
	/*! \brief Get New total quoted size in number of shares
	 */
	int getSize();

	/*! \brief Set New total quoted size in number of shares
	 */
	void setSize(int  size);
	/*! \brief Get Price as decimal
	 */
	double getPrice();

	/*! \brief Set Price as decimal
	 */
	void setPrice(double  price);

private:
	std::string symbol;
	long long timestamp_nanos;
	std::string timestamp;
	long long order_id_reference;
	bool is_priority_reset;
	int size;
	double price;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Level3.ModifyOrderModel_H_ */
