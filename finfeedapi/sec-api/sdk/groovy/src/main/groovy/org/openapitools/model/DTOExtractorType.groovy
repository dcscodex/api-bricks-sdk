package org.openapitools.model;

import groovy.transform.Canonical

enum DTOExtractorType {

    TEXT("text"),
    
    HTML("html")

    private final String value

    DTOExtractorType(String value) {
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
