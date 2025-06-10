/*
 * V1.ListingItem.h
 *
 * Represents a listing item.
 */

#ifndef _V1.ListingItem_H_
#define _V1.ListingItem_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents a listing item.
 *
 *  \ingroup Models
 *
 */

class V1.ListingItem : public Object {
public:
	/*! \brief Constructor.
	 */
	V1.ListingItem();
	V1.ListingItem(char* str);

	/*! \brief Destructor.
	 */
	virtual ~V1.ListingItem();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Gets or sets the metric ID.
	 */
	std::string getMetricId();

	/*! \brief Set Gets or sets the metric ID.
	 */
	void setMetricId(std::string  metric_id);
	/*! \brief Get Gets or sets the symbol ID.
	 */
	std::string getSymbolId();

	/*! \brief Set Gets or sets the symbol ID.
	 */
	void setSymbolId(std::string  symbol_id);
	/*! \brief Get Gets or sets the symbol ID from the exchange.
	 */
	std::string getSymbolIdExternal();

	/*! \brief Set Gets or sets the symbol ID from the exchange.
	 */
	void setSymbolIdExternal(std::string  symbol_id_external);
	/*! \brief Get Gets or sets the exchange ID.
	 */
	std::string getExchangeId();

	/*! \brief Set Gets or sets the exchange ID.
	 */
	void setExchangeId(std::string  exchange_id);
	/*! \brief Get Gets or sets the asset ID.
	 */
	std::string getAssetId();

	/*! \brief Set Gets or sets the asset ID.
	 */
	void setAssetId(std::string  asset_id);
	/*! \brief Get Gets or sets the asset ID from the exchange.
	 */
	std::string getAssetIdExternal();

	/*! \brief Set Gets or sets the asset ID from the exchange.
	 */
	void setAssetIdExternal(std::string  asset_id_external);
	/*! \brief Get Gets or sets the chain id.
	 */
	std::string getChainId();

	/*! \brief Set Gets or sets the chain id.
	 */
	void setChainId(std::string  chain_id);
	/*! \brief Get Gets or sets the network id.
	 */
	std::string getNetworkId();

	/*! \brief Set Gets or sets the network id.
	 */
	void setNetworkId(std::string  network_id);

private:
	std::string metric_id;
	std::string symbol_id;
	std::string symbol_id_external;
	std::string exchange_id;
	std::string asset_id;
	std::string asset_id_external;
	std::string chain_id;
	std::string network_id;
	void __init();
	void __cleanup();

};
}
}

#endif /* _V1.ListingItem_H_ */
