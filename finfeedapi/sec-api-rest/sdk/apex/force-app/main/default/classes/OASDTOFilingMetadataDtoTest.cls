@isTest
private class OASDTOFilingMetadataDtoTest {
    @isTest
    private static void equalsSameInstance() {
        OASDTOFilingMetadataDto dtOFilingMetadataDto1 = OASDTOFilingMetadataDto.getExample();
        OASDTOFilingMetadataDto dtOFilingMetadataDto2 = dtOFilingMetadataDto1;
        OASDTOFilingMetadataDto dtOFilingMetadataDto3 = new OASDTOFilingMetadataDto();
        OASDTOFilingMetadataDto dtOFilingMetadataDto4 = dtOFilingMetadataDto3;

        System.assert(dtOFilingMetadataDto1.equals(dtOFilingMetadataDto2));
        System.assert(dtOFilingMetadataDto2.equals(dtOFilingMetadataDto1));
        System.assert(dtOFilingMetadataDto1.equals(dtOFilingMetadataDto1));
        System.assert(dtOFilingMetadataDto3.equals(dtOFilingMetadataDto4));
        System.assert(dtOFilingMetadataDto4.equals(dtOFilingMetadataDto3));
        System.assert(dtOFilingMetadataDto3.equals(dtOFilingMetadataDto3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDTOFilingMetadataDto dtOFilingMetadataDto1 = OASDTOFilingMetadataDto.getExample();
        OASDTOFilingMetadataDto dtOFilingMetadataDto2 = OASDTOFilingMetadataDto.getExample();
        OASDTOFilingMetadataDto dtOFilingMetadataDto3 = new OASDTOFilingMetadataDto();
        OASDTOFilingMetadataDto dtOFilingMetadataDto4 = new OASDTOFilingMetadataDto();

        System.assert(dtOFilingMetadataDto1.equals(dtOFilingMetadataDto2));
        System.assert(dtOFilingMetadataDto2.equals(dtOFilingMetadataDto1));
        System.assert(dtOFilingMetadataDto3.equals(dtOFilingMetadataDto4));
        System.assert(dtOFilingMetadataDto4.equals(dtOFilingMetadataDto3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDTOFilingMetadataDto dtOFilingMetadataDto1 = OASDTOFilingMetadataDto.getExample();
        OASDTOFilingMetadataDto dtOFilingMetadataDto2 = new OASDTOFilingMetadataDto();

        System.assertEquals(false, dtOFilingMetadataDto1.equals('foo'));
        System.assertEquals(false, dtOFilingMetadataDto2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDTOFilingMetadataDto dtOFilingMetadataDto1 = OASDTOFilingMetadataDto.getExample();
        OASDTOFilingMetadataDto dtOFilingMetadataDto2 = new OASDTOFilingMetadataDto();
        OASDTOFilingMetadataDto dtOFilingMetadataDto3;

        System.assertEquals(false, dtOFilingMetadataDto1.equals(dtOFilingMetadataDto3));
        System.assertEquals(false, dtOFilingMetadataDto2.equals(dtOFilingMetadataDto3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDTOFilingMetadataDto dtOFilingMetadataDto1 = OASDTOFilingMetadataDto.getExample();
        OASDTOFilingMetadataDto dtOFilingMetadataDto2 = new OASDTOFilingMetadataDto();

        System.assertEquals(dtOFilingMetadataDto1.hashCode(), dtOFilingMetadataDto1.hashCode());
        System.assertEquals(dtOFilingMetadataDto2.hashCode(), dtOFilingMetadataDto2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDTOFilingMetadataDto dtOFilingMetadataDto1 = OASDTOFilingMetadataDto.getExample();
        OASDTOFilingMetadataDto dtOFilingMetadataDto2 = OASDTOFilingMetadataDto.getExample();
        OASDTOFilingMetadataDto dtOFilingMetadataDto3 = new OASDTOFilingMetadataDto();
        OASDTOFilingMetadataDto dtOFilingMetadataDto4 = new OASDTOFilingMetadataDto();

        System.assert(dtOFilingMetadataDto1.equals(dtOFilingMetadataDto2));
        System.assert(dtOFilingMetadataDto3.equals(dtOFilingMetadataDto4));
        System.assertEquals(dtOFilingMetadataDto1.hashCode(), dtOFilingMetadataDto2.hashCode());
        System.assertEquals(dtOFilingMetadataDto3.hashCode(), dtOFilingMetadataDto4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDTOFilingMetadataDto dtOFilingMetadataDto = new OASDTOFilingMetadataDto();
        Map<String, String> x-property-mappings = dtOFilingMetadataDto.getx-property-mappings();
        System.assertEquals('accessionNumber', x-property-mappings.get('accession_number'));
        System.assertEquals('filingDate', x-property-mappings.get('filing_date'));
        System.assertEquals('reportDate', x-property-mappings.get('report_date'));
        System.assertEquals('acceptanceDateTime', x-property-mappings.get('acceptance_date_time'));
        System.assertEquals('fileNumber', x-property-mappings.get('file_number'));
        System.assertEquals('filmNumber', x-property-mappings.get('film_number'));
        System.assertEquals('coreType', x-property-mappings.get('core_type'));
        System.assertEquals('isXbrl', x-property-mappings.get('is_xbrl'));
        System.assertEquals('isInlineXbrl', x-property-mappings.get('is_inline_xbrl'));
        System.assertEquals('primaryDocument', x-property-mappings.get('primary_document'));
        System.assertEquals('primaryDocDescription', x-property-mappings.get('primary_doc_description'));
        System.assertEquals('sourceFile', x-property-mappings.get('source_file'));
    }
}
