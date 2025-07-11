{-
   FinFeedAPI Stock REST API
   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   The version of the OpenAPI document: v1
   Contact: support@apibricks.io

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git

   DO NOT EDIT THIS FILE MANUALLY.

   For more info on generating Elm code, see https://eriktim.github.io/openapi-elm/
-}


module Api.Request.Metadata exposing
    ( v1ExchangesGet
    , v1SymbolsExchangeIdGet
    )

import Api
import Api.Data exposing (..)
import Dict
import Http
import Json.Decode
import Json.Encode


{-| List of exchanges
-}
v1ExchangesGet : String -> Api.Request (List FinFeedAPIExchangeModel)
v1ExchangesGet auth_token =
    Api.request
        "GET"
        "/v1/exchanges"
        []
        []
        []
        Nothing
        (Json.Decode.list Api.Data.finFeedAPIExchangeModelDecoder)
        |> Api.withBearerToken auth_token

{-| List of symbols for the exchange
-}
v1SymbolsExchangeIdGet : String -> String -> Api.Request (List FinFeedAPISymbolModel)
v1SymbolsExchangeIdGet exchangeId_path auth_token =
    Api.request
        "GET"
        "/v1/symbols/{exchange_id}"
        [ ( "exchange_id", identity exchangeId_path ) ]
        []
        []
        Nothing
        (Json.Decode.list Api.Data.finFeedAPISymbolModelDecoder)
        |> Api.withBearerToken auth_token
