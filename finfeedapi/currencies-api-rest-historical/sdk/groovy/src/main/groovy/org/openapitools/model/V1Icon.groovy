package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class V1Icon {
    /* Gets or sets the exchange ID associated with the icon. */
    String exchangeId
    /* Gets or sets the asset ID associated with the icon. */
    String assetId
    /* Gets or sets the URL of the icon. */
    String url
}
