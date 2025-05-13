{-# LANGUAGE OverloadedStrings #-}

module CoinApi.Types.Message where

import CoinApi.Types.Internal

data Message = Message { message :: !Text }
  deriving (Show, Eq)

fromMessage :: Message -> Text
fromMessage (Message msg) = msg

instance FromJSON Message where
  parseJSON = withObject "Message"  $ \o -> Message <$> o .:: "message"
