package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.V1ExchangeRatesRate;

@Canonical
class V1ExchangeRates {
    /* Gets or sets the base asset ID. */
    String assetIdBase
    /* Gets or sets the list of exchange rates. */
    List<V1ExchangeRatesRate> rates
}
