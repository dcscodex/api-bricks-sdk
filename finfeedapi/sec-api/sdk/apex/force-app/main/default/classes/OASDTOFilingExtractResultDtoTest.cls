@isTest
private class OASDTOFilingExtractResultDtoTest {
    @isTest
    private static void equalsSameInstance() {
        OASDTOFilingExtractResultDto dtOFilingExtractResultDto1 = OASDTOFilingExtractResultDto.getExample();
        OASDTOFilingExtractResultDto dtOFilingExtractResultDto2 = dtOFilingExtractResultDto1;
        OASDTOFilingExtractResultDto dtOFilingExtractResultDto3 = new OASDTOFilingExtractResultDto();
        OASDTOFilingExtractResultDto dtOFilingExtractResultDto4 = dtOFilingExtractResultDto3;

        System.assert(dtOFilingExtractResultDto1.equals(dtOFilingExtractResultDto2));
        System.assert(dtOFilingExtractResultDto2.equals(dtOFilingExtractResultDto1));
        System.assert(dtOFilingExtractResultDto1.equals(dtOFilingExtractResultDto1));
        System.assert(dtOFilingExtractResultDto3.equals(dtOFilingExtractResultDto4));
        System.assert(dtOFilingExtractResultDto4.equals(dtOFilingExtractResultDto3));
        System.assert(dtOFilingExtractResultDto3.equals(dtOFilingExtractResultDto3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDTOFilingExtractResultDto dtOFilingExtractResultDto1 = OASDTOFilingExtractResultDto.getExample();
        OASDTOFilingExtractResultDto dtOFilingExtractResultDto2 = OASDTOFilingExtractResultDto.getExample();
        OASDTOFilingExtractResultDto dtOFilingExtractResultDto3 = new OASDTOFilingExtractResultDto();
        OASDTOFilingExtractResultDto dtOFilingExtractResultDto4 = new OASDTOFilingExtractResultDto();

        System.assert(dtOFilingExtractResultDto1.equals(dtOFilingExtractResultDto2));
        System.assert(dtOFilingExtractResultDto2.equals(dtOFilingExtractResultDto1));
        System.assert(dtOFilingExtractResultDto3.equals(dtOFilingExtractResultDto4));
        System.assert(dtOFilingExtractResultDto4.equals(dtOFilingExtractResultDto3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDTOFilingExtractResultDto dtOFilingExtractResultDto1 = OASDTOFilingExtractResultDto.getExample();
        OASDTOFilingExtractResultDto dtOFilingExtractResultDto2 = new OASDTOFilingExtractResultDto();

        System.assertEquals(false, dtOFilingExtractResultDto1.equals('foo'));
        System.assertEquals(false, dtOFilingExtractResultDto2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDTOFilingExtractResultDto dtOFilingExtractResultDto1 = OASDTOFilingExtractResultDto.getExample();
        OASDTOFilingExtractResultDto dtOFilingExtractResultDto2 = new OASDTOFilingExtractResultDto();
        OASDTOFilingExtractResultDto dtOFilingExtractResultDto3;

        System.assertEquals(false, dtOFilingExtractResultDto1.equals(dtOFilingExtractResultDto3));
        System.assertEquals(false, dtOFilingExtractResultDto2.equals(dtOFilingExtractResultDto3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDTOFilingExtractResultDto dtOFilingExtractResultDto1 = OASDTOFilingExtractResultDto.getExample();
        OASDTOFilingExtractResultDto dtOFilingExtractResultDto2 = new OASDTOFilingExtractResultDto();

        System.assertEquals(dtOFilingExtractResultDto1.hashCode(), dtOFilingExtractResultDto1.hashCode());
        System.assertEquals(dtOFilingExtractResultDto2.hashCode(), dtOFilingExtractResultDto2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDTOFilingExtractResultDto dtOFilingExtractResultDto1 = OASDTOFilingExtractResultDto.getExample();
        OASDTOFilingExtractResultDto dtOFilingExtractResultDto2 = OASDTOFilingExtractResultDto.getExample();
        OASDTOFilingExtractResultDto dtOFilingExtractResultDto3 = new OASDTOFilingExtractResultDto();
        OASDTOFilingExtractResultDto dtOFilingExtractResultDto4 = new OASDTOFilingExtractResultDto();

        System.assert(dtOFilingExtractResultDto1.equals(dtOFilingExtractResultDto2));
        System.assert(dtOFilingExtractResultDto3.equals(dtOFilingExtractResultDto4));
        System.assertEquals(dtOFilingExtractResultDto1.hashCode(), dtOFilingExtractResultDto2.hashCode());
        System.assertEquals(dtOFilingExtractResultDto3.hashCode(), dtOFilingExtractResultDto4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDTOFilingExtractResultDto dtOFilingExtractResultDto = new OASDTOFilingExtractResultDto();
        Map<String, String> x-property-mappings = dtOFilingExtractResultDto.getx-property-mappings();
        System.assertEquals('accessionNumber', x-property-mappings.get('accession_number'));
        System.assertEquals('formType', x-property-mappings.get('form_type'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASDTOFilingExtractResultDto dtOFilingExtractResultDto = new OASDTOFilingExtractResultDto();
        System.assertEquals(new List<OASDTOFilingItemDto>(), dtOFilingExtractResultDto.items);
        System.assertEquals(null, dtOFilingExtractResultDto.accessionNumber);
        System.assertEquals(null, dtOFilingExtractResultDto.formType);
    }
}
