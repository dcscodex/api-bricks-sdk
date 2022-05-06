package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class Locations {
    /* CoinAPI location identifier */
    String locationId
    /* Identifier of the region by the location provider */
    String regionName
    /* Identifier of the location provider */
    String providerName
}
