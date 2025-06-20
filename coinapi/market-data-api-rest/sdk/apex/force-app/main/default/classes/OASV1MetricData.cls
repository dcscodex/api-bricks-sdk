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
 * Represents a data model for metric data.
 */
public class OASV1MetricData implements OAS.MappedProperties {
    /**
     * Gets or sets the symbol id.
     * @return symbolId
     */
    public String symbolId { get; set; }

    /**
     * Gets or sets the time at which the value is recorded.
     * @return r_time
     */
    public Datetime r_time { get; set; }

    /**
     * Gets or sets the value of the metric.
     * @return value
     */
    public Double value { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'symbol_id' => 'symbolId',
        'time' => 'r_time'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'symbol_id' => 'symbolId',
        'time' => 'r_time'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public static OASV1MetricData getExample() {
        OASV1MetricData v1MetricData = new OASV1MetricData();
          v1MetricData.symbolId = '';
          v1MetricData.r_time = Datetime.newInstanceGmt(2000, 1, 23, 4, 56, 7);
          v1MetricData.value = 1.3579;
        return v1MetricData;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASV1MetricData) {           
            OASV1MetricData v1MetricData = (OASV1MetricData) obj;
            return this.symbolId == v1MetricData.symbolId
                && this.r_time == v1MetricData.r_time
                && this.value == v1MetricData.value;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (symbolId == null ? 0 : System.hashCode(symbolId));
        hashCode = (17 * hashCode) + (r_time == null ? 0 : System.hashCode(r_time));
        hashCode = (17 * hashCode) + (value == null ? 0 : System.hashCode(value));
        return hashCode;
    }
}

