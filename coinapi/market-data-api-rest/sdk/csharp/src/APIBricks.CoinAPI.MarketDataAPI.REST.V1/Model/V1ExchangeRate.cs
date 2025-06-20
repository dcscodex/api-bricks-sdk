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
    /// Represents an exchange rate.
    /// </summary>
    public partial class V1ExchangeRate : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="V1ExchangeRate" /> class.
        /// </summary>
        /// <param name="time">Gets or sets the time of the exchange rate.</param>
        /// <param name="assetIdBase">Gets or sets the base asset ID of the exchange rate.</param>
        /// <param name="assetIdQuote">Gets or sets the quote asset ID of the exchange rate.</param>
        /// <param name="rate">Gets or sets the exchange rate value.</param>
        [JsonConstructor]
        public V1ExchangeRate(Option<DateTime?> time = default, Option<string?> assetIdBase = default, Option<string?> assetIdQuote = default, Option<double?> rate = default)
        {
            TimeOption = time;
            AssetIdBaseOption = assetIdBase;
            AssetIdQuoteOption = assetIdQuote;
            RateOption = rate;
            OnCreated();
        }

        partial void OnCreated();

        /// <summary>
        /// Used to track the state of Time
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<DateTime?> TimeOption { get; private set; }

        /// <summary>
        /// Gets or sets the time of the exchange rate.
        /// </summary>
        /// <value>Gets or sets the time of the exchange rate.</value>
        [JsonPropertyName("time")]
        public DateTime? Time { get { return this.TimeOption; } set { this.TimeOption = new(value); } }

        /// <summary>
        /// Used to track the state of AssetIdBase
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<string?> AssetIdBaseOption { get; private set; }

        /// <summary>
        /// Gets or sets the base asset ID of the exchange rate.
        /// </summary>
        /// <value>Gets or sets the base asset ID of the exchange rate.</value>
        [JsonPropertyName("asset_id_base")]
        public string? AssetIdBase { get { return this.AssetIdBaseOption; } set { this.AssetIdBaseOption = new(value); } }

        /// <summary>
        /// Used to track the state of AssetIdQuote
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<string?> AssetIdQuoteOption { get; private set; }

        /// <summary>
        /// Gets or sets the quote asset ID of the exchange rate.
        /// </summary>
        /// <value>Gets or sets the quote asset ID of the exchange rate.</value>
        [JsonPropertyName("asset_id_quote")]
        public string? AssetIdQuote { get { return this.AssetIdQuoteOption; } set { this.AssetIdQuoteOption = new(value); } }

        /// <summary>
        /// Used to track the state of Rate
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<double?> RateOption { get; private set; }

        /// <summary>
        /// Gets or sets the exchange rate value.
        /// </summary>
        /// <value>Gets or sets the exchange rate value.</value>
        [JsonPropertyName("rate")]
        public double? Rate { get { return this.RateOption; } set { this.RateOption = new(value); } }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class V1ExchangeRate {\n");
            sb.Append("  Time: ").Append(Time).Append("\n");
            sb.Append("  AssetIdBase: ").Append(AssetIdBase).Append("\n");
            sb.Append("  AssetIdQuote: ").Append(AssetIdQuote).Append("\n");
            sb.Append("  Rate: ").Append(Rate).Append("\n");
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
    /// A Json converter for type <see cref="V1ExchangeRate" />
    /// </summary>
    public class V1ExchangeRateJsonConverter : JsonConverter<V1ExchangeRate>
    {
        /// <summary>
        /// The format to use to serialize Time
        /// </summary>
        public static string TimeFormat { get; set; } = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'.'fffffffK";

        /// <summary>
        /// Deserializes json to <see cref="V1ExchangeRate" />
        /// </summary>
        /// <param name="utf8JsonReader"></param>
        /// <param name="typeToConvert"></param>
        /// <param name="jsonSerializerOptions"></param>
        /// <returns></returns>
        /// <exception cref="JsonException"></exception>
        public override V1ExchangeRate Read(ref Utf8JsonReader utf8JsonReader, Type typeToConvert, JsonSerializerOptions jsonSerializerOptions)
        {
            int currentDepth = utf8JsonReader.CurrentDepth;

            if (utf8JsonReader.TokenType != JsonTokenType.StartObject && utf8JsonReader.TokenType != JsonTokenType.StartArray)
                throw new JsonException();

            JsonTokenType startingTokenType = utf8JsonReader.TokenType;

            Option<DateTime?> time = default;
            Option<string?> assetIdBase = default;
            Option<string?> assetIdQuote = default;
            Option<double?> rate = default;

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
                        case "time":
                            time = new Option<DateTime?>(JsonSerializer.Deserialize<DateTime>(ref utf8JsonReader, jsonSerializerOptions));
                            break;
                        case "asset_id_base":
                            assetIdBase = new Option<string?>(utf8JsonReader.GetString());
                            break;
                        case "asset_id_quote":
                            assetIdQuote = new Option<string?>(utf8JsonReader.GetString());
                            break;
                        case "rate":
                            rate = new Option<double?>(utf8JsonReader.TokenType == JsonTokenType.Null ? (double?)null : utf8JsonReader.GetDouble());
                            break;
                        default:
                            break;
                    }
                }
            }

            if (time.IsSet && time.Value == null)
                throw new ArgumentNullException(nameof(time), "Property is not nullable for class V1ExchangeRate.");

            if (rate.IsSet && rate.Value == null)
                throw new ArgumentNullException(nameof(rate), "Property is not nullable for class V1ExchangeRate.");

            return new V1ExchangeRate(time, assetIdBase, assetIdQuote, rate);
        }

        /// <summary>
        /// Serializes a <see cref="V1ExchangeRate" />
        /// </summary>
        /// <param name="writer"></param>
        /// <param name="v1ExchangeRate"></param>
        /// <param name="jsonSerializerOptions"></param>
        /// <exception cref="NotImplementedException"></exception>
        public override void Write(Utf8JsonWriter writer, V1ExchangeRate v1ExchangeRate, JsonSerializerOptions jsonSerializerOptions)
        {
            writer.WriteStartObject();

            WriteProperties(writer, v1ExchangeRate, jsonSerializerOptions);
            writer.WriteEndObject();
        }

        /// <summary>
        /// Serializes the properties of <see cref="V1ExchangeRate" />
        /// </summary>
        /// <param name="writer"></param>
        /// <param name="v1ExchangeRate"></param>
        /// <param name="jsonSerializerOptions"></param>
        /// <exception cref="NotImplementedException"></exception>
        public void WriteProperties(Utf8JsonWriter writer, V1ExchangeRate v1ExchangeRate, JsonSerializerOptions jsonSerializerOptions)
        {
            if (v1ExchangeRate.TimeOption.IsSet)
                writer.WriteString("time", v1ExchangeRate.TimeOption.Value!.Value.ToString(TimeFormat));

            if (v1ExchangeRate.AssetIdBaseOption.IsSet)
                if (v1ExchangeRate.AssetIdBaseOption.Value != null)
                    writer.WriteString("asset_id_base", v1ExchangeRate.AssetIdBase);
                else
                    writer.WriteNull("asset_id_base");

            if (v1ExchangeRate.AssetIdQuoteOption.IsSet)
                if (v1ExchangeRate.AssetIdQuoteOption.Value != null)
                    writer.WriteString("asset_id_quote", v1ExchangeRate.AssetIdQuote);
                else
                    writer.WriteNull("asset_id_quote");

            if (v1ExchangeRate.RateOption.IsSet)
                writer.WriteNumber("rate", v1ExchangeRate.RateOption.Value!.Value);
        }
    }
}
