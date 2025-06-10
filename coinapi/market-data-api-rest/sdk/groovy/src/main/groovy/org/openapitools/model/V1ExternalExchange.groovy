package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class V1ExternalExchange {
    /* Gets or sets the internal exchange identifier. */
    String exchangeId
    /* Gets or sets the external protocol name/slug. */
    String externalName
    /* Gets or sets the description of the exchange. */
    String description
    
    String sourceId
}
