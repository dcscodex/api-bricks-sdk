# CoinAPI FIX API v2 C# Example

This example demonstrates how to connect to CoinAPI's FIX API v2 using C#.

## Quick Start

1. Get your API key from [CoinAPI.io](https://www.coinapi.io/)

2. Configure your API Key:
   ```bash
   # Open config_nossl.cfg and replace the SenderCompID with your API key
   sed -i 's/SENDER_COMP_ID/YOUR_REAL_API_KEY/' config_nossl.cfg
   ```

3. Build and run:
   ```bash
   # Build the project
   dotnet build

   # Run the application
   dotnet run
   ```

## Verifying the Connection

When the application starts, you should see:

1. Successful connection message:
   ```
   Logon - FIX.4.4:YOUR-API-KEY->COINAPI_V2
   ```

2. Market data messages for BITSTAMP_SPOT_BTC_USD:
   ```
   Received MarketDataSnapshotFullRefresh for BITSTAMP_SPOT_BTC_USD...
   ```

If you see these messages, your FIX API connection is working correctly!

## Troubleshooting

If the connection fails:
- Verify your API key is correctly set in `config_nossl.cfg`
- Check your internet connection
- Ensure port 3302 is not blocked by your firewall

## Support

Need help? Visit [CoinAPI Documentation](https://docs.coinapi.io/)
