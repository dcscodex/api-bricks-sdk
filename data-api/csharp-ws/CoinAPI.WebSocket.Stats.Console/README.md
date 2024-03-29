
# CoinAPI WebSocket Client Application

This application is a console-based tool for subscribing to various data types from the CoinAPI WebSocket service. It supports multiple subscription types and endpoints, and provides detailed output including message counts, received bytes, CPU usage statistics, and latency measurements.

## Prerequisites

- .NET 8.0 or higher
- A valid CoinAPI API key

## Configuration

Before running the application, ensure you have an `appsettings.json` file in the application's root directory with the following content:

```json
{
  "ApiKey": "API_KEY_HERE",
  "OutputType": [
    "console",
    "file"
  ]
}
```

Replace `API_KEY_HERE` with your actual CoinAPI API key. The `OutputType` specifies the destinations for the output data. Valid options include `console` and `file`. You can specify one or both options in the array. If no option is provided, console output will be the default one.

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

- `--endpoint_name <NAME>`: The name of the endpoint (emea, apac, ncsa) or the uri like wss://ws.coinapi.io or ws://ws.coinapi.io etc. Default is the GeoDNS endpoint.
- `--subscribe_data_type <TYPE>`: The type of data to subscribe to (e.g., book5, book20, quote, trade). Required.
- `--asset <ASSET>`: The asset identifier to filter data by. Optional.
- `--symbol <SYMBOL>`: The symbol identifier to filter data by. Optional.
- `--exchange <EXCHANGE>`: The exchange identifier to filter data by. Optional.
- `--apikey <APIKEY>`: Your CoinAPI API key. Optional if specified in `appsettings.json`.
- `--type <TYPE>`: The type of message to send. Default is "hello".
- `--supress_hb <BOOL>`: Whether to suppress heartbeat messages. Default is false.
- `--latency_type <TYPE>`: Type of measured latency, valid types are:
    - `nc` client UTC to CoinApi time, 
    - `ne` client UTC to exchange time
    - `ce` CoinApi time to exchange time. 

    Default value is `ce`.

### Example

```bash
dotnet run -- --endpoint_name emea --subscribe_data_type quote --symbol COINBASE_SPOT_BTC_USD$
```
which is equivalent to:
```bash
dotnet run -- --endpoint_name emea --subscribe_data_type quote --symbol COINBASE_SPOT_BTC_USD$ --supress_hb false --latency_type ce
```
This command subscribes to quote data for the BTC_USD spot symbol in Coinbase exchange from the EMEA endpoint.

### Output
Detailed information is logged to the console, including subscribed data types, message counts, CPU usage, and latencies.
```terminal
[10:32:35 DBG] Hosting starting
[10:32:35 DBG] Hosting started
[10:32:35 INF] Time: 03/27/2024 09:32:35
[10:32:35 INF] Subscribed to: subscribe_data_type = quote, symbol = COINBASE_SPOT_BTC_USD$, supress_hb = False, latency_type = ce
[10:32:35 INF] Endpoint ws://api-emea.coinapi.net, 0 iterations, 0 messages received, 0 bytes received, Error count 0
[10:32:36 INF] Messages: 138     | Recv bytes: 34351   | CPU: wait: 97.58 % | parse: 2.32 % | process: 0.10 % | Latency min: 51.9639 ms | max: 249.1233ms
[10:32:37 INF] Messages: 109     | Recv bytes: 27166   | CPU: wait: 99.66 % | parse: 0.33 % | process: 0.01 % | Latency min: 51.9898 ms | max: 70.521  ms
[10:32:38 INF] Messages: 94      | Recv bytes: 23411   | CPU: wait: 99.78 % | parse: 0.21 % | process: 0.01 % | Latency min: 51.8882 ms | max: 85.2687 ms
[10:32:39 INF] Messages: 236     | Recv bytes: 58615   | CPU: wait: 99.66 % | parse: 0.32 % | process: 0.02 % | Latency min: 51.8318 ms | max: 170.4874ms
[10:32:40 INF] Messages: 89      | Recv bytes: 22200   | CPU: wait: 99.81 % | parse: 0.18 % | process: 0.01 % | Latency min: 51.8809 ms | max: 61.0727 ms
[10:32:41 INF] Messages: 24      | Recv bytes: 5900    | CPU: wait: 99.94 % | parse: 0.06 % | process: 0.00 % | Latency min: 52.0308 ms | max: 58.7746 ms
[10:32:42 INF] Messages: 136     | Recv bytes: 33908   | CPU: wait: 99.72 % | parse: 0.26 % | process: 0.01 % | Latency min: 51.8673 ms | max: 88.1614 ms
[10:32:43 INF] Messages: 241     | Recv bytes: 60031   | CPU: wait: 99.61 % | parse: 0.38 % | process: 0.02 % | Latency min: 51.8677 ms | max: 57.4617 ms
[10:32:44 INF] Messages: 176     | Recv bytes: 43977   | CPU: wait: 99.66 % | parse: 0.32 % | process: 0.02 % | Latency min: 51.6744 ms | max: 64.6544 ms
[10:32:45 INF] Messages: 292     | Recv bytes: 72844   | CPU: wait: 99.54 % | parse: 0.43 % | process: 0.03 % | Latency min: 51.9092 ms | max: 60.2158 ms
[10:32:45 INF] Endpoint ws://api-emea.coinapi.net, 10 iterations, 1555 messages received, 387420 bytes received, Error count 0
[10:32:46 INF] Messages: 116     | Recv bytes: 28854   | CPU: wait: 99.77 % | parse: 0.22 % | process: 0.01 % | Latency min: 51.786
```
Furthermore, same data can be configured to be written in CSV format to a file or other outputs as specified in `appsettings.json`.

## Logging

The application logs detailed information to the console, including subscribed data types, message counts, CPU usage, and latencies.
Furthermore, same data is written in CSV format to the `output.csv` file in the application's root directory.    

## Stopping the Application

To stop the application, press `Ctrl+C` or any key to terminate the execution.
