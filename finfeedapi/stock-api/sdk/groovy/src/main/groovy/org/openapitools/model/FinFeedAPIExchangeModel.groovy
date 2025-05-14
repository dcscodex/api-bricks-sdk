package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.HashMap;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class FinFeedAPIExchangeModel {
    
    String exchangeId
    
    String lastDatapointDate
    
    String mic
    
    String operatingMic
    
    String oprtSgmt
    
    String marketNameInstitutionDescription
    
    String legalEntityName
    
    String lei
    
    String marketCategoryCode
    
    String acronym
    
    String isoCountryCode
    
    String city
    
    String website
    
    String status
    
    Date creationDate
    
    Date lastUpdateDate
    
    Date lastValidationDate
    
    Date expiryDate
    
    String comments
}
