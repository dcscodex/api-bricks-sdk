# CoinAPI-SDK

Welcome to the CoinAPI SDK. This repository contain SDK for our API documented at https://docs.coinapi.io/ 

In this repository you can find libraries that will help you use our API with minimal development effort from:
 * Python
 * R
 * Matlab
 * C#
 * C++
 * .NET
 * Java
 * Ruby
 * Go
 * JavaScript
 * TypeScript
 * Node.js
 * PHP
 * Haskell
 * Objective-C
 * Swift

If you spot something wrong, feel free to make Pull Request with proposed changes or create an Issue on which we respond as soon as possible.

# WebSocket connection example

 1. Download `wscat` npm package (https://www.npmjs.com/package/wscat) using `npm install -g wscat` command
 2. Establish connection to us by command `wscat --connect wss://ws.coinapi.io/v1/`
 3. Send this json `{ "type": "hello", "apikey": "TYPE_YOUR_API_KEY_HERE", "heartbeat": false, "subscribe_data_type": ["trade", "quote", "book50"] }`
 4. Right now you are receiving messages
