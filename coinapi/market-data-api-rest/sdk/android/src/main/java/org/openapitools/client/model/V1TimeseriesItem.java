/**
 * CoinAPI Market Data REST API
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

import java.util.Date;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * Represents a timeseries item with price and volume information.
 **/
@ApiModel(description = "Represents a timeseries item with price and volume information.")
public class V1TimeseriesItem {
  
  @SerializedName("time_period_start")
  private Date timePeriodStart = null;
  @SerializedName("time_period_end")
  private Date timePeriodEnd = null;
  @SerializedName("time_open")
  private Date timeOpen = null;
  @SerializedName("time_close")
  private Date timeClose = null;
  @SerializedName("price_open")
  private Double priceOpen = null;
  @SerializedName("price_high")
  private Double priceHigh = null;
  @SerializedName("price_low")
  private Double priceLow = null;
  @SerializedName("price_close")
  private Double priceClose = null;
  @SerializedName("volume_traded")
  private Double volumeTraded = null;
  @SerializedName("trades_count")
  private Long tradesCount = null;

  /**
   * The start time of the time period.
   **/
  @ApiModelProperty(value = "The start time of the time period.")
  public Date getTimePeriodStart() {
    return timePeriodStart;
  }
  public void setTimePeriodStart(Date timePeriodStart) {
    this.timePeriodStart = timePeriodStart;
  }

  /**
   * The end time of the time period.
   **/
  @ApiModelProperty(value = "The end time of the time period.")
  public Date getTimePeriodEnd() {
    return timePeriodEnd;
  }
  public void setTimePeriodEnd(Date timePeriodEnd) {
    this.timePeriodEnd = timePeriodEnd;
  }

  /**
   * The time when the price opened.
   **/
  @ApiModelProperty(value = "The time when the price opened.")
  public Date getTimeOpen() {
    return timeOpen;
  }
  public void setTimeOpen(Date timeOpen) {
    this.timeOpen = timeOpen;
  }

  /**
   * The time when the price closed.
   **/
  @ApiModelProperty(value = "The time when the price closed.")
  public Date getTimeClose() {
    return timeClose;
  }
  public void setTimeClose(Date timeClose) {
    this.timeClose = timeClose;
  }

  /**
   * The opening price.
   **/
  @ApiModelProperty(value = "The opening price.")
  public Double getPriceOpen() {
    return priceOpen;
  }
  public void setPriceOpen(Double priceOpen) {
    this.priceOpen = priceOpen;
  }

  /**
   * The highest price during the time period.
   **/
  @ApiModelProperty(value = "The highest price during the time period.")
  public Double getPriceHigh() {
    return priceHigh;
  }
  public void setPriceHigh(Double priceHigh) {
    this.priceHigh = priceHigh;
  }

  /**
   * The lowest price during the time period.
   **/
  @ApiModelProperty(value = "The lowest price during the time period.")
  public Double getPriceLow() {
    return priceLow;
  }
  public void setPriceLow(Double priceLow) {
    this.priceLow = priceLow;
  }

  /**
   * The closing price.
   **/
  @ApiModelProperty(value = "The closing price.")
  public Double getPriceClose() {
    return priceClose;
  }
  public void setPriceClose(Double priceClose) {
    this.priceClose = priceClose;
  }

  /**
   * The total volume traded during the time period.
   **/
  @ApiModelProperty(value = "The total volume traded during the time period.")
  public Double getVolumeTraded() {
    return volumeTraded;
  }
  public void setVolumeTraded(Double volumeTraded) {
    this.volumeTraded = volumeTraded;
  }

  /**
   * The number of trades executed during the time period.
   **/
  @ApiModelProperty(value = "The number of trades executed during the time period.")
  public Long getTradesCount() {
    return tradesCount;
  }
  public void setTradesCount(Long tradesCount) {
    this.tradesCount = tradesCount;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    V1TimeseriesItem v1TimeseriesItem = (V1TimeseriesItem) o;
    return (this.timePeriodStart == null ? v1TimeseriesItem.timePeriodStart == null : this.timePeriodStart.equals(v1TimeseriesItem.timePeriodStart)) &&
        (this.timePeriodEnd == null ? v1TimeseriesItem.timePeriodEnd == null : this.timePeriodEnd.equals(v1TimeseriesItem.timePeriodEnd)) &&
        (this.timeOpen == null ? v1TimeseriesItem.timeOpen == null : this.timeOpen.equals(v1TimeseriesItem.timeOpen)) &&
        (this.timeClose == null ? v1TimeseriesItem.timeClose == null : this.timeClose.equals(v1TimeseriesItem.timeClose)) &&
        (this.priceOpen == null ? v1TimeseriesItem.priceOpen == null : this.priceOpen.equals(v1TimeseriesItem.priceOpen)) &&
        (this.priceHigh == null ? v1TimeseriesItem.priceHigh == null : this.priceHigh.equals(v1TimeseriesItem.priceHigh)) &&
        (this.priceLow == null ? v1TimeseriesItem.priceLow == null : this.priceLow.equals(v1TimeseriesItem.priceLow)) &&
        (this.priceClose == null ? v1TimeseriesItem.priceClose == null : this.priceClose.equals(v1TimeseriesItem.priceClose)) &&
        (this.volumeTraded == null ? v1TimeseriesItem.volumeTraded == null : this.volumeTraded.equals(v1TimeseriesItem.volumeTraded)) &&
        (this.tradesCount == null ? v1TimeseriesItem.tradesCount == null : this.tradesCount.equals(v1TimeseriesItem.tradesCount));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.timePeriodStart == null ? 0: this.timePeriodStart.hashCode());
    result = 31 * result + (this.timePeriodEnd == null ? 0: this.timePeriodEnd.hashCode());
    result = 31 * result + (this.timeOpen == null ? 0: this.timeOpen.hashCode());
    result = 31 * result + (this.timeClose == null ? 0: this.timeClose.hashCode());
    result = 31 * result + (this.priceOpen == null ? 0: this.priceOpen.hashCode());
    result = 31 * result + (this.priceHigh == null ? 0: this.priceHigh.hashCode());
    result = 31 * result + (this.priceLow == null ? 0: this.priceLow.hashCode());
    result = 31 * result + (this.priceClose == null ? 0: this.priceClose.hashCode());
    result = 31 * result + (this.volumeTraded == null ? 0: this.volumeTraded.hashCode());
    result = 31 * result + (this.tradesCount == null ? 0: this.tradesCount.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class V1TimeseriesItem {\n");
    
    sb.append("  timePeriodStart: ").append(timePeriodStart).append("\n");
    sb.append("  timePeriodEnd: ").append(timePeriodEnd).append("\n");
    sb.append("  timeOpen: ").append(timeOpen).append("\n");
    sb.append("  timeClose: ").append(timeClose).append("\n");
    sb.append("  priceOpen: ").append(priceOpen).append("\n");
    sb.append("  priceHigh: ").append(priceHigh).append("\n");
    sb.append("  priceLow: ").append(priceLow).append("\n");
    sb.append("  priceClose: ").append(priceClose).append("\n");
    sb.append("  volumeTraded: ").append(volumeTraded).append("\n");
    sb.append("  tradesCount: ").append(tradesCount).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
