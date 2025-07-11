/*
 * CoinAPI Indexes REST API
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
 * OASIndexesIndexDefinitionSnapshotEnt
 */
public class OASIndexesIndexDefinitionSnapshotEnt implements OAS.MappedProperties {
    /**
     * Get indexId
     * @return indexId
     */
    public String indexId { get; set; }

    /**
     * Get timestamp
     * @return timestamp
     */
    public Datetime timestamp { get; set; }

    /**
     * Get value
     * @return value
     */
    public Double value { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'index_id' => 'indexId'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public static OASIndexesIndexDefinitionSnapshotEnt getExample() {
        OASIndexesIndexDefinitionSnapshotEnt indexesIndexDefinitionSnapshotEntry = new OASIndexesIndexDefinitionSnapshotEnt();
          indexesIndexDefinitionSnapshotEntry.indexId = '';
          indexesIndexDefinitionSnapshotEntry.timestamp = Datetime.newInstanceGmt(2000, 1, 23, 4, 56, 7);
          indexesIndexDefinitionSnapshotEntry.value = 1.3579;
        return indexesIndexDefinitionSnapshotEntry;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASIndexesIndexDefinitionSnapshotEnt) {           
            OASIndexesIndexDefinitionSnapshotEnt indexesIndexDefinitionSnapshotEntry = (OASIndexesIndexDefinitionSnapshotEnt) obj;
            return this.indexId == indexesIndexDefinitionSnapshotEntry.indexId
                && this.timestamp == indexesIndexDefinitionSnapshotEntry.timestamp
                && this.value == indexesIndexDefinitionSnapshotEntry.value;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (indexId == null ? 0 : System.hashCode(indexId));
        hashCode = (17 * hashCode) + (timestamp == null ? 0 : System.hashCode(timestamp));
        hashCode = (17 * hashCode) + (value == null ? 0 : System.hashCode(value));
        return hashCode;
    }
}

