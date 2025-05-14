/*
 * Level3.OrderBookModel.h
 *
 * Represents the response DTO for Level-3 order book information
 */

#ifndef _Level3.OrderBookModel_H_
#define _Level3.OrderBookModel_H_


#include <string>
#include "Level3.AddOrderModel.h"
#include "Level3.ClearBookModel.h"
#include "Level3.DeleteOrderModel.h"
#include "Level3.ExecutedOrderModel.h"
#include "Level3.ModifyOrderModel.h"
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents the response DTO for Level-3 order book information
 *
 *  \ingroup Models
 *
 */

class Level3.OrderBookModel : public Object {
public:
	/*! \brief Constructor.
	 */
	Level3.OrderBookModel();
	Level3.OrderBookModel(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Level3.OrderBookModel();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	Level3.AddOrderModel getAddOrder();

	/*! \brief Set 
	 */
	void setAddOrder(Level3.AddOrderModel  add_order);
	/*! \brief Get 
	 */
	Level3.DeleteOrderModel getDeleteOrder();

	/*! \brief Set 
	 */
	void setDeleteOrder(Level3.DeleteOrderModel  delete_order);
	/*! \brief Get 
	 */
	Level3.ModifyOrderModel getModifyOrder();

	/*! \brief Set 
	 */
	void setModifyOrder(Level3.ModifyOrderModel  modify_order);
	/*! \brief Get 
	 */
	Level3.ExecutedOrderModel getExecutedOrder();

	/*! \brief Set 
	 */
	void setExecutedOrder(Level3.ExecutedOrderModel  executed_order);
	/*! \brief Get 
	 */
	Level3.ClearBookModel getClearBook();

	/*! \brief Set 
	 */
	void setClearBook(Level3.ClearBookModel  clear_book);

private:
	Level3.AddOrderModel add_order;
	Level3.DeleteOrderModel delete_order;
	Level3.ModifyOrderModel modify_order;
	Level3.ExecutedOrderModel executed_order;
	Level3.ClearBookModel clear_book;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Level3.OrderBookModel_H_ */
