/*
 * FinFeedAPI SEC REST API
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
import java.time.LocalDate;
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
 * Represents the response for a single SEC filing metadata record. Maps fields from the edgar_submissions table.
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2025-06-16T09:41:09.993117149Z[Etc/UTC]", comments = "Generator version: 7.13.0")
public class DTOFilingMetadataDto {
  public static final String SERIALIZED_NAME_CIK = "cik";
  @SerializedName(SERIALIZED_NAME_CIK)
  @javax.annotation.Nullable
  private Long cik;

  public static final String SERIALIZED_NAME_ACCESSION_NUMBER = "accession_number";
  @SerializedName(SERIALIZED_NAME_ACCESSION_NUMBER)
  @javax.annotation.Nullable
  private String accessionNumber;

  public static final String SERIALIZED_NAME_FILING_DATE = "filing_date";
  @SerializedName(SERIALIZED_NAME_FILING_DATE)
  @javax.annotation.Nullable
  private LocalDate filingDate;

  public static final String SERIALIZED_NAME_REPORT_DATE = "report_date";
  @SerializedName(SERIALIZED_NAME_REPORT_DATE)
  @javax.annotation.Nullable
  private LocalDate reportDate;

  public static final String SERIALIZED_NAME_ACCEPTANCE_DATE_TIME = "acceptance_date_time";
  @SerializedName(SERIALIZED_NAME_ACCEPTANCE_DATE_TIME)
  @javax.annotation.Nullable
  private OffsetDateTime acceptanceDateTime;

  public static final String SERIALIZED_NAME_ACT = "act";
  @SerializedName(SERIALIZED_NAME_ACT)
  @javax.annotation.Nullable
  private String act;

  public static final String SERIALIZED_NAME_FORM = "form";
  @SerializedName(SERIALIZED_NAME_FORM)
  @javax.annotation.Nullable
  private String form;

  public static final String SERIALIZED_NAME_FILE_NUMBER = "file_number";
  @SerializedName(SERIALIZED_NAME_FILE_NUMBER)
  @javax.annotation.Nullable
  private String fileNumber;

  public static final String SERIALIZED_NAME_FILM_NUMBER = "film_number";
  @SerializedName(SERIALIZED_NAME_FILM_NUMBER)
  @javax.annotation.Nullable
  private String filmNumber;

  public static final String SERIALIZED_NAME_ITEMS = "items";
  @SerializedName(SERIALIZED_NAME_ITEMS)
  @javax.annotation.Nullable
  private String items;

  public static final String SERIALIZED_NAME_CORE_TYPE = "core_type";
  @SerializedName(SERIALIZED_NAME_CORE_TYPE)
  @javax.annotation.Nullable
  private String coreType;

  public static final String SERIALIZED_NAME_SIZE = "size";
  @SerializedName(SERIALIZED_NAME_SIZE)
  @javax.annotation.Nullable
  private Integer size;

  public static final String SERIALIZED_NAME_IS_XBRL = "is_xbrl";
  @SerializedName(SERIALIZED_NAME_IS_XBRL)
  @javax.annotation.Nullable
  private Boolean isXbrl;

  public static final String SERIALIZED_NAME_IS_INLINE_XBRL = "is_inline_xbrl";
  @SerializedName(SERIALIZED_NAME_IS_INLINE_XBRL)
  @javax.annotation.Nullable
  private Boolean isInlineXbrl;

  public static final String SERIALIZED_NAME_PRIMARY_DOCUMENT = "primary_document";
  @SerializedName(SERIALIZED_NAME_PRIMARY_DOCUMENT)
  @javax.annotation.Nullable
  private String primaryDocument;

  public static final String SERIALIZED_NAME_PRIMARY_DOC_DESCRIPTION = "primary_doc_description";
  @SerializedName(SERIALIZED_NAME_PRIMARY_DOC_DESCRIPTION)
  @javax.annotation.Nullable
  private String primaryDocDescription;

  public static final String SERIALIZED_NAME_SOURCE_FILE = "source_file";
  @SerializedName(SERIALIZED_NAME_SOURCE_FILE)
  @javax.annotation.Nullable
  private String sourceFile;

  public DTOFilingMetadataDto() {
  }

  public DTOFilingMetadataDto cik(@javax.annotation.Nullable Long cik) {
    this.cik = cik;
    return this;
  }

  /**
   * Get cik
   * @return cik
   */
  @javax.annotation.Nullable
  public Long getCik() {
    return cik;
  }

  public void setCik(@javax.annotation.Nullable Long cik) {
    this.cik = cik;
  }


  public DTOFilingMetadataDto accessionNumber(@javax.annotation.Nullable String accessionNumber) {
    this.accessionNumber = accessionNumber;
    return this;
  }

  /**
   * Get accessionNumber
   * @return accessionNumber
   */
  @javax.annotation.Nullable
  public String getAccessionNumber() {
    return accessionNumber;
  }

  public void setAccessionNumber(@javax.annotation.Nullable String accessionNumber) {
    this.accessionNumber = accessionNumber;
  }


  public DTOFilingMetadataDto filingDate(@javax.annotation.Nullable LocalDate filingDate) {
    this.filingDate = filingDate;
    return this;
  }

  /**
   * Get filingDate
   * @return filingDate
   */
  @javax.annotation.Nullable
  public LocalDate getFilingDate() {
    return filingDate;
  }

  public void setFilingDate(@javax.annotation.Nullable LocalDate filingDate) {
    this.filingDate = filingDate;
  }


  public DTOFilingMetadataDto reportDate(@javax.annotation.Nullable LocalDate reportDate) {
    this.reportDate = reportDate;
    return this;
  }

  /**
   * Get reportDate
   * @return reportDate
   */
  @javax.annotation.Nullable
  public LocalDate getReportDate() {
    return reportDate;
  }

  public void setReportDate(@javax.annotation.Nullable LocalDate reportDate) {
    this.reportDate = reportDate;
  }


  public DTOFilingMetadataDto acceptanceDateTime(@javax.annotation.Nullable OffsetDateTime acceptanceDateTime) {
    this.acceptanceDateTime = acceptanceDateTime;
    return this;
  }

  /**
   * Get acceptanceDateTime
   * @return acceptanceDateTime
   */
  @javax.annotation.Nullable
  public OffsetDateTime getAcceptanceDateTime() {
    return acceptanceDateTime;
  }

  public void setAcceptanceDateTime(@javax.annotation.Nullable OffsetDateTime acceptanceDateTime) {
    this.acceptanceDateTime = acceptanceDateTime;
  }


  public DTOFilingMetadataDto act(@javax.annotation.Nullable String act) {
    this.act = act;
    return this;
  }

  /**
   * Get act
   * @return act
   */
  @javax.annotation.Nullable
  public String getAct() {
    return act;
  }

  public void setAct(@javax.annotation.Nullable String act) {
    this.act = act;
  }


  public DTOFilingMetadataDto form(@javax.annotation.Nullable String form) {
    this.form = form;
    return this;
  }

  /**
   * Get form
   * @return form
   */
  @javax.annotation.Nullable
  public String getForm() {
    return form;
  }

  public void setForm(@javax.annotation.Nullable String form) {
    this.form = form;
  }


  public DTOFilingMetadataDto fileNumber(@javax.annotation.Nullable String fileNumber) {
    this.fileNumber = fileNumber;
    return this;
  }

  /**
   * Get fileNumber
   * @return fileNumber
   */
  @javax.annotation.Nullable
  public String getFileNumber() {
    return fileNumber;
  }

  public void setFileNumber(@javax.annotation.Nullable String fileNumber) {
    this.fileNumber = fileNumber;
  }


  public DTOFilingMetadataDto filmNumber(@javax.annotation.Nullable String filmNumber) {
    this.filmNumber = filmNumber;
    return this;
  }

  /**
   * Get filmNumber
   * @return filmNumber
   */
  @javax.annotation.Nullable
  public String getFilmNumber() {
    return filmNumber;
  }

  public void setFilmNumber(@javax.annotation.Nullable String filmNumber) {
    this.filmNumber = filmNumber;
  }


  public DTOFilingMetadataDto items(@javax.annotation.Nullable String items) {
    this.items = items;
    return this;
  }

  /**
   * Get items
   * @return items
   */
  @javax.annotation.Nullable
  public String getItems() {
    return items;
  }

  public void setItems(@javax.annotation.Nullable String items) {
    this.items = items;
  }


  public DTOFilingMetadataDto coreType(@javax.annotation.Nullable String coreType) {
    this.coreType = coreType;
    return this;
  }

  /**
   * Get coreType
   * @return coreType
   */
  @javax.annotation.Nullable
  public String getCoreType() {
    return coreType;
  }

  public void setCoreType(@javax.annotation.Nullable String coreType) {
    this.coreType = coreType;
  }


  public DTOFilingMetadataDto size(@javax.annotation.Nullable Integer size) {
    this.size = size;
    return this;
  }

  /**
   * Get size
   * @return size
   */
  @javax.annotation.Nullable
  public Integer getSize() {
    return size;
  }

  public void setSize(@javax.annotation.Nullable Integer size) {
    this.size = size;
  }


  public DTOFilingMetadataDto isXbrl(@javax.annotation.Nullable Boolean isXbrl) {
    this.isXbrl = isXbrl;
    return this;
  }

  /**
   * Get isXbrl
   * @return isXbrl
   */
  @javax.annotation.Nullable
  public Boolean getIsXbrl() {
    return isXbrl;
  }

  public void setIsXbrl(@javax.annotation.Nullable Boolean isXbrl) {
    this.isXbrl = isXbrl;
  }


  public DTOFilingMetadataDto isInlineXbrl(@javax.annotation.Nullable Boolean isInlineXbrl) {
    this.isInlineXbrl = isInlineXbrl;
    return this;
  }

  /**
   * Get isInlineXbrl
   * @return isInlineXbrl
   */
  @javax.annotation.Nullable
  public Boolean getIsInlineXbrl() {
    return isInlineXbrl;
  }

  public void setIsInlineXbrl(@javax.annotation.Nullable Boolean isInlineXbrl) {
    this.isInlineXbrl = isInlineXbrl;
  }


  public DTOFilingMetadataDto primaryDocument(@javax.annotation.Nullable String primaryDocument) {
    this.primaryDocument = primaryDocument;
    return this;
  }

  /**
   * Get primaryDocument
   * @return primaryDocument
   */
  @javax.annotation.Nullable
  public String getPrimaryDocument() {
    return primaryDocument;
  }

  public void setPrimaryDocument(@javax.annotation.Nullable String primaryDocument) {
    this.primaryDocument = primaryDocument;
  }


  public DTOFilingMetadataDto primaryDocDescription(@javax.annotation.Nullable String primaryDocDescription) {
    this.primaryDocDescription = primaryDocDescription;
    return this;
  }

  /**
   * Get primaryDocDescription
   * @return primaryDocDescription
   */
  @javax.annotation.Nullable
  public String getPrimaryDocDescription() {
    return primaryDocDescription;
  }

  public void setPrimaryDocDescription(@javax.annotation.Nullable String primaryDocDescription) {
    this.primaryDocDescription = primaryDocDescription;
  }


  public DTOFilingMetadataDto sourceFile(@javax.annotation.Nullable String sourceFile) {
    this.sourceFile = sourceFile;
    return this;
  }

  /**
   * Get sourceFile
   * @return sourceFile
   */
  @javax.annotation.Nullable
  public String getSourceFile() {
    return sourceFile;
  }

  public void setSourceFile(@javax.annotation.Nullable String sourceFile) {
    this.sourceFile = sourceFile;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DTOFilingMetadataDto dtOFilingMetadataDto = (DTOFilingMetadataDto) o;
    return Objects.equals(this.cik, dtOFilingMetadataDto.cik) &&
        Objects.equals(this.accessionNumber, dtOFilingMetadataDto.accessionNumber) &&
        Objects.equals(this.filingDate, dtOFilingMetadataDto.filingDate) &&
        Objects.equals(this.reportDate, dtOFilingMetadataDto.reportDate) &&
        Objects.equals(this.acceptanceDateTime, dtOFilingMetadataDto.acceptanceDateTime) &&
        Objects.equals(this.act, dtOFilingMetadataDto.act) &&
        Objects.equals(this.form, dtOFilingMetadataDto.form) &&
        Objects.equals(this.fileNumber, dtOFilingMetadataDto.fileNumber) &&
        Objects.equals(this.filmNumber, dtOFilingMetadataDto.filmNumber) &&
        Objects.equals(this.items, dtOFilingMetadataDto.items) &&
        Objects.equals(this.coreType, dtOFilingMetadataDto.coreType) &&
        Objects.equals(this.size, dtOFilingMetadataDto.size) &&
        Objects.equals(this.isXbrl, dtOFilingMetadataDto.isXbrl) &&
        Objects.equals(this.isInlineXbrl, dtOFilingMetadataDto.isInlineXbrl) &&
        Objects.equals(this.primaryDocument, dtOFilingMetadataDto.primaryDocument) &&
        Objects.equals(this.primaryDocDescription, dtOFilingMetadataDto.primaryDocDescription) &&
        Objects.equals(this.sourceFile, dtOFilingMetadataDto.sourceFile);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(cik, accessionNumber, filingDate, reportDate, acceptanceDateTime, act, form, fileNumber, filmNumber, items, coreType, size, isXbrl, isInlineXbrl, primaryDocument, primaryDocDescription, sourceFile);
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
    sb.append("class DTOFilingMetadataDto {\n");
    sb.append("    cik: ").append(toIndentedString(cik)).append("\n");
    sb.append("    accessionNumber: ").append(toIndentedString(accessionNumber)).append("\n");
    sb.append("    filingDate: ").append(toIndentedString(filingDate)).append("\n");
    sb.append("    reportDate: ").append(toIndentedString(reportDate)).append("\n");
    sb.append("    acceptanceDateTime: ").append(toIndentedString(acceptanceDateTime)).append("\n");
    sb.append("    act: ").append(toIndentedString(act)).append("\n");
    sb.append("    form: ").append(toIndentedString(form)).append("\n");
    sb.append("    fileNumber: ").append(toIndentedString(fileNumber)).append("\n");
    sb.append("    filmNumber: ").append(toIndentedString(filmNumber)).append("\n");
    sb.append("    items: ").append(toIndentedString(items)).append("\n");
    sb.append("    coreType: ").append(toIndentedString(coreType)).append("\n");
    sb.append("    size: ").append(toIndentedString(size)).append("\n");
    sb.append("    isXbrl: ").append(toIndentedString(isXbrl)).append("\n");
    sb.append("    isInlineXbrl: ").append(toIndentedString(isInlineXbrl)).append("\n");
    sb.append("    primaryDocument: ").append(toIndentedString(primaryDocument)).append("\n");
    sb.append("    primaryDocDescription: ").append(toIndentedString(primaryDocDescription)).append("\n");
    sb.append("    sourceFile: ").append(toIndentedString(sourceFile)).append("\n");
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
    openapiFields.add("cik");
    openapiFields.add("accession_number");
    openapiFields.add("filing_date");
    openapiFields.add("report_date");
    openapiFields.add("acceptance_date_time");
    openapiFields.add("act");
    openapiFields.add("form");
    openapiFields.add("file_number");
    openapiFields.add("film_number");
    openapiFields.add("items");
    openapiFields.add("core_type");
    openapiFields.add("size");
    openapiFields.add("is_xbrl");
    openapiFields.add("is_inline_xbrl");
    openapiFields.add("primary_document");
    openapiFields.add("primary_doc_description");
    openapiFields.add("source_file");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to DTOFilingMetadataDto
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!DTOFilingMetadataDto.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in DTOFilingMetadataDto is not found in the empty JSON string", DTOFilingMetadataDto.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!DTOFilingMetadataDto.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `DTOFilingMetadataDto` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("accession_number") != null && !jsonObj.get("accession_number").isJsonNull()) && !jsonObj.get("accession_number").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `accession_number` to be a primitive type in the JSON string but got `%s`", jsonObj.get("accession_number").toString()));
      }
      if ((jsonObj.get("act") != null && !jsonObj.get("act").isJsonNull()) && !jsonObj.get("act").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `act` to be a primitive type in the JSON string but got `%s`", jsonObj.get("act").toString()));
      }
      if ((jsonObj.get("form") != null && !jsonObj.get("form").isJsonNull()) && !jsonObj.get("form").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `form` to be a primitive type in the JSON string but got `%s`", jsonObj.get("form").toString()));
      }
      if ((jsonObj.get("file_number") != null && !jsonObj.get("file_number").isJsonNull()) && !jsonObj.get("file_number").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `file_number` to be a primitive type in the JSON string but got `%s`", jsonObj.get("file_number").toString()));
      }
      if ((jsonObj.get("film_number") != null && !jsonObj.get("film_number").isJsonNull()) && !jsonObj.get("film_number").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `film_number` to be a primitive type in the JSON string but got `%s`", jsonObj.get("film_number").toString()));
      }
      if ((jsonObj.get("items") != null && !jsonObj.get("items").isJsonNull()) && !jsonObj.get("items").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `items` to be a primitive type in the JSON string but got `%s`", jsonObj.get("items").toString()));
      }
      if ((jsonObj.get("core_type") != null && !jsonObj.get("core_type").isJsonNull()) && !jsonObj.get("core_type").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `core_type` to be a primitive type in the JSON string but got `%s`", jsonObj.get("core_type").toString()));
      }
      if ((jsonObj.get("primary_document") != null && !jsonObj.get("primary_document").isJsonNull()) && !jsonObj.get("primary_document").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `primary_document` to be a primitive type in the JSON string but got `%s`", jsonObj.get("primary_document").toString()));
      }
      if ((jsonObj.get("primary_doc_description") != null && !jsonObj.get("primary_doc_description").isJsonNull()) && !jsonObj.get("primary_doc_description").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `primary_doc_description` to be a primitive type in the JSON string but got `%s`", jsonObj.get("primary_doc_description").toString()));
      }
      if ((jsonObj.get("source_file") != null && !jsonObj.get("source_file").isJsonNull()) && !jsonObj.get("source_file").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `source_file` to be a primitive type in the JSON string but got `%s`", jsonObj.get("source_file").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!DTOFilingMetadataDto.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'DTOFilingMetadataDto' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<DTOFilingMetadataDto> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(DTOFilingMetadataDto.class));

       return (TypeAdapter<T>) new TypeAdapter<DTOFilingMetadataDto>() {
           @Override
           public void write(JsonWriter out, DTOFilingMetadataDto value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public DTOFilingMetadataDto read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of DTOFilingMetadataDto given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of DTOFilingMetadataDto
   * @throws IOException if the JSON string is invalid with respect to DTOFilingMetadataDto
   */
  public static DTOFilingMetadataDto fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, DTOFilingMetadataDto.class);
  }

  /**
   * Convert an instance of DTOFilingMetadataDto to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

