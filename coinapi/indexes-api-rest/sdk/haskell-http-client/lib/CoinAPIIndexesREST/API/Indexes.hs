{-
   CoinAPI Indexes REST API

   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   OpenAPI Version: 3.0.4
   CoinAPI Indexes REST API API version: v1
   Contact: support@apibricks.io
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : CoinAPIIndexesREST.API.Indexes
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module CoinAPIIndexesREST.API.Indexes where

import CoinAPIIndexesREST.Core
import CoinAPIIndexesREST.MimeTypes
import CoinAPIIndexesREST.Model as M

import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Proxy as P (Proxy(..))
import qualified Data.Set as Set
import qualified Data.String as P
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Lazy as TL
import qualified Data.Text.Lazy.Encoding as TL
import qualified Data.Time as TI
import qualified Network.HTTP.Client.MultipartFormData as NH
import qualified Network.HTTP.Media as ME
import qualified Network.HTTP.Types as NH
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Data.Text (Text)
import GHC.Base ((<|>))

import Prelude ((==),(/=),($), (.),(<$>),(<*>),(>>=),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

-- * Operations


-- ** Indexes

-- *** v1IndexdefInputDataIndexDefinitionIdAllGet

-- | @GET \/v1\/indexdef\/input-data\/{index_definition_id}\/all@
-- 
-- Returns all data inputs for a specific index definition
-- 
-- AuthMethod: 'AuthApiKeyAPIKey', 'AuthApiKeyJWT'
-- 
v1IndexdefInputDataIndexDefinitionIdAllGet
  :: Accept accept -- ^ request accept ('MimeType')
  -> IndexDefinitionId -- ^ "indexDefinitionId"
  -> CoinAPIIndexesRESTRequest V1IndexdefInputDataIndexDefinitionIdAllGet MimeNoContent [IndexesIndexDefinitionInputData] accept
v1IndexdefInputDataIndexDefinitionIdAllGet  _ (IndexDefinitionId indexDefinitionId) =
  _mkRequest "GET" ["/v1/indexdef/input-data/",toPath indexDefinitionId,"/all"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyAPIKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyJWT)

data V1IndexdefInputDataIndexDefinitionIdAllGet  
-- | @application/json@
instance Produces V1IndexdefInputDataIndexDefinitionIdAllGet MimeJSON
-- | @application/x-msgpack@
instance Produces V1IndexdefInputDataIndexDefinitionIdAllGet MimeXMsgpack
-- | @text/json@
instance Produces V1IndexdefInputDataIndexDefinitionIdAllGet MimeTextJson
-- | @text/plain@
instance Produces V1IndexdefInputDataIndexDefinitionIdAllGet MimePlainText


-- *** v1IndexdefInputDataIndexDefinitionIdGet

-- | @GET \/v1\/indexdef\/input-data\/{index_definition_id}@
-- 
-- Returns data inputs for certain index definition and time
-- 
-- AuthMethod: 'AuthApiKeyAPIKey', 'AuthApiKeyJWT'
-- 
v1IndexdefInputDataIndexDefinitionIdGet
  :: Accept accept -- ^ request accept ('MimeType')
  -> IndexDefinitionId -- ^ "indexDefinitionId"
  -> CoinAPIIndexesRESTRequest V1IndexdefInputDataIndexDefinitionIdGet MimeNoContent [IndexesIndexDefinitionSnapshotEntry] accept
v1IndexdefInputDataIndexDefinitionIdGet  _ (IndexDefinitionId indexDefinitionId) =
  _mkRequest "GET" ["/v1/indexdef/input-data/",toPath indexDefinitionId]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyAPIKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyJWT)

data V1IndexdefInputDataIndexDefinitionIdGet  
instance HasOptionalParam V1IndexdefInputDataIndexDefinitionIdGet Time where
  applyOptionalParam req (Time xs) =
    req `addQuery` toQuery ("time", Just xs)
instance HasOptionalParam V1IndexdefInputDataIndexDefinitionIdGet EnabledOnly where
  applyOptionalParam req (EnabledOnly xs) =
    req `addQuery` toQuery ("enabled_only", Just xs)
instance HasOptionalParam V1IndexdefInputDataIndexDefinitionIdGet PendingOnly where
  applyOptionalParam req (PendingOnly xs) =
    req `addQuery` toQuery ("pending_only", Just xs)
instance HasOptionalParam V1IndexdefInputDataIndexDefinitionIdGet FilterAssetId where
  applyOptionalParam req (FilterAssetId xs) =
    req `addQuery` toQuery ("filter_asset_id", Just xs)
instance HasOptionalParam V1IndexdefInputDataIndexDefinitionIdGet WithStatusInfo where
  applyOptionalParam req (WithStatusInfo xs) =
    req `addQuery` toQuery ("with_status_info", Just xs)
-- | @application/json@
instance Produces V1IndexdefInputDataIndexDefinitionIdGet MimeJSON
-- | @application/x-msgpack@
instance Produces V1IndexdefInputDataIndexDefinitionIdGet MimeXMsgpack
-- | @text/json@
instance Produces V1IndexdefInputDataIndexDefinitionIdGet MimeTextJson
-- | @text/plain@
instance Produces V1IndexdefInputDataIndexDefinitionIdGet MimePlainText


-- *** v1IndexdefMultiassetGet

-- | @GET \/v1\/indexdef\/multiasset@
-- 
-- Get all multi-asset weights
-- 
-- AuthMethod: 'AuthApiKeyAPIKey', 'AuthApiKeyJWT'
-- 
v1IndexdefMultiassetGet
  :: Accept accept -- ^ request accept ('MimeType')
  -> CoinAPIIndexesRESTRequest V1IndexdefMultiassetGet MimeNoContent [IndexesIndexMultiAssetWeight] accept
v1IndexdefMultiassetGet  _ =
  _mkRequest "GET" ["/v1/indexdef/multiasset"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyAPIKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyJWT)

data V1IndexdefMultiassetGet  
-- | @application/json@
instance Produces V1IndexdefMultiassetGet MimeJSON
-- | @application/x-msgpack@
instance Produces V1IndexdefMultiassetGet MimeXMsgpack
-- | @text/json@
instance Produces V1IndexdefMultiassetGet MimeTextJson
-- | @text/plain@
instance Produces V1IndexdefMultiassetGet MimePlainText


-- *** v1IndexdefMultiassetIndexIdGet

-- | @GET \/v1\/indexdef\/multiasset\/{index_id}@
-- 
-- Get multi-asset weights for specific index
-- 
-- AuthMethod: 'AuthApiKeyAPIKey', 'AuthApiKeyJWT'
-- 
v1IndexdefMultiassetIndexIdGet
  :: Accept accept -- ^ request accept ('MimeType')
  -> IndexId -- ^ "indexId"
  -> CoinAPIIndexesRESTRequest V1IndexdefMultiassetIndexIdGet MimeNoContent [IndexesIndexMultiAssetWeight] accept
v1IndexdefMultiassetIndexIdGet  _ (IndexId indexId) =
  _mkRequest "GET" ["/v1/indexdef/multiasset/",toPath indexId]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyAPIKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyJWT)

data V1IndexdefMultiassetIndexIdGet  
-- | @application/json@
instance Produces V1IndexdefMultiassetIndexIdGet MimeJSON
-- | @application/x-msgpack@
instance Produces V1IndexdefMultiassetIndexIdGet MimeXMsgpack
-- | @text/json@
instance Produces V1IndexdefMultiassetIndexIdGet MimeTextJson
-- | @text/plain@
instance Produces V1IndexdefMultiassetIndexIdGet MimePlainText


-- *** v1IndexesGet

-- | @GET \/v1\/indexes@
-- 
-- List indexes
-- 
-- AuthMethod: 'AuthApiKeyAPIKey', 'AuthApiKeyJWT'
-- 
v1IndexesGet
  :: Accept accept -- ^ request accept ('MimeType')
  -> CoinAPIIndexesRESTRequest V1IndexesGet MimeNoContent [IndexesIndexIdentifier] accept
v1IndexesGet  _ =
  _mkRequest "GET" ["/v1/indexes"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyAPIKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyJWT)

data V1IndexesGet  
-- | @application/json@
instance Produces V1IndexesGet MimeJSON
-- | @application/x-msgpack@
instance Produces V1IndexesGet MimeXMsgpack
-- | @text/json@
instance Produces V1IndexesGet MimeTextJson
-- | @text/plain@
instance Produces V1IndexesGet MimePlainText


-- *** v1IndexesIndexDefinitionIdCurrentSnapshotGet

-- | @GET \/v1\/indexes\/{index_definition_id}\/currentSnapshot@
-- 
-- Current Index Values for index definition
-- 
-- AuthMethod: 'AuthApiKeyAPIKey', 'AuthApiKeyJWT'
-- 
v1IndexesIndexDefinitionIdCurrentSnapshotGet
  :: Accept accept -- ^ request accept ('MimeType')
  -> IndexDefinitionId -- ^ "indexDefinitionId"
  -> CoinAPIIndexesRESTRequest V1IndexesIndexDefinitionIdCurrentSnapshotGet MimeNoContent [IndexesIndexDefinitionSnapshotEntry] accept
v1IndexesIndexDefinitionIdCurrentSnapshotGet  _ (IndexDefinitionId indexDefinitionId) =
  _mkRequest "GET" ["/v1/indexes/",toPath indexDefinitionId,"/currentSnapshot"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyAPIKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyJWT)

data V1IndexesIndexDefinitionIdCurrentSnapshotGet  
-- | @application/json@
instance Produces V1IndexesIndexDefinitionIdCurrentSnapshotGet MimeJSON
-- | @application/x-msgpack@
instance Produces V1IndexesIndexDefinitionIdCurrentSnapshotGet MimeXMsgpack
-- | @text/json@
instance Produces V1IndexesIndexDefinitionIdCurrentSnapshotGet MimeTextJson
-- | @text/plain@
instance Produces V1IndexesIndexDefinitionIdCurrentSnapshotGet MimePlainText


-- *** v1IndexesIndexDefinitionIdHistorySnapshotGet

-- | @GET \/v1\/indexes\/{index_definition_id}\/historySnapshot@
-- 
-- Historical Index Values for index definition
-- 
-- AuthMethod: 'AuthApiKeyAPIKey', 'AuthApiKeyJWT'
-- 
v1IndexesIndexDefinitionIdHistorySnapshotGet
  :: Accept accept -- ^ request accept ('MimeType')
  -> IndexDefinitionId -- ^ "indexDefinitionId"
  -> CoinAPIIndexesRESTRequest V1IndexesIndexDefinitionIdHistorySnapshotGet MimeNoContent [IndexesIndexDefinitionSnapshotEntry] accept
v1IndexesIndexDefinitionIdHistorySnapshotGet  _ (IndexDefinitionId indexDefinitionId) =
  _mkRequest "GET" ["/v1/indexes/",toPath indexDefinitionId,"/historySnapshot"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyAPIKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyJWT)

data V1IndexesIndexDefinitionIdHistorySnapshotGet  
instance HasOptionalParam V1IndexesIndexDefinitionIdHistorySnapshotGet Time where
  applyOptionalParam req (Time xs) =
    req `addQuery` toQuery ("time", Just xs)
-- | @application/json@
instance Produces V1IndexesIndexDefinitionIdHistorySnapshotGet MimeJSON
-- | @application/x-msgpack@
instance Produces V1IndexesIndexDefinitionIdHistorySnapshotGet MimeXMsgpack
-- | @text/json@
instance Produces V1IndexesIndexDefinitionIdHistorySnapshotGet MimeTextJson
-- | @text/plain@
instance Produces V1IndexesIndexDefinitionIdHistorySnapshotGet MimePlainText


-- *** v1IndexesIndexIdCurrentGet

-- | @GET \/v1\/indexes\/{index_id}\/current@
-- 
-- Current Index Value
-- 
-- AuthMethod: 'AuthApiKeyAPIKey', 'AuthApiKeyJWT'
-- 
v1IndexesIndexIdCurrentGet
  :: Accept accept -- ^ request accept ('MimeType')
  -> IndexId -- ^ "indexId"
  -> CoinAPIIndexesRESTRequest V1IndexesIndexIdCurrentGet MimeNoContent IndexesIndexValue accept
v1IndexesIndexIdCurrentGet  _ (IndexId indexId) =
  _mkRequest "GET" ["/v1/indexes/",toPath indexId,"/current"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyAPIKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyJWT)

data V1IndexesIndexIdCurrentGet  
-- | @application/json@
instance Produces V1IndexesIndexIdCurrentGet MimeJSON
-- | @application/x-msgpack@
instance Produces V1IndexesIndexIdCurrentGet MimeXMsgpack
-- | @text/json@
instance Produces V1IndexesIndexIdCurrentGet MimeTextJson
-- | @text/plain@
instance Produces V1IndexesIndexIdCurrentGet MimePlainText


-- *** v1IndexesIndexIdHistoryGet

-- | @GET \/v1\/indexes\/{index_id}\/history@
-- 
-- Historical Index Value w/Composition
-- 
-- AuthMethod: 'AuthApiKeyAPIKey', 'AuthApiKeyJWT'
-- 
v1IndexesIndexIdHistoryGet
  :: Accept accept -- ^ request accept ('MimeType')
  -> IndexId -- ^ "indexId"
  -> CoinAPIIndexesRESTRequest V1IndexesIndexIdHistoryGet MimeNoContent [IndexesIndexValue] accept
v1IndexesIndexIdHistoryGet  _ (IndexId indexId) =
  _mkRequest "GET" ["/v1/indexes/",toPath indexId,"/history"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyAPIKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyJWT)

data V1IndexesIndexIdHistoryGet  
instance HasOptionalParam V1IndexesIndexIdHistoryGet TimeStart where
  applyOptionalParam req (TimeStart xs) =
    req `addQuery` toQuery ("time_start", Just xs)
instance HasOptionalParam V1IndexesIndexIdHistoryGet TimeEnd where
  applyOptionalParam req (TimeEnd xs) =
    req `addQuery` toQuery ("time_end", Just xs)
instance HasOptionalParam V1IndexesIndexIdHistoryGet Limit where
  applyOptionalParam req (Limit xs) =
    req `addQuery` toQuery ("limit", Just xs)
-- | @application/json@
instance Produces V1IndexesIndexIdHistoryGet MimeJSON
-- | @application/x-msgpack@
instance Produces V1IndexesIndexIdHistoryGet MimeXMsgpack
-- | @text/json@
instance Produces V1IndexesIndexIdHistoryGet MimeTextJson
-- | @text/plain@
instance Produces V1IndexesIndexIdHistoryGet MimePlainText


-- *** v1IndexesIndexIdTimeseriesGet

-- | @GET \/v1\/indexes\/{index_id}\/timeseries@
-- 
-- Timeseries Index Value
-- 
-- AuthMethod: 'AuthApiKeyAPIKey', 'AuthApiKeyJWT'
-- 
v1IndexesIndexIdTimeseriesGet
  :: Accept accept -- ^ request accept ('MimeType')
  -> IndexId -- ^ "indexId" -  
  -> PeriodId -- ^ "periodId" -  Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
  -> TimeStartText -- ^ "timeStart" -  Timeseries starting time in ISO 8601
  -> TimeEndText -- ^ "timeEnd" -  Timeseries ending time in ISO 8601
  -> CoinAPIIndexesRESTRequest V1IndexesIndexIdTimeseriesGet MimeNoContent [IndexesIndexTimeseriesItem] accept
v1IndexesIndexIdTimeseriesGet  _ (IndexId indexId) (PeriodId periodId) (TimeStartText timeStart) (TimeEndText timeEnd) =
  _mkRequest "GET" ["/v1/indexes/",toPath indexId,"/timeseries"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyAPIKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyJWT)
    `addQuery` toQuery ("period_id", Just periodId)
    `addQuery` toQuery ("time_start", Just timeStart)
    `addQuery` toQuery ("time_end", Just timeEnd)

data V1IndexesIndexIdTimeseriesGet  

-- | /Optional Param/ "limit" - Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
instance HasOptionalParam V1IndexesIndexIdTimeseriesGet Limit where
  applyOptionalParam req (Limit xs) =
    req `addQuery` toQuery ("limit", Just xs)
-- | @application/json@
instance Produces V1IndexesIndexIdTimeseriesGet MimeJSON
-- | @application/x-msgpack@
instance Produces V1IndexesIndexIdTimeseriesGet MimeXMsgpack
-- | @text/json@
instance Produces V1IndexesIndexIdTimeseriesGet MimeTextJson
-- | @text/plain@
instance Produces V1IndexesIndexIdTimeseriesGet MimePlainText

