/*
 * CoinAPI Indexes REST API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Contact: support@apibricks.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.client.model;

import java.util.Objects;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.time.OffsetDateTime;
import java.util.Arrays;
import org.openapitools.jackson.nullable.JsonNullable;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.openapitools.client.JSON;

/**
 * IndexesIndexDefinitionSnapshotEntry
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2025-06-11T06:06:56.411366003Z[Etc/UTC]", comments = "Generator version: 7.13.0")
public class IndexesIndexDefinitionSnapshotEntry {
  public static final String SERIALIZED_NAME_INDEX_ID = "index_id";
  @SerializedName(SERIALIZED_NAME_INDEX_ID)
  @javax.annotation.Nullable
  private String indexId;

  public static final String SERIALIZED_NAME_TIMESTAMP = "timestamp";
  @SerializedName(SERIALIZED_NAME_TIMESTAMP)
  @javax.annotation.Nullable
  private OffsetDateTime timestamp;

  public static final String SERIALIZED_NAME_VALUE = "value";
  @SerializedName(SERIALIZED_NAME_VALUE)
  @javax.annotation.Nullable
  private Double value;

  public IndexesIndexDefinitionSnapshotEntry() {
  }

  public IndexesIndexDefinitionSnapshotEntry indexId(@javax.annotation.Nullable String indexId) {
    this.indexId = indexId;
    return this;
  }

  /**
   * Get indexId
   * @return indexId
   */
  @javax.annotation.Nullable
  public String getIndexId() {
    return indexId;
  }

  public void setIndexId(@javax.annotation.Nullable String indexId) {
    this.indexId = indexId;
  }


  public IndexesIndexDefinitionSnapshotEntry timestamp(@javax.annotation.Nullable OffsetDateTime timestamp) {
    this.timestamp = timestamp;
    return this;
  }

  /**
   * Get timestamp
   * @return timestamp
   */
  @javax.annotation.Nullable
  public OffsetDateTime getTimestamp() {
    return timestamp;
  }

  public void setTimestamp(@javax.annotation.Nullable OffsetDateTime timestamp) {
    this.timestamp = timestamp;
  }


  public IndexesIndexDefinitionSnapshotEntry value(@javax.annotation.Nullable Double value) {
    this.value = value;
    return this;
  }

  /**
   * Get value
   * @return value
   */
  @javax.annotation.Nullable
  public Double getValue() {
    return value;
  }

  public void setValue(@javax.annotation.Nullable Double value) {
    this.value = value;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    IndexesIndexDefinitionSnapshotEntry indexesIndexDefinitionSnapshotEntry = (IndexesIndexDefinitionSnapshotEntry) o;
    return Objects.equals(this.indexId, indexesIndexDefinitionSnapshotEntry.indexId) &&
        Objects.equals(this.timestamp, indexesIndexDefinitionSnapshotEntry.timestamp) &&
        Objects.equals(this.value, indexesIndexDefinitionSnapshotEntry.value);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(indexId, timestamp, value);
  }

  private static <T> int hashCodeNullable(JsonNullable<T> a) {
    if (a == null) {
      return 1;
    }
    return a.isPresent() ? Arrays.deepHashCode(new Object[]{a.get()}) : 31;
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class IndexesIndexDefinitionSnapshotEntry {\n");
    sb.append("    indexId: ").append(toIndentedString(indexId)).append("\n");
    sb.append("    timestamp: ").append(toIndentedString(timestamp)).append("\n");
    sb.append("    value: ").append(toIndentedString(value)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


  public static HashSet<String> openapiFields;
  public static HashSet<String> openapiRequiredFields;

  static {
    // a set of all properties/fields (JSON key names)
    openapiFields = new HashSet<String>();
    openapiFields.add("index_id");
    openapiFields.add("timestamp");
    openapiFields.add("value");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to IndexesIndexDefinitionSnapshotEntry
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!IndexesIndexDefinitionSnapshotEntry.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in IndexesIndexDefinitionSnapshotEntry is not found in the empty JSON string", IndexesIndexDefinitionSnapshotEntry.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!IndexesIndexDefinitionSnapshotEntry.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `IndexesIndexDefinitionSnapshotEntry` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("index_id") != null && !jsonObj.get("index_id").isJsonNull()) && !jsonObj.get("index_id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `index_id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("index_id").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!IndexesIndexDefinitionSnapshotEntry.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'IndexesIndexDefinitionSnapshotEntry' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<IndexesIndexDefinitionSnapshotEntry> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(IndexesIndexDefinitionSnapshotEntry.class));

       return (TypeAdapter<T>) new TypeAdapter<IndexesIndexDefinitionSnapshotEntry>() {
           @Override
           public void write(JsonWriter out, IndexesIndexDefinitionSnapshotEntry value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public IndexesIndexDefinitionSnapshotEntry read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of IndexesIndexDefinitionSnapshotEntry given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of IndexesIndexDefinitionSnapshotEntry
   * @throws IOException if the JSON string is invalid with respect to IndexesIndexDefinitionSnapshotEntry
   */
  public static IndexesIndexDefinitionSnapshotEntry fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, IndexesIndexDefinitionSnapshotEntry.class);
  }

  /**
   * Convert an instance of IndexesIndexDefinitionSnapshotEntry to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

