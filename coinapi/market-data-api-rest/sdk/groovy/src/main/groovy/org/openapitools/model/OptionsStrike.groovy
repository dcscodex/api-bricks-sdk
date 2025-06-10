package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.V1QuoteTrade;

@Canonical
class OptionsStrike {
    /* The strike price. */
    Double strikePrice
    
    V1QuoteTrade call
    
    V1QuoteTrade put
}
