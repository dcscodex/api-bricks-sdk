/*
 * CoinAPI Market Data REST API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Contact: support@apibricks.io
 *
 * NOTE: This class is auto generated by the OAS code generator program.
 * https://github.com/OpenAPITools/openapi-generator
 * Do not edit the class manually.
 */

/**
 * Represents a metric information.
 */
public class OASV1MetricInfo implements OAS.MappedProperties {
    /**
     * Gets or sets the metric identifier.
     * @return metricId
     */
    public String metricId { get; set; }

    /**
     * Gets or sets the description of the metric.
     * @return description
     */
    public String description { get; set; }

    /**
     * Gets or sets the source identifier of the metric.
     * @return sourceId
     */
    public String sourceId { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'metric_id' => 'metricId',
        'source_id' => 'sourceId'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'metric_id' => 'metricId',
        'source_id' => 'sourceId'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public static OASV1MetricInfo getExample() {
        OASV1MetricInfo v1MetricInfo = new OASV1MetricInfo();
          v1MetricInfo.metricId = '';
          v1MetricInfo.description = '';
          v1MetricInfo.sourceId = '';
        return v1MetricInfo;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASV1MetricInfo) {           
            OASV1MetricInfo v1MetricInfo = (OASV1MetricInfo) obj;
            return this.metricId == v1MetricInfo.metricId
                && this.description == v1MetricInfo.description
                && this.sourceId == v1MetricInfo.sourceId;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (metricId == null ? 0 : System.hashCode(metricId));
        hashCode = (17 * hashCode) + (description == null ? 0 : System.hashCode(description));
        hashCode = (17 * hashCode) + (sourceId == null ? 0 : System.hashCode(sourceId));
        return hashCode;
    }
}

