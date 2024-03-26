
# CoinAPI WebSocket Client Application

This application is a console-based tool for subscribing to various data types from the CoinAPI WebSocket service. It supports multiple subscription types and endpoints, and provides detailed output including message counts, received bytes, CPU usage statistics, and latency measurements.

## Prerequisites

- .NET 5.0 or higher
- A valid CoinAPI API key

## Configuration

Before running the application, ensure you have an `appsettings.json` file in the application's root directory with the following content:

```json
{
  "ApiKey": "API_KEY_HERE"
}
```

Replace `API_KEY_HERE` with your actual CoinAPI API key.

## Building the Application

To build the application, navigate to the project directory in your terminal and run:

```bash
dotnet build
```

This command compiles the application and prepares it for execution.

## Running the Application

Run the application with the following command:

```bash
dotnet run --project CoinAPI.WebSocket.Stats.Console.csproj
```

You can also navigate to the `bin/Debug` or `bin/Release` directory and run the application directly using:

```bash
dotnet CoinAPI.WebSocket.Stats.Console.dll
```

## Usage

The application supports command-line arguments for specifying the endpoint, subscription data type, and other parameters. Here's how you can specify these parameters:

```bash
dotnet run -- [options]
```

### Options

- `--endpoint_name <NAME>`: The name of the endpoint (emea, apac, ncsa). Default is the global endpoint.
- `--subscribe_data_type <TYPE>`: The type of data to subscribe to (e.g., book5, book20, quote, trade). Required.
- `--asset <ASSET>`: The asset identifier to filter data by. Optional.
- `--symbol <SYMBOL>`: The symbol identifier to filter data by. Optional.
- `--exchange <EXCHANGE>`: The exchange identifier to filter data by. Optional.
- `--apikey <APIKEY>`: Your CoinAPI API key. Optional if specified in `appsettings.json`.
- `--type <TYPE>`: The type of message to send. Default is "hello".
- `--supress_hb <BOOL>`: Whether to suppress heartbeat messages. Default is false.

### Example

```bash
dotnet run -- --endpoint_name emea --subscribe_data_type quote --symbol COINBASE_SPOT_BTC_USD$
```

This command subscribes to quote data for the BTC_USD spot symbol in Coinbase exchange from the EMEA endpoint.

## Logging

The application logs detailed information to the console, including subscribed data types, message counts, CPU usage, and latencies.

## Stopping the Application

To stop the application, press `Ctrl+C` or any key to terminate the execution.
