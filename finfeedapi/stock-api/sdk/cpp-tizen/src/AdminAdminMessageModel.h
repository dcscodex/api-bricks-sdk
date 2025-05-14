/*
 * Admin.AdminMessageModel.h
 *
 * Represents the response DTO for IEX admin information, combining all symbol-based admin message types
 */

#ifndef _Admin.AdminMessageModel_H_
#define _Admin.AdminMessageModel_H_


#include <string>
#include "Admin.AuctionInformationModel.h"
#include "Admin.OfficialPriceModel.h"
#include "Admin.OperationalHaltStatusModel.h"
#include "Admin.RetailLiquidityIndicatorModel.h"
#include "Admin.SecurityDirectoryModel.h"
#include "Admin.SecurityEventModel.h"
#include "Admin.ShortSalePriceTestStatusModel.h"
#include "Admin.SystemEventModel.h"
#include "Admin.TradingStatusModel.h"
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents the response DTO for IEX admin information, combining all symbol-based admin message types
 *
 *  \ingroup Models
 *
 */

class Admin.AdminMessageModel : public Object {
public:
	/*! \brief Constructor.
	 */
	Admin.AdminMessageModel();
	Admin.AdminMessageModel(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Admin.AdminMessageModel();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	Admin.TradingStatusModel getTradingStatus();

	/*! \brief Set 
	 */
	void setTradingStatus(Admin.TradingStatusModel  trading_status);
	/*! \brief Get 
	 */
	Admin.OfficialPriceModel getOfficialPrice();

	/*! \brief Set 
	 */
	void setOfficialPrice(Admin.OfficialPriceModel  official_price);
	/*! \brief Get 
	 */
	Admin.SecurityEventModel getSecurityEvent();

	/*! \brief Set 
	 */
	void setSecurityEvent(Admin.SecurityEventModel  security_event);
	/*! \brief Get 
	 */
	Admin.AuctionInformationModel getAuctionInformation();

	/*! \brief Set 
	 */
	void setAuctionInformation(Admin.AuctionInformationModel  auction_information);
	/*! \brief Get 
	 */
	Admin.ShortSalePriceTestStatusModel getShortSalePriceTest();

	/*! \brief Set 
	 */
	void setShortSalePriceTest(Admin.ShortSalePriceTestStatusModel  short_sale_price_test);
	/*! \brief Get 
	 */
	Admin.OperationalHaltStatusModel getOperationalHaltStatus();

	/*! \brief Set 
	 */
	void setOperationalHaltStatus(Admin.OperationalHaltStatusModel  operational_halt_status);
	/*! \brief Get 
	 */
	Admin.RetailLiquidityIndicatorModel getRetailLiquidityIndicator();

	/*! \brief Set 
	 */
	void setRetailLiquidityIndicator(Admin.RetailLiquidityIndicatorModel  retail_liquidity_indicator);
	/*! \brief Get 
	 */
	Admin.SystemEventModel getSystemEvent();

	/*! \brief Set 
	 */
	void setSystemEvent(Admin.SystemEventModel  system_event);
	/*! \brief Get 
	 */
	Admin.SecurityDirectoryModel getSecurityDirectory();

	/*! \brief Set 
	 */
	void setSecurityDirectory(Admin.SecurityDirectoryModel  security_directory);

private:
	Admin.TradingStatusModel trading_status;
	Admin.OfficialPriceModel official_price;
	Admin.SecurityEventModel security_event;
	Admin.AuctionInformationModel auction_information;
	Admin.ShortSalePriceTestStatusModel short_sale_price_test;
	Admin.OperationalHaltStatusModel operational_halt_status;
	Admin.RetailLiquidityIndicatorModel retail_liquidity_indicator;
	Admin.SystemEventModel system_event;
	Admin.SecurityDirectoryModel security_directory;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Admin.AdminMessageModel_H_ */
