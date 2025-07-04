// <auto-generated>
/*
 * FinFeedAPI Stock REST API
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
using OpenAPIClientUtils = APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Client.ClientUtils;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Client;

namespace APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model
{
    /// <summary>
    /// Represents the response DTO for security directory information
    /// </summary>
    public partial class AdminSecurityDirectoryModel : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="AdminSecurityDirectoryModel" /> class.
        /// </summary>
        /// <param name="symbol">The stock symbol</param>
        /// <param name="timestampNanos">Original timestamp in nanoseconds since epoch</param>
        /// <param name="timestamp">Time when the security directory information was recorded as DateTime</param>
        /// <param name="flags">Flags for the security</param>
        /// <param name="roundLotSize">Number of shares that represent a round lot</param>
        /// <param name="adjustedPocPrice">Adjusted previous official closing price as decimal</param>
        /// <param name="luldTier">LULD tier as byte value</param>
        /// <param name="luldTierCode">LULD tier as numeric string</param>
        /// <param name="luldTierText">Human-readable description of the LULD tier</param>
        /// <param name="isLuldTierNotApplicable">Indicates if LULD Tier is &#39;Not applicable&#39; (0x0).</param>
        /// <param name="isLuldTier1">Indicates if LULD Tier is &#39;Tier 1 NMS Stock&#39; (0x1).</param>
        /// <param name="isLuldTier2">Indicates if LULD Tier is &#39;Tier 2 NMS Stock&#39; (0x2).</param>
        [JsonConstructor]
        public AdminSecurityDirectoryModel(Option<string?> symbol = default, Option<long?> timestampNanos = default, Option<DateTime?> timestamp = default, Option<int?> flags = default, Option<int?> roundLotSize = default, Option<double?> adjustedPocPrice = default, Option<int?> luldTier = default, Option<string?> luldTierCode = default, Option<string?> luldTierText = default, Option<bool?> isLuldTierNotApplicable = default, Option<bool?> isLuldTier1 = default, Option<bool?> isLuldTier2 = default)
        {
            SymbolOption = symbol;
            TimestampNanosOption = timestampNanos;
            TimestampOption = timestamp;
            FlagsOption = flags;
            RoundLotSizeOption = roundLotSize;
            AdjustedPocPriceOption = adjustedPocPrice;
            LuldTierOption = luldTier;
            LuldTierCodeOption = luldTierCode;
            LuldTierTextOption = luldTierText;
            IsLuldTierNotApplicableOption = isLuldTierNotApplicable;
            IsLuldTier1Option = isLuldTier1;
            IsLuldTier2Option = isLuldTier2;
            OnCreated();
        }

        partial void OnCreated();

        /// <summary>
        /// Used to track the state of Symbol
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<string?> SymbolOption { get; private set; }

        /// <summary>
        /// The stock symbol
        /// </summary>
        /// <value>The stock symbol</value>
        [JsonPropertyName("symbol")]
        public string? Symbol { get { return this.SymbolOption; } set { this.SymbolOption = new(value); } }

        /// <summary>
        /// Used to track the state of TimestampNanos
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<long?> TimestampNanosOption { get; private set; }

        /// <summary>
        /// Original timestamp in nanoseconds since epoch
        /// </summary>
        /// <value>Original timestamp in nanoseconds since epoch</value>
        [JsonPropertyName("timestamp_nanos")]
        public long? TimestampNanos { get { return this.TimestampNanosOption; } set { this.TimestampNanosOption = new(value); } }

        /// <summary>
        /// Used to track the state of Timestamp
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<DateTime?> TimestampOption { get; private set; }

        /// <summary>
        /// Time when the security directory information was recorded as DateTime
        /// </summary>
        /// <value>Time when the security directory information was recorded as DateTime</value>
        [JsonPropertyName("timestamp")]
        public DateTime? Timestamp { get { return this.TimestampOption; } set { this.TimestampOption = new(value); } }

        /// <summary>
        /// Used to track the state of Flags
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<int?> FlagsOption { get; private set; }

        /// <summary>
        /// Flags for the security
        /// </summary>
        /// <value>Flags for the security</value>
        [JsonPropertyName("flags")]
        public int? Flags { get { return this.FlagsOption; } set { this.FlagsOption = new(value); } }

        /// <summary>
        /// Used to track the state of RoundLotSize
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<int?> RoundLotSizeOption { get; private set; }

        /// <summary>
        /// Number of shares that represent a round lot
        /// </summary>
        /// <value>Number of shares that represent a round lot</value>
        [JsonPropertyName("round_lot_size")]
        public int? RoundLotSize { get { return this.RoundLotSizeOption; } set { this.RoundLotSizeOption = new(value); } }

        /// <summary>
        /// Used to track the state of AdjustedPocPrice
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<double?> AdjustedPocPriceOption { get; private set; }

        /// <summary>
        /// Adjusted previous official closing price as decimal
        /// </summary>
        /// <value>Adjusted previous official closing price as decimal</value>
        [JsonPropertyName("adjusted_poc_price")]
        public double? AdjustedPocPrice { get { return this.AdjustedPocPriceOption; } set { this.AdjustedPocPriceOption = new(value); } }

        /// <summary>
        /// Used to track the state of LuldTier
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<int?> LuldTierOption { get; private set; }

        /// <summary>
        /// LULD tier as byte value
        /// </summary>
        /// <value>LULD tier as byte value</value>
        [JsonPropertyName("luld_tier")]
        public int? LuldTier { get { return this.LuldTierOption; } set { this.LuldTierOption = new(value); } }

        /// <summary>
        /// Used to track the state of LuldTierCode
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<string?> LuldTierCodeOption { get; private set; }

        /// <summary>
        /// LULD tier as numeric string
        /// </summary>
        /// <value>LULD tier as numeric string</value>
        [JsonPropertyName("luld_tier_code")]
        public string? LuldTierCode { get { return this.LuldTierCodeOption; } set { this.LuldTierCodeOption = new(value); } }

        /// <summary>
        /// Used to track the state of LuldTierText
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<string?> LuldTierTextOption { get; private set; }

        /// <summary>
        /// Human-readable description of the LULD tier
        /// </summary>
        /// <value>Human-readable description of the LULD tier</value>
        [JsonPropertyName("luld_tier_text")]
        public string? LuldTierText { get { return this.LuldTierTextOption; } set { this.LuldTierTextOption = new(value); } }

        /// <summary>
        /// Used to track the state of IsLuldTierNotApplicable
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<bool?> IsLuldTierNotApplicableOption { get; private set; }

        /// <summary>
        /// Indicates if LULD Tier is &#39;Not applicable&#39; (0x0).
        /// </summary>
        /// <value>Indicates if LULD Tier is &#39;Not applicable&#39; (0x0).</value>
        [JsonPropertyName("is_luld_tier_not_applicable")]
        public bool? IsLuldTierNotApplicable { get { return this.IsLuldTierNotApplicableOption; } set { this.IsLuldTierNotApplicableOption = new(value); } }

        /// <summary>
        /// Used to track the state of IsLuldTier1
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<bool?> IsLuldTier1Option { get; private set; }

        /// <summary>
        /// Indicates if LULD Tier is &#39;Tier 1 NMS Stock&#39; (0x1).
        /// </summary>
        /// <value>Indicates if LULD Tier is &#39;Tier 1 NMS Stock&#39; (0x1).</value>
        [JsonPropertyName("is_luld_tier1")]
        public bool? IsLuldTier1 { get { return this.IsLuldTier1Option; } set { this.IsLuldTier1Option = new(value); } }

        /// <summary>
        /// Used to track the state of IsLuldTier2
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<bool?> IsLuldTier2Option { get; private set; }

        /// <summary>
        /// Indicates if LULD Tier is &#39;Tier 2 NMS Stock&#39; (0x2).
        /// </summary>
        /// <value>Indicates if LULD Tier is &#39;Tier 2 NMS Stock&#39; (0x2).</value>
        [JsonPropertyName("is_luld_tier2")]
        public bool? IsLuldTier2 { get { return this.IsLuldTier2Option; } set { this.IsLuldTier2Option = new(value); } }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class AdminSecurityDirectoryModel {\n");
            sb.Append("  Symbol: ").Append(Symbol).Append("\n");
            sb.Append("  TimestampNanos: ").Append(TimestampNanos).Append("\n");
            sb.Append("  Timestamp: ").Append(Timestamp).Append("\n");
            sb.Append("  Flags: ").Append(Flags).Append("\n");
            sb.Append("  RoundLotSize: ").Append(RoundLotSize).Append("\n");
            sb.Append("  AdjustedPocPrice: ").Append(AdjustedPocPrice).Append("\n");
            sb.Append("  LuldTier: ").Append(LuldTier).Append("\n");
            sb.Append("  LuldTierCode: ").Append(LuldTierCode).Append("\n");
            sb.Append("  LuldTierText: ").Append(LuldTierText).Append("\n");
            sb.Append("  IsLuldTierNotApplicable: ").Append(IsLuldTierNotApplicable).Append("\n");
            sb.Append("  IsLuldTier1: ").Append(IsLuldTier1).Append("\n");
            sb.Append("  IsLuldTier2: ").Append(IsLuldTier2).Append("\n");
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
    /// A Json converter for type <see cref="AdminSecurityDirectoryModel" />
    /// </summary>
    public class AdminSecurityDirectoryModelJsonConverter : JsonConverter<AdminSecurityDirectoryModel>
    {
        /// <summary>
        /// The format to use to serialize Timestamp
        /// </summary>
        public static string TimestampFormat { get; set; } = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'.'fffffffK";

        /// <summary>
        /// Deserializes json to <see cref="AdminSecurityDirectoryModel" />
        /// </summary>
        /// <param name="utf8JsonReader"></param>
        /// <param name="typeToConvert"></param>
        /// <param name="jsonSerializerOptions"></param>
        /// <returns></returns>
        /// <exception cref="JsonException"></exception>
        public override AdminSecurityDirectoryModel Read(ref Utf8JsonReader utf8JsonReader, Type typeToConvert, JsonSerializerOptions jsonSerializerOptions)
        {
            int currentDepth = utf8JsonReader.CurrentDepth;

            if (utf8JsonReader.TokenType != JsonTokenType.StartObject && utf8JsonReader.TokenType != JsonTokenType.StartArray)
                throw new JsonException();

            JsonTokenType startingTokenType = utf8JsonReader.TokenType;

            Option<string?> symbol = default;
            Option<long?> timestampNanos = default;
            Option<DateTime?> timestamp = default;
            Option<int?> flags = default;
            Option<int?> roundLotSize = default;
            Option<double?> adjustedPocPrice = default;
            Option<int?> luldTier = default;
            Option<string?> luldTierCode = default;
            Option<string?> luldTierText = default;
            Option<bool?> isLuldTierNotApplicable = default;
            Option<bool?> isLuldTier1 = default;
            Option<bool?> isLuldTier2 = default;

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
                        case "symbol":
                            symbol = new Option<string?>(utf8JsonReader.GetString());
                            break;
                        case "timestamp_nanos":
                            timestampNanos = new Option<long?>(utf8JsonReader.TokenType == JsonTokenType.Null ? (long?)null : utf8JsonReader.GetInt64());
                            break;
                        case "timestamp":
                            timestamp = new Option<DateTime?>(JsonSerializer.Deserialize<DateTime>(ref utf8JsonReader, jsonSerializerOptions));
                            break;
                        case "flags":
                            flags = new Option<int?>(utf8JsonReader.TokenType == JsonTokenType.Null ? (int?)null : utf8JsonReader.GetInt32());
                            break;
                        case "round_lot_size":
                            roundLotSize = new Option<int?>(utf8JsonReader.TokenType == JsonTokenType.Null ? (int?)null : utf8JsonReader.GetInt32());
                            break;
                        case "adjusted_poc_price":
                            adjustedPocPrice = new Option<double?>(utf8JsonReader.TokenType == JsonTokenType.Null ? (double?)null : utf8JsonReader.GetDouble());
                            break;
                        case "luld_tier":
                            luldTier = new Option<int?>(utf8JsonReader.TokenType == JsonTokenType.Null ? (int?)null : utf8JsonReader.GetInt32());
                            break;
                        case "luld_tier_code":
                            luldTierCode = new Option<string?>(utf8JsonReader.GetString());
                            break;
                        case "luld_tier_text":
                            luldTierText = new Option<string?>(utf8JsonReader.GetString());
                            break;
                        case "is_luld_tier_not_applicable":
                            isLuldTierNotApplicable = new Option<bool?>(utf8JsonReader.TokenType == JsonTokenType.Null ? (bool?)null : utf8JsonReader.GetBoolean());
                            break;
                        case "is_luld_tier1":
                            isLuldTier1 = new Option<bool?>(utf8JsonReader.TokenType == JsonTokenType.Null ? (bool?)null : utf8JsonReader.GetBoolean());
                            break;
                        case "is_luld_tier2":
                            isLuldTier2 = new Option<bool?>(utf8JsonReader.TokenType == JsonTokenType.Null ? (bool?)null : utf8JsonReader.GetBoolean());
                            break;
                        default:
                            break;
                    }
                }
            }

            if (timestampNanos.IsSet && timestampNanos.Value == null)
                throw new ArgumentNullException(nameof(timestampNanos), "Property is not nullable for class AdminSecurityDirectoryModel.");

            if (timestamp.IsSet && timestamp.Value == null)
                throw new ArgumentNullException(nameof(timestamp), "Property is not nullable for class AdminSecurityDirectoryModel.");

            if (flags.IsSet && flags.Value == null)
                throw new ArgumentNullException(nameof(flags), "Property is not nullable for class AdminSecurityDirectoryModel.");

            if (roundLotSize.IsSet && roundLotSize.Value == null)
                throw new ArgumentNullException(nameof(roundLotSize), "Property is not nullable for class AdminSecurityDirectoryModel.");

            if (adjustedPocPrice.IsSet && adjustedPocPrice.Value == null)
                throw new ArgumentNullException(nameof(adjustedPocPrice), "Property is not nullable for class AdminSecurityDirectoryModel.");

            if (luldTier.IsSet && luldTier.Value == null)
                throw new ArgumentNullException(nameof(luldTier), "Property is not nullable for class AdminSecurityDirectoryModel.");

            if (isLuldTierNotApplicable.IsSet && isLuldTierNotApplicable.Value == null)
                throw new ArgumentNullException(nameof(isLuldTierNotApplicable), "Property is not nullable for class AdminSecurityDirectoryModel.");

            if (isLuldTier1.IsSet && isLuldTier1.Value == null)
                throw new ArgumentNullException(nameof(isLuldTier1), "Property is not nullable for class AdminSecurityDirectoryModel.");

            if (isLuldTier2.IsSet && isLuldTier2.Value == null)
                throw new ArgumentNullException(nameof(isLuldTier2), "Property is not nullable for class AdminSecurityDirectoryModel.");

            return new AdminSecurityDirectoryModel(symbol, timestampNanos, timestamp, flags, roundLotSize, adjustedPocPrice, luldTier, luldTierCode, luldTierText, isLuldTierNotApplicable, isLuldTier1, isLuldTier2);
        }

        /// <summary>
        /// Serializes a <see cref="AdminSecurityDirectoryModel" />
        /// </summary>
        /// <param name="writer"></param>
        /// <param name="adminSecurityDirectoryModel"></param>
        /// <param name="jsonSerializerOptions"></param>
        /// <exception cref="NotImplementedException"></exception>
        public override void Write(Utf8JsonWriter writer, AdminSecurityDirectoryModel adminSecurityDirectoryModel, JsonSerializerOptions jsonSerializerOptions)
        {
            writer.WriteStartObject();

            WriteProperties(writer, adminSecurityDirectoryModel, jsonSerializerOptions);
            writer.WriteEndObject();
        }

        /// <summary>
        /// Serializes the properties of <see cref="AdminSecurityDirectoryModel" />
        /// </summary>
        /// <param name="writer"></param>
        /// <param name="adminSecurityDirectoryModel"></param>
        /// <param name="jsonSerializerOptions"></param>
        /// <exception cref="NotImplementedException"></exception>
        public void WriteProperties(Utf8JsonWriter writer, AdminSecurityDirectoryModel adminSecurityDirectoryModel, JsonSerializerOptions jsonSerializerOptions)
        {
            if (adminSecurityDirectoryModel.SymbolOption.IsSet)
                if (adminSecurityDirectoryModel.SymbolOption.Value != null)
                    writer.WriteString("symbol", adminSecurityDirectoryModel.Symbol);
                else
                    writer.WriteNull("symbol");

            if (adminSecurityDirectoryModel.TimestampNanosOption.IsSet)
                writer.WriteNumber("timestamp_nanos", adminSecurityDirectoryModel.TimestampNanosOption.Value!.Value);

            if (adminSecurityDirectoryModel.TimestampOption.IsSet)
                writer.WriteString("timestamp", adminSecurityDirectoryModel.TimestampOption.Value!.Value.ToString(TimestampFormat));

            if (adminSecurityDirectoryModel.FlagsOption.IsSet)
                writer.WriteNumber("flags", adminSecurityDirectoryModel.FlagsOption.Value!.Value);

            if (adminSecurityDirectoryModel.RoundLotSizeOption.IsSet)
                writer.WriteNumber("round_lot_size", adminSecurityDirectoryModel.RoundLotSizeOption.Value!.Value);

            if (adminSecurityDirectoryModel.AdjustedPocPriceOption.IsSet)
                writer.WriteNumber("adjusted_poc_price", adminSecurityDirectoryModel.AdjustedPocPriceOption.Value!.Value);

            if (adminSecurityDirectoryModel.LuldTierOption.IsSet)
                writer.WriteNumber("luld_tier", adminSecurityDirectoryModel.LuldTierOption.Value!.Value);

            if (adminSecurityDirectoryModel.LuldTierCodeOption.IsSet)
                if (adminSecurityDirectoryModel.LuldTierCodeOption.Value != null)
                    writer.WriteString("luld_tier_code", adminSecurityDirectoryModel.LuldTierCode);
                else
                    writer.WriteNull("luld_tier_code");

            if (adminSecurityDirectoryModel.LuldTierTextOption.IsSet)
                if (adminSecurityDirectoryModel.LuldTierTextOption.Value != null)
                    writer.WriteString("luld_tier_text", adminSecurityDirectoryModel.LuldTierText);
                else
                    writer.WriteNull("luld_tier_text");

            if (adminSecurityDirectoryModel.IsLuldTierNotApplicableOption.IsSet)
                writer.WriteBoolean("is_luld_tier_not_applicable", adminSecurityDirectoryModel.IsLuldTierNotApplicableOption.Value!.Value);

            if (adminSecurityDirectoryModel.IsLuldTier1Option.IsSet)
                writer.WriteBoolean("is_luld_tier1", adminSecurityDirectoryModel.IsLuldTier1Option.Value!.Value);

            if (adminSecurityDirectoryModel.IsLuldTier2Option.IsSet)
                writer.WriteBoolean("is_luld_tier2", adminSecurityDirectoryModel.IsLuldTier2Option.Value!.Value);
        }
    }
}
