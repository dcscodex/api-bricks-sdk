-module(openapi_position_data).

-export([encode/1]).

-export_type([openapi_position_data/0]).

-type openapi_position_data() ::
    #{ 'id' => binary(),
       'symbol_exchange' => binary(),
       'symbol_coinapi' => binary(),
       'avg_entry_price' => integer(),
       'quantity' => integer(),
       'is_buy' => boolean(),
       'unrealised_pn_l' => integer(),
       'leverage' => integer(),
       'cross_margin' => boolean(),
       'liquidation_price' => integer(),
       'raw_data' => binary()
     }.

encode(#{ 'id' := Id,
          'symbol_exchange' := SymbolExchange,
          'symbol_coinapi' := SymbolCoinapi,
          'avg_entry_price' := AvgEntryPrice,
          'quantity' := Quantity,
          'is_buy' := IsBuy,
          'unrealised_pn_l' := UnrealisedPnL,
          'leverage' := Leverage,
          'cross_margin' := CrossMargin,
          'liquidation_price' := LiquidationPrice,
          'raw_data' := RawData
        }) ->
    #{ 'id' => Id,
       'symbol_exchange' => SymbolExchange,
       'symbol_coinapi' => SymbolCoinapi,
       'avg_entry_price' => AvgEntryPrice,
       'quantity' => Quantity,
       'is_buy' => IsBuy,
       'unrealised_pn_l' => UnrealisedPnL,
       'leverage' => Leverage,
       'cross_margin' => CrossMargin,
       'liquidation_price' => LiquidationPrice,
       'raw_data' => RawData
     }.
