(defproject oeml-rest-api "v1"
  :description "This section will provide necessary information about the `CoinAPI OEML REST API` protocol."
  :url "https://www.coinapi.io"
  :license {:name "MIT"
            :url "https://github.com/coinapi/coinapi-sdk/blob/master/LICENSE"}
  :dependencies [[org.clojure/clojure "1.9.0"]
                 [metosin/spec-tools "0.7.0"]
                 [clj-http "3.8.0"]
                 [orchestra "2017.11.12-1"]
                 [cheshire "5.8.0"]])