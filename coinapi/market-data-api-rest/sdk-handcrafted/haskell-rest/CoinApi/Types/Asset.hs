{-# LANGUAGE OverloadedStrings #-}

module CoinApi.Types.Asset where

import CoinApi.Types.Internal

data Asset = Asset { asset_id       :: !Text
                   , name           :: !Text
                   , type_is_crypto :: !Bool }
  deriving (Show, Eq)

instance FromJSON Asset where
  parseJSON = withObject "Asset" $ \o -> Asset
                                         <$> o .: "asset_id"
                                         <*> o .:: "name"
                                         <*> fmap numToBool (o .: "type_is_crypto")
