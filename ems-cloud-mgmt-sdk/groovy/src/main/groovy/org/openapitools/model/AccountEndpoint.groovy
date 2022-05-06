package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class AccountEndpoint {
    /* Exchange identifier and optional tag identifying specific account configured when the software will be managing multiple accounts on the same exchange; for eg:  <code>BITSTAMP</code> <code>BITSTAMP/7c177641-74bd-4dbe-9b01-2497c12a5f70`</code> <code>BITSTAMP/2574</code> Allowed separators between the exchange identifier and the tag: <code>~/.,:;\\!@#$%^&*-_+=.</code>  */
    String exchangeId
    /* Location identifier */
    String locationId
    /* Endpoint schema */
    String endpointSchema
    /* Endpoint host */
    String endpointHost
    /* Endpoint URL */
    String endpointUrl
}
