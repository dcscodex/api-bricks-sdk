# CoinAPI Market Data SDK 

## WebSocket connection example

 1. Download `wscat` npm package (https://www.npmjs.com/package/wscat) using `npm install -g wscat` command
 2. Establish connection to us by command `wscat --connect wss://ws.coinapi.io/v1/`
 3. Send this json `{ "type": "hello", "apikey": "TYPE_YOUR_API_KEY_HERE", "heartbeat": false, "subscribe_data_type": ["trade", "quote", "book50"] }`
 4. Right now you are receiving messages
 
## Unofficial SDK's
 
 Feel free to continue the effort to extend the coverage of this SDK.
 
 * Rust: https://github.com/soerenmartius/coinapi-rs


