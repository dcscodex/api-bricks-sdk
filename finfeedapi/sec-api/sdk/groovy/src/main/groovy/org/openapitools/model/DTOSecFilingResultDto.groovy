package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class DTOSecFilingResultDto {
    
    String accessionNumber
    
    String formType
    
    Date filingDate
    
    String companyName
    
    Long cik
    
    String documentFilename
    
    String documentDescription
    
    String sourceFile
}
