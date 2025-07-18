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
    /// Represents a listing item.
    /// </summary>
    public partial class V1ListingItem : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="V1ListingItem" /> class.
        /// </summary>
        /// <param name="metricId">Gets or sets the metric ID.</param>
        /// <param name="symbolId">Gets or sets the symbol ID.</param>
        /// <param name="symbolIdExternal">Gets or sets the symbol ID from the exchange.</param>
        /// <param name="exchangeId">Gets or sets the exchange ID.</param>
        /// <param name="assetId">Gets or sets the asset ID.</param>
        /// <param name="assetIdExternal">Gets or sets the asset ID from the exchange.</param>
        /// <param name="chainId">Gets or sets the chain id.</param>
        /// <param name="networkId">Gets or sets the network id.</param>
        [JsonConstructor]
        public V1ListingItem(Option<string?> metricId = default, Option<string?> symbolId = default, Option<string?> symbolIdExternal = default, Option<string?> exchangeId = default, Option<string?> assetId = default, Option<string?> assetIdExternal = default, Option<string?> chainId = default, Option<string?> networkId = default)
        {
            MetricIdOption = metricId;
            SymbolIdOption = symbolId;
            SymbolIdExternalOption = symbolIdExternal;
            ExchangeIdOption = exchangeId;
            AssetIdOption = assetId;
            AssetIdExternalOption = assetIdExternal;
            ChainIdOption = chainId;
            NetworkIdOption = networkId;
            OnCreated();
        }

        partial void OnCreated();

        /// <summary>
        /// Used to track the state of MetricId
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<string?> MetricIdOption { get; private set; }

        /// <summary>
        /// Gets or sets the metric ID.
        /// </summary>
        /// <value>Gets or sets the metric ID.</value>
        [JsonPropertyName("metric_id")]
        public string? MetricId { get { return this.MetricIdOption; } set { this.MetricIdOption = new(value); } }

        /// <summary>
        /// Used to track the state of SymbolId
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<string?> SymbolIdOption { get; private set; }

        /// <summary>
        /// Gets or sets the symbol ID.
        /// </summary>
        /// <value>Gets or sets the symbol ID.</value>
        [JsonPropertyName("symbol_id")]
        public string? SymbolId { get { return this.SymbolIdOption; } set { this.SymbolIdOption = new(value); } }

        /// <summary>
        /// Used to track the state of SymbolIdExternal
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<string?> SymbolIdExternalOption { get; private set; }

        /// <summary>
        /// Gets or sets the symbol ID from the exchange.
        /// </summary>
        /// <value>Gets or sets the symbol ID from the exchange.</value>
        [JsonPropertyName("symbol_id_external")]
        public string? SymbolIdExternal { get { return this.SymbolIdExternalOption; } set { this.SymbolIdExternalOption = new(value); } }

        /// <summary>
        /// Used to track the state of ExchangeId
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<string?> ExchangeIdOption { get; private set; }

        /// <summary>
        /// Gets or sets the exchange ID.
        /// </summary>
        /// <value>Gets or sets the exchange ID.</value>
        [JsonPropertyName("exchange_id")]
        public string? ExchangeId { get { return this.ExchangeIdOption; } set { this.ExchangeIdOption = new(value); } }

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
        /// Used to track the state of AssetIdExternal
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<string?> AssetIdExternalOption { get; private set; }

        /// <summary>
        /// Gets or sets the asset ID from the exchange.
        /// </summary>
        /// <value>Gets or sets the asset ID from the exchange.</value>
        [JsonPropertyName("asset_id_external")]
        public string? AssetIdExternal { get { return this.AssetIdExternalOption; } set { this.AssetIdExternalOption = new(value); } }

        /// <summary>
        /// Used to track the state of ChainId
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<string?> ChainIdOption { get; private set; }

        /// <summary>
        /// Gets or sets the chain id.
        /// </summary>
        /// <value>Gets or sets the chain id.</value>
        [JsonPropertyName("chain_id")]
        public string? ChainId { get { return this.ChainIdOption; } set { this.ChainIdOption = new(value); } }

        /// <summary>
        /// Used to track the state of NetworkId
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<string?> NetworkIdOption { get; private set; }

        /// <summary>
        /// Gets or sets the network id.
        /// </summary>
        /// <value>Gets or sets the network id.</value>
        [JsonPropertyName("network_id")]
        public string? NetworkId { get { return this.NetworkIdOption; } set { this.NetworkIdOption = new(value); } }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class V1ListingItem {\n");
            sb.Append("  MetricId: ").Append(MetricId).Append("\n");
            sb.Append("  SymbolId: ").Append(SymbolId).Append("\n");
            sb.Append("  SymbolIdExternal: ").Append(SymbolIdExternal).Append("\n");
            sb.Append("  ExchangeId: ").Append(ExchangeId).Append("\n");
            sb.Append("  AssetId: ").Append(AssetId).Append("\n");
            sb.Append("  AssetIdExternal: ").Append(AssetIdExternal).Append("\n");
            sb.Append("  ChainId: ").Append(ChainId).Append("\n");
            sb.Append("  NetworkId: ").Append(NetworkId).Append("\n");
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
    /// A Json converter for type <see cref="V1ListingItem" />
    /// </summary>
    public class V1ListingItemJsonConverter : JsonConverter<V1ListingItem>
    {
        /// <summary>
        /// Deserializes json to <see cref="V1ListingItem" />
        /// </summary>
        /// <param name="utf8JsonReader"></param>
        /// <param name="typeToConvert"></param>
        /// <param name="jsonSerializerOptions"></param>
        /// <returns></returns>
        /// <exception cref="JsonException"></exception>
        public override V1ListingItem Read(ref Utf8JsonReader utf8JsonReader, Type typeToConvert, JsonSerializerOptions jsonSerializerOptions)
        {
            int currentDepth = utf8JsonReader.CurrentDepth;

            if (utf8JsonReader.TokenType != JsonTokenType.StartObject && utf8JsonReader.TokenType != JsonTokenType.StartArray)
                throw new JsonException();

            JsonTokenType startingTokenType = utf8JsonReader.TokenType;

            Option<string?> metricId = default;
            Option<string?> symbolId = default;
            Option<string?> symbolIdExternal = default;
            Option<string?> exchangeId = default;
            Option<string?> assetId = default;
            Option<string?> assetIdExternal = default;
            Option<string?> chainId = default;
            Option<string?> networkId = default;

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
                        case "metric_id":
                            metricId = new Option<string?>(utf8JsonReader.GetString());
                            break;
                        case "symbol_id":
                            symbolId = new Option<string?>(utf8JsonReader.GetString());
                            break;
                        case "symbol_id_external":
                            symbolIdExternal = new Option<string?>(utf8JsonReader.GetString());
                            break;
                        case "exchange_id":
                            exchangeId = new Option<string?>(utf8JsonReader.GetString());
                            break;
                        case "asset_id":
                            assetId = new Option<string?>(utf8JsonReader.GetString());
                            break;
                        case "asset_id_external":
                            assetIdExternal = new Option<string?>(utf8JsonReader.GetString());
                            break;
                        case "chain_id":
                            chainId = new Option<string?>(utf8JsonReader.GetString());
                            break;
                        case "network_id":
                            networkId = new Option<string?>(utf8JsonReader.GetString());
                            break;
                        default:
                            break;
                    }
                }
            }

            return new V1ListingItem(metricId, symbolId, symbolIdExternal, exchangeId, assetId, assetIdExternal, chainId, networkId);
        }

        /// <summary>
        /// Serializes a <see cref="V1ListingItem" />
        /// </summary>
        /// <param name="writer"></param>
        /// <param name="v1ListingItem"></param>
        /// <param name="jsonSerializerOptions"></param>
        /// <exception cref="NotImplementedException"></exception>
        public override void Write(Utf8JsonWriter writer, V1ListingItem v1ListingItem, JsonSerializerOptions jsonSerializerOptions)
        {
            writer.WriteStartObject();

            WriteProperties(writer, v1ListingItem, jsonSerializerOptions);
            writer.WriteEndObject();
        }

        /// <summary>
        /// Serializes the properties of <see cref="V1ListingItem" />
        /// </summary>
        /// <param name="writer"></param>
        /// <param name="v1ListingItem"></param>
        /// <param name="jsonSerializerOptions"></param>
        /// <exception cref="NotImplementedException"></exception>
        public void WriteProperties(Utf8JsonWriter writer, V1ListingItem v1ListingItem, JsonSerializerOptions jsonSerializerOptions)
        {
            if (v1ListingItem.MetricIdOption.IsSet)
                if (v1ListingItem.MetricIdOption.Value != null)
                    writer.WriteString("metric_id", v1ListingItem.MetricId);
                else
                    writer.WriteNull("metric_id");

            if (v1ListingItem.SymbolIdOption.IsSet)
                if (v1ListingItem.SymbolIdOption.Value != null)
                    writer.WriteString("symbol_id", v1ListingItem.SymbolId);
                else
                    writer.WriteNull("symbol_id");

            if (v1ListingItem.SymbolIdExternalOption.IsSet)
                if (v1ListingItem.SymbolIdExternalOption.Value != null)
                    writer.WriteString("symbol_id_external", v1ListingItem.SymbolIdExternal);
                else
                    writer.WriteNull("symbol_id_external");

            if (v1ListingItem.ExchangeIdOption.IsSet)
                if (v1ListingItem.ExchangeIdOption.Value != null)
                    writer.WriteString("exchange_id", v1ListingItem.ExchangeId);
                else
                    writer.WriteNull("exchange_id");

            if (v1ListingItem.AssetIdOption.IsSet)
                if (v1ListingItem.AssetIdOption.Value != null)
                    writer.WriteString("asset_id", v1ListingItem.AssetId);
                else
                    writer.WriteNull("asset_id");

            if (v1ListingItem.AssetIdExternalOption.IsSet)
                if (v1ListingItem.AssetIdExternalOption.Value != null)
                    writer.WriteString("asset_id_external", v1ListingItem.AssetIdExternal);
                else
                    writer.WriteNull("asset_id_external");

            if (v1ListingItem.ChainIdOption.IsSet)
                if (v1ListingItem.ChainIdOption.Value != null)
                    writer.WriteString("chain_id", v1ListingItem.ChainId);
                else
                    writer.WriteNull("chain_id");

            if (v1ListingItem.NetworkIdOption.IsSet)
                if (v1ListingItem.NetworkIdOption.Value != null)
                    writer.WriteString("network_id", v1ListingItem.NetworkId);
                else
                    writer.WriteNull("network_id");
        }
    }
}
