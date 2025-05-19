package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class V1ChainNetworkAddress {
    /* Gets or sets chain id */
    String chainId
    /* Gets or sets network id */
    String networkId
    /* Gets or sets chain address */
    String address
}
