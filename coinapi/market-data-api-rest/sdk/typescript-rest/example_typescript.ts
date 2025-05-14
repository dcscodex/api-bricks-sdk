import SDK from "./coinapi_v1"

// this is to support both browser and node
let COIN_API_SDK = typeof window !== 'undefined' ? (window as any).COIN_API_SDK : SDK

let sdk = new COIN_API_SDK("YOUR_API_KEY_HERE") as SDK

async function run(){
  let t = new Date(Date.parse("2016-11-01T22:08:41+00:00"))

  let exchanges = await sdk.metadata_list_exchanges()
  console.log('exchanges:')
  console.log('number: ', exchanges.length)
  exchanges.forEach(x=> { console.log(x) })

  let Metadata_list_assets = await sdk.metadata_list_assets()
  console.log('Metadata_list_assets:')
  console.log('number: ', Metadata_list_assets.length)
  Metadata_list_assets.forEach(x=> { console.log(x) })

  let Metadata_list_symbols = await sdk.metadata_list_symbols()
  console.log('Metadata_list_symbols:')
  console.log('number: ', Metadata_list_symbols.length)
  Metadata_list_symbols.forEach(x=> { console.log(x) })

  let Exchange_rates_get_specific_rate = await sdk.exchange_rates_get_specific_rate("BTC", "USD", t)
  console.log('Exchange_rates_get_specific_rate:')
  console.log(Exchange_rates_get_specific_rate)

  let Exchange_rates_get_all_current_rates = await sdk.exchange_rates_get_all_current_rates("BTC")
  console.log('Exchange_rates_get_all_current_rates:')
  console.log(Exchange_rates_get_all_current_rates)

  let Ohlcv_list_all_periods = await sdk.ohlcv_list_all_periods()
  console.log('Ohlcv_list_all_periods:')
  console.log('number: ', Ohlcv_list_all_periods.length)
  Ohlcv_list_all_periods.forEach(x=> { console.log(x) })

  let Ohlcv_latest_data = await sdk.ohlcv_latest_data("BITSTAMP_SPOT_BTC_USD", "1MIN", 5)
  console.log('Ohlcv_latest_data:')
  console.log('number: ', Ohlcv_latest_data.length)
  Ohlcv_latest_data.forEach(x=> { console.log(x) })

  let Ohlcv_historic_data = await sdk.ohlcv_historic_data("BITSTAMP_SPOT_BTC_USD", "1MIN", t, new Date(), 5)
  console.log('Ohlcv_historic_data:')
  console.log('number: ', Ohlcv_historic_data.length)
  Ohlcv_historic_data.forEach(x=> { console.log(x) })

  let Trades_latest_data_all = await sdk.trades_latest_data_all(5)
  console.log('Trades_latest_data_all:')
  console.log('number: ', Trades_latest_data_all.length)
  Trades_latest_data_all.forEach(x=> { console.log(x) })

  let Trades_latest_data_symbol = await sdk.trades_latest_data_symbol("BITSTAMP_SPOT_BTC_USD", 5)
  console.log('Trades_latest_data_symbol:')
  console.log('number: ', Trades_latest_data_symbol.length)
  Trades_latest_data_symbol.forEach(x=> { console.log(x) })

  let Trades_historical_data = await sdk.trades_historical_data("BITSTAMP_SPOT_BTC_USD",  t, new Date(), 5)
  console.log('Trades_historical_data:')
  console.log('number: ', Trades_historical_data.length)
  Trades_historical_data.forEach(x=> { console.log(x) })

  let Quotes_current_data_all = await sdk.quotes_current_data_all()
  console.log('Quotes_current_data_all:')
  console.log('number: ', Quotes_current_data_all.length)
  Quotes_current_data_all.forEach(x=> { console.log(x) })

  let Quotes_current_data_symbol = await sdk.quotes_current_data_symbol("BITSTAMP_SPOT_BTC_USD")
  console.log('Quotes_current_data_symbol:')
  console.log(Quotes_current_data_symbol)

  let Quotes_latest_data_all = await sdk.quotes_latest_data_all(5)
  console.log('Quotes_latest_data_all:')
  console.log('number: ', Quotes_latest_data_all.length)
  Quotes_latest_data_all.forEach(x=> { console.log(x) })

  let Quotes_latest_data_symbol = await sdk.quotes_latest_data_symbol("BITSTAMP_SPOT_BTC_USD", 5)
  console.log('Quotes_latest_data_symbol:')
  console.log('number: ', Quotes_latest_data_symbol.length)
  Quotes_latest_data_symbol.forEach(x=> { console.log(x) })

  let Quotes_historical_data = await sdk.quotes_historical_data("BITSTAMP_SPOT_BTC_USD",  t, new Date(), 5)
  console.log('Quotes_historical_data:')
  console.log('number: ', Quotes_historical_data.length)
  Quotes_historical_data.forEach(x=> { console.log(x) })

  let Orderbooks_current_data_all = await sdk.orderbooks_current_data_all()
  console.log('Orderbooks_current_data_all:')
  console.log('number: ', Orderbooks_current_data_all.length)
  Orderbooks_current_data_all.forEach(x=> { console.log(x) })

  let Orderbooks_current_data_symbol = await sdk.orderbooks_current_data_symbol("BITSTAMP_SPOT_BTC_USD")
  console.log('Orderbooks_current_data_symbol:')
  console.log(Orderbooks_current_data_symbol) 

  let Orderbooks_latest_data = await sdk.orderbooks_latest_data("BITSTAMP_SPOT_BTC_USD", 5)
  console.log('Orderbooks_latest_data:')
  console.log('number: ', Orderbooks_latest_data.length)
  Orderbooks_latest_data.forEach(x=> { console.log(x) })

  let Orderbooks_historical_data = await sdk.orderbooks_historical_data("BITSTAMP_SPOT_BTC_USD",  t, new Date(), 5)
  console.log('Orderbooks_historical_data:')
  console.log('number: ', Orderbooks_historical_data.length)
  Orderbooks_historical_data.forEach(x=> { console.log(x) })
}

run();