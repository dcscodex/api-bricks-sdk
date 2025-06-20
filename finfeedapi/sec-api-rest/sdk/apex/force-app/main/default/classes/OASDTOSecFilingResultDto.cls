/*
 * FinFeedAPI SEC REST API
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
 * OASDTOSecFilingResultDto
 */
public class OASDTOSecFilingResultDto implements OAS.MappedProperties {
    /**
     * Get accessionNumber
     * @return accessionNumber
     */
    public String accessionNumber { get; set; }

    /**
     * Get formType
     * @return formType
     */
    public String formType { get; set; }

    /**
     * Get filingDate
     * @return filingDate
     */
    public Date filingDate { get; set; }

    /**
     * Get companyName
     * @return companyName
     */
    public String companyName { get; set; }

    /**
     * Get cik
     * @return cik
     */
    public Long cik { get; set; }

    /**
     * Get documentFilename
     * @return documentFilename
     */
    public String documentFilename { get; set; }

    /**
     * Get documentDescription
     * @return documentDescription
     */
    public String documentDescription { get; set; }

    /**
     * Get sourceFile
     * @return sourceFile
     */
    public String sourceFile { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'accession_number' => 'accessionNumber',
        'form_type' => 'formType',
        'filing_date' => 'filingDate',
        'company_name' => 'companyName',
        'document_filename' => 'documentFilename',
        'document_description' => 'documentDescription',
        'source_file' => 'sourceFile'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'accession_number' => 'accessionNumber',
        'form_type' => 'formType',
        'filing_date' => 'filingDate',
        'company_name' => 'companyName',
        'document_filename' => 'documentFilename',
        'document_description' => 'documentDescription',
        'source_file' => 'sourceFile'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'accession_number' => 'accessionNumber',
        'form_type' => 'formType',
        'filing_date' => 'filingDate',
        'company_name' => 'companyName',
        'document_filename' => 'documentFilename',
        'document_description' => 'documentDescription',
        'source_file' => 'sourceFile'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'accession_number' => 'accessionNumber',
        'form_type' => 'formType',
        'filing_date' => 'filingDate',
        'company_name' => 'companyName',
        'document_filename' => 'documentFilename',
        'document_description' => 'documentDescription',
        'source_file' => 'sourceFile'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'accession_number' => 'accessionNumber',
        'form_type' => 'formType',
        'filing_date' => 'filingDate',
        'company_name' => 'companyName',
        'document_filename' => 'documentFilename',
        'document_description' => 'documentDescription',
        'source_file' => 'sourceFile'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'accession_number' => 'accessionNumber',
        'form_type' => 'formType',
        'filing_date' => 'filingDate',
        'company_name' => 'companyName',
        'document_filename' => 'documentFilename',
        'document_description' => 'documentDescription',
        'source_file' => 'sourceFile'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'accession_number' => 'accessionNumber',
        'form_type' => 'formType',
        'filing_date' => 'filingDate',
        'company_name' => 'companyName',
        'document_filename' => 'documentFilename',
        'document_description' => 'documentDescription',
        'source_file' => 'sourceFile'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public static OASDTOSecFilingResultDto getExample() {
        OASDTOSecFilingResultDto dtOSecFilingResultDto = new OASDTOSecFilingResultDto();
          dtOSecFilingResultDto.accessionNumber = '';
          dtOSecFilingResultDto.formType = '';
          dtOSecFilingResultDto.filingDate = Date.newInstance(2000, 1, 23);
          dtOSecFilingResultDto.companyName = '';
          dtOSecFilingResultDto.cik = 123456789L;
          dtOSecFilingResultDto.documentFilename = '';
          dtOSecFilingResultDto.documentDescription = '';
          dtOSecFilingResultDto.sourceFile = '';
        return dtOSecFilingResultDto;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASDTOSecFilingResultDto) {           
            OASDTOSecFilingResultDto dtOSecFilingResultDto = (OASDTOSecFilingResultDto) obj;
            return this.accessionNumber == dtOSecFilingResultDto.accessionNumber
                && this.formType == dtOSecFilingResultDto.formType
                && this.filingDate == dtOSecFilingResultDto.filingDate
                && this.companyName == dtOSecFilingResultDto.companyName
                && this.cik == dtOSecFilingResultDto.cik
                && this.documentFilename == dtOSecFilingResultDto.documentFilename
                && this.documentDescription == dtOSecFilingResultDto.documentDescription
                && this.sourceFile == dtOSecFilingResultDto.sourceFile;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (accessionNumber == null ? 0 : System.hashCode(accessionNumber));
        hashCode = (17 * hashCode) + (formType == null ? 0 : System.hashCode(formType));
        hashCode = (17 * hashCode) + (filingDate == null ? 0 : System.hashCode(filingDate));
        hashCode = (17 * hashCode) + (companyName == null ? 0 : System.hashCode(companyName));
        hashCode = (17 * hashCode) + (cik == null ? 0 : System.hashCode(cik));
        hashCode = (17 * hashCode) + (documentFilename == null ? 0 : System.hashCode(documentFilename));
        hashCode = (17 * hashCode) + (documentDescription == null ? 0 : System.hashCode(documentDescription));
        hashCode = (17 * hashCode) + (sourceFile == null ? 0 : System.hashCode(sourceFile));
        return hashCode;
    }
}

