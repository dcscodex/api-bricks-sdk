# NOTE: This file is auto generated by OpenAPI Generator 7.13.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule CoinAPIIndexesRESTAPI.Model.MetadataExchange do
  @moduledoc """
  Represents an exchange.
  """

  @derive JSON.Encoder
  defstruct [
    :exchange_id,
    :website,
    :name
  ]

  @type t :: %__MODULE__{
    :exchange_id => String.t | nil,
    :website => String.t | nil,
    :name => String.t | nil
  }

  def decode(value) do
    value
  end
end

