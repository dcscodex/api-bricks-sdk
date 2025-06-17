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
    
    String cfiCode
    
    String cfiCategory
    
    String cfiGroup
    
    String cfiAttribute1
    
    String cfiAttribute2
    
    String cfiAttribute3
    
    String cfiAttribute4
    
    String cfiCategoryDesc
    
    String cfiGroupDesc
    
    String cfiAttribute1Desc
    
    String cfiAttribute2Desc
    
    String cfiAttribute3Desc
    
    String cfiAttribute4Desc
}
