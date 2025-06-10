package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.OptionsStrike;

@Canonical
class OptionsOptionExchangeGroup {
    /* The base asset identifier. */
    String assetIdBase
    /* The quote asset identifier. */
    String assetIdQuote
    /* The underlying price of the option. */
    Double underlyingPrice
    /* The expiration time of the option. */
    Date timeExpiration
    /* The list of strikes available. */
    List<OptionsStrike> strikes
}
