package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class V1ExternalAsset {
    /* Gets or sets the asset identifier. */
    String assetId
    /* Gets or sets the description of the asset. */
    String description
    /* Gets or sets the type/category of the asset. */
    String assetType
}
