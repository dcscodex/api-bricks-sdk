# OpenapiClient::AdminAdminMessageModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trading_status** | [**AdminTradingStatusModel**](AdminTradingStatusModel.md) |  | [optional] |
| **official_price** | [**AdminOfficialPriceModel**](AdminOfficialPriceModel.md) |  | [optional] |
| **security_event** | [**AdminSecurityEventModel**](AdminSecurityEventModel.md) |  | [optional] |
| **auction_information** | [**AdminAuctionInformationModel**](AdminAuctionInformationModel.md) |  | [optional] |
| **short_sale_price_test** | [**AdminShortSalePriceTestStatusModel**](AdminShortSalePriceTestStatusModel.md) |  | [optional] |
| **operational_halt_status** | [**AdminOperationalHaltStatusModel**](AdminOperationalHaltStatusModel.md) |  | [optional] |
| **retail_liquidity_indicator** | [**AdminRetailLiquidityIndicatorModel**](AdminRetailLiquidityIndicatorModel.md) |  | [optional] |
| **system_event** | [**AdminSystemEventModel**](AdminSystemEventModel.md) |  | [optional] |
| **security_directory** | [**AdminSecurityDirectoryModel**](AdminSecurityDirectoryModel.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AdminAdminMessageModel.new(
  trading_status: null,
  official_price: null,
  security_event: null,
  auction_information: null,
  short_sale_price_test: null,
  operational_halt_status: null,
  retail_liquidity_indicator: null,
  system_event: null,
  security_directory: null
)
```

