// <auto-generated>
/*
 * CoinAPI Indexes REST API
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
using OpenAPIClientUtils = APIBricks.CoinAPI.IndexesAPI.REST.V1.Client.ClientUtils;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Client;

namespace APIBricks.CoinAPI.IndexesAPI.REST.V1.Model
{
    /// <summary>
    /// IndexesIndexDefinitionSnapshotEntry
    /// </summary>
    public partial class IndexesIndexDefinitionSnapshotEntry : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="IndexesIndexDefinitionSnapshotEntry" /> class.
        /// </summary>
        /// <param name="indexId">indexId</param>
        /// <param name="timestamp">timestamp</param>
        /// <param name="value">value</param>
        [JsonConstructor]
        public IndexesIndexDefinitionSnapshotEntry(Option<string?> indexId = default, Option<DateTime?> timestamp = default, Option<double?> value = default)
        {
            IndexIdOption = indexId;
            TimestampOption = timestamp;
            ValueOption = value;
            OnCreated();
        }

        partial void OnCreated();

        /// <summary>
        /// Used to track the state of IndexId
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<string?> IndexIdOption { get; private set; }

        /// <summary>
        /// Gets or Sets IndexId
        /// </summary>
        [JsonPropertyName("index_id")]
        public string? IndexId { get { return this.IndexIdOption; } set { this.IndexIdOption = new(value); } }

        /// <summary>
        /// Used to track the state of Timestamp
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<DateTime?> TimestampOption { get; private set; }

        /// <summary>
        /// Gets or Sets Timestamp
        /// </summary>
        [JsonPropertyName("timestamp")]
        public DateTime? Timestamp { get { return this.TimestampOption; } set { this.TimestampOption = new(value); } }

        /// <summary>
        /// Used to track the state of Value
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<double?> ValueOption { get; private set; }

        /// <summary>
        /// Gets or Sets Value
        /// </summary>
        [JsonPropertyName("value")]
        public double? Value { get { return this.ValueOption; } set { this.ValueOption = new(value); } }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class IndexesIndexDefinitionSnapshotEntry {\n");
            sb.Append("  IndexId: ").Append(IndexId).Append("\n");
            sb.Append("  Timestamp: ").Append(Timestamp).Append("\n");
            sb.Append("  Value: ").Append(Value).Append("\n");
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
    /// A Json converter for type <see cref="IndexesIndexDefinitionSnapshotEntry" />
    /// </summary>
    public class IndexesIndexDefinitionSnapshotEntryJsonConverter : JsonConverter<IndexesIndexDefinitionSnapshotEntry>
    {
        /// <summary>
        /// The format to use to serialize Timestamp
        /// </summary>
        public static string TimestampFormat { get; set; } = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'.'fffffffK";

        /// <summary>
        /// Deserializes json to <see cref="IndexesIndexDefinitionSnapshotEntry" />
        /// </summary>
        /// <param name="utf8JsonReader"></param>
        /// <param name="typeToConvert"></param>
        /// <param name="jsonSerializerOptions"></param>
        /// <returns></returns>
        /// <exception cref="JsonException"></exception>
        public override IndexesIndexDefinitionSnapshotEntry Read(ref Utf8JsonReader utf8JsonReader, Type typeToConvert, JsonSerializerOptions jsonSerializerOptions)
        {
            int currentDepth = utf8JsonReader.CurrentDepth;

            if (utf8JsonReader.TokenType != JsonTokenType.StartObject && utf8JsonReader.TokenType != JsonTokenType.StartArray)
                throw new JsonException();

            JsonTokenType startingTokenType = utf8JsonReader.TokenType;

            Option<string?> indexId = default;
            Option<DateTime?> timestamp = default;
            Option<double?> value = default;

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
                        case "index_id":
                            indexId = new Option<string?>(utf8JsonReader.GetString());
                            break;
                        case "timestamp":
                            timestamp = new Option<DateTime?>(JsonSerializer.Deserialize<DateTime>(ref utf8JsonReader, jsonSerializerOptions));
                            break;
                        case "value":
                            value = new Option<double?>(utf8JsonReader.TokenType == JsonTokenType.Null ? (double?)null : utf8JsonReader.GetDouble());
                            break;
                        default:
                            break;
                    }
                }
            }

            if (timestamp.IsSet && timestamp.Value == null)
                throw new ArgumentNullException(nameof(timestamp), "Property is not nullable for class IndexesIndexDefinitionSnapshotEntry.");

            if (value.IsSet && value.Value == null)
                throw new ArgumentNullException(nameof(value), "Property is not nullable for class IndexesIndexDefinitionSnapshotEntry.");

            return new IndexesIndexDefinitionSnapshotEntry(indexId, timestamp, value);
        }

        /// <summary>
        /// Serializes a <see cref="IndexesIndexDefinitionSnapshotEntry" />
        /// </summary>
        /// <param name="writer"></param>
        /// <param name="indexesIndexDefinitionSnapshotEntry"></param>
        /// <param name="jsonSerializerOptions"></param>
        /// <exception cref="NotImplementedException"></exception>
        public override void Write(Utf8JsonWriter writer, IndexesIndexDefinitionSnapshotEntry indexesIndexDefinitionSnapshotEntry, JsonSerializerOptions jsonSerializerOptions)
        {
            writer.WriteStartObject();

            WriteProperties(writer, indexesIndexDefinitionSnapshotEntry, jsonSerializerOptions);
            writer.WriteEndObject();
        }

        /// <summary>
        /// Serializes the properties of <see cref="IndexesIndexDefinitionSnapshotEntry" />
        /// </summary>
        /// <param name="writer"></param>
        /// <param name="indexesIndexDefinitionSnapshotEntry"></param>
        /// <param name="jsonSerializerOptions"></param>
        /// <exception cref="NotImplementedException"></exception>
        public void WriteProperties(Utf8JsonWriter writer, IndexesIndexDefinitionSnapshotEntry indexesIndexDefinitionSnapshotEntry, JsonSerializerOptions jsonSerializerOptions)
        {
            if (indexesIndexDefinitionSnapshotEntry.IndexIdOption.IsSet)
                if (indexesIndexDefinitionSnapshotEntry.IndexIdOption.Value != null)
                    writer.WriteString("index_id", indexesIndexDefinitionSnapshotEntry.IndexId);
                else
                    writer.WriteNull("index_id");

            if (indexesIndexDefinitionSnapshotEntry.TimestampOption.IsSet)
                writer.WriteString("timestamp", indexesIndexDefinitionSnapshotEntry.TimestampOption.Value!.Value.ToString(TimestampFormat));

            if (indexesIndexDefinitionSnapshotEntry.ValueOption.IsSet)
                writer.WriteNumber("value", indexesIndexDefinitionSnapshotEntry.ValueOption.Value!.Value);
        }
    }
}
