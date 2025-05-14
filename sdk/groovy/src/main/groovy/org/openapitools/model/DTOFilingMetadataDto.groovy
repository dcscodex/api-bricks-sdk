package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class DTOFilingMetadataDto {
    
    Long cik
    
    String accessionNumber
    
    Date filingDate
    
    Date reportDate
    
    Date acceptanceDateTime
    
    String act
    
    String form
    
    String fileNumber
    
    String filmNumber
    
    String items
    
    String coreType
    
    Integer size
    
    Boolean isXbrl
    
    Boolean isInlineXbrl
    
    String primaryDocument
    
    String primaryDocDescription
    
    String sourceFile
}
