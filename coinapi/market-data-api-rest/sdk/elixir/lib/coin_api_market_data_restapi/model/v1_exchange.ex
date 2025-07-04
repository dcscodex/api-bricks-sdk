# NOTE: This file is auto generated by OpenAPI Generator 7.13.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule CoinAPIMarketDataRESTAPI.Model.V1Exchange do
  @moduledoc """
  Represents an exchange.
  """

  @derive JSON.Encoder
  defstruct [
    :exchange_id,
    :website,
    :name,
    :data_start,
    :data_end,
    :data_quote_start,
    :data_quote_end,
    :data_orderbook_start,
    :data_orderbook_end,
    :data_trade_start,
    :data_trade_end,
    :data_trade_count,
    :data_symbols_count,
    :volume_1hrs_usd,
    :volume_1day_usd,
    :volume_1mth_usd,
    :metric_id,
    :icons,
    :rank,
    :integration_status
  ]

  @type t :: %__MODULE__{
    :exchange_id => String.t | nil,
    :website => String.t | nil,
    :name => String.t | nil,
    :data_start => String.t | nil,
    :data_end => String.t | nil,
    :data_quote_start => DateTime.t | nil,
    :data_quote_end => DateTime.t | nil,
    :data_orderbook_start => DateTime.t | nil,
    :data_orderbook_end => DateTime.t | nil,
    :data_trade_start => DateTime.t | nil,
    :data_trade_end => DateTime.t | nil,
    :data_trade_count => integer() | nil,
    :data_symbols_count => integer() | nil,
    :volume_1hrs_usd => float() | nil,
    :volume_1day_usd => float() | nil,
    :volume_1mth_usd => float() | nil,
    :metric_id => [String.t] | nil,
    :icons => [CoinAPIMarketDataRESTAPI.Model.V1Icon.t] | nil,
    :rank => float() | nil,
    :integration_status => String.t | nil
  }

  alias CoinAPIMarketDataRESTAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:icons, :list, CoinAPIMarketDataRESTAPI.Model.V1Icon)
  end
end

