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
    /// Represents the last executed transaction.
    /// </summary>
    public partial class V1LastTrade : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="V1LastTrade" /> class.
        /// </summary>
        /// <param name="timeExchange">The exchange time of the last trade.</param>
        /// <param name="timeCoinapi">The CoinAPI time when the last trade was received.</param>
        /// <param name="uuid">The UUID of the last trade.</param>
        /// <param name="price">The price of the last trade.</param>
        /// <param name="size">The size of the last trade.</param>
        /// <param name="takerSide">The taker side of the last trade.</param>
        [JsonConstructor]
        public V1LastTrade(Option<DateTime?> timeExchange = default, Option<DateTime?> timeCoinapi = default, Option<Guid?> uuid = default, Option<double?> price = default, Option<double?> size = default, Option<string?> takerSide = default)
        {
            TimeExchangeOption = timeExchange;
            TimeCoinapiOption = timeCoinapi;
            UuidOption = uuid;
            PriceOption = price;
            SizeOption = size;
            TakerSideOption = takerSide;
            OnCreated();
        }

        partial void OnCreated();

        /// <summary>
        /// Used to track the state of TimeExchange
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<DateTime?> TimeExchangeOption { get; private set; }

        /// <summary>
        /// The exchange time of the last trade.
        /// </summary>
        /// <value>The exchange time of the last trade.</value>
        [JsonPropertyName("time_exchange")]
        public DateTime? TimeExchange { get { return this.TimeExchangeOption; } set { this.TimeExchangeOption = new(value); } }

        /// <summary>
        /// Used to track the state of TimeCoinapi
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<DateTime?> TimeCoinapiOption { get; private set; }

        /// <summary>
        /// The CoinAPI time when the last trade was received.
        /// </summary>
        /// <value>The CoinAPI time when the last trade was received.</value>
        [JsonPropertyName("time_coinapi")]
        public DateTime? TimeCoinapi { get { return this.TimeCoinapiOption; } set { this.TimeCoinapiOption = new(value); } }

        /// <summary>
        /// Used to track the state of Uuid
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<Guid?> UuidOption { get; private set; }

        /// <summary>
        /// The UUID of the last trade.
        /// </summary>
        /// <value>The UUID of the last trade.</value>
        [JsonPropertyName("uuid")]
        public Guid? Uuid { get { return this.UuidOption; } set { this.UuidOption = new(value); } }

        /// <summary>
        /// Used to track the state of Price
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<double?> PriceOption { get; private set; }

        /// <summary>
        /// The price of the last trade.
        /// </summary>
        /// <value>The price of the last trade.</value>
        [JsonPropertyName("price")]
        public double? Price { get { return this.PriceOption; } set { this.PriceOption = new(value); } }

        /// <summary>
        /// Used to track the state of Size
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<double?> SizeOption { get; private set; }

        /// <summary>
        /// The size of the last trade.
        /// </summary>
        /// <value>The size of the last trade.</value>
        [JsonPropertyName("size")]
        public double? Size { get { return this.SizeOption; } set { this.SizeOption = new(value); } }

        /// <summary>
        /// Used to track the state of TakerSide
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<string?> TakerSideOption { get; private set; }

        /// <summary>
        /// The taker side of the last trade.
        /// </summary>
        /// <value>The taker side of the last trade.</value>
        [JsonPropertyName("taker_side")]
        public string? TakerSide { get { return this.TakerSideOption; } set { this.TakerSideOption = new(value); } }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class V1LastTrade {\n");
            sb.Append("  TimeExchange: ").Append(TimeExchange).Append("\n");
            sb.Append("  TimeCoinapi: ").Append(TimeCoinapi).Append("\n");
            sb.Append("  Uuid: ").Append(Uuid).Append("\n");
            sb.Append("  Price: ").Append(Price).Append("\n");
            sb.Append("  Size: ").Append(Size).Append("\n");
            sb.Append("  TakerSide: ").Append(TakerSide).Append("\n");
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
    /// A Json converter for type <see cref="V1LastTrade" />
    /// </summary>
    public class V1LastTradeJsonConverter : JsonConverter<V1LastTrade>
    {
        /// <summary>
        /// The format to use to serialize TimeExchange
        /// </summary>
        public static string TimeExchangeFormat { get; set; } = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'.'fffffffK";

        /// <summary>
        /// The format to use to serialize TimeCoinapi
        /// </summary>
        public static string TimeCoinapiFormat { get; set; } = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'.'fffffffK";

        /// <summary>
        /// Deserializes json to <see cref="V1LastTrade" />
        /// </summary>
        /// <param name="utf8JsonReader"></param>
        /// <param name="typeToConvert"></param>
        /// <param name="jsonSerializerOptions"></param>
        /// <returns></returns>
        /// <exception cref="JsonException"></exception>
        public override V1LastTrade Read(ref Utf8JsonReader utf8JsonReader, Type typeToConvert, JsonSerializerOptions jsonSerializerOptions)
        {
            int currentDepth = utf8JsonReader.CurrentDepth;

            if (utf8JsonReader.TokenType != JsonTokenType.StartObject && utf8JsonReader.TokenType != JsonTokenType.StartArray)
                throw new JsonException();

            JsonTokenType startingTokenType = utf8JsonReader.TokenType;

            Option<DateTime?> timeExchange = default;
            Option<DateTime?> timeCoinapi = default;
            Option<Guid?> uuid = default;
            Option<double?> price = default;
            Option<double?> size = default;
            Option<string?> takerSide = default;

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
                        case "time_exchange":
                            timeExchange = new Option<DateTime?>(JsonSerializer.Deserialize<DateTime>(ref utf8JsonReader, jsonSerializerOptions));
                            break;
                        case "time_coinapi":
                            timeCoinapi = new Option<DateTime?>(JsonSerializer.Deserialize<DateTime>(ref utf8JsonReader, jsonSerializerOptions));
                            break;
                        case "uuid":
                            uuid = new Option<Guid?>(utf8JsonReader.TokenType == JsonTokenType.Null ? (Guid?)null : utf8JsonReader.GetGuid());
                            break;
                        case "price":
                            price = new Option<double?>(utf8JsonReader.TokenType == JsonTokenType.Null ? (double?)null : utf8JsonReader.GetDouble());
                            break;
                        case "size":
                            size = new Option<double?>(utf8JsonReader.TokenType == JsonTokenType.Null ? (double?)null : utf8JsonReader.GetDouble());
                            break;
                        case "taker_side":
                            takerSide = new Option<string?>(utf8JsonReader.GetString());
                            break;
                        default:
                            break;
                    }
                }
            }

            if (timeExchange.IsSet && timeExchange.Value == null)
                throw new ArgumentNullException(nameof(timeExchange), "Property is not nullable for class V1LastTrade.");

            if (timeCoinapi.IsSet && timeCoinapi.Value == null)
                throw new ArgumentNullException(nameof(timeCoinapi), "Property is not nullable for class V1LastTrade.");

            if (uuid.IsSet && uuid.Value == null)
                throw new ArgumentNullException(nameof(uuid), "Property is not nullable for class V1LastTrade.");

            if (price.IsSet && price.Value == null)
                throw new ArgumentNullException(nameof(price), "Property is not nullable for class V1LastTrade.");

            if (size.IsSet && size.Value == null)
                throw new ArgumentNullException(nameof(size), "Property is not nullable for class V1LastTrade.");

            return new V1LastTrade(timeExchange, timeCoinapi, uuid, price, size, takerSide);
        }

        /// <summary>
        /// Serializes a <see cref="V1LastTrade" />
        /// </summary>
        /// <param name="writer"></param>
        /// <param name="v1LastTrade"></param>
        /// <param name="jsonSerializerOptions"></param>
        /// <exception cref="NotImplementedException"></exception>
        public override void Write(Utf8JsonWriter writer, V1LastTrade v1LastTrade, JsonSerializerOptions jsonSerializerOptions)
        {
            writer.WriteStartObject();

            WriteProperties(writer, v1LastTrade, jsonSerializerOptions);
            writer.WriteEndObject();
        }

        /// <summary>
        /// Serializes the properties of <see cref="V1LastTrade" />
        /// </summary>
        /// <param name="writer"></param>
        /// <param name="v1LastTrade"></param>
        /// <param name="jsonSerializerOptions"></param>
        /// <exception cref="NotImplementedException"></exception>
        public void WriteProperties(Utf8JsonWriter writer, V1LastTrade v1LastTrade, JsonSerializerOptions jsonSerializerOptions)
        {
            if (v1LastTrade.TimeExchangeOption.IsSet)
                writer.WriteString("time_exchange", v1LastTrade.TimeExchangeOption.Value!.Value.ToString(TimeExchangeFormat));

            if (v1LastTrade.TimeCoinapiOption.IsSet)
                writer.WriteString("time_coinapi", v1LastTrade.TimeCoinapiOption.Value!.Value.ToString(TimeCoinapiFormat));

            if (v1LastTrade.UuidOption.IsSet)
                writer.WriteString("uuid", v1LastTrade.UuidOption.Value!.Value);

            if (v1LastTrade.PriceOption.IsSet)
                writer.WriteNumber("price", v1LastTrade.PriceOption.Value!.Value);

            if (v1LastTrade.SizeOption.IsSet)
                writer.WriteNumber("size", v1LastTrade.SizeOption.Value!.Value);

            if (v1LastTrade.TakerSideOption.IsSet)
                if (v1LastTrade.TakerSideOption.Value != null)
                    writer.WriteString("taker_side", v1LastTrade.TakerSide);
                else
                    writer.WriteNull("taker_side");
        }
    }
}
