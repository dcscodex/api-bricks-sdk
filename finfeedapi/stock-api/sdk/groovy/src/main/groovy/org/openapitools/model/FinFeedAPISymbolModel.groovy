package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.HashMap;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class FinFeedAPISymbolModel {
    
    String symbolId
    
    String exchangeId
    
    String securityCategory
    
    String name
    
    String date
    
    String assetClass
}
