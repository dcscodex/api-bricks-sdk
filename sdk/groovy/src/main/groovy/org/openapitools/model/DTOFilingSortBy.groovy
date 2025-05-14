package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;

enum DTOFilingSortBy {

    ACCESSION_NUMBER("AccessionNumber"),
    
    FILING_DATE("FilingDate"),
    
    REPORT_DATE("ReportDate"),
    
    ACCEPTANCE_DATE_TIME("AcceptanceDateTime"),
    
    SIZE("Size")

    private final String value

    DTOFilingSortBy(String value) {
        this.value = value
    }

    String getValue() {
        value
    }

    @Override
    String toString() {
        String.valueOf(value)
    }
}
