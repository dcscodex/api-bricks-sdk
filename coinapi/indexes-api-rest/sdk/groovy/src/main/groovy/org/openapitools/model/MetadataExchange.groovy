package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class MetadataExchange {
    /* Gets or sets the exchange ID. */
    String exchangeId
    /* Gets or sets the website URL of the exchange. */
    String website
    /* Gets or sets the name of the exchange. */
    String name
}
