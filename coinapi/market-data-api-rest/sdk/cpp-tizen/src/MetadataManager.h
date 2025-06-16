#ifndef _MetadataManager_H_
#define _MetadataManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "V1.Asset.h"
#include "V1.Chain.h"
#include "V1.Exchange.h"
#include "V1.Icon.h"
#include "V1.Symbol.h"
#include "V1.SymbolMapping.h"
#include <list>
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Metadata Metadata
 * \ingroup Operations
 *  @{
 */
class MetadataManager {
public:
	MetadataManager();
	virtual ~MetadataManager();

/*! \brief List all assets by asset ID. *Synchronous*
 *
 * 
 * \param assetId The asset ID. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1AssetsAssetIdGetSync(char * accessToken,
	std::string assetId, 
	void(* handler)(std::list<V1.Asset>, Error, void* )
	, void* userData);

/*! \brief List all assets by asset ID. *Asynchronous*
 *
 * 
 * \param assetId The asset ID. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1AssetsAssetIdGetAsync(char * accessToken,
	std::string assetId, 
	void(* handler)(std::list<V1.Asset>, Error, void* )
	, void* userData);


/*! \brief List all assets. *Synchronous*
 *
 * Retrieves all assets.              :::info Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency). :::              :::info Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
 * \param filterAssetId Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`).
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1AssetsGetSync(char * accessToken,
	std::string filterAssetId, 
	void(* handler)(std::list<V1.Asset>, Error, void* )
	, void* userData);

/*! \brief List all assets. *Asynchronous*
 *
 * Retrieves all assets.              :::info Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency). :::              :::info Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
 * \param filterAssetId Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`).
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1AssetsGetAsync(char * accessToken,
	std::string filterAssetId, 
	void(* handler)(std::list<V1.Asset>, Error, void* )
	, void* userData);


/*! \brief List all asset icons. *Synchronous*
 *
 * Gets the list of icons (of the given size) for all the assets.
 * \param size The size of the icons. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1AssetsIconsSizeGetSync(char * accessToken,
	int size, 
	void(* handler)(std::list<V1.Icon>, Error, void* )
	, void* userData);

/*! \brief List all asset icons. *Asynchronous*
 *
 * Gets the list of icons (of the given size) for all the assets.
 * \param size The size of the icons. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1AssetsIconsSizeGetAsync(char * accessToken,
	int size, 
	void(* handler)(std::list<V1.Icon>, Error, void* )
	, void* userData);


/*! \brief List all chains by chain ID. *Synchronous*
 *
 * 
 * \param chainId The chain ID. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ChainsChainIdGetSync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<V1.Chain>, Error, void* )
	, void* userData);

/*! \brief List all chains by chain ID. *Asynchronous*
 *
 * 
 * \param chainId The chain ID. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ChainsChainIdGetAsync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<V1.Chain>, Error, void* )
	, void* userData);


/*! \brief List all blockchain chains. *Synchronous*
 *
 * Retrieves all blockchain chains supported by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific chain. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
 * \param filterChainId Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. `ETHEREUM;ARBITRUM`).
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ChainsGetSync(char * accessToken,
	std::string filterChainId, 
	void(* handler)(std::list<V1.Chain>, Error, void* )
	, void* userData);

/*! \brief List all blockchain chains. *Asynchronous*
 *
 * Retrieves all blockchain chains supported by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific chain. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
 * \param filterChainId Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. `ETHEREUM;ARBITRUM`).
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ChainsGetAsync(char * accessToken,
	std::string filterChainId, 
	void(* handler)(std::list<V1.Chain>, Error, void* )
	, void* userData);


/*! \brief List all exchanges by exchange_id. *Synchronous*
 *
 * 
 * \param exchangeId The ID of the exchange. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExchangesExchangeIdGetSync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<V1.Exchange>, Error, void* )
	, void* userData);

/*! \brief List all exchanges by exchange_id. *Asynchronous*
 *
 * 
 * \param exchangeId The ID of the exchange. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExchangesExchangeIdGetAsync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<V1.Exchange>, Error, void* )
	, void* userData);


/*! \brief List all exchanges. *Synchronous*
 *
 * Get a detailed list of exchanges provided by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
 * \param filterExchangeId Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExchangesGetSync(char * accessToken,
	std::string filterExchangeId, 
	void(* handler)(std::list<V1.Exchange>, Error, void* )
	, void* userData);

/*! \brief List all exchanges. *Asynchronous*
 *
 * Get a detailed list of exchanges provided by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
 * \param filterExchangeId Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExchangesGetAsync(char * accessToken,
	std::string filterExchangeId, 
	void(* handler)(std::list<V1.Exchange>, Error, void* )
	, void* userData);


/*! \brief List of icons for the exchanges. *Synchronous*
 *
 * 
 * \param size The size of the icons. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExchangesIconsSizeGetSync(char * accessToken,
	int size, 
	void(* handler)(std::list<V1.Icon>, Error, void* )
	, void* userData);

/*! \brief List of icons for the exchanges. *Asynchronous*
 *
 * 
 * \param size The size of the icons. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExchangesIconsSizeGetAsync(char * accessToken,
	int size, 
	void(* handler)(std::list<V1.Icon>, Error, void* )
	, void* userData);


/*! \brief List of symbols for the exchange. *Synchronous*
 *
 * 
 * \param exchangeId The ID of the exchange (from the Metadata -> Exchanges) *Required*
 * \param filterSymbolId The filter for symbol ID.
 * \param filterAssetId The filter for asset ID.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1SymbolsExchangeIdGetSync(char * accessToken,
	std::string exchangeId, std::string filterSymbolId, std::string filterAssetId, 
	void(* handler)(std::list<V1.Symbol>, Error, void* )
	, void* userData);

/*! \brief List of symbols for the exchange. *Asynchronous*
 *
 * 
 * \param exchangeId The ID of the exchange (from the Metadata -> Exchanges) *Required*
 * \param filterSymbolId The filter for symbol ID.
 * \param filterAssetId The filter for asset ID.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1SymbolsExchangeIdGetAsync(char * accessToken,
	std::string exchangeId, std::string filterSymbolId, std::string filterAssetId, 
	void(* handler)(std::list<V1.Symbol>, Error, void* )
	, void* userData);


/*! \brief List all symbols. *Synchronous*
 *
 * Retrieves all symbols with optional filtering.              :::info \"price_precision\" and \"size_precision\" are data precisions and are not always the same precisions used for trading eg. for the \"BINANCE\" exchanges. :::              :::info You should not assume that the market data will be always within the resolution provided by the \"price_precision\" and \"size_precision\". The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately. :::              ### Symbol identifier              Our symbol identifier is created using a pattern that depends on symbol type.              Type | `symbol_id` pattern --------- | --------- SPOT | `{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}` FUTURES | `{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}` OPTION | `{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}` PERPETUAL | `{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}` INDEX | `{exchange_id}_IDX_{index_id}` CREDIT | `{exchange_id}_CRE_{asset_id_base}` CONTACT  | `{exchange_id}_COT_{contract_id}`              :::info In the unlikely event when the \"symbol_id\" for more than one market is the same. We will append the additional term (prefixed with the \"_\") at the end of the duplicated identifiers to differentiate them. :::info              ### Symbol types list (enumeration of `symbol_type` output variable)              Type | Name | Description -------- | - | ----------- SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)* FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time INDEX | Index | Statistical composite that measures changes in the economy or markets. CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate. CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)*              ### Additional output variables for `symbol_type = INDEX`              Variable | Description --------- | ----------- index_id | Index identifier index_display_name | Human readable name of the index *(optional)* index_display_description | Description of the index *(optional)*              ### Additional output variables for `symbol_type = FUTURES`              Variable | Description --------- | ----------- future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601 future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = PERPETUAL`              Variable | Description --------- | ----------- future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = OPTION`              Variable | Description --------- | ----------- option_type_is_call | Boolean value representing option type. `true` for Call options, `false` for Put options option_strike_price | Price at which option contract can be exercised option_contract_unit | Base asset amount of underlying spot which single option represents option_exercise_style | Option exercise style. Can be `EUROPEAN` or `AMERICAN` option_expiration_time | Option contract expiration time in ISO 8601              ### Additional output variables for `symbol_type = CONTRACT`              Variable | Description --------- | ----------- contract_delivery_time | Predetermined time of contract delivery date in ISO 8601 contract_unit | Contact size *(eg. 10 BTC if `contract_unit` = `10` and `contract_unit_asset` = `BTC`)* contract_unit_asset | Identifier of the asset used to denominate the contract unit contract_id | Identifier of contract by the exchange
 * \param filterSymbolId Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. `BITSTAMP`_ or `BINANCE_SPOT_`)
 * \param filterExchangeId The filter for exchange ID.
 * \param filterAssetId The filter for asset ID.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1SymbolsGetSync(char * accessToken,
	std::string filterSymbolId, std::string filterExchangeId, std::string filterAssetId, 
	void(* handler)(std::list<V1.Symbol>, Error, void* )
	, void* userData);

/*! \brief List all symbols. *Asynchronous*
 *
 * Retrieves all symbols with optional filtering.              :::info \"price_precision\" and \"size_precision\" are data precisions and are not always the same precisions used for trading eg. for the \"BINANCE\" exchanges. :::              :::info You should not assume that the market data will be always within the resolution provided by the \"price_precision\" and \"size_precision\". The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately. :::              ### Symbol identifier              Our symbol identifier is created using a pattern that depends on symbol type.              Type | `symbol_id` pattern --------- | --------- SPOT | `{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}` FUTURES | `{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}` OPTION | `{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}` PERPETUAL | `{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}` INDEX | `{exchange_id}_IDX_{index_id}` CREDIT | `{exchange_id}_CRE_{asset_id_base}` CONTACT  | `{exchange_id}_COT_{contract_id}`              :::info In the unlikely event when the \"symbol_id\" for more than one market is the same. We will append the additional term (prefixed with the \"_\") at the end of the duplicated identifiers to differentiate them. :::info              ### Symbol types list (enumeration of `symbol_type` output variable)              Type | Name | Description -------- | - | ----------- SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)* FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time INDEX | Index | Statistical composite that measures changes in the economy or markets. CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate. CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)*              ### Additional output variables for `symbol_type = INDEX`              Variable | Description --------- | ----------- index_id | Index identifier index_display_name | Human readable name of the index *(optional)* index_display_description | Description of the index *(optional)*              ### Additional output variables for `symbol_type = FUTURES`              Variable | Description --------- | ----------- future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601 future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = PERPETUAL`              Variable | Description --------- | ----------- future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = OPTION`              Variable | Description --------- | ----------- option_type_is_call | Boolean value representing option type. `true` for Call options, `false` for Put options option_strike_price | Price at which option contract can be exercised option_contract_unit | Base asset amount of underlying spot which single option represents option_exercise_style | Option exercise style. Can be `EUROPEAN` or `AMERICAN` option_expiration_time | Option contract expiration time in ISO 8601              ### Additional output variables for `symbol_type = CONTRACT`              Variable | Description --------- | ----------- contract_delivery_time | Predetermined time of contract delivery date in ISO 8601 contract_unit | Contact size *(eg. 10 BTC if `contract_unit` = `10` and `contract_unit_asset` = `BTC`)* contract_unit_asset | Identifier of the asset used to denominate the contract unit contract_id | Identifier of contract by the exchange
 * \param filterSymbolId Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. `BITSTAMP`_ or `BINANCE_SPOT_`)
 * \param filterExchangeId The filter for exchange ID.
 * \param filterAssetId The filter for asset ID.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1SymbolsGetAsync(char * accessToken,
	std::string filterSymbolId, std::string filterExchangeId, std::string filterAssetId, 
	void(* handler)(std::list<V1.Symbol>, Error, void* )
	, void* userData);


/*! \brief List symbol mapping for the exchange. *Synchronous*
 *
 * 
 * \param exchangeId The ID of the exchange (from the Metadata -> Exchanges) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1SymbolsMapExchangeIdGetSync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<V1.SymbolMapping>, Error, void* )
	, void* userData);

/*! \brief List symbol mapping for the exchange. *Asynchronous*
 *
 * 
 * \param exchangeId The ID of the exchange (from the Metadata -> Exchanges) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1SymbolsMapExchangeIdGetAsync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<V1.SymbolMapping>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://rest.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* MetadataManager_H_ */
