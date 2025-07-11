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


module Api.Request.NativeIEX exposing
    ( v1NativeIexAdminMessagesSymbolGet
    , v1NativeIexAdminSystemEventGet
    , v1NativeIexLevel1QuoteSymbolGet
    , v1NativeIexLevel2PriceLevelUpdateSymbolGet
    , v1NativeIexLevel3OrderBookSymbolGet
    , v1NativeIexTradeSymbolGet
    )

import Api
import Api.Data exposing (..)
import Api.Time exposing (Posix)
import Dict
import Http
import Json.Decode
import Json.Encode


{-| Get Admin Messages
-}
v1NativeIexAdminMessagesSymbolGet : String -> Posix -> String -> Api.Request (List Api.Data.AdminAdminMessageModel)
v1NativeIexAdminMessagesSymbolGet symbol_path date_query auth_token =
    Api.request
        "GET"
        "/v1/native/iex/admin/messages/{symbol}"
        [ ( "symbol", identity symbol_path ) ]
        [ ( "date", Just <| Api.Time.dateTimeToString date_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.adminAdminMessageModelDecoder)
        |> Api.withBearerToken auth_token

{-| Get System Events
-}
v1NativeIexAdminSystemEventGet : Posix -> String -> Api.Request (List Api.Data.AdminSystemEventModel)
v1NativeIexAdminSystemEventGet date_query auth_token =
    Api.request
        "GET"
        "/v1/native/iex/admin/system-event"
        []
        [ ( "date", Just <| Api.Time.dateTimeToString date_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.adminSystemEventModelDecoder)
        |> Api.withBearerToken auth_token

{-| Get Level-1 Quotes
-}
v1NativeIexLevel1QuoteSymbolGet : String -> Posix -> String -> Api.Request (List Api.Data.Level1QuoteUpdateModel)
v1NativeIexLevel1QuoteSymbolGet symbol_path date_query auth_token =
    Api.request
        "GET"
        "/v1/native/iex/level1-quote/{symbol}"
        [ ( "symbol", identity symbol_path ) ]
        [ ( "date", Just <| Api.Time.dateTimeToString date_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.level1QuoteUpdateModelDecoder)
        |> Api.withBearerToken auth_token

{-| Get Level-2 Price Level Book
-}
v1NativeIexLevel2PriceLevelUpdateSymbolGet : String -> Posix -> String -> Api.Request (List Api.Data.Level2PriceLevelUpdateModel)
v1NativeIexLevel2PriceLevelUpdateSymbolGet symbol_path date_query auth_token =
    Api.request
        "GET"
        "/v1/native/iex/level2-price-level-update/{symbol}"
        [ ( "symbol", identity symbol_path ) ]
        [ ( "date", Just <| Api.Time.dateTimeToString date_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.level2PriceLevelUpdateModelDecoder)
        |> Api.withBearerToken auth_token

{-| Get Level-3 Order Book
-}
v1NativeIexLevel3OrderBookSymbolGet : String -> Posix -> String -> Api.Request (List Api.Data.Level3OrderBookModel)
v1NativeIexLevel3OrderBookSymbolGet symbol_path date_query auth_token =
    Api.request
        "GET"
        "/v1/native/iex/level3-order-book/{symbol}"
        [ ( "symbol", identity symbol_path ) ]
        [ ( "date", Just <| Api.Time.dateTimeToString date_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.level3OrderBookModelDecoder)
        |> Api.withBearerToken auth_token

{-| Get Trades
-}
v1NativeIexTradeSymbolGet : String -> Posix -> String -> Api.Request (List Api.Data.TradeTradeModel)
v1NativeIexTradeSymbolGet symbol_path date_query auth_token =
    Api.request
        "GET"
        "/v1/native/iex/trade/{symbol}"
        [ ( "symbol", identity symbol_path ) ]
        [ ( "date", Just <| Api.Time.dateTimeToString date_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.tradeTradeModelDecoder)
        |> Api.withBearerToken auth_token
