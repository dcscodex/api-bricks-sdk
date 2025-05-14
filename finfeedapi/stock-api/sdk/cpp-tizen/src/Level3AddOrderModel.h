/*
 * Level3.AddOrderModel.h
 *
 * Represents the response DTO for add order information
 */

#ifndef _Level3.AddOrderModel_H_
#define _Level3.AddOrderModel_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents the response DTO for add order information
 *
 *  \ingroup Models
 *
 */

class Level3.AddOrderModel : public Object {
public:
	/*! \brief Constructor.
	 */
	Level3.AddOrderModel();
	Level3.AddOrderModel(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Level3.AddOrderModel();

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
	/*! \brief Get Time when the order was added as DateTime (UTC)
	 */
	std::string getTimestamp();

	/*! \brief Set Time when the order was added as DateTime (UTC)
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get Indicates if this is a Buy order ('8'/0x38).
	 */
	bool getIsSideBuy();

	/*! \brief Set Indicates if this is a Buy order ('8'/0x38).
	 */
	void setIsSideBuy(bool  is_side_buy);
	/*! \brief Get Quoted size in number of shares
	 */
	int getSize();

	/*! \brief Set Quoted size in number of shares
	 */
	void setSize(int  size);
	/*! \brief Get Price as decimal
	 */
	double getPrice();

	/*! \brief Set Price as decimal
	 */
	void setPrice(double  price);
	/*! \brief Get Order identifier
	 */
	long long getOrderId();

	/*! \brief Set Order identifier
	 */
	void setOrderId(long long  order_id);

private:
	std::string symbol;
	long long timestamp_nanos;
	std::string timestamp;
	bool is_side_buy;
	int size;
	double price;
	long long order_id;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Level3.AddOrderModel_H_ */
