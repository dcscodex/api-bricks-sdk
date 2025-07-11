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
    /// IndexesIndexMultiAssetWeight
    /// </summary>
    public partial class IndexesIndexMultiAssetWeight : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="IndexesIndexMultiAssetWeight" /> class.
        /// </summary>
        /// <param name="indexId">indexId</param>
        /// <param name="assetId">assetId</param>
        /// <param name="weight">weight</param>
        [JsonConstructor]
        public IndexesIndexMultiAssetWeight(Option<string?> indexId = default, Option<string?> assetId = default, Option<double?> weight = default)
        {
            IndexIdOption = indexId;
            AssetIdOption = assetId;
            WeightOption = weight;
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
        [JsonPropertyName("indexId")]
        public string? IndexId { get { return this.IndexIdOption; } set { this.IndexIdOption = new(value); } }

        /// <summary>
        /// Used to track the state of AssetId
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<string?> AssetIdOption { get; private set; }

        /// <summary>
        /// Gets or Sets AssetId
        /// </summary>
        [JsonPropertyName("assetId")]
        public string? AssetId { get { return this.AssetIdOption; } set { this.AssetIdOption = new(value); } }

        /// <summary>
        /// Used to track the state of Weight
        /// </summary>
        [JsonIgnore]
        [global::System.ComponentModel.EditorBrowsable(global::System.ComponentModel.EditorBrowsableState.Never)]
        public Option<double?> WeightOption { get; private set; }

        /// <summary>
        /// Gets or Sets Weight
        /// </summary>
        [JsonPropertyName("weight")]
        public double? Weight { get { return this.WeightOption; } set { this.WeightOption = new(value); } }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class IndexesIndexMultiAssetWeight {\n");
            sb.Append("  IndexId: ").Append(IndexId).Append("\n");
            sb.Append("  AssetId: ").Append(AssetId).Append("\n");
            sb.Append("  Weight: ").Append(Weight).Append("\n");
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
    /// A Json converter for type <see cref="IndexesIndexMultiAssetWeight" />
    /// </summary>
    public class IndexesIndexMultiAssetWeightJsonConverter : JsonConverter<IndexesIndexMultiAssetWeight>
    {
        /// <summary>
        /// Deserializes json to <see cref="IndexesIndexMultiAssetWeight" />
        /// </summary>
        /// <param name="utf8JsonReader"></param>
        /// <param name="typeToConvert"></param>
        /// <param name="jsonSerializerOptions"></param>
        /// <returns></returns>
        /// <exception cref="JsonException"></exception>
        public override IndexesIndexMultiAssetWeight Read(ref Utf8JsonReader utf8JsonReader, Type typeToConvert, JsonSerializerOptions jsonSerializerOptions)
        {
            int currentDepth = utf8JsonReader.CurrentDepth;

            if (utf8JsonReader.TokenType != JsonTokenType.StartObject && utf8JsonReader.TokenType != JsonTokenType.StartArray)
                throw new JsonException();

            JsonTokenType startingTokenType = utf8JsonReader.TokenType;

            Option<string?> indexId = default;
            Option<string?> assetId = default;
            Option<double?> weight = default;

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
                        case "indexId":
                            indexId = new Option<string?>(utf8JsonReader.GetString());
                            break;
                        case "assetId":
                            assetId = new Option<string?>(utf8JsonReader.GetString());
                            break;
                        case "weight":
                            weight = new Option<double?>(utf8JsonReader.TokenType == JsonTokenType.Null ? (double?)null : utf8JsonReader.GetDouble());
                            break;
                        default:
                            break;
                    }
                }
            }

            if (weight.IsSet && weight.Value == null)
                throw new ArgumentNullException(nameof(weight), "Property is not nullable for class IndexesIndexMultiAssetWeight.");

            return new IndexesIndexMultiAssetWeight(indexId, assetId, weight);
        }

        /// <summary>
        /// Serializes a <see cref="IndexesIndexMultiAssetWeight" />
        /// </summary>
        /// <param name="writer"></param>
        /// <param name="indexesIndexMultiAssetWeight"></param>
        /// <param name="jsonSerializerOptions"></param>
        /// <exception cref="NotImplementedException"></exception>
        public override void Write(Utf8JsonWriter writer, IndexesIndexMultiAssetWeight indexesIndexMultiAssetWeight, JsonSerializerOptions jsonSerializerOptions)
        {
            writer.WriteStartObject();

            WriteProperties(writer, indexesIndexMultiAssetWeight, jsonSerializerOptions);
            writer.WriteEndObject();
        }

        /// <summary>
        /// Serializes the properties of <see cref="IndexesIndexMultiAssetWeight" />
        /// </summary>
        /// <param name="writer"></param>
        /// <param name="indexesIndexMultiAssetWeight"></param>
        /// <param name="jsonSerializerOptions"></param>
        /// <exception cref="NotImplementedException"></exception>
        public void WriteProperties(Utf8JsonWriter writer, IndexesIndexMultiAssetWeight indexesIndexMultiAssetWeight, JsonSerializerOptions jsonSerializerOptions)
        {
            if (indexesIndexMultiAssetWeight.IndexIdOption.IsSet)
                if (indexesIndexMultiAssetWeight.IndexIdOption.Value != null)
                    writer.WriteString("indexId", indexesIndexMultiAssetWeight.IndexId);
                else
                    writer.WriteNull("indexId");

            if (indexesIndexMultiAssetWeight.AssetIdOption.IsSet)
                if (indexesIndexMultiAssetWeight.AssetIdOption.Value != null)
                    writer.WriteString("assetId", indexesIndexMultiAssetWeight.AssetId);
                else
                    writer.WriteNull("assetId");

            if (indexesIndexMultiAssetWeight.WeightOption.IsSet)
                writer.WriteNumber("weight", indexesIndexMultiAssetWeight.WeightOption.Value!.Value);
        }
    }
}
