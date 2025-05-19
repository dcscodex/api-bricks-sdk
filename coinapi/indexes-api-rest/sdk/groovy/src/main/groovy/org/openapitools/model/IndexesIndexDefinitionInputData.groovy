package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class IndexesIndexDefinitionInputData {
    
    String exchangeId
    
    String exchangeSymbolId
    
    String baseAssetId
    
    String quoteAssetId
    
    Date beginDate
    
    Date endDate
    
    String status
    
    String statusInfo
    
    Date lastModificationTime
}
