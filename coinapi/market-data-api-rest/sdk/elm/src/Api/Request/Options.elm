{-
   CoinAPI Market Data REST API
   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   The version of the OpenAPI document: v1
   Contact: support@apibricks.io

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git

   DO NOT EDIT THIS FILE MANUALLY.

   For more info on generating Elm code, see https://eriktim.github.io/openapi-elm/
-}


module Api.Request.Options exposing
    ( v1OptionsExchangeIdCurrentGet
    )

import Api
import Api.Data exposing (..)
import Dict
import Http
import Json.Decode
import Json.Encode


{-| Current data by Exchange

Get current options data for a specific exchange.  Returns option data grouped by underlying asset, quote currency, and expiration time, with quotes for both calls and puts at each strike price.

-}
v1OptionsExchangeIdCurrentGet : String -> String -> Api.Request (List Api.Data.OptionsOptionExchangeGroup)
v1OptionsExchangeIdCurrentGet exchangeId_path auth_token =
    Api.request
        "GET"
        "/v1/options/{exchange_id}/current"
        [ ( "exchange_id", identity exchangeId_path ) ]
        []
        []
        Nothing
        (Json.Decode.list Api.Data.optionsOptionExchangeGroupDecoder)
        |> Api.withBearerToken auth_token
