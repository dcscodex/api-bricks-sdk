{-
   CoinAPI Indexes REST API
   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   The version of the OpenAPI document: v1
   Contact: support@apibricks.io

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git

   DO NOT EDIT THIS FILE MANUALLY.

   For more info on generating Elm code, see https://eriktim.github.io/openapi-elm/
-}


module Api.Data exposing
    ( IndexesIndexDefinitionInputData
    , IndexesIndexDefinitionSnapshotEntry
    , IndexesIndexIdentifier
    , IndexesIndexMultiAssetWeight
    , IndexesIndexTimeseriesItem
    , IndexesIndexValue
    , IndexesIndexValueComponent
    , MetadataExchange
    , MetadataTimeseriesPeriod
    , encodeIndexesIndexDefinitionInputData
    , encodeIndexesIndexDefinitionSnapshotEntry
    , encodeIndexesIndexIdentifier
    , encodeIndexesIndexMultiAssetWeight
    , encodeIndexesIndexTimeseriesItem
    , encodeIndexesIndexValue
    , encodeIndexesIndexValueComponent
    , encodeMetadataExchange
    , encodeMetadataTimeseriesPeriod
    , indexesIndexDefinitionInputDataDecoder
    , indexesIndexDefinitionSnapshotEntryDecoder
    , indexesIndexIdentifierDecoder
    , indexesIndexMultiAssetWeightDecoder
    , indexesIndexTimeseriesItemDecoder
    , indexesIndexValueDecoder
    , indexesIndexValueComponentDecoder
    , metadataExchangeDecoder
    , metadataTimeseriesPeriodDecoder
    )

import Api
import Api.Time exposing (Posix)
import Dict
import Json.Decode
import Json.Encode


-- MODEL


type alias IndexesIndexDefinitionInputData =
    { exchangeId : Maybe String
    , exchangeSymbolId : Maybe String
    , baseAssetId : Maybe String
    , quoteAssetId : Maybe String
    , beginDate : Maybe Posix
    , endDate : Maybe Posix
    , status : Maybe String
    , statusInfo : Maybe String
    , lastModificationTime : Maybe Posix
    }


type alias IndexesIndexDefinitionSnapshotEntry =
    { indexId : Maybe String
    , timestamp : Maybe Posix
    , value : Maybe Float
    }


{-| Represents an index id
-}
type alias IndexesIndexIdentifier =
    { id : Maybe String
    }


type alias IndexesIndexMultiAssetWeight =
    { indexId : Maybe String
    , assetId : Maybe String
    , weight : Maybe Float
    }


{-| Represents a timeseries item with value information.
-}
type alias IndexesIndexTimeseriesItem =
    { timePeriodStart : Maybe Posix
    , timePeriodEnd : Maybe Posix
    , timeOpen : Maybe Posix
    , timeClose : Maybe Posix
    , valueOpen : Maybe Float
    , valueHigh : Maybe Float
    , valueLow : Maybe Float
    , valueClose : Maybe Float
    , valueCount : Maybe Int
    }


type alias IndexesIndexValue =
    { timestamp : Maybe Posix
    , value : Maybe Float
    , composition : Maybe ( List IndexesIndexValueComponent )
    }


type alias IndexesIndexValueComponent =
    { componentId : Maybe String
    , componentValue : Maybe Float
    }


{-| Represents an exchange.
-}
type alias MetadataExchange =
    { exchangeId : Maybe String
    , website : Maybe String
    , name : Maybe String
    }


{-| Represents a timeseries period used in exchange rate data.
-}
type alias MetadataTimeseriesPeriod =
    { periodId : Maybe String
    , lengthSeconds : Maybe Int
    , lengthMonths : Maybe Int
    , unitCount : Maybe Int
    , unitName : Maybe String
    , displayName : Maybe String
    }


-- ENCODER


encodeIndexesIndexDefinitionInputData : IndexesIndexDefinitionInputData -> Json.Encode.Value
encodeIndexesIndexDefinitionInputData =
    encodeObject << encodeIndexesIndexDefinitionInputDataPairs


encodeIndexesIndexDefinitionInputDataWithTag : ( String, String ) -> IndexesIndexDefinitionInputData -> Json.Encode.Value
encodeIndexesIndexDefinitionInputDataWithTag (tagField, tag) model =
    encodeObject (encodeIndexesIndexDefinitionInputDataPairs model ++ [ encode tagField Json.Encode.string tag ])


encodeIndexesIndexDefinitionInputDataPairs : IndexesIndexDefinitionInputData -> List EncodedField
encodeIndexesIndexDefinitionInputDataPairs model =
    let
        pairs =
            [ maybeEncodeNullable "exchangeId" Json.Encode.string model.exchangeId
            , maybeEncodeNullable "exchangeSymbolId" Json.Encode.string model.exchangeSymbolId
            , maybeEncodeNullable "baseAssetId" Json.Encode.string model.baseAssetId
            , maybeEncodeNullable "quoteAssetId" Json.Encode.string model.quoteAssetId
            , maybeEncodeNullable "beginDate" Api.Time.encodeDateTime model.beginDate
            , maybeEncodeNullable "endDate" Api.Time.encodeDateTime model.endDate
            , maybeEncodeNullable "status" Json.Encode.string model.status
            , maybeEncodeNullable "statusInfo" Json.Encode.string model.statusInfo
            , maybeEncode "lastModificationTime" Api.Time.encodeDateTime model.lastModificationTime
            ]
    in
    pairs


encodeIndexesIndexDefinitionSnapshotEntry : IndexesIndexDefinitionSnapshotEntry -> Json.Encode.Value
encodeIndexesIndexDefinitionSnapshotEntry =
    encodeObject << encodeIndexesIndexDefinitionSnapshotEntryPairs


encodeIndexesIndexDefinitionSnapshotEntryWithTag : ( String, String ) -> IndexesIndexDefinitionSnapshotEntry -> Json.Encode.Value
encodeIndexesIndexDefinitionSnapshotEntryWithTag (tagField, tag) model =
    encodeObject (encodeIndexesIndexDefinitionSnapshotEntryPairs model ++ [ encode tagField Json.Encode.string tag ])


encodeIndexesIndexDefinitionSnapshotEntryPairs : IndexesIndexDefinitionSnapshotEntry -> List EncodedField
encodeIndexesIndexDefinitionSnapshotEntryPairs model =
    let
        pairs =
            [ maybeEncodeNullable "index_id" Json.Encode.string model.indexId
            , maybeEncode "timestamp" Api.Time.encodeDateTime model.timestamp
            , maybeEncode "value" Json.Encode.float model.value
            ]
    in
    pairs


encodeIndexesIndexIdentifier : IndexesIndexIdentifier -> Json.Encode.Value
encodeIndexesIndexIdentifier =
    encodeObject << encodeIndexesIndexIdentifierPairs


encodeIndexesIndexIdentifierWithTag : ( String, String ) -> IndexesIndexIdentifier -> Json.Encode.Value
encodeIndexesIndexIdentifierWithTag (tagField, tag) model =
    encodeObject (encodeIndexesIndexIdentifierPairs model ++ [ encode tagField Json.Encode.string tag ])


encodeIndexesIndexIdentifierPairs : IndexesIndexIdentifier -> List EncodedField
encodeIndexesIndexIdentifierPairs model =
    let
        pairs =
            [ maybeEncodeNullable "id" Json.Encode.string model.id
            ]
    in
    pairs


encodeIndexesIndexMultiAssetWeight : IndexesIndexMultiAssetWeight -> Json.Encode.Value
encodeIndexesIndexMultiAssetWeight =
    encodeObject << encodeIndexesIndexMultiAssetWeightPairs


encodeIndexesIndexMultiAssetWeightWithTag : ( String, String ) -> IndexesIndexMultiAssetWeight -> Json.Encode.Value
encodeIndexesIndexMultiAssetWeightWithTag (tagField, tag) model =
    encodeObject (encodeIndexesIndexMultiAssetWeightPairs model ++ [ encode tagField Json.Encode.string tag ])


encodeIndexesIndexMultiAssetWeightPairs : IndexesIndexMultiAssetWeight -> List EncodedField
encodeIndexesIndexMultiAssetWeightPairs model =
    let
        pairs =
            [ maybeEncodeNullable "indexId" Json.Encode.string model.indexId
            , maybeEncodeNullable "assetId" Json.Encode.string model.assetId
            , maybeEncode "weight" Json.Encode.float model.weight
            ]
    in
    pairs


encodeIndexesIndexTimeseriesItem : IndexesIndexTimeseriesItem -> Json.Encode.Value
encodeIndexesIndexTimeseriesItem =
    encodeObject << encodeIndexesIndexTimeseriesItemPairs


encodeIndexesIndexTimeseriesItemWithTag : ( String, String ) -> IndexesIndexTimeseriesItem -> Json.Encode.Value
encodeIndexesIndexTimeseriesItemWithTag (tagField, tag) model =
    encodeObject (encodeIndexesIndexTimeseriesItemPairs model ++ [ encode tagField Json.Encode.string tag ])


encodeIndexesIndexTimeseriesItemPairs : IndexesIndexTimeseriesItem -> List EncodedField
encodeIndexesIndexTimeseriesItemPairs model =
    let
        pairs =
            [ maybeEncode "time_period_start" Api.Time.encodeDateTime model.timePeriodStart
            , maybeEncode "time_period_end" Api.Time.encodeDateTime model.timePeriodEnd
            , maybeEncodeNullable "time_open" Api.Time.encodeDateTime model.timeOpen
            , maybeEncodeNullable "time_close" Api.Time.encodeDateTime model.timeClose
            , maybeEncodeNullable "value_open" Json.Encode.float model.valueOpen
            , maybeEncodeNullable "value_high" Json.Encode.float model.valueHigh
            , maybeEncodeNullable "value_low" Json.Encode.float model.valueLow
            , maybeEncodeNullable "value_close" Json.Encode.float model.valueClose
            , maybeEncode "value_count" Json.Encode.int model.valueCount
            ]
    in
    pairs


encodeIndexesIndexValue : IndexesIndexValue -> Json.Encode.Value
encodeIndexesIndexValue =
    encodeObject << encodeIndexesIndexValuePairs


encodeIndexesIndexValueWithTag : ( String, String ) -> IndexesIndexValue -> Json.Encode.Value
encodeIndexesIndexValueWithTag (tagField, tag) model =
    encodeObject (encodeIndexesIndexValuePairs model ++ [ encode tagField Json.Encode.string tag ])


encodeIndexesIndexValuePairs : IndexesIndexValue -> List EncodedField
encodeIndexesIndexValuePairs model =
    let
        pairs =
            [ maybeEncode "timestamp" Api.Time.encodeDateTime model.timestamp
            , maybeEncode "value" Json.Encode.float model.value
            , maybeEncodeNullable "composition" (Json.Encode.list encodeIndexesIndexValueComponent) model.composition
            ]
    in
    pairs


encodeIndexesIndexValueComponent : IndexesIndexValueComponent -> Json.Encode.Value
encodeIndexesIndexValueComponent =
    encodeObject << encodeIndexesIndexValueComponentPairs


encodeIndexesIndexValueComponentWithTag : ( String, String ) -> IndexesIndexValueComponent -> Json.Encode.Value
encodeIndexesIndexValueComponentWithTag (tagField, tag) model =
    encodeObject (encodeIndexesIndexValueComponentPairs model ++ [ encode tagField Json.Encode.string tag ])


encodeIndexesIndexValueComponentPairs : IndexesIndexValueComponent -> List EncodedField
encodeIndexesIndexValueComponentPairs model =
    let
        pairs =
            [ maybeEncodeNullable "component_id" Json.Encode.string model.componentId
            , maybeEncode "component_value" Json.Encode.float model.componentValue
            ]
    in
    pairs


encodeMetadataExchange : MetadataExchange -> Json.Encode.Value
encodeMetadataExchange =
    encodeObject << encodeMetadataExchangePairs


encodeMetadataExchangeWithTag : ( String, String ) -> MetadataExchange -> Json.Encode.Value
encodeMetadataExchangeWithTag (tagField, tag) model =
    encodeObject (encodeMetadataExchangePairs model ++ [ encode tagField Json.Encode.string tag ])


encodeMetadataExchangePairs : MetadataExchange -> List EncodedField
encodeMetadataExchangePairs model =
    let
        pairs =
            [ maybeEncodeNullable "exchange_id" Json.Encode.string model.exchangeId
            , maybeEncodeNullable "website" Json.Encode.string model.website
            , maybeEncodeNullable "name" Json.Encode.string model.name
            ]
    in
    pairs


encodeMetadataTimeseriesPeriod : MetadataTimeseriesPeriod -> Json.Encode.Value
encodeMetadataTimeseriesPeriod =
    encodeObject << encodeMetadataTimeseriesPeriodPairs


encodeMetadataTimeseriesPeriodWithTag : ( String, String ) -> MetadataTimeseriesPeriod -> Json.Encode.Value
encodeMetadataTimeseriesPeriodWithTag (tagField, tag) model =
    encodeObject (encodeMetadataTimeseriesPeriodPairs model ++ [ encode tagField Json.Encode.string tag ])


encodeMetadataTimeseriesPeriodPairs : MetadataTimeseriesPeriod -> List EncodedField
encodeMetadataTimeseriesPeriodPairs model =
    let
        pairs =
            [ maybeEncodeNullable "period_id" Json.Encode.string model.periodId
            , maybeEncode "length_seconds" Json.Encode.int model.lengthSeconds
            , maybeEncode "length_months" Json.Encode.int model.lengthMonths
            , maybeEncodeNullable "unit_count" Json.Encode.int model.unitCount
            , maybeEncodeNullable "unit_name" Json.Encode.string model.unitName
            , maybeEncodeNullable "display_name" Json.Encode.string model.displayName
            ]
    in
    pairs


-- DECODER


indexesIndexDefinitionInputDataDecoder : Json.Decode.Decoder IndexesIndexDefinitionInputData
indexesIndexDefinitionInputDataDecoder =
    Json.Decode.succeed IndexesIndexDefinitionInputData
        |> maybeDecodeNullable "exchangeId" Json.Decode.string Nothing
        |> maybeDecodeNullable "exchangeSymbolId" Json.Decode.string Nothing
        |> maybeDecodeNullable "baseAssetId" Json.Decode.string Nothing
        |> maybeDecodeNullable "quoteAssetId" Json.Decode.string Nothing
        |> maybeDecodeNullable "beginDate" Api.Time.dateTimeDecoder Nothing
        |> maybeDecodeNullable "endDate" Api.Time.dateTimeDecoder Nothing
        |> maybeDecodeNullable "status" Json.Decode.string Nothing
        |> maybeDecodeNullable "statusInfo" Json.Decode.string Nothing
        |> maybeDecode "lastModificationTime" Api.Time.dateTimeDecoder Nothing


indexesIndexDefinitionSnapshotEntryDecoder : Json.Decode.Decoder IndexesIndexDefinitionSnapshotEntry
indexesIndexDefinitionSnapshotEntryDecoder =
    Json.Decode.succeed IndexesIndexDefinitionSnapshotEntry
        |> maybeDecodeNullable "index_id" Json.Decode.string Nothing
        |> maybeDecode "timestamp" Api.Time.dateTimeDecoder Nothing
        |> maybeDecode "value" Json.Decode.float Nothing


indexesIndexIdentifierDecoder : Json.Decode.Decoder IndexesIndexIdentifier
indexesIndexIdentifierDecoder =
    Json.Decode.succeed IndexesIndexIdentifier
        |> maybeDecodeNullable "id" Json.Decode.string Nothing


indexesIndexMultiAssetWeightDecoder : Json.Decode.Decoder IndexesIndexMultiAssetWeight
indexesIndexMultiAssetWeightDecoder =
    Json.Decode.succeed IndexesIndexMultiAssetWeight
        |> maybeDecodeNullable "indexId" Json.Decode.string Nothing
        |> maybeDecodeNullable "assetId" Json.Decode.string Nothing
        |> maybeDecode "weight" Json.Decode.float Nothing


indexesIndexTimeseriesItemDecoder : Json.Decode.Decoder IndexesIndexTimeseriesItem
indexesIndexTimeseriesItemDecoder =
    Json.Decode.succeed IndexesIndexTimeseriesItem
        |> maybeDecode "time_period_start" Api.Time.dateTimeDecoder Nothing
        |> maybeDecode "time_period_end" Api.Time.dateTimeDecoder Nothing
        |> maybeDecodeNullable "time_open" Api.Time.dateTimeDecoder Nothing
        |> maybeDecodeNullable "time_close" Api.Time.dateTimeDecoder Nothing
        |> maybeDecodeNullable "value_open" Json.Decode.float Nothing
        |> maybeDecodeNullable "value_high" Json.Decode.float Nothing
        |> maybeDecodeNullable "value_low" Json.Decode.float Nothing
        |> maybeDecodeNullable "value_close" Json.Decode.float Nothing
        |> maybeDecode "value_count" Json.Decode.int Nothing


indexesIndexValueDecoder : Json.Decode.Decoder IndexesIndexValue
indexesIndexValueDecoder =
    Json.Decode.succeed IndexesIndexValue
        |> maybeDecode "timestamp" Api.Time.dateTimeDecoder Nothing
        |> maybeDecode "value" Json.Decode.float Nothing
        |> maybeDecodeNullable "composition" (Json.Decode.list indexesIndexValueComponentDecoder) Nothing


indexesIndexValueComponentDecoder : Json.Decode.Decoder IndexesIndexValueComponent
indexesIndexValueComponentDecoder =
    Json.Decode.succeed IndexesIndexValueComponent
        |> maybeDecodeNullable "component_id" Json.Decode.string Nothing
        |> maybeDecode "component_value" Json.Decode.float Nothing


metadataExchangeDecoder : Json.Decode.Decoder MetadataExchange
metadataExchangeDecoder =
    Json.Decode.succeed MetadataExchange
        |> maybeDecodeNullable "exchange_id" Json.Decode.string Nothing
        |> maybeDecodeNullable "website" Json.Decode.string Nothing
        |> maybeDecodeNullable "name" Json.Decode.string Nothing


metadataTimeseriesPeriodDecoder : Json.Decode.Decoder MetadataTimeseriesPeriod
metadataTimeseriesPeriodDecoder =
    Json.Decode.succeed MetadataTimeseriesPeriod
        |> maybeDecodeNullable "period_id" Json.Decode.string Nothing
        |> maybeDecode "length_seconds" Json.Decode.int Nothing
        |> maybeDecode "length_months" Json.Decode.int Nothing
        |> maybeDecodeNullable "unit_count" Json.Decode.int Nothing
        |> maybeDecodeNullable "unit_name" Json.Decode.string Nothing
        |> maybeDecodeNullable "display_name" Json.Decode.string Nothing




-- HELPER


type alias EncodedField =
    Maybe ( String, Json.Encode.Value )


encodeObject : List EncodedField -> Json.Encode.Value
encodeObject =
    Json.Encode.object << List.filterMap identity


encode : String -> (a -> Json.Encode.Value) -> a -> EncodedField
encode key encoder value =
    Just ( key, encoder value )


encodeNullable : String -> (a -> Json.Encode.Value) -> Maybe a -> EncodedField
encodeNullable key encoder value =
    Just ( key, Maybe.withDefault Json.Encode.null (Maybe.map encoder value) )


maybeEncode : String -> (a -> Json.Encode.Value) -> Maybe a -> EncodedField
maybeEncode key encoder =
    Maybe.map (Tuple.pair key << encoder)


maybeEncodeNullable : String -> (a -> Json.Encode.Value) -> Maybe a -> EncodedField
maybeEncodeNullable =
    encodeNullable


decode : String -> Json.Decode.Decoder a -> Json.Decode.Decoder (a -> b) -> Json.Decode.Decoder b
decode key decoder =
    decodeChain (Json.Decode.field key decoder)


decodeLazy : (a -> c) -> String -> Json.Decode.Decoder a -> Json.Decode.Decoder (c -> b) -> Json.Decode.Decoder b
decodeLazy f key decoder =
    decodeChainLazy f (Json.Decode.field key decoder)


decodeNullable : String -> Json.Decode.Decoder a -> Json.Decode.Decoder (Maybe a -> b) -> Json.Decode.Decoder b
decodeNullable key decoder =
    decodeChain (maybeField key decoder Nothing)


decodeNullableLazy : (Maybe a -> c) -> String -> Json.Decode.Decoder a -> Json.Decode.Decoder (c -> b) -> Json.Decode.Decoder b
decodeNullableLazy f key decoder =
    decodeChainLazy f (maybeField key decoder Nothing)


maybeDecode : String -> Json.Decode.Decoder a -> Maybe a -> Json.Decode.Decoder (Maybe a -> b) -> Json.Decode.Decoder b
maybeDecode key decoder fallback =
    -- let's be kind to null-values as well
    decodeChain (maybeField key decoder fallback)


maybeDecodeLazy : (Maybe a -> c) -> String -> Json.Decode.Decoder a -> Maybe a -> Json.Decode.Decoder (c -> b) -> Json.Decode.Decoder b
maybeDecodeLazy f key decoder fallback =
    -- let's be kind to null-values as well
    decodeChainLazy f (maybeField key decoder fallback)


maybeDecodeNullable : String -> Json.Decode.Decoder a -> Maybe a -> Json.Decode.Decoder (Maybe a -> b) -> Json.Decode.Decoder b
maybeDecodeNullable key decoder fallback =
    decodeChain (maybeField key decoder fallback)


maybeDecodeNullableLazy : (Maybe a -> c) -> String -> Json.Decode.Decoder a -> Maybe a -> Json.Decode.Decoder (c -> b) -> Json.Decode.Decoder b
maybeDecodeNullableLazy f key decoder fallback =
    decodeChainLazy f (maybeField key decoder fallback)


maybeField : String -> Json.Decode.Decoder a -> Maybe a -> Json.Decode.Decoder (Maybe a)
maybeField key decoder fallback =
    let
        fieldDecoder =
            Json.Decode.field key Json.Decode.value

        valueDecoder =
            Json.Decode.oneOf [ Json.Decode.map Just decoder, Json.Decode.null fallback ]

        decodeObject rawObject =
            case Json.Decode.decodeValue fieldDecoder rawObject of
                Ok rawValue ->
                    case Json.Decode.decodeValue valueDecoder rawValue of
                        Ok value ->
                            Json.Decode.succeed value

                        Err error ->
                            Json.Decode.fail (Json.Decode.errorToString error)

                Err _ ->
                    Json.Decode.succeed fallback
    in
    Json.Decode.value
        |> Json.Decode.andThen decodeObject


decodeChain : Json.Decode.Decoder a -> Json.Decode.Decoder (a -> b) -> Json.Decode.Decoder b
decodeChain =
    Json.Decode.map2 (|>)


decodeChainLazy : (a -> c) -> Json.Decode.Decoder a -> Json.Decode.Decoder (c -> b) -> Json.Decode.Decoder b
decodeChainLazy f =
    decodeChain << Json.Decode.map f