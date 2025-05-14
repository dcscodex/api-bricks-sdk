package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.HashMap;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class MvcValidationProblemDetails {
    
    String type
    
    String title
    
    Integer status
    
    String detail
    
    String instance
    
    Map<String, List<String>> errors
}
