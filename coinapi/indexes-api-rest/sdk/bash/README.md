# CoinAPI Indexes REST API Bash client

## Overview

This is a Bash client script for accessing CoinAPI Indexes REST API service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x 

# Print the list of operations available on the service
$ ./ -h

# Print the service description
$ ./ --about

# Print detailed information about specific operation
$ ./ <operationId> -h

# Make GET request
./ --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
 -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Make POST request with form data
$  --host <hostname> <operationId> key1:=value1 key2:=value2 key3:=23

# Preview the cURL command without actually executing it
$  --host http://<hostname>:<port> --dry-run <operationid>

```

## Docker image

You can easily create a Docker image containing a preconfigured environment
for using the REST Bash client including working autocompletion and short
welcome message with basic instructions, using the generated Dockerfile:

```shell
docker build -t my-rest-client .
docker run -it my-rest-client
```

By default you will be logged into a Zsh environment which has much more
advanced auto completion, but you can switch to Bash, where basic autocompletion
is also available.

## Shell completion

### Bash

The generated bash-completion script can be either directly loaded to the current Bash session using:

```shell
source .bash-completion
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp .bash-completion /etc/bash-completion.d/
```

#### OS X

On OSX you might need to install bash-completion using Homebrew:

```shell
brew install bash-completion
```

and add the following to the `~/.bashrc`:

```shell
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
```

### Zsh

In Zsh, the generated `_` Zsh completion file must be copied to one of the folders under `$FPATH` variable.

## Documentation for API Endpoints

All URIs are relative to **

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*IndexesApi* | [**v1IndexdefInputDataIndexDefinitionIdAllGet**](docs/IndexesApi.md#v1indexdefinputdataindexdefinitionidallget) | **GET** /v1/indexdef/input-data/{index_definition_id}/all | Returns all data inputs for a specific index definition
*IndexesApi* | [**v1IndexdefInputDataIndexDefinitionIdGet**](docs/IndexesApi.md#v1indexdefinputdataindexdefinitionidget) | **GET** /v1/indexdef/input-data/{index_definition_id} | Returns data inputs for certain index definition and time
*IndexesApi* | [**v1IndexdefMultiassetGet**](docs/IndexesApi.md#v1indexdefmultiassetget) | **GET** /v1/indexdef/multiasset | Get all multi-asset weights
*IndexesApi* | [**v1IndexdefMultiassetIndexIdGet**](docs/IndexesApi.md#v1indexdefmultiassetindexidget) | **GET** /v1/indexdef/multiasset/{index_id} | Get multi-asset weights for specific index
*IndexesApi* | [**v1IndexesGet**](docs/IndexesApi.md#v1indexesget) | **GET** /v1/indexes | List indexes
*IndexesApi* | [**v1IndexesIndexDefinitionIdCurrentSnapshotGet**](docs/IndexesApi.md#v1indexesindexdefinitionidcurrentsnapshotget) | **GET** /v1/indexes/{index_definition_id}/currentSnapshot | Current Index Values for index definition
*IndexesApi* | [**v1IndexesIndexDefinitionIdHistorySnapshotGet**](docs/IndexesApi.md#v1indexesindexdefinitionidhistorysnapshotget) | **GET** /v1/indexes/{index_definition_id}/historySnapshot | Historical Index Values for index definition
*IndexesApi* | [**v1IndexesIndexIdCurrentGet**](docs/IndexesApi.md#v1indexesindexidcurrentget) | **GET** /v1/indexes/{index_id}/current | Current Index Value
*IndexesApi* | [**v1IndexesIndexIdHistoryGet**](docs/IndexesApi.md#v1indexesindexidhistoryget) | **GET** /v1/indexes/{index_id}/history | Historical Index Value w/Composition
*IndexesApi* | [**v1IndexesIndexIdTimeseriesGet**](docs/IndexesApi.md#v1indexesindexidtimeseriesget) | **GET** /v1/indexes/{index_id}/timeseries | Timeseries Index Value
*MetadataApi* | [**apiMetadataExchangesExchangeIdGet**](docs/MetadataApi.md#apimetadataexchangesexchangeidget) | **GET** /api/metadata/exchanges/{exchange_id} | List all exchanges by exchange_id
*MetadataApi* | [**apiMetadataExchangesGet**](docs/MetadataApi.md#apimetadataexchangesget) | **GET** /api/metadata/exchanges | List all exchanges
*PeriodsApi* | [**v1MetadataPeriodsGet**](docs/PeriodsApi.md#v1metadataperiodsget) | **GET** /v1/metadata/periods | List all periods


## Documentation For Models

 - [IndexesIndexDefinitionInputData](docs/IndexesIndexDefinitionInputData.md)
 - [IndexesIndexDefinitionSnapshotEntry](docs/IndexesIndexDefinitionSnapshotEntry.md)
 - [IndexesIndexIdentifier](docs/IndexesIndexIdentifier.md)
 - [IndexesIndexMultiAssetWeight](docs/IndexesIndexMultiAssetWeight.md)
 - [IndexesIndexTimeseriesItem](docs/IndexesIndexTimeseriesItem.md)
 - [IndexesIndexValue](docs/IndexesIndexValue.md)
 - [IndexesIndexValueComponent](docs/IndexesIndexValueComponent.md)
 - [MetadataExchange](docs/MetadataExchange.md)
 - [MetadataTimeseriesPeriod](docs/MetadataTimeseriesPeriod.md)


## Documentation For Authorization


## APIKey


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

## JWT


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

