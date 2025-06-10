package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class V1Chain {
    /* Gets or sets the chain identifier. */
    String chainId
    /* Gets or sets the name of the chain. */
    String name
}
