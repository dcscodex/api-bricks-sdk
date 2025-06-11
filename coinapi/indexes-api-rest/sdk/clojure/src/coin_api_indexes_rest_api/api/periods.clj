(ns coin-api-indexes-rest-api.api.periods
  (:require [coin-api-indexes-rest-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [coin-api-indexes-rest-api.specs.metadata/timeseries-period :refer :all]
            [coin-api-indexes-rest-api.specs.metadata/exchange :refer :all]
            [coin-api-indexes-rest-api.specs.indexes/index-multi-asset-weight :refer :all]
            [coin-api-indexes-rest-api.specs.indexes/index-value-component :refer :all]
            [coin-api-indexes-rest-api.specs.indexes/index-definition-input-data :refer :all]
            [coin-api-indexes-rest-api.specs.indexes/index-timeseries-item :refer :all]
            [coin-api-indexes-rest-api.specs.indexes/index-identifier :refer :all]
            [coin-api-indexes-rest-api.specs.indexes/index-value :refer :all]
            [coin-api-indexes-rest-api.specs.indexes/index-definition-snapshot-entry :refer :all]
            )
  (:import (java.io File)))


(defn-spec v1-metadata-periods-get-with-http-info any?
  "List all periods
  Get full list of supported time periods
            
### Available periods
            
Time unit | Period identifiers
--------- | -----------
Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC
Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN
Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS
Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY
Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH
Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS
            
:::tip
You can assume that we will not remove any periods from this response, however, we may add new ones.
:::"
  []
  (call-api "/v1/metadata/periods" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["APIKey" "JWT"]}))

(defn-spec v1-metadata-periods-get (s/coll-of metadata/timeseries-period-spec)
  "List all periods
  Get full list of supported time periods
            
### Available periods
            
Time unit | Period identifiers
--------- | -----------
Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC
Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN
Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS
Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY
Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH
Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS
            
:::tip
You can assume that we will not remove any periods from this response, however, we may add new ones.
:::"
  []
  (let [res (:data (v1-metadata-periods-get-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of metadata/timeseries-period-spec) res st/string-transformer)
       res)))


