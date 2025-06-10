(ns rest-api.api.metadata
  (:require [rest-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [rest-api.specs.v1/asset :refer :all]
            [rest-api.specs.v1/metric-data :refer :all]
            [rest-api.specs.options/strike :refer :all]
            [rest-api.specs.v1/external-asset :refer :all]
            [rest-api.specs.v1/icon :refer :all]
            [rest-api.specs.v1/listing-item :refer :all]
            [rest-api.specs.v1/order-book-depth :refer :all]
            [rest-api.specs.v1/metric-info :refer :all]
            [rest-api.specs.v1/external-exchange :refer :all]
            [rest-api.specs.v1/exchange-rates :refer :all]
            [rest-api.specs.models/exchange-timeseries-item :refer :all]
            [rest-api.specs.v1/exchange :refer :all]
            [rest-api.specs.v1/quote :refer :all]
            [rest-api.specs.v1/symbol-mapping :refer :all]
            [rest-api.specs.v1/general-data :refer :all]
            [rest-api.specs.v1/chain :refer :all]
            [rest-api.specs.v1/quote-trade :refer :all]
            [rest-api.specs.options/option-exchange-group :refer :all]
            [rest-api.specs.v1/last-trade :refer :all]
            [rest-api.specs.v1/metric :refer :all]
            [rest-api.specs.v1/exchange-rates-timeseries-item :refer :all]
            [rest-api.specs.v1/symbol :refer :all]
            [rest-api.specs.v1/order-book :refer :all]
            [rest-api.specs.v1/timeseries-period :refer :all]
            [rest-api.specs.v1/trade :refer :all]
            [rest-api.specs.v1/chain-network-address :refer :all]
            [rest-api.specs.v1/exchange-rates-rate :refer :all]
            [rest-api.specs.v1/exchange-rate :refer :all]
            [rest-api.specs.v1/order-book-base :refer :all]
            [rest-api.specs.v1/timeseries-item :refer :all]
            )
  (:import (java.io File)))


(defn-spec v1-assets-asset-id-get-with-http-info any?
  "List all assets by asset ID"
  [asset_id string?]
  (check-required-params asset_id)
  (call-api "/v1/assets/{asset_id}" :get
            {:path-params   {"asset_id" asset_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["ApiKey"]}))

(defn-spec v1-assets-asset-id-get (s/coll-of v1/asset-spec)
  "List all assets by asset ID"
  [asset_id string?]
  (let [res (:data (v1-assets-asset-id-get-with-http-info asset_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of v1/asset-spec) res st/string-transformer)
       res)))


(defn-spec v1-assets-get-with-http-info any?
  "List all assets
  Retrieves all assets.
            
:::info
Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).
:::
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::"
  ([] (v1-assets-get-with-http-info nil))
  ([{:keys [filter_asset_id]} (s/map-of keyword? any?)]
   (call-api "/v1/assets" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_asset_id" filter_asset_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["ApiKey"]})))

(defn-spec v1-assets-get (s/coll-of v1/asset-spec)
  "List all assets
  Retrieves all assets.
            
:::info
Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).
:::
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::"
  ([] (v1-assets-get nil))
  ([optional-params any?]
   (let [res (:data (v1-assets-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/asset-spec) res st/string-transformer)
        res))))


(defn-spec v1-assets-icons-size-get-with-http-info any?
  "List all asset icons
  Gets the list of icons (of the given size) for all the assets."
  [size int?]
  (check-required-params size)
  (call-api "/v1/assets/icons/{size}" :get
            {:path-params   {"size" size }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["ApiKey"]}))

(defn-spec v1-assets-icons-size-get (s/coll-of v1/icon-spec)
  "List all asset icons
  Gets the list of icons (of the given size) for all the assets."
  [size int?]
  (let [res (:data (v1-assets-icons-size-get-with-http-info size))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of v1/icon-spec) res st/string-transformer)
       res)))


(defn-spec v1-exchanges-exchange-id-get-with-http-info any?
  "List all exchanges by exchange_id"
  [exchange_id string?]
  (check-required-params exchange_id)
  (call-api "/v1/exchanges/{exchange_id}" :get
            {:path-params   {"exchange_id" exchange_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["ApiKey"]}))

(defn-spec v1-exchanges-exchange-id-get (s/coll-of v1/exchange-spec)
  "List all exchanges by exchange_id"
  [exchange_id string?]
  (let [res (:data (v1-exchanges-exchange-id-get-with-http-info exchange_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of v1/exchange-spec) res st/string-transformer)
       res)))


(defn-spec v1-exchanges-get-with-http-info any?
  "List all exchanges
  Get a detailed list of exchanges provided by the system.
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::"
  ([] (v1-exchanges-get-with-http-info nil))
  ([{:keys [filter_exchange_id]} (s/map-of keyword? any?)]
   (call-api "/v1/exchanges" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_exchange_id" filter_exchange_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["ApiKey"]})))

(defn-spec v1-exchanges-get (s/coll-of v1/exchange-spec)
  "List all exchanges
  Get a detailed list of exchanges provided by the system.
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::"
  ([] (v1-exchanges-get nil))
  ([optional-params any?]
   (let [res (:data (v1-exchanges-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/exchange-spec) res st/string-transformer)
        res))))


(defn-spec v1-exchanges-icons-size-get-with-http-info any?
  "List of icons for the exchanges"
  [size int?]
  (check-required-params size)
  (call-api "/v1/exchanges/icons/{size}" :get
            {:path-params   {"size" size }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["ApiKey"]}))

(defn-spec v1-exchanges-icons-size-get (s/coll-of v1/icon-spec)
  "List of icons for the exchanges"
  [size int?]
  (let [res (:data (v1-exchanges-icons-size-get-with-http-info size))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of v1/icon-spec) res st/string-transformer)
       res)))


(defn-spec v1-symbols-exchange-id-get-with-http-info any?
  "List of symbols for the exchange"
  ([exchange_id string?, ] (v1-symbols-exchange-id-get-with-http-info exchange_id nil))
  ([exchange_id string?, {:keys [filter_symbol_id filter_asset_id]} (s/map-of keyword? any?)]
   (check-required-params exchange_id)
   (call-api "/v1/symbols/{exchange_id}" :get
             {:path-params   {"exchange_id" exchange_id }
              :header-params {}
              :query-params  {"filter_symbol_id" filter_symbol_id "filter_asset_id" filter_asset_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["ApiKey"]})))

(defn-spec v1-symbols-exchange-id-get (s/coll-of v1/symbol-spec)
  "List of symbols for the exchange"
  ([exchange_id string?, ] (v1-symbols-exchange-id-get exchange_id nil))
  ([exchange_id string?, optional-params any?]
   (let [res (:data (v1-symbols-exchange-id-get-with-http-info exchange_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/symbol-spec) res st/string-transformer)
        res))))


(defn-spec v1-symbols-get-with-http-info any?
  "List all symbols
  Retrieves all symbols with optional filtering.
            
:::info
\"price_precision\" and \"size_precision\" are data precisions and are not always the same precisions used for trading eg. for the \"BINANCE\" exchanges.
:::
            
:::info
You should not assume that the market data will be always within the resolution provided by the \"price_precision\" and \"size_precision\". The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately.
:::
            
### Symbol identifier
            
Our symbol identifier is created using a pattern that depends on symbol type.
            
Type | `symbol_id` pattern
--------- | ---------
SPOT | `{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}`
FUTURES | `{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}`
OPTION | `{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}`
PERPETUAL | `{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}`
INDEX | `{exchange_id}_IDX_{index_id}`
CREDIT | `{exchange_id}_CRE_{asset_id_base}`
CONTACT  | `{exchange_id}_COT_{contract_id}`
            
:::info
In the unlikely event when the \"symbol_id\" for more than one market is the same. We will append the additional term (prefixed with the \"_\") at the end of the duplicated identifiers to differentiate them.
:::info
            
### Symbol types list (enumeration of `symbol_type` output variable)
            
Type | Name | Description
-------- | - | -----------
SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)*
FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time
OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date
PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time
INDEX | Index | Statistical composite that measures changes in the economy or markets.
CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate.
CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)*
            
### Additional output variables for `symbol_type = INDEX`
            
Variable | Description
--------- | -----------
index_id | Index identifier
index_display_name | Human readable name of the index *(optional)*
index_display_description | Description of the index *(optional)*
            
### Additional output variables for `symbol_type = FUTURES`
            
Variable | Description
--------- | -----------
future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601
future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)*
future_contract_unit_asset | Identifier of the asset used to denominate the contract unit
            
### Additional output variables for `symbol_type = PERPETUAL`
            
Variable | Description
--------- | -----------
future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)*
future_contract_unit_asset | Identifier of the asset used to denominate the contract unit
            
### Additional output variables for `symbol_type = OPTION`
            
Variable | Description
--------- | -----------
option_type_is_call | Boolean value representing option type. `true` for Call options, `false` for Put options
option_strike_price | Price at which option contract can be exercised
option_contract_unit | Base asset amount of underlying spot which single option represents
option_exercise_style | Option exercise style. Can be `EUROPEAN` or `AMERICAN`
option_expiration_time | Option contract expiration time in ISO 8601
            
### Additional output variables for `symbol_type = CONTRACT`
            
Variable | Description
--------- | -----------
contract_delivery_time | Predetermined time of contract delivery date in ISO 8601
contract_unit | Contact size *(eg. 10 BTC if `contract_unit` = `10` and `contract_unit_asset` = `BTC`)*
contract_unit_asset | Identifier of the asset used to denominate the contract unit
contract_id | Identifier of contract by the exchange"
  ([] (v1-symbols-get-with-http-info nil))
  ([{:keys [filter_symbol_id filter_exchange_id filter_asset_id]} (s/map-of keyword? any?)]
   (call-api "/v1/symbols" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_symbol_id" filter_symbol_id "filter_exchange_id" filter_exchange_id "filter_asset_id" filter_asset_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["ApiKey"]})))

(defn-spec v1-symbols-get (s/coll-of v1/symbol-spec)
  "List all symbols
  Retrieves all symbols with optional filtering.
            
:::info
\"price_precision\" and \"size_precision\" are data precisions and are not always the same precisions used for trading eg. for the \"BINANCE\" exchanges.
:::
            
:::info
You should not assume that the market data will be always within the resolution provided by the \"price_precision\" and \"size_precision\". The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately.
:::
            
### Symbol identifier
            
Our symbol identifier is created using a pattern that depends on symbol type.
            
Type | `symbol_id` pattern
--------- | ---------
SPOT | `{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}`
FUTURES | `{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}`
OPTION | `{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}`
PERPETUAL | `{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}`
INDEX | `{exchange_id}_IDX_{index_id}`
CREDIT | `{exchange_id}_CRE_{asset_id_base}`
CONTACT  | `{exchange_id}_COT_{contract_id}`
            
:::info
In the unlikely event when the \"symbol_id\" for more than one market is the same. We will append the additional term (prefixed with the \"_\") at the end of the duplicated identifiers to differentiate them.
:::info
            
### Symbol types list (enumeration of `symbol_type` output variable)
            
Type | Name | Description
-------- | - | -----------
SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)*
FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time
OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date
PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time
INDEX | Index | Statistical composite that measures changes in the economy or markets.
CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate.
CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)*
            
### Additional output variables for `symbol_type = INDEX`
            
Variable | Description
--------- | -----------
index_id | Index identifier
index_display_name | Human readable name of the index *(optional)*
index_display_description | Description of the index *(optional)*
            
### Additional output variables for `symbol_type = FUTURES`
            
Variable | Description
--------- | -----------
future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601
future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)*
future_contract_unit_asset | Identifier of the asset used to denominate the contract unit
            
### Additional output variables for `symbol_type = PERPETUAL`
            
Variable | Description
--------- | -----------
future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)*
future_contract_unit_asset | Identifier of the asset used to denominate the contract unit
            
### Additional output variables for `symbol_type = OPTION`
            
Variable | Description
--------- | -----------
option_type_is_call | Boolean value representing option type. `true` for Call options, `false` for Put options
option_strike_price | Price at which option contract can be exercised
option_contract_unit | Base asset amount of underlying spot which single option represents
option_exercise_style | Option exercise style. Can be `EUROPEAN` or `AMERICAN`
option_expiration_time | Option contract expiration time in ISO 8601
            
### Additional output variables for `symbol_type = CONTRACT`
            
Variable | Description
--------- | -----------
contract_delivery_time | Predetermined time of contract delivery date in ISO 8601
contract_unit | Contact size *(eg. 10 BTC if `contract_unit` = `10` and `contract_unit_asset` = `BTC`)*
contract_unit_asset | Identifier of the asset used to denominate the contract unit
contract_id | Identifier of contract by the exchange"
  ([] (v1-symbols-get nil))
  ([optional-params any?]
   (let [res (:data (v1-symbols-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/symbol-spec) res st/string-transformer)
        res))))


(defn-spec v1-symbols-map-exchange-id-get-with-http-info any?
  "List symbol mapping for the exchange"
  [exchange_id string?]
  (check-required-params exchange_id)
  (call-api "/v1/symbols/map/{exchange_id}" :get
            {:path-params   {"exchange_id" exchange_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["ApiKey"]}))

(defn-spec v1-symbols-map-exchange-id-get (s/coll-of v1/symbol-mapping-spec)
  "List symbol mapping for the exchange"
  [exchange_id string?]
  (let [res (:data (v1-symbols-map-exchange-id-get-with-http-info exchange_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of v1/symbol-mapping-spec) res st/string-transformer)
       res)))


