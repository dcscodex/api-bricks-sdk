@isTest
private class OASDTOSecFilingResultDtoTest {
    @isTest
    private static void equalsSameInstance() {
        OASDTOSecFilingResultDto dtOSecFilingResultDto1 = OASDTOSecFilingResultDto.getExample();
        OASDTOSecFilingResultDto dtOSecFilingResultDto2 = dtOSecFilingResultDto1;
        OASDTOSecFilingResultDto dtOSecFilingResultDto3 = new OASDTOSecFilingResultDto();
        OASDTOSecFilingResultDto dtOSecFilingResultDto4 = dtOSecFilingResultDto3;

        System.assert(dtOSecFilingResultDto1.equals(dtOSecFilingResultDto2));
        System.assert(dtOSecFilingResultDto2.equals(dtOSecFilingResultDto1));
        System.assert(dtOSecFilingResultDto1.equals(dtOSecFilingResultDto1));
        System.assert(dtOSecFilingResultDto3.equals(dtOSecFilingResultDto4));
        System.assert(dtOSecFilingResultDto4.equals(dtOSecFilingResultDto3));
        System.assert(dtOSecFilingResultDto3.equals(dtOSecFilingResultDto3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDTOSecFilingResultDto dtOSecFilingResultDto1 = OASDTOSecFilingResultDto.getExample();
        OASDTOSecFilingResultDto dtOSecFilingResultDto2 = OASDTOSecFilingResultDto.getExample();
        OASDTOSecFilingResultDto dtOSecFilingResultDto3 = new OASDTOSecFilingResultDto();
        OASDTOSecFilingResultDto dtOSecFilingResultDto4 = new OASDTOSecFilingResultDto();

        System.assert(dtOSecFilingResultDto1.equals(dtOSecFilingResultDto2));
        System.assert(dtOSecFilingResultDto2.equals(dtOSecFilingResultDto1));
        System.assert(dtOSecFilingResultDto3.equals(dtOSecFilingResultDto4));
        System.assert(dtOSecFilingResultDto4.equals(dtOSecFilingResultDto3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDTOSecFilingResultDto dtOSecFilingResultDto1 = OASDTOSecFilingResultDto.getExample();
        OASDTOSecFilingResultDto dtOSecFilingResultDto2 = new OASDTOSecFilingResultDto();

        System.assertEquals(false, dtOSecFilingResultDto1.equals('foo'));
        System.assertEquals(false, dtOSecFilingResultDto2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDTOSecFilingResultDto dtOSecFilingResultDto1 = OASDTOSecFilingResultDto.getExample();
        OASDTOSecFilingResultDto dtOSecFilingResultDto2 = new OASDTOSecFilingResultDto();
        OASDTOSecFilingResultDto dtOSecFilingResultDto3;

        System.assertEquals(false, dtOSecFilingResultDto1.equals(dtOSecFilingResultDto3));
        System.assertEquals(false, dtOSecFilingResultDto2.equals(dtOSecFilingResultDto3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDTOSecFilingResultDto dtOSecFilingResultDto1 = OASDTOSecFilingResultDto.getExample();
        OASDTOSecFilingResultDto dtOSecFilingResultDto2 = new OASDTOSecFilingResultDto();

        System.assertEquals(dtOSecFilingResultDto1.hashCode(), dtOSecFilingResultDto1.hashCode());
        System.assertEquals(dtOSecFilingResultDto2.hashCode(), dtOSecFilingResultDto2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDTOSecFilingResultDto dtOSecFilingResultDto1 = OASDTOSecFilingResultDto.getExample();
        OASDTOSecFilingResultDto dtOSecFilingResultDto2 = OASDTOSecFilingResultDto.getExample();
        OASDTOSecFilingResultDto dtOSecFilingResultDto3 = new OASDTOSecFilingResultDto();
        OASDTOSecFilingResultDto dtOSecFilingResultDto4 = new OASDTOSecFilingResultDto();

        System.assert(dtOSecFilingResultDto1.equals(dtOSecFilingResultDto2));
        System.assert(dtOSecFilingResultDto3.equals(dtOSecFilingResultDto4));
        System.assertEquals(dtOSecFilingResultDto1.hashCode(), dtOSecFilingResultDto2.hashCode());
        System.assertEquals(dtOSecFilingResultDto3.hashCode(), dtOSecFilingResultDto4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDTOSecFilingResultDto dtOSecFilingResultDto = new OASDTOSecFilingResultDto();
        Map<String, String> x-property-mappings = dtOSecFilingResultDto.getx-property-mappings();
        System.assertEquals('accessionNumber', x-property-mappings.get('accession_number'));
        System.assertEquals('formType', x-property-mappings.get('form_type'));
        System.assertEquals('filingDate', x-property-mappings.get('filing_date'));
        System.assertEquals('companyName', x-property-mappings.get('company_name'));
        System.assertEquals('documentFilename', x-property-mappings.get('document_filename'));
        System.assertEquals('documentDescription', x-property-mappings.get('document_description'));
        System.assertEquals('sourceFile', x-property-mappings.get('source_file'));
    }
}
