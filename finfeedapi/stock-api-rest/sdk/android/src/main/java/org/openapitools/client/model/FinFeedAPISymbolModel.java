/**
 * FinFeedAPI Stock REST API
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

import java.util.HashMap;
import java.util.Map;
import org.openapitools.client.model.OasAnyTypeNotMapped;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class FinFeedAPISymbolModel extends HashMap<String, OasAnyTypeNotMapped> {
  
  @SerializedName("symbol_id")
  private String symbolId = null;
  @SerializedName("exchange_id")
  private String exchangeId = null;
  @SerializedName("security_category")
  private String securityCategory = null;
  @SerializedName("name")
  private String name = null;
  @SerializedName("date")
  private String date = null;
  @SerializedName("asset_class")
  private String assetClass = null;
  @SerializedName("cfi_code")
  private String cfiCode = null;
  @SerializedName("cfi_category")
  private String cfiCategory = null;
  @SerializedName("cfi_group")
  private String cfiGroup = null;
  @SerializedName("cfi_attribute1")
  private String cfiAttribute1 = null;
  @SerializedName("cfi_attribute2")
  private String cfiAttribute2 = null;
  @SerializedName("cfi_attribute3")
  private String cfiAttribute3 = null;
  @SerializedName("cfi_attribute4")
  private String cfiAttribute4 = null;
  @SerializedName("cfi_category_desc")
  private String cfiCategoryDesc = null;
  @SerializedName("cfi_group_desc")
  private String cfiGroupDesc = null;
  @SerializedName("cfi_attribute1_desc")
  private String cfiAttribute1Desc = null;
  @SerializedName("cfi_attribute2_desc")
  private String cfiAttribute2Desc = null;
  @SerializedName("cfi_attribute3_desc")
  private String cfiAttribute3Desc = null;
  @SerializedName("cfi_attribute4_desc")
  private String cfiAttribute4Desc = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getSymbolId() {
    return symbolId;
  }
  public void setSymbolId(String symbolId) {
    this.symbolId = symbolId;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getExchangeId() {
    return exchangeId;
  }
  public void setExchangeId(String exchangeId) {
    this.exchangeId = exchangeId;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getSecurityCategory() {
    return securityCategory;
  }
  public void setSecurityCategory(String securityCategory) {
    this.securityCategory = securityCategory;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getDate() {
    return date;
  }
  public void setDate(String date) {
    this.date = date;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getAssetClass() {
    return assetClass;
  }
  public void setAssetClass(String assetClass) {
    this.assetClass = assetClass;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getCfiCode() {
    return cfiCode;
  }
  public void setCfiCode(String cfiCode) {
    this.cfiCode = cfiCode;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getCfiCategory() {
    return cfiCategory;
  }
  public void setCfiCategory(String cfiCategory) {
    this.cfiCategory = cfiCategory;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getCfiGroup() {
    return cfiGroup;
  }
  public void setCfiGroup(String cfiGroup) {
    this.cfiGroup = cfiGroup;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getCfiAttribute1() {
    return cfiAttribute1;
  }
  public void setCfiAttribute1(String cfiAttribute1) {
    this.cfiAttribute1 = cfiAttribute1;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getCfiAttribute2() {
    return cfiAttribute2;
  }
  public void setCfiAttribute2(String cfiAttribute2) {
    this.cfiAttribute2 = cfiAttribute2;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getCfiAttribute3() {
    return cfiAttribute3;
  }
  public void setCfiAttribute3(String cfiAttribute3) {
    this.cfiAttribute3 = cfiAttribute3;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getCfiAttribute4() {
    return cfiAttribute4;
  }
  public void setCfiAttribute4(String cfiAttribute4) {
    this.cfiAttribute4 = cfiAttribute4;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getCfiCategoryDesc() {
    return cfiCategoryDesc;
  }
  public void setCfiCategoryDesc(String cfiCategoryDesc) {
    this.cfiCategoryDesc = cfiCategoryDesc;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getCfiGroupDesc() {
    return cfiGroupDesc;
  }
  public void setCfiGroupDesc(String cfiGroupDesc) {
    this.cfiGroupDesc = cfiGroupDesc;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getCfiAttribute1Desc() {
    return cfiAttribute1Desc;
  }
  public void setCfiAttribute1Desc(String cfiAttribute1Desc) {
    this.cfiAttribute1Desc = cfiAttribute1Desc;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getCfiAttribute2Desc() {
    return cfiAttribute2Desc;
  }
  public void setCfiAttribute2Desc(String cfiAttribute2Desc) {
    this.cfiAttribute2Desc = cfiAttribute2Desc;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getCfiAttribute3Desc() {
    return cfiAttribute3Desc;
  }
  public void setCfiAttribute3Desc(String cfiAttribute3Desc) {
    this.cfiAttribute3Desc = cfiAttribute3Desc;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getCfiAttribute4Desc() {
    return cfiAttribute4Desc;
  }
  public void setCfiAttribute4Desc(String cfiAttribute4Desc) {
    this.cfiAttribute4Desc = cfiAttribute4Desc;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FinFeedAPISymbolModel finFeedAPISymbolModel = (FinFeedAPISymbolModel) o;
    return (this.symbolId == null ? finFeedAPISymbolModel.symbolId == null : this.symbolId.equals(finFeedAPISymbolModel.symbolId)) &&
        (this.exchangeId == null ? finFeedAPISymbolModel.exchangeId == null : this.exchangeId.equals(finFeedAPISymbolModel.exchangeId)) &&
        (this.securityCategory == null ? finFeedAPISymbolModel.securityCategory == null : this.securityCategory.equals(finFeedAPISymbolModel.securityCategory)) &&
        (this.name == null ? finFeedAPISymbolModel.name == null : this.name.equals(finFeedAPISymbolModel.name)) &&
        (this.date == null ? finFeedAPISymbolModel.date == null : this.date.equals(finFeedAPISymbolModel.date)) &&
        (this.assetClass == null ? finFeedAPISymbolModel.assetClass == null : this.assetClass.equals(finFeedAPISymbolModel.assetClass)) &&
        (this.cfiCode == null ? finFeedAPISymbolModel.cfiCode == null : this.cfiCode.equals(finFeedAPISymbolModel.cfiCode)) &&
        (this.cfiCategory == null ? finFeedAPISymbolModel.cfiCategory == null : this.cfiCategory.equals(finFeedAPISymbolModel.cfiCategory)) &&
        (this.cfiGroup == null ? finFeedAPISymbolModel.cfiGroup == null : this.cfiGroup.equals(finFeedAPISymbolModel.cfiGroup)) &&
        (this.cfiAttribute1 == null ? finFeedAPISymbolModel.cfiAttribute1 == null : this.cfiAttribute1.equals(finFeedAPISymbolModel.cfiAttribute1)) &&
        (this.cfiAttribute2 == null ? finFeedAPISymbolModel.cfiAttribute2 == null : this.cfiAttribute2.equals(finFeedAPISymbolModel.cfiAttribute2)) &&
        (this.cfiAttribute3 == null ? finFeedAPISymbolModel.cfiAttribute3 == null : this.cfiAttribute3.equals(finFeedAPISymbolModel.cfiAttribute3)) &&
        (this.cfiAttribute4 == null ? finFeedAPISymbolModel.cfiAttribute4 == null : this.cfiAttribute4.equals(finFeedAPISymbolModel.cfiAttribute4)) &&
        (this.cfiCategoryDesc == null ? finFeedAPISymbolModel.cfiCategoryDesc == null : this.cfiCategoryDesc.equals(finFeedAPISymbolModel.cfiCategoryDesc)) &&
        (this.cfiGroupDesc == null ? finFeedAPISymbolModel.cfiGroupDesc == null : this.cfiGroupDesc.equals(finFeedAPISymbolModel.cfiGroupDesc)) &&
        (this.cfiAttribute1Desc == null ? finFeedAPISymbolModel.cfiAttribute1Desc == null : this.cfiAttribute1Desc.equals(finFeedAPISymbolModel.cfiAttribute1Desc)) &&
        (this.cfiAttribute2Desc == null ? finFeedAPISymbolModel.cfiAttribute2Desc == null : this.cfiAttribute2Desc.equals(finFeedAPISymbolModel.cfiAttribute2Desc)) &&
        (this.cfiAttribute3Desc == null ? finFeedAPISymbolModel.cfiAttribute3Desc == null : this.cfiAttribute3Desc.equals(finFeedAPISymbolModel.cfiAttribute3Desc)) &&
        (this.cfiAttribute4Desc == null ? finFeedAPISymbolModel.cfiAttribute4Desc == null : this.cfiAttribute4Desc.equals(finFeedAPISymbolModel.cfiAttribute4Desc));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.symbolId == null ? 0: this.symbolId.hashCode());
    result = 31 * result + (this.exchangeId == null ? 0: this.exchangeId.hashCode());
    result = 31 * result + (this.securityCategory == null ? 0: this.securityCategory.hashCode());
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.date == null ? 0: this.date.hashCode());
    result = 31 * result + (this.assetClass == null ? 0: this.assetClass.hashCode());
    result = 31 * result + (this.cfiCode == null ? 0: this.cfiCode.hashCode());
    result = 31 * result + (this.cfiCategory == null ? 0: this.cfiCategory.hashCode());
    result = 31 * result + (this.cfiGroup == null ? 0: this.cfiGroup.hashCode());
    result = 31 * result + (this.cfiAttribute1 == null ? 0: this.cfiAttribute1.hashCode());
    result = 31 * result + (this.cfiAttribute2 == null ? 0: this.cfiAttribute2.hashCode());
    result = 31 * result + (this.cfiAttribute3 == null ? 0: this.cfiAttribute3.hashCode());
    result = 31 * result + (this.cfiAttribute4 == null ? 0: this.cfiAttribute4.hashCode());
    result = 31 * result + (this.cfiCategoryDesc == null ? 0: this.cfiCategoryDesc.hashCode());
    result = 31 * result + (this.cfiGroupDesc == null ? 0: this.cfiGroupDesc.hashCode());
    result = 31 * result + (this.cfiAttribute1Desc == null ? 0: this.cfiAttribute1Desc.hashCode());
    result = 31 * result + (this.cfiAttribute2Desc == null ? 0: this.cfiAttribute2Desc.hashCode());
    result = 31 * result + (this.cfiAttribute3Desc == null ? 0: this.cfiAttribute3Desc.hashCode());
    result = 31 * result + (this.cfiAttribute4Desc == null ? 0: this.cfiAttribute4Desc.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class FinFeedAPISymbolModel {\n");
    sb.append("  " + super.toString()).append("\n");
    sb.append("  symbolId: ").append(symbolId).append("\n");
    sb.append("  exchangeId: ").append(exchangeId).append("\n");
    sb.append("  securityCategory: ").append(securityCategory).append("\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("  date: ").append(date).append("\n");
    sb.append("  assetClass: ").append(assetClass).append("\n");
    sb.append("  cfiCode: ").append(cfiCode).append("\n");
    sb.append("  cfiCategory: ").append(cfiCategory).append("\n");
    sb.append("  cfiGroup: ").append(cfiGroup).append("\n");
    sb.append("  cfiAttribute1: ").append(cfiAttribute1).append("\n");
    sb.append("  cfiAttribute2: ").append(cfiAttribute2).append("\n");
    sb.append("  cfiAttribute3: ").append(cfiAttribute3).append("\n");
    sb.append("  cfiAttribute4: ").append(cfiAttribute4).append("\n");
    sb.append("  cfiCategoryDesc: ").append(cfiCategoryDesc).append("\n");
    sb.append("  cfiGroupDesc: ").append(cfiGroupDesc).append("\n");
    sb.append("  cfiAttribute1Desc: ").append(cfiAttribute1Desc).append("\n");
    sb.append("  cfiAttribute2Desc: ").append(cfiAttribute2Desc).append("\n");
    sb.append("  cfiAttribute3Desc: ").append(cfiAttribute3Desc).append("\n");
    sb.append("  cfiAttribute4Desc: ").append(cfiAttribute4Desc).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
