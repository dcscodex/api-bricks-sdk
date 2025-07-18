// <auto-generated>
/*
 * CoinAPI Market Data REST API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Contact: support@apibricks.io
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

#nullable enable

using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Text.Json;
using System.Text.Json.Serialization;
using System.ComponentModel.DataAnnotations;
using OpenAPIClientUtils = APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client.ClientUtils;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;

namespace APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model
{
    /// <summary>
    /// Represents an asset.
    /// </summary>
    public partial class V1Asset : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="V1Asset" /> class.
        /// </summary>
        /// <param name="assetId">Gets or sets the asset ID.</param>
        /// <param name="name">Gets or sets the name of the asset.</param>
        /// <param name="typeIsCrypto">Gets or sets a value indicating whether the asset is a cryptocurrency.</param>
        /// <param name="dataQuoteStart">Gets or sets the start date of quote data.</param>
        /// <param name="dataQuoteEnd">Gets or sets the end date of quote data.</param>
        /// <param name="dataOrderbookStart">Gets or sets the start date of order book data.</param>
        /// <param name="dataOrderbookEnd">Gets or sets the end date of order book data.</param>
        /// <param name="dataTradeStart">Gets or sets the start date of trade data.</param>
        /// <param name="dataTradeEnd">Gets or sets the end date of trade data.</param>
        /// <param name="dataSymbolsCount">Gets or sets the number of symbols.</param>
        /// <param name="volume1hrsUsd">Gets or sets the USD volume in the last 1 hour.</param>
        /// <param name="volume1dayUsd">Gets or sets the USD volume in the last 1 day.</param>
        /// <param name="volume1mthUsd">Gets or sets the USD volume in the last 1 month.</param>
        /// <param name="priceUsd">Gets or sets the USD price of the asset.</param>
        /// <param name="idIcon">Gets or sets the ID of the icon for the asset.</param>
        /// <param name="supplyCurrent">Gets or sets the current supply of the asset.</param>
        /// <param name="supplyTotal">Gets or sets the total supply of the asset.</param>
        /// <param name="supplyMax">Gets or sets the maximum supply of the asset.</param>
        /// <param name="chainAddresses">chainAddresses</param>
        /// <param name="dataStart">dataStart</param>
        /// <param name="dataEnd">dataEnd</param>
        [JsonConstructor]
        public V1Asset(Option<string?> assetId = default, Option<string?> name = default, Option<int?> typeIsCrypto = default, Option<DateTime?> dataQuoteStart = default, Option<DateTime?> dataQuoteEnd = default, Option<DateTime?> dataOrderbookStart = default, Option<DateTime?> dataOrderbookEnd = default, Option<DateTime?> dataTradeStart = default, Option<DateTime?> dataTradeEnd = default, Option<long?> dataSymbolsCount = default, Option<double?> volume1hrsUsd = default, Option<double?> volume1dayUsd = default, Option<double?> volume1mthUsd = default, Option<double?> priceUsd = default, Option<Guid?> idIcon = default, Option<double?> supplyCurrent = default, Option<double?> supplyTotal = default, Option<double?> supplyMax = default, Option<List<V1ChainNetworkAddress>?> chainAddresses = default, Option<string?> dataStart = default, Option<string?> dataEnd = default)
        {
            AssetIdOption = assetId;
            NameOption = name;
            TypeIsCryptoOption = typeIsCrypto;
            DataQuoteStartOption = dataQuoteStart;
            DataQuoteEndOption = dataQuoteEnd;
            DataOrderbookStartOption = dataOrderbookStart;
            DataOrderbookEndOption = dataOrderbookEnd;
            DataTradeStartOption = dataTradeStart;
            DataTradeEndOption = dataTradeEnd;
            DataSymbolsCountOption = dataSymbolsCount;
            Volume1hrsUsdOption = volume1hrsUsd;
            Volume1dayUsdOption = volume1dayUsd;
            Volume1mthUsdOption = volume1mthUsd;
            PriceUsdOption = priceUsd;
            IdIconOption = idIcon;
            SupplyCurrentOption = supplyCurrent;
            SupplyTotalOption = supplyTotal;
            SupplyMaxOption = supplyMax;
            ChainAddressesOption = chainAddresses;
            DataStartOption = dataStart;
            DataEndOption = dataEnd;
            OnCreated();
        }

        partial void OnCreated();

        /// <summary>
        /// Used to track the state of AssetId
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<string?> AssetIdOption { get; private set; }

        /// <summary>
        /// Gets or sets the asset ID.
        /// </summary>
        /// <value>Gets or sets the asset ID.</value>
        [JsonPropertyName("asset_id")]
        public string? AssetId { get { return this.AssetIdOption; } set { this.AssetIdOption = new(value); } }

        /// <summary>
        /// Used to track the state of Name
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<string?> NameOption { get; private set; }

        /// <summary>
        /// Gets or sets the name of the asset.
        /// </summary>
        /// <value>Gets or sets the name of the asset.</value>
        [JsonPropertyName("name")]
        public string? Name { get { return this.NameOption; } set { this.NameOption = new(value); } }

        /// <summary>
        /// Used to track the state of TypeIsCrypto
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<int?> TypeIsCryptoOption { get; private set; }

        /// <summary>
        /// Gets or sets a value indicating whether the asset is a cryptocurrency.
        /// </summary>
        /// <value>Gets or sets a value indicating whether the asset is a cryptocurrency.</value>
        [JsonPropertyName("type_is_crypto")]
        public int? TypeIsCrypto { get { return this.TypeIsCryptoOption; } set { this.TypeIsCryptoOption = new(value); } }

        /// <summary>
        /// Used to track the state of DataQuoteStart
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<DateTime?> DataQuoteStartOption { get; private set; }

        /// <summary>
        /// Gets or sets the start date of quote data.
        /// </summary>
        /// <value>Gets or sets the start date of quote data.</value>
        [JsonPropertyName("data_quote_start")]
        public DateTime? DataQuoteStart { get { return this.DataQuoteStartOption; } set { this.DataQuoteStartOption = new(value); } }

        /// <summary>
        /// Used to track the state of DataQuoteEnd
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<DateTime?> DataQuoteEndOption { get; private set; }

        /// <summary>
        /// Gets or sets the end date of quote data.
        /// </summary>
        /// <value>Gets or sets the end date of quote data.</value>
        [JsonPropertyName("data_quote_end")]
        public DateTime? DataQuoteEnd { get { return this.DataQuoteEndOption; } set { this.DataQuoteEndOption = new(value); } }

        /// <summary>
        /// Used to track the state of DataOrderbookStart
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<DateTime?> DataOrderbookStartOption { get; private set; }

        /// <summary>
        /// Gets or sets the start date of order book data.
        /// </summary>
        /// <value>Gets or sets the start date of order book data.</value>
        [JsonPropertyName("data_orderbook_start")]
        public DateTime? DataOrderbookStart { get { return this.DataOrderbookStartOption; } set { this.DataOrderbookStartOption = new(value); } }

        /// <summary>
        /// Used to track the state of DataOrderbookEnd
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<DateTime?> DataOrderbookEndOption { get; private set; }

        /// <summary>
        /// Gets or sets the end date of order book data.
        /// </summary>
        /// <value>Gets or sets the end date of order book data.</value>
        [JsonPropertyName("data_orderbook_end")]
        public DateTime? DataOrderbookEnd { get { return this.DataOrderbookEndOption; } set { this.DataOrderbookEndOption = new(value); } }

        /// <summary>
        /// Used to track the state of DataTradeStart
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<DateTime?> DataTradeStartOption { get; private set; }

        /// <summary>
        /// Gets or sets the start date of trade data.
        /// </summary>
        /// <value>Gets or sets the start date of trade data.</value>
        [JsonPropertyName("data_trade_start")]
        public DateTime? DataTradeStart { get { return this.DataTradeStartOption; } set { this.DataTradeStartOption = new(value); } }

        /// <summary>
        /// Used to track the state of DataTradeEnd
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<DateTime?> DataTradeEndOption { get; private set; }

        /// <summary>
        /// Gets or sets the end date of trade data.
        /// </summary>
        /// <value>Gets or sets the end date of trade data.</value>
        [JsonPropertyName("data_trade_end")]
        public DateTime? DataTradeEnd { get { return this.DataTradeEndOption; } set { this.DataTradeEndOption = new(value); } }

        /// <summary>
        /// Used to track the state of DataSymbolsCount
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<long?> DataSymbolsCountOption { get; private set; }

        /// <summary>
        /// Gets or sets the number of symbols.
        /// </summary>
        /// <value>Gets or sets the number of symbols.</value>
        [JsonPropertyName("data_symbols_count")]
        public long? DataSymbolsCount { get { return this.DataSymbolsCountOption; } set { this.DataSymbolsCountOption = new(value); } }

        /// <summary>
        /// Used to track the state of Volume1hrsUsd
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<double?> Volume1hrsUsdOption { get; private set; }

        /// <summary>
        /// Gets or sets the USD volume in the last 1 hour.
        /// </summary>
        /// <value>Gets or sets the USD volume in the last 1 hour.</value>
        [JsonPropertyName("volume_1hrs_usd")]
        public double? Volume1hrsUsd { get { return this.Volume1hrsUsdOption; } set { this.Volume1hrsUsdOption = new(value); } }

        /// <summary>
        /// Used to track the state of Volume1dayUsd
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<double?> Volume1dayUsdOption { get; private set; }

        /// <summary>
        /// Gets or sets the USD volume in the last 1 day.
        /// </summary>
        /// <value>Gets or sets the USD volume in the last 1 day.</value>
        [JsonPropertyName("volume_1day_usd")]
        public double? Volume1dayUsd { get { return this.Volume1dayUsdOption; } set { this.Volume1dayUsdOption = new(value); } }

        /// <summary>
        /// Used to track the state of Volume1mthUsd
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<double?> Volume1mthUsdOption { get; private set; }

        /// <summary>
        /// Gets or sets the USD volume in the last 1 month.
        /// </summary>
        /// <value>Gets or sets the USD volume in the last 1 month.</value>
        [JsonPropertyName("volume_1mth_usd")]
        public double? Volume1mthUsd { get { return this.Volume1mthUsdOption; } set { this.Volume1mthUsdOption = new(value); } }

        /// <summary>
        /// Used to track the state of PriceUsd
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<double?> PriceUsdOption { get; private set; }

        /// <summary>
        /// Gets or sets the USD price of the asset.
        /// </summary>
        /// <value>Gets or sets the USD price of the asset.</value>
        [JsonPropertyName("price_usd")]
        public double? PriceUsd { get { return this.PriceUsdOption; } set { this.PriceUsdOption = new(value); } }

        /// <summary>
        /// Used to track the state of IdIcon
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<Guid?> IdIconOption { get; private set; }

        /// <summary>
        /// Gets or sets the ID of the icon for the asset.
        /// </summary>
        /// <value>Gets or sets the ID of the icon for the asset.</value>
        [JsonPropertyName("id_icon")]
        public Guid? IdIcon { get { return this.IdIconOption; } set { this.IdIconOption = new(value); } }

        /// <summary>
        /// Used to track the state of SupplyCurrent
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<double?> SupplyCurrentOption { get; private set; }

        /// <summary>
        /// Gets or sets the current supply of the asset.
        /// </summary>
        /// <value>Gets or sets the current supply of the asset.</value>
        [JsonPropertyName("supply_current")]
        public double? SupplyCurrent { get { return this.SupplyCurrentOption; } set { this.SupplyCurrentOption = new(value); } }

        /// <summary>
        /// Used to track the state of SupplyTotal
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<double?> SupplyTotalOption { get; private set; }

        /// <summary>
        /// Gets or sets the total supply of the asset.
        /// </summary>
        /// <value>Gets or sets the total supply of the asset.</value>
        [JsonPropertyName("supply_total")]
        public double? SupplyTotal { get { return this.SupplyTotalOption; } set { this.SupplyTotalOption = new(value); } }

        /// <summary>
        /// Used to track the state of SupplyMax
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<double?> SupplyMaxOption { get; private set; }

        /// <summary>
        /// Gets or sets the maximum supply of the asset.
        /// </summary>
        /// <value>Gets or sets the maximum supply of the asset.</value>
        [JsonPropertyName("supply_max")]
        public double? SupplyMax { get { return this.SupplyMaxOption; } set { this.SupplyMaxOption = new(value); } }

        /// <summary>
        /// Used to track the state of ChainAddresses
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<List<V1ChainNetworkAddress>?> ChainAddressesOption { get; private set; }

        /// <summary>
        /// Gets or Sets ChainAddresses
        /// </summary>
        [JsonPropertyName("chain_addresses")]
        public List<V1ChainNetworkAddress>? ChainAddresses { get { return this.ChainAddressesOption; } set { this.ChainAddressesOption = new(value); } }

        /// <summary>
        /// Used to track the state of DataStart
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<string?> DataStartOption { get; }

        /// <summary>
        /// Gets or Sets DataStart
        /// </summary>
        [JsonPropertyName("data_start")]
        public string? DataStart { get { return this.DataStartOption; } }

        /// <summary>
        /// Used to track the state of DataEnd
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<string?> DataEndOption { get; }

        /// <summary>
        /// Gets or Sets DataEnd
        /// </summary>
        [JsonPropertyName("data_end")]
        public string? DataEnd { get { return this.DataEndOption; } }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class V1Asset {\n");
            sb.Append("  AssetId: ").Append(AssetId).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  TypeIsCrypto: ").Append(TypeIsCrypto).Append("\n");
            sb.Append("  DataQuoteStart: ").Append(DataQuoteStart).Append("\n");
            sb.Append("  DataQuoteEnd: ").Append(DataQuoteEnd).Append("\n");
            sb.Append("  DataOrderbookStart: ").Append(DataOrderbookStart).Append("\n");
            sb.Append("  DataOrderbookEnd: ").Append(DataOrderbookEnd).Append("\n");
            sb.Append("  DataTradeStart: ").Append(DataTradeStart).Append("\n");
            sb.Append("  DataTradeEnd: ").Append(DataTradeEnd).Append("\n");
            sb.Append("  DataSymbolsCount: ").Append(DataSymbolsCount).Append("\n");
            sb.Append("  Volume1hrsUsd: ").Append(Volume1hrsUsd).Append("\n");
            sb.Append("  Volume1dayUsd: ").Append(Volume1dayUsd).Append("\n");
            sb.Append("  Volume1mthUsd: ").Append(Volume1mthUsd).Append("\n");
            sb.Append("  PriceUsd: ").Append(PriceUsd).Append("\n");
            sb.Append("  IdIcon: ").Append(IdIcon).Append("\n");
            sb.Append("  SupplyCurrent: ").Append(SupplyCurrent).Append("\n");
            sb.Append("  SupplyTotal: ").Append(SupplyTotal).Append("\n");
            sb.Append("  SupplyMax: ").Append(SupplyMax).Append("\n");
            sb.Append("  ChainAddresses: ").Append(ChainAddresses).Append("\n");
            sb.Append("  DataStart: ").Append(DataStart).Append("\n");
            sb.Append("  DataEnd: ").Append(DataEnd).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

    /// <summary>
    /// A Json converter for type <see cref="V1Asset" />
    /// </summary>
    public class V1AssetJsonConverter : JsonConverter<V1Asset>
    {
        /// <summary>
        /// The format to use to serialize DataQuoteStart
        /// </summary>
        public static string DataQuoteStartFormat { get; set; } = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'.'fffffffK";

        /// <summary>
        /// The format to use to serialize DataQuoteEnd
        /// </summary>
        public static string DataQuoteEndFormat { get; set; } = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'.'fffffffK";

        /// <summary>
        /// The format to use to serialize DataOrderbookStart
        /// </summary>
        public static string DataOrderbookStartFormat { get; set; } = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'.'fffffffK";

        /// <summary>
        /// The format to use to serialize DataOrderbookEnd
        /// </summary>
        public static string DataOrderbookEndFormat { get; set; } = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'.'fffffffK";

        /// <summary>
        /// The format to use to serialize DataTradeStart
        /// </summary>
        public static string DataTradeStartFormat { get; set; } = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'.'fffffffK";

        /// <summary>
        /// The format to use to serialize DataTradeEnd
        /// </summary>
        public static string DataTradeEndFormat { get; set; } = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'.'fffffffK";

        /// <summary>
        /// Deserializes json to <see cref="V1Asset" />
        /// </summary>
        /// <param name="utf8JsonReader"></param>
        /// <param name="typeToConvert"></param>
        /// <param name="jsonSerializerOptions"></param>
        /// <returns></returns>
        /// <exception cref="JsonException"></exception>
        public override V1Asset Read(ref Utf8JsonReader utf8JsonReader, Type typeToConvert, JsonSerializerOptions jsonSerializerOptions)
        {
            int currentDepth = utf8JsonReader.CurrentDepth;

            if (utf8JsonReader.TokenType != JsonTokenType.StartObject && utf8JsonReader.TokenType != JsonTokenType.StartArray)
                throw new JsonException();

            JsonTokenType startingTokenType = utf8JsonReader.TokenType;

            Option<string?> assetId = default;
            Option<string?> name = default;
            Option<int?> typeIsCrypto = default;
            Option<DateTime?> dataQuoteStart = default;
            Option<DateTime?> dataQuoteEnd = default;
            Option<DateTime?> dataOrderbookStart = default;
            Option<DateTime?> dataOrderbookEnd = default;
            Option<DateTime?> dataTradeStart = default;
            Option<DateTime?> dataTradeEnd = default;
            Option<long?> dataSymbolsCount = default;
            Option<double?> volume1hrsUsd = default;
            Option<double?> volume1dayUsd = default;
            Option<double?> volume1mthUsd = default;
            Option<double?> priceUsd = default;
            Option<Guid?> idIcon = default;
            Option<double?> supplyCurrent = default;
            Option<double?> supplyTotal = default;
            Option<double?> supplyMax = default;
            Option<List<V1ChainNetworkAddress>?> chainAddresses = default;
            Option<string?> dataStart = default;
            Option<string?> dataEnd = default;

            while (utf8JsonReader.Read())
            {
                if (startingTokenType == JsonTokenType.StartObject && utf8JsonReader.TokenType == JsonTokenType.EndObject && currentDepth == utf8JsonReader.CurrentDepth)
                    break;

                if (startingTokenType == JsonTokenType.StartArray && utf8JsonReader.TokenType == JsonTokenType.EndArray && currentDepth == utf8JsonReader.CurrentDepth)
                    break;

                if (utf8JsonReader.TokenType == JsonTokenType.PropertyName && currentDepth == utf8JsonReader.CurrentDepth - 1)
                {
                    string? localVarJsonPropertyName = utf8JsonReader.GetString();
                    utf8JsonReader.Read();

                    switch (localVarJsonPropertyName)
                    {
                        case "asset_id":
                            assetId = new Option<string?>(utf8JsonReader.GetString());
                            break;
                        case "name":
                            name = new Option<string?>(utf8JsonReader.GetString());
                            break;
                        case "type_is_crypto":
                            typeIsCrypto = new Option<int?>(utf8JsonReader.TokenType == JsonTokenType.Null ? (int?)null : utf8JsonReader.GetInt32());
                            break;
                        case "data_quote_start":
                            dataQuoteStart = new Option<DateTime?>(JsonSerializer.Deserialize<DateTime?>(ref utf8JsonReader, jsonSerializerOptions));
                            break;
                        case "data_quote_end":
                            dataQuoteEnd = new Option<DateTime?>(JsonSerializer.Deserialize<DateTime?>(ref utf8JsonReader, jsonSerializerOptions));
                            break;
                        case "data_orderbook_start":
                            dataOrderbookStart = new Option<DateTime?>(JsonSerializer.Deserialize<DateTime?>(ref utf8JsonReader, jsonSerializerOptions));
                            break;
                        case "data_orderbook_end":
                            dataOrderbookEnd = new Option<DateTime?>(JsonSerializer.Deserialize<DateTime?>(ref utf8JsonReader, jsonSerializerOptions));
                            break;
                        case "data_trade_start":
                            dataTradeStart = new Option<DateTime?>(JsonSerializer.Deserialize<DateTime?>(ref utf8JsonReader, jsonSerializerOptions));
                            break;
                        case "data_trade_end":
                            dataTradeEnd = new Option<DateTime?>(JsonSerializer.Deserialize<DateTime?>(ref utf8JsonReader, jsonSerializerOptions));
                            break;
                        case "data_symbols_count":
                            dataSymbolsCount = new Option<long?>(utf8JsonReader.TokenType == JsonTokenType.Null ? (long?)null : utf8JsonReader.GetInt64());
                            break;
                        case "volume_1hrs_usd":
                            volume1hrsUsd = new Option<double?>(utf8JsonReader.TokenType == JsonTokenType.Null ? (double?)null : utf8JsonReader.GetDouble());
                            break;
                        case "volume_1day_usd":
                            volume1dayUsd = new Option<double?>(utf8JsonReader.TokenType == JsonTokenType.Null ? (double?)null : utf8JsonReader.GetDouble());
                            break;
                        case "volume_1mth_usd":
                            volume1mthUsd = new Option<double?>(utf8JsonReader.TokenType == JsonTokenType.Null ? (double?)null : utf8JsonReader.GetDouble());
                            break;
                        case "price_usd":
                            priceUsd = new Option<double?>(utf8JsonReader.TokenType == JsonTokenType.Null ? (double?)null : utf8JsonReader.GetDouble());
                            break;
                        case "id_icon":
                            idIcon = new Option<Guid?>(utf8JsonReader.TokenType == JsonTokenType.Null ? (Guid?)null : utf8JsonReader.GetGuid());
                            break;
                        case "supply_current":
                            supplyCurrent = new Option<double?>(utf8JsonReader.TokenType == JsonTokenType.Null ? (double?)null : utf8JsonReader.GetDouble());
                            break;
                        case "supply_total":
                            supplyTotal = new Option<double?>(utf8JsonReader.TokenType == JsonTokenType.Null ? (double?)null : utf8JsonReader.GetDouble());
                            break;
                        case "supply_max":
                            supplyMax = new Option<double?>(utf8JsonReader.TokenType == JsonTokenType.Null ? (double?)null : utf8JsonReader.GetDouble());
                            break;
                        case "chain_addresses":
                            chainAddresses = new Option<List<V1ChainNetworkAddress>?>(JsonSerializer.Deserialize<List<V1ChainNetworkAddress>>(ref utf8JsonReader, jsonSerializerOptions));
                            break;
                        case "data_start":
                            dataStart = new Option<string?>(utf8JsonReader.GetString());
                            break;
                        case "data_end":
                            dataEnd = new Option<string?>(utf8JsonReader.GetString());
                            break;
                        default:
                            break;
                    }
                }
            }

            if (typeIsCrypto.IsSet && typeIsCrypto.Value == null)
                throw new ArgumentNullException(nameof(typeIsCrypto), "Property is not nullable for class V1Asset.");

            return new V1Asset(assetId, name, typeIsCrypto, dataQuoteStart, dataQuoteEnd, dataOrderbookStart, dataOrderbookEnd, dataTradeStart, dataTradeEnd, dataSymbolsCount, volume1hrsUsd, volume1dayUsd, volume1mthUsd, priceUsd, idIcon, supplyCurrent, supplyTotal, supplyMax, chainAddresses, dataStart, dataEnd);
        }

        /// <summary>
        /// Serializes a <see cref="V1Asset" />
        /// </summary>
        /// <param name="writer"></param>
        /// <param name="v1Asset"></param>
        /// <param name="jsonSerializerOptions"></param>
        /// <exception cref="NotImplementedException"></exception>
        public override void Write(Utf8JsonWriter writer, V1Asset v1Asset, JsonSerializerOptions jsonSerializerOptions)
        {
            writer.WriteStartObject();

            WriteProperties(writer, v1Asset, jsonSerializerOptions);
            writer.WriteEndObject();
        }

        /// <summary>
        /// Serializes the properties of <see cref="V1Asset" />
        /// </summary>
        /// <param name="writer"></param>
        /// <param name="v1Asset"></param>
        /// <param name="jsonSerializerOptions"></param>
        /// <exception cref="NotImplementedException"></exception>
        public void WriteProperties(Utf8JsonWriter writer, V1Asset v1Asset, JsonSerializerOptions jsonSerializerOptions)
        {
            if (v1Asset.AssetIdOption.IsSet)
                if (v1Asset.AssetIdOption.Value != null)
                    writer.WriteString("asset_id", v1Asset.AssetId);
                else
                    writer.WriteNull("asset_id");

            if (v1Asset.NameOption.IsSet)
                if (v1Asset.NameOption.Value != null)
                    writer.WriteString("name", v1Asset.Name);
                else
                    writer.WriteNull("name");

            if (v1Asset.TypeIsCryptoOption.IsSet)
                writer.WriteNumber("type_is_crypto", v1Asset.TypeIsCryptoOption.Value!.Value);

            if (v1Asset.DataQuoteStartOption.IsSet)
                if (v1Asset.DataQuoteStartOption.Value != null)
                    writer.WriteString("data_quote_start", v1Asset.DataQuoteStartOption.Value!.Value.ToString(DataQuoteStartFormat));
                else
                    writer.WriteNull("data_quote_start");

            if (v1Asset.DataQuoteEndOption.IsSet)
                if (v1Asset.DataQuoteEndOption.Value != null)
                    writer.WriteString("data_quote_end", v1Asset.DataQuoteEndOption.Value!.Value.ToString(DataQuoteEndFormat));
                else
                    writer.WriteNull("data_quote_end");

            if (v1Asset.DataOrderbookStartOption.IsSet)
                if (v1Asset.DataOrderbookStartOption.Value != null)
                    writer.WriteString("data_orderbook_start", v1Asset.DataOrderbookStartOption.Value!.Value.ToString(DataOrderbookStartFormat));
                else
                    writer.WriteNull("data_orderbook_start");

            if (v1Asset.DataOrderbookEndOption.IsSet)
                if (v1Asset.DataOrderbookEndOption.Value != null)
                    writer.WriteString("data_orderbook_end", v1Asset.DataOrderbookEndOption.Value!.Value.ToString(DataOrderbookEndFormat));
                else
                    writer.WriteNull("data_orderbook_end");

            if (v1Asset.DataTradeStartOption.IsSet)
                if (v1Asset.DataTradeStartOption.Value != null)
                    writer.WriteString("data_trade_start", v1Asset.DataTradeStartOption.Value!.Value.ToString(DataTradeStartFormat));
                else
                    writer.WriteNull("data_trade_start");

            if (v1Asset.DataTradeEndOption.IsSet)
                if (v1Asset.DataTradeEndOption.Value != null)
                    writer.WriteString("data_trade_end", v1Asset.DataTradeEndOption.Value!.Value.ToString(DataTradeEndFormat));
                else
                    writer.WriteNull("data_trade_end");

            if (v1Asset.DataSymbolsCountOption.IsSet)
                if (v1Asset.DataSymbolsCountOption.Value != null)
                    writer.WriteNumber("data_symbols_count", v1Asset.DataSymbolsCountOption.Value!.Value);
                else
                    writer.WriteNull("data_symbols_count");

            if (v1Asset.Volume1hrsUsdOption.IsSet)
                if (v1Asset.Volume1hrsUsdOption.Value != null)
                    writer.WriteNumber("volume_1hrs_usd", v1Asset.Volume1hrsUsdOption.Value!.Value);
                else
                    writer.WriteNull("volume_1hrs_usd");

            if (v1Asset.Volume1dayUsdOption.IsSet)
                if (v1Asset.Volume1dayUsdOption.Value != null)
                    writer.WriteNumber("volume_1day_usd", v1Asset.Volume1dayUsdOption.Value!.Value);
                else
                    writer.WriteNull("volume_1day_usd");

            if (v1Asset.Volume1mthUsdOption.IsSet)
                if (v1Asset.Volume1mthUsdOption.Value != null)
                    writer.WriteNumber("volume_1mth_usd", v1Asset.Volume1mthUsdOption.Value!.Value);
                else
                    writer.WriteNull("volume_1mth_usd");

            if (v1Asset.PriceUsdOption.IsSet)
                if (v1Asset.PriceUsdOption.Value != null)
                    writer.WriteNumber("price_usd", v1Asset.PriceUsdOption.Value!.Value);
                else
                    writer.WriteNull("price_usd");

            if (v1Asset.IdIconOption.IsSet)
                if (v1Asset.IdIconOption.Value != null)
                    writer.WriteString("id_icon", v1Asset.IdIconOption.Value!.Value);
                else
                    writer.WriteNull("id_icon");

            if (v1Asset.SupplyCurrentOption.IsSet)
                if (v1Asset.SupplyCurrentOption.Value != null)
                    writer.WriteNumber("supply_current", v1Asset.SupplyCurrentOption.Value!.Value);
                else
                    writer.WriteNull("supply_current");

            if (v1Asset.SupplyTotalOption.IsSet)
                if (v1Asset.SupplyTotalOption.Value != null)
                    writer.WriteNumber("supply_total", v1Asset.SupplyTotalOption.Value!.Value);
                else
                    writer.WriteNull("supply_total");

            if (v1Asset.SupplyMaxOption.IsSet)
                if (v1Asset.SupplyMaxOption.Value != null)
                    writer.WriteNumber("supply_max", v1Asset.SupplyMaxOption.Value!.Value);
                else
                    writer.WriteNull("supply_max");

            if (v1Asset.ChainAddressesOption.IsSet)
                if (v1Asset.ChainAddressesOption.Value != null)
                {
                    writer.WritePropertyName("chain_addresses");
                    JsonSerializer.Serialize(writer, v1Asset.ChainAddresses, jsonSerializerOptions);
                }
                else
                    writer.WriteNull("chain_addresses");
            if (v1Asset.DataStartOption.IsSet)
                if (v1Asset.DataStartOption.Value != null)
                    writer.WriteString("data_start", v1Asset.DataStart);
                else
                    writer.WriteNull("data_start");

            if (v1Asset.DataEndOption.IsSet)
                if (v1Asset.DataEndOption.Value != null)
                    writer.WriteString("data_end", v1Asset.DataEnd);
                else
                    writer.WriteNull("data_end");
        }
    }
}
